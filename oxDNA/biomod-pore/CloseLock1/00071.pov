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
	<23.981176, 35.358055, 35.096493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.234663, 35.130394, 34.886936>,  <24.386755, 34.993797, 34.761200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.234663, 35.130394, 34.886936>,  <23.981176, 35.358055, 35.096493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.234663, 35.130394, 34.886936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654581, 0.755439, -0.028910,
		0.412225, -0.324611, 0.851292,
		0.633715, -0.569157, -0.523895,
		24.424778, 34.959648, 34.729767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.689447, 35.385384, 35.259140>,  <23.981176, 35.358055, 35.096493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.689447, 35.385384, 35.259140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755024, 35.229107, 34.896816>,  <24.794369, 35.135342, 34.679424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755024, 35.229107, 34.896816>,  <24.689447, 35.385384, 35.259140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.755024, 35.229107, 34.896816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795576, 0.595268, -0.112761,
		0.583252, -0.702151, 0.408412,
		0.163939, -0.390691, -0.905806,
		24.804205, 35.111900, 34.625076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438698, 35.012943, 35.224457>,  <24.689447, 35.385384, 35.259140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438698, 35.012943, 35.224457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268482, 35.191650, 34.909672>,  <25.166353, 35.298874, 34.720802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268482, 35.191650, 34.909672>,  <25.438698, 35.012943, 35.224457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268482, 35.191650, 34.909672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775583, 0.628114, -0.062796,
		0.466248, -0.637077, -0.613796,
		-0.425540, 0.446772, -0.786963,
		25.140820, 35.325684, 34.673584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909475, 34.964550, 34.768688>,  <25.438698, 35.012943, 35.224457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909475, 34.964550, 34.768688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673834, 35.266266, 34.652756>,  <25.532450, 35.447296, 34.583195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673834, 35.266266, 34.652756>,  <25.909475, 34.964550, 34.768688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673834, 35.266266, 34.652756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808041, 0.547526, -0.217451,
		-0.005330, -0.362297, -0.932047,
		-0.589102, 0.754292, -0.289833,
		25.497103, 35.492554, 34.565807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104548, 35.214973, 34.064999>,  <25.909475, 34.964550, 34.768688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104548, 35.214973, 34.064999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927572, 35.528797, 34.238762>,  <25.821386, 35.717091, 34.343018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927572, 35.528797, 34.238762>,  <26.104548, 35.214973, 34.064999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927572, 35.528797, 34.238762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857906, 0.511385, -0.049822,
		-0.261238, 0.350636, -0.899338,
		-0.442439, 0.784563, 0.434406,
		25.794840, 35.764168, 34.369083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.129520, 35.058189, 33.330631>,  <26.104548, 35.214973, 34.064999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.129520, 35.058189, 33.330631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472902, 34.891132, 33.211548>,  <26.678932, 34.790897, 33.140099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472902, 34.891132, 33.211548>,  <26.129520, 35.058189, 33.330631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472902, 34.891132, 33.211548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512531, 0.720261, 0.467478,
		0.019184, -0.553891, 0.832368,
		0.858454, -0.417646, -0.297704,
		26.730438, 34.765839, 33.122238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733253, 35.449341, 33.139336>,  <26.129520, 35.058189, 33.330631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733253, 35.449341, 33.139336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053423, 35.605457, 32.957352>,  <27.245525, 35.699127, 32.848160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053423, 35.605457, 32.957352>,  <26.733253, 35.449341, 33.139336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053423, 35.605457, 32.957352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505942, 0.032842, -0.861942,
		-0.321468, 0.920105, 0.223753,
		0.800426, 0.390292, -0.454962,
		27.293550, 35.722546, 32.820862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656416, 36.120106, 32.657463>,  <26.733253, 35.449341, 33.139336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656416, 36.120106, 32.657463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989676, 35.946053, 32.520924>,  <27.189632, 35.841621, 32.438999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989676, 35.946053, 32.520924>,  <26.656416, 36.120106, 32.657463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.989676, 35.946053, 32.520924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147367, 0.420233, -0.895370,
		0.533050, 0.796282, 0.285993,
		0.833151, -0.435131, -0.341351,
		27.239620, 35.815514, 32.418518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066706, 36.669247, 32.211895>,  <26.656416, 36.120106, 32.657463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066706, 36.669247, 32.211895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142084, 36.295841, 32.089890>,  <27.187311, 36.071796, 32.016685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142084, 36.295841, 32.089890>,  <27.066706, 36.669247, 32.211895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142084, 36.295841, 32.089890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113474, 0.287798, -0.950945,
		0.975506, 0.213814, -0.051695,
		0.188448, -0.933518, -0.305010,
		27.198618, 36.015785, 31.998386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660856, 36.675667, 31.685316>,  <27.066706, 36.669247, 32.211895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660856, 36.675667, 31.685316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396473, 36.376408, 31.661983>,  <27.237843, 36.196850, 31.647984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396473, 36.376408, 31.661983>,  <27.660856, 36.675667, 31.685316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396473, 36.376408, 31.661983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071665, 0.140305, -0.987511,
		0.746992, -0.648525, -0.146352,
		-0.660960, -0.748151, -0.058330,
		27.198185, 36.151962, 31.644485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787067, 36.456032, 31.019453>,  <27.660856, 36.675667, 31.685316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787067, 36.456032, 31.019453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423765, 36.329517, 31.129023>,  <27.205784, 36.253609, 31.194765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423765, 36.329517, 31.129023>,  <27.787067, 36.456032, 31.019453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423765, 36.329517, 31.129023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352450, 0.225498, -0.908256,
		0.225498, -0.921474, -0.316285,
		0.908256, 0.316285, -0.273924,
		27.151289, 36.234631, 31.211201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519035, 36.059555, 30.472382>,  <27.787067, 36.456032, 31.019453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519035, 36.059555, 30.472382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198208, 36.210068, 30.657896>,  <27.005711, 36.300377, 30.769205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198208, 36.210068, 30.657896>,  <27.519035, 36.059555, 30.472382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198208, 36.210068, 30.657896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344509, 0.342841, -0.873941,
		-0.487853, -0.860740, -0.145350,
		-0.802068, 0.376281, 0.463789,
		26.957588, 36.322952, 30.797033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953928, 35.882317, 30.034664>,  <27.519035, 36.059555, 30.472382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953928, 35.882317, 30.034664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776514, 36.161358, 30.259741>,  <26.670067, 36.328785, 30.394787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776514, 36.161358, 30.259741>,  <26.953928, 35.882317, 30.034664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776514, 36.161358, 30.259741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447557, 0.371550, -0.813415,
		-0.776513, -0.612613, 0.147425,
		-0.443533, 0.697608, 0.562692,
		26.643454, 36.370640, 30.428549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228018, 35.820469, 29.844223>,  <26.953928, 35.882317, 30.034664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.228018, 35.820469, 29.844223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316427, 36.187099, 29.977514>,  <26.369473, 36.407078, 30.057489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316427, 36.187099, 29.977514>,  <26.228018, 35.820469, 29.844223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316427, 36.187099, 29.977514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521723, 0.399796, -0.753637,
		-0.823987, -0.007281, 0.566562,
		0.221022, 0.916575, 0.333226,
		26.382734, 36.462070, 30.077482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564793, 36.209965, 29.810976>,  <26.228018, 35.820469, 29.844223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564793, 36.209965, 29.810976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872444, 36.465584, 29.807716>,  <26.057035, 36.618954, 29.805759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872444, 36.465584, 29.807716>,  <25.564793, 36.209965, 29.810976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872444, 36.465584, 29.807716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416217, 0.491183, -0.765182,
		-0.484981, 0.591915, 0.643763,
		0.769128, 0.639043, -0.008151,
		26.103182, 36.657295, 29.805271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270363, 36.878132, 29.553301>,  <25.564793, 36.209965, 29.810976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.270363, 36.878132, 29.553301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665825, 36.932606, 29.527950>,  <25.903103, 36.965290, 29.512739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665825, 36.932606, 29.527950>,  <25.270363, 36.878132, 29.553301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665825, 36.932606, 29.527950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104347, 0.319166, -0.941937,
		-0.108048, 0.937863, 0.329755,
		0.988654, 0.136183, -0.063378,
		25.962421, 36.973461, 29.508936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.249331, 37.519970, 29.575819>,  <25.270363, 36.878132, 29.553301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.249331, 37.519970, 29.575819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606077, 37.435871, 29.415634>,  <25.820126, 37.385410, 29.319523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606077, 37.435871, 29.415634>,  <25.249331, 37.519970, 29.575819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.606077, 37.435871, 29.415634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146477, 0.703416, -0.695521,
		0.427926, 0.678970, 0.596556,
		0.891865, -0.210250, -0.400464,
		25.873636, 37.372795, 29.295494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.562729, 38.219582, 29.371534>,  <25.249331, 37.519970, 29.575819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.562729, 38.219582, 29.371534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757147, 37.933659, 29.170412>,  <25.873798, 37.762104, 29.049738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757147, 37.933659, 29.170412>,  <25.562729, 38.219582, 29.371534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757147, 37.933659, 29.170412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162580, 0.491337, -0.855661,
		0.858677, 0.497637, 0.122599,
		0.486046, -0.714805, -0.502806,
		25.902960, 37.719215, 29.019571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003605, 38.626259, 29.041912>,  <25.562729, 38.219582, 29.371534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003605, 38.626259, 29.041912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966692, 38.272747, 28.858429>,  <25.944544, 38.060638, 28.748339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966692, 38.272747, 28.858429>,  <26.003605, 38.626259, 29.041912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966692, 38.272747, 28.858429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186489, 0.467861, -0.863903,
		0.978113, 0.005819, -0.207992,
		-0.092284, -0.883783, -0.458706,
		25.939007, 38.007610, 28.720818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329725, 38.776192, 28.412739>,  <26.003605, 38.626259, 29.041912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.329725, 38.776192, 28.412739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150414, 38.425953, 28.340775>,  <26.042828, 38.215809, 28.297596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150414, 38.425953, 28.340775>,  <26.329725, 38.776192, 28.412739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150414, 38.425953, 28.340775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061725, 0.231109, -0.970968,
		0.891761, -0.424158, -0.157648,
		-0.448278, -0.875602, -0.179913,
		26.015930, 38.163273, 28.286800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667501, 38.547112, 27.843685>,  <26.329725, 38.776192, 28.412739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667501, 38.547112, 27.843685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305441, 38.377094, 27.841179>,  <26.088205, 38.275085, 27.839676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305441, 38.377094, 27.841179>,  <26.667501, 38.547112, 27.843685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305441, 38.377094, 27.841179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172049, 0.379782, -0.908936,
		0.388734, -0.821639, -0.416888,
		-0.905144, -0.425059, -0.006272,
		26.033895, 38.249580, 27.839300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683746, 38.123035, 27.139345>,  <26.667501, 38.547112, 27.843685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683746, 38.123035, 27.139345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304424, 38.184563, 27.250380>,  <26.076830, 38.221481, 27.316999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304424, 38.184563, 27.250380>,  <26.683746, 38.123035, 27.139345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304424, 38.184563, 27.250380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288552, -0.053807, -0.955951,
		-0.132115, -0.986632, 0.095412,
		-0.948306, 0.153827, 0.277586,
		26.019932, 38.230709, 27.333656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331142, 37.586830, 26.733353>,  <26.683746, 38.123035, 27.139345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331142, 37.586830, 26.733353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038277, 37.833733, 26.848537>,  <25.862556, 37.981876, 26.917648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038277, 37.833733, 26.848537>,  <26.331142, 37.586830, 26.733353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038277, 37.833733, 26.848537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445142, -0.113634, -0.888221,
		-0.515541, -0.778509, 0.357968,
		-0.732165, 0.617260, 0.287964,
		25.818626, 38.018909, 26.934927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599920, 37.277744, 26.703794>,  <26.331142, 37.586830, 26.733353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599920, 37.277744, 26.703794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569410, 37.673698, 26.655956>,  <25.551105, 37.911270, 26.627253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569410, 37.673698, 26.655956>,  <25.599920, 37.277744, 26.703794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569410, 37.673698, 26.655956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278142, -0.136309, -0.950819,
		-0.957507, -0.039257, 0.285726,
		-0.076274, 0.989888, -0.119598,
		25.546528, 37.970665, 26.620077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852430, 37.424694, 26.378380>,  <25.599920, 37.277744, 26.703794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852430, 37.424694, 26.378380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096855, 37.735950, 26.320271>,  <25.243509, 37.922703, 26.285406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096855, 37.735950, 26.320271>,  <24.852430, 37.424694, 26.378380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096855, 37.735950, 26.320271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170080, -0.050170, -0.984152,
		-0.773096, 0.626085, 0.101689,
		0.611061, 0.778139, -0.145271,
		25.280174, 37.969391, 26.276690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.477989, 37.988480, 25.979689>,  <24.852430, 37.424694, 26.378380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.477989, 37.988480, 25.979689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872147, 37.997478, 25.912169>,  <25.108641, 38.002880, 25.871656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872147, 37.997478, 25.912169>,  <24.477989, 37.988480, 25.979689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.872147, 37.997478, 25.912169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168721, -0.005361, -0.985649,
		-0.023084, 0.999732, -0.001487,
		0.985393, 0.022502, -0.168800,
		25.167765, 38.004230, 25.861528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.671850, 38.512604, 25.460131>,  <24.477989, 37.988480, 25.979689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.671850, 38.512604, 25.460131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.948042, 38.223389, 25.451630>,  <25.113756, 38.049858, 25.446529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.948042, 38.223389, 25.451630>,  <24.671850, 38.512604, 25.460131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.948042, 38.223389, 25.451630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198278, -0.160926, -0.966844,
		0.695649, 0.671798, -0.254479,
		0.690477, -0.723042, -0.021255,
		25.155186, 38.006477, 25.445253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381477, 38.682919, 25.051525>,  <24.671850, 38.512604, 25.460131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381477, 38.682919, 25.051525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179640, 38.337807, 25.064192>,  <25.058538, 38.130741, 25.071791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179640, 38.337807, 25.064192>,  <25.381477, 38.682919, 25.051525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179640, 38.337807, 25.064192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268045, 0.121691, -0.955690,
		0.820694, -0.490722, -0.292667,
		-0.504593, -0.862777, 0.031665,
		25.028261, 38.078972, 25.073690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753290, 38.462723, 24.694262>,  <25.381477, 38.682919, 25.051525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753290, 38.462723, 24.694262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642569, 38.140594, 24.903961>,  <24.576136, 37.947319, 25.029781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642569, 38.140594, 24.903961>,  <24.753290, 38.462723, 24.694262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.642569, 38.140594, 24.903961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183178, -0.579785, -0.793911,
		0.943306, -0.123725, 0.308003,
		-0.276802, -0.805320, 0.524251,
		24.559528, 37.898998, 25.061237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246317, 37.734432, 24.624279>,  <24.753290, 38.462723, 24.694262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246317, 37.734432, 24.624279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861948, 37.649979, 24.695892>,  <24.631327, 37.599304, 24.738861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861948, 37.649979, 24.695892>,  <25.246317, 37.734432, 24.624279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861948, 37.649979, 24.695892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027741, -0.716931, -0.696592,
		0.275430, -0.664403, 0.694771,
		-0.960921, -0.211136, 0.179033,
		24.573671, 37.586639, 24.749603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.134829, 36.994678, 24.980394>,  <25.246317, 37.734432, 24.624279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.134829, 36.994678, 24.980394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.835241, 37.125225, 24.749733>,  <24.655489, 37.203552, 24.611336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.835241, 37.125225, 24.749733>,  <25.134829, 36.994678, 24.980394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.835241, 37.125225, 24.749733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196834, -0.721414, -0.663942,
		-0.632692, -0.610778, 0.476079,
		-0.748971, 0.326362, -0.576655,
		24.610550, 37.223133, 24.576736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.765440, 36.418121, 24.848812>,  <25.134829, 36.994678, 24.980394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.765440, 36.418121, 24.848812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735929, 36.678692, 24.546766>,  <24.718224, 36.835033, 24.365540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735929, 36.678692, 24.546766>,  <24.765440, 36.418121, 24.848812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.735929, 36.678692, 24.546766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130421, -0.744372, -0.654904,
		-0.988710, -0.146798, -0.030045,
		-0.073774, 0.651429, -0.755114,
		24.713797, 36.874119, 24.320232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.684692, 36.272785, 24.148615>,  <24.765440, 36.418121, 24.848812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.684692, 36.272785, 24.148615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612581, 35.968151, 23.899620>,  <24.569315, 35.785370, 23.750223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612581, 35.968151, 23.899620>,  <24.684692, 36.272785, 24.148615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.612581, 35.968151, 23.899620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399714, -0.634968, 0.661094,
		-0.898737, -0.129635, 0.418887,
		-0.180279, -0.761584, -0.622486,
		24.558498, 35.739677, 23.712873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.304655, 35.820396, 24.477808>,  <24.684692, 36.272785, 24.148615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.304655, 35.820396, 24.477808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.517555, 35.618538, 24.205915>,  <24.645296, 35.497421, 24.042780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.517555, 35.618538, 24.205915>,  <24.304655, 35.820396, 24.477808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.517555, 35.618538, 24.205915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255569, -0.669671, 0.697298,
		-0.807088, -0.544857, -0.227462,
		0.532253, -0.504649, -0.679732,
		24.677231, 35.467144, 24.001995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.217831, 35.118492, 24.620657>,  <24.304655, 35.820396, 24.477808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.217831, 35.118492, 24.620657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.565294, 35.176311, 24.431114>,  <24.773771, 35.211002, 24.317389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.565294, 35.176311, 24.431114>,  <24.217831, 35.118492, 24.620657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.565294, 35.176311, 24.431114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478788, -0.490649, 0.728029,
		-0.127261, -0.859284, -0.495414,
		0.868658, 0.144548, -0.473855,
		24.825891, 35.219677, 24.288958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.597977, 34.489719, 24.464819>,  <24.217831, 35.118492, 24.620657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.597977, 34.489719, 24.464819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871840, 34.779224, 24.499262>,  <25.036158, 34.952927, 24.519928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871840, 34.779224, 24.499262>,  <24.597977, 34.489719, 24.464819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871840, 34.779224, 24.499262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450850, -0.513362, 0.730201,
		0.572694, -0.461116, -0.677785,
		0.684657, 0.723762, 0.086105,
		25.077236, 34.996353, 24.525093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.236010, 34.175793, 24.428690>,  <24.597977, 34.489719, 24.464819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.236010, 34.175793, 24.428690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270205, 34.509247, 24.646954>,  <25.290722, 34.709320, 24.777912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270205, 34.509247, 24.646954>,  <25.236010, 34.175793, 24.428690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270205, 34.509247, 24.646954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445936, -0.521759, 0.727261,
		0.890973, 0.181158, -0.416351,
		0.085486, 0.833636, 0.545658,
		25.295851, 34.759338, 24.810652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.845640, 34.038902, 24.705683>,  <25.236010, 34.175793, 24.428690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.845640, 34.038902, 24.705683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609865, 34.254723, 24.946167>,  <25.468399, 34.384212, 25.090458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609865, 34.254723, 24.946167>,  <25.845640, 34.038902, 24.705683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609865, 34.254723, 24.946167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495402, -0.346424, 0.796597,
		0.638074, 0.767385, -0.063097,
		-0.589439, 0.539546, 0.601209,
		25.433033, 34.416588, 25.126530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345890, 34.413811, 25.105856>,  <25.845640, 34.038902, 24.705683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345890, 34.413811, 25.105856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005795, 34.390739, 25.315145>,  <25.801737, 34.376896, 25.440720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005795, 34.390739, 25.315145>,  <26.345890, 34.413811, 25.105856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005795, 34.390739, 25.315145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513786, -0.307179, 0.801040,
		0.114519, 0.949902, 0.290812,
		-0.850241, -0.057681, 0.523224,
		25.750723, 34.373436, 25.472113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386650, 34.798203, 25.691284>,  <26.345890, 34.413811, 25.105856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.386650, 34.798203, 25.691284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114645, 34.523460, 25.793900>,  <25.951443, 34.358616, 25.855469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114645, 34.523460, 25.793900>,  <26.386650, 34.798203, 25.691284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114645, 34.523460, 25.793900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574540, -0.281807, 0.768433,
		-0.455511, 0.669933, 0.586259,
		-0.680010, -0.686859, 0.256537,
		25.910643, 34.317402, 25.870861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184338, 34.940208, 26.431847>,  <26.386650, 34.798203, 25.691284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184338, 34.940208, 26.431847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103228, 34.555008, 26.360842>,  <26.054562, 34.323887, 26.318239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103228, 34.555008, 26.360842>,  <26.184338, 34.940208, 26.431847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103228, 34.555008, 26.360842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583348, -0.264396, 0.767984,
		-0.786503, 0.052176, 0.615378,
		-0.202774, -0.963002, -0.177511,
		26.042395, 34.266106, 26.307589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047216, 34.695854, 27.089630>,  <26.184338, 34.940208, 26.431847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047216, 34.695854, 27.089630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082661, 34.356937, 26.880157>,  <26.103928, 34.153587, 26.754475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082661, 34.356937, 26.880157>,  <26.047216, 34.695854, 27.089630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082661, 34.356937, 26.880157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492947, -0.419549, 0.762222,
		-0.865536, -0.325688, 0.380494,
		0.088610, -0.847293, -0.523682,
		26.109243, 34.102749, 26.723053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698994, 34.048237, 27.401049>,  <26.047216, 34.695854, 27.089630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698994, 34.048237, 27.401049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979073, 33.893776, 27.160845>,  <26.147120, 33.801102, 27.016722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979073, 33.893776, 27.160845>,  <25.698994, 34.048237, 27.401049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979073, 33.893776, 27.160845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393904, -0.492562, 0.776030,
		-0.595453, -0.779916, -0.192784,
		0.700197, -0.386151, -0.600509,
		26.189133, 33.777931, 26.980692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909266, 33.475304, 27.766552>,  <25.698994, 34.048237, 27.401049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909266, 33.475304, 27.766552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200583, 33.542366, 27.500774>,  <26.375372, 33.582603, 27.341309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200583, 33.542366, 27.500774>,  <25.909266, 33.475304, 27.766552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200583, 33.542366, 27.500774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680459, -0.291579, 0.672277,
		-0.081026, -0.941740, -0.326437,
		0.728292, 0.167655, -0.664441,
		26.419069, 33.592663, 27.301441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403072, 32.831486, 27.859606>,  <25.909266, 33.475304, 27.766552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403072, 32.831486, 27.859606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588366, 33.146294, 27.696627>,  <26.699541, 33.335178, 27.598839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588366, 33.146294, 27.696627>,  <26.403072, 32.831486, 27.859606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588366, 33.146294, 27.696627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784968, -0.150952, 0.600865,
		0.411389, -0.598173, -0.687712,
		0.463232, 0.787021, -0.407447,
		26.727335, 33.382401, 27.574392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978926, 32.533474, 27.721079>,  <26.403072, 32.831486, 27.859606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978926, 32.533474, 27.721079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024588, 32.930794, 27.713860>,  <27.051985, 33.169186, 27.709528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024588, 32.930794, 27.713860>,  <26.978926, 32.533474, 27.721079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024588, 32.930794, 27.713860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734856, -0.072200, 0.674369,
		0.668547, -0.090247, -0.738174,
		0.114156, 0.993299, -0.018049,
		27.058834, 33.228783, 27.708445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703194, 32.642838, 27.815664>,  <26.978926, 32.533474, 27.721079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703194, 32.642838, 27.815664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549080, 32.990845, 27.938705>,  <27.456612, 33.199650, 28.012529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549080, 32.990845, 27.938705>,  <27.703194, 32.642838, 27.815664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549080, 32.990845, 27.938705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711943, 0.068175, 0.698920,
		0.587105, 0.488279, -0.645672,
		-0.385287, 0.870021, 0.307601,
		27.433495, 33.251850, 28.030985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242718, 32.890636, 28.186090>,  <27.703194, 32.642838, 27.815664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242718, 32.890636, 28.186090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940212, 33.133945, 28.282482>,  <27.758709, 33.279930, 28.340317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940212, 33.133945, 28.282482>,  <28.242718, 32.890636, 28.186090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940212, 33.133945, 28.282482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513597, 0.323754, 0.794608,
		0.405321, 0.724698, -0.557250,
		-0.756263, 0.608273, 0.240979,
		27.713333, 33.316429, 28.354776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520401, 33.615555, 28.365448>,  <28.242718, 32.890636, 28.186090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520401, 33.615555, 28.365448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168413, 33.564175, 28.548382>,  <27.957220, 33.533344, 28.658142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168413, 33.564175, 28.548382>,  <28.520401, 33.615555, 28.365448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168413, 33.564175, 28.548382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432111, 0.183463, 0.882962,
		-0.197323, 0.974598, -0.105935,
		-0.879968, -0.128453, 0.457336,
		27.904423, 33.525639, 28.685583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629246, 34.007473, 28.909391>,  <28.520401, 33.615555, 28.365448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629246, 34.007473, 28.909391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321285, 33.777115, 29.019367>,  <28.136509, 33.638901, 29.085354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321285, 33.777115, 29.019367>,  <28.629246, 34.007473, 28.909391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321285, 33.777115, 29.019367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208367, 0.180366, 0.961276,
		-0.603189, 0.797375, -0.018865,
		-0.769901, -0.575900, 0.274941,
		28.090315, 33.604343, 29.101849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294699, 34.420616, 29.330700>,  <28.629246, 34.007473, 28.909391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294699, 34.420616, 29.330700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162067, 34.051483, 29.409122>,  <28.082489, 33.830006, 29.456177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162067, 34.051483, 29.409122>,  <28.294699, 34.420616, 29.330700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162067, 34.051483, 29.409122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151912, 0.152876, 0.976500,
		-0.931116, 0.353571, 0.089498,
		-0.331580, -0.922831, 0.196057,
		28.062593, 33.774635, 29.467939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864851, 34.489555, 29.952824>,  <28.294699, 34.420616, 29.330700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864851, 34.489555, 29.952824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961580, 34.101791, 29.936050>,  <28.019619, 33.869133, 29.925985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961580, 34.101791, 29.936050>,  <27.864851, 34.489555, 29.952824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961580, 34.101791, 29.936050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310892, 0.036470, 0.949745,
		-0.919166, -0.242709, 0.310202,
		0.241825, -0.969413, -0.041935,
		28.034128, 33.810966, 29.923470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443630, 34.163826, 30.493034>,  <27.864851, 34.489555, 29.952824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443630, 34.163826, 30.493034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768120, 33.943695, 30.413984>,  <27.962814, 33.811619, 30.366554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768120, 33.943695, 30.413984>,  <27.443630, 34.163826, 30.493034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768120, 33.943695, 30.413984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171490, -0.099194, 0.980179,
		-0.559020, -0.829037, 0.013906,
		0.811226, -0.550325, -0.197623,
		28.011488, 33.778599, 30.354698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447113, 33.806004, 31.055252>,  <27.443630, 34.163826, 30.493034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447113, 33.806004, 31.055252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.819300, 33.775948, 30.911816>,  <28.042612, 33.757915, 30.825754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.819300, 33.775948, 30.911816>,  <27.447113, 33.806004, 31.055252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819300, 33.775948, 30.911816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357261, -0.030917, 0.933493,
		-0.081229, -0.996694, -0.001923,
		0.930466, -0.075140, -0.358591,
		28.098440, 33.753407, 30.804239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713591, 33.350761, 31.444042>,  <27.447113, 33.806004, 31.055252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713591, 33.350761, 31.444042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040607, 33.517063, 31.284660>,  <28.236818, 33.616844, 31.189032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040607, 33.517063, 31.284660>,  <27.713591, 33.350761, 31.444042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040607, 33.517063, 31.284660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418465, 0.046432, 0.907045,
		0.395614, -0.908289, -0.136020,
		0.817543, 0.415759, -0.398456,
		28.285870, 33.641792, 31.165123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241856, 33.216297, 31.900860>,  <27.713591, 33.350761, 31.444042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241856, 33.216297, 31.900860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404114, 33.506268, 31.678171>,  <28.501469, 33.680248, 31.544558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404114, 33.506268, 31.678171>,  <28.241856, 33.216297, 31.900860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404114, 33.506268, 31.678171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554348, 0.289160, 0.780439,
		0.726739, -0.625199, -0.284562,
		0.405646, 0.724922, -0.556722,
		28.525808, 33.723743, 31.511154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033388, 33.175709, 31.772629>,  <28.241856, 33.216297, 31.900860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033388, 33.175709, 31.772629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890566, 33.548443, 31.746744>,  <28.804873, 33.772083, 31.731213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890566, 33.548443, 31.746744>,  <29.033388, 33.175709, 31.772629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890566, 33.548443, 31.746744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309324, 0.183324, 0.933119,
		0.881380, 0.313157, -0.353697,
		-0.357054, 0.931840, -0.064711,
		28.783449, 33.827995, 31.727331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592888, 33.543999, 32.164932>,  <29.033388, 33.175709, 31.772629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592888, 33.543999, 32.164932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261713, 33.766560, 32.136826>,  <29.063007, 33.900097, 32.119961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261713, 33.766560, 32.136826>,  <29.592888, 33.543999, 32.164932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261713, 33.766560, 32.136826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078501, 0.239038, 0.967832,
		0.555300, 0.795787, -0.241587,
		-0.827937, 0.556402, -0.070268,
		29.013332, 33.933479, 32.115746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979931, 32.945656, 32.293125>,  <29.592888, 33.543999, 32.164932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979931, 32.945656, 32.293125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337912, 33.043262, 32.143715>,  <30.552700, 33.101826, 32.054070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337912, 33.043262, 32.143715>,  <29.979931, 32.945656, 32.293125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337912, 33.043262, 32.143715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329387, -0.926047, 0.184232,
		-0.300946, -0.287913, -0.909141,
		0.894950, 0.244015, -0.373525,
		30.606396, 33.116467, 32.031658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232384, 32.536705, 31.864347>,  <29.979931, 32.945656, 32.293125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232384, 32.536705, 31.864347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567928, 32.701305, 32.006882>,  <30.769255, 32.800064, 32.092403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567928, 32.701305, 32.006882>,  <30.232384, 32.536705, 31.864347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567928, 32.701305, 32.006882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418257, -0.906218, 0.061882,
		0.348384, 0.097130, -0.932306,
		0.838862, 0.411502, 0.356337,
		30.819588, 32.824757, 32.113781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756027, 32.284229, 31.430740>,  <30.232384, 32.536705, 31.864347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756027, 32.284229, 31.430740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934465, 32.374409, 31.777189>,  <31.041529, 32.428516, 31.985060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934465, 32.374409, 31.777189>,  <30.756027, 32.284229, 31.430740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934465, 32.374409, 31.777189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443992, -0.896019, 0.004554,
		0.777090, 0.382521, -0.499808,
		0.446096, 0.225450, 0.866124,
		31.068295, 32.442043, 32.037025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364779, 31.750879, 31.408178>,  <30.756027, 32.284229, 31.430740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364779, 31.750879, 31.408178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294502, 31.905348, 31.770393>,  <31.252337, 31.998030, 31.987722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294502, 31.905348, 31.770393>,  <31.364779, 31.750879, 31.408178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294502, 31.905348, 31.770393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298726, -0.855563, 0.422819,
		0.938027, 0.344794, 0.034955,
		-0.175692, 0.386174, 0.905540,
		31.241795, 32.021198, 32.042057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894535, 31.532053, 31.743427>,  <31.364779, 31.750879, 31.408178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894535, 31.532053, 31.743427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628529, 31.613739, 32.030773>,  <31.468925, 31.662750, 32.203182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628529, 31.613739, 32.030773>,  <31.894535, 31.532053, 31.743427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628529, 31.613739, 32.030773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265327, -0.834534, 0.482860,
		0.698109, 0.511712, 0.500794,
		-0.665015, 0.204215, 0.718367,
		31.429024, 31.675003, 32.246284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080948, 31.734749, 32.510242>,  <31.894535, 31.532053, 31.743427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080948, 31.734749, 32.510242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208195, 32.026253, 32.752800>,  <32.284542, 32.201157, 32.898335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208195, 32.026253, 32.752800>,  <32.080948, 31.734749, 32.510242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208195, 32.026253, 32.752800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943490, -0.306027, -0.127178,
		0.092889, 0.612580, -0.784932,
		0.318117, 0.728762, 0.606389,
		32.303631, 32.244881, 32.934715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690205, 31.501177, 32.904823>,  <32.080948, 31.734749, 32.510242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690205, 31.501177, 32.904823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924919, 31.289728, 32.659470>,  <33.065750, 31.162859, 32.512257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924919, 31.289728, 32.659470>,  <32.690205, 31.501177, 32.904823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924919, 31.289728, 32.659470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465095, -0.840115, 0.279093,
		-0.662846, 0.121512, -0.738830,
		0.586789, -0.528622, -0.613381,
		33.100956, 31.131142, 32.475456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968704, 31.332882, 33.482388>,  <32.690205, 31.501177, 32.904823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968704, 31.332882, 33.482388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268154, 31.585318, 33.401112>,  <33.447823, 31.736778, 33.352345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268154, 31.585318, 33.401112>,  <32.968704, 31.332882, 33.482388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268154, 31.585318, 33.401112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583085, 0.772579, 0.251263,
		0.315552, -0.069624, 0.946351,
		0.748625, 0.631090, -0.203192,
		33.492741, 31.774645, 33.340153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148029, 31.836763, 33.972626>,  <32.968704, 31.332882, 33.482388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148029, 31.836763, 33.972626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233208, 32.008736, 33.621670>,  <33.284313, 32.111919, 33.411095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233208, 32.008736, 33.621670>,  <33.148029, 31.836763, 33.972626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233208, 32.008736, 33.621670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305529, 0.882254, 0.358162,
		0.928066, 0.191799, 0.319228,
		0.212945, 0.429931, -0.877391,
		33.297092, 32.137714, 33.358452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508846, 32.363495, 34.165176>,  <33.148029, 31.836763, 33.972626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508846, 32.363495, 34.165176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347202, 32.451271, 33.809978>,  <33.250217, 32.503937, 33.596859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347202, 32.451271, 33.809978>,  <33.508846, 32.363495, 34.165176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347202, 32.451271, 33.809978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330335, 0.870269, 0.365390,
		0.852981, 0.440994, -0.279191,
		-0.404106, 0.219445, -0.887999,
		33.225971, 32.517105, 33.543579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610218, 33.038277, 34.156563>,  <33.508846, 32.363495, 34.165176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610218, 33.038277, 34.156563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329102, 32.989304, 33.876251>,  <33.160431, 32.959919, 33.708065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329102, 32.989304, 33.876251>,  <33.610218, 33.038277, 34.156563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329102, 32.989304, 33.876251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531522, 0.745101, 0.402876,
		0.472829, 0.655618, -0.588725,
		-0.702792, -0.122428, -0.700781,
		33.118263, 32.952576, 33.666016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580948, 33.686558, 33.856400>,  <33.610218, 33.038277, 34.156563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580948, 33.686558, 33.856400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239834, 33.497009, 33.768585>,  <33.035164, 33.383278, 33.715897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239834, 33.497009, 33.768585>,  <33.580948, 33.686558, 33.856400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239834, 33.497009, 33.768585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518922, 0.816266, 0.253831,
		0.058914, 0.330385, -0.942006,
		-0.852789, -0.473873, -0.219533,
		32.983997, 33.354847, 33.702724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198559, 34.162807, 33.515465>,  <33.580948, 33.686558, 33.856400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198559, 34.162807, 33.515465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914276, 33.900208, 33.616577>,  <32.743706, 33.742645, 33.677242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914276, 33.900208, 33.616577>,  <33.198559, 34.162807, 33.515465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914276, 33.900208, 33.616577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674280, 0.738168, 0.021331,
		-0.200598, -0.155283, -0.967289,
		-0.710709, -0.656502, 0.252779,
		32.701065, 33.703259, 33.692410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741783, 34.426350, 33.230705>,  <33.198559, 34.162807, 33.515465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741783, 34.426350, 33.230705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569168, 34.196419, 33.508797>,  <32.465599, 34.058460, 33.675652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569168, 34.196419, 33.508797>,  <32.741783, 34.426350, 33.230705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569168, 34.196419, 33.508797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700415, 0.699192, 0.143351,
		-0.568503, -0.425090, -0.704346,
		-0.431536, -0.574830, 0.695232,
		32.439709, 34.023972, 33.717365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129433, 34.575535, 33.187481>,  <32.741783, 34.426350, 33.230705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129433, 34.575535, 33.187481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101391, 34.387524, 33.539429>,  <32.084568, 34.274719, 33.750595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101391, 34.387524, 33.539429>,  <32.129433, 34.575535, 33.187481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101391, 34.387524, 33.539429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717895, 0.636187, 0.282655,
		-0.692613, -0.611837, -0.382025,
		-0.070100, -0.470024, 0.879865,
		32.080360, 34.246517, 33.803387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453899, 34.689800, 33.462543>,  <32.129433, 34.575535, 33.187481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453899, 34.689800, 33.462543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643122, 34.559116, 33.789829>,  <31.756655, 34.480705, 33.986202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643122, 34.559116, 33.789829>,  <31.453899, 34.689800, 33.462543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643122, 34.559116, 33.789829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620287, 0.536013, 0.572655,
		-0.625668, -0.778426, 0.050908,
		0.473057, -0.326714, 0.818214,
		31.785038, 34.461102, 34.035294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870367, 34.445068, 33.932140>,  <31.453899, 34.689800, 33.462543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870367, 34.445068, 33.932140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206062, 34.569160, 34.110775>,  <31.407478, 34.643616, 34.217957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206062, 34.569160, 34.110775>,  <30.870367, 34.445068, 33.932140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206062, 34.569160, 34.110775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500953, 0.760524, 0.413096,
		-0.211487, -0.570406, 0.793669,
		0.839237, 0.310227, 0.446588,
		31.457834, 34.662228, 34.244751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732628, 34.450680, 34.720985>,  <30.870367, 34.445068, 33.932140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732628, 34.450680, 34.720985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040188, 34.695396, 34.646690>,  <31.224724, 34.842228, 34.602112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040188, 34.695396, 34.646690>,  <30.732628, 34.450680, 34.720985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040188, 34.695396, 34.646690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468037, 0.736496, 0.488379,
		0.435583, -0.288583, 0.852636,
		0.768901, 0.611795, -0.185738,
		31.270859, 34.878937, 34.590969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598976, 34.982544, 35.159531>,  <30.732628, 34.450680, 34.720985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598976, 34.982544, 35.159531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864758, 35.175434, 34.931156>,  <31.024225, 35.291168, 34.794132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864758, 35.175434, 34.931156>,  <30.598976, 34.982544, 35.159531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864758, 35.175434, 34.931156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402505, 0.874609, 0.270275,
		0.629677, 0.050219, 0.775232,
		0.664452, 0.482221, -0.570935,
		31.064093, 35.320099, 34.759876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119616, 35.345058, 35.578991>,  <30.598976, 34.982544, 35.159531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119616, 35.345058, 35.578991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152321, 35.522518, 35.222004>,  <31.171944, 35.628994, 35.007812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152321, 35.522518, 35.222004>,  <31.119616, 35.345058, 35.578991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152321, 35.522518, 35.222004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094551, 0.894877, 0.436183,
		0.992157, 0.048719, 0.115117,
		0.081765, 0.443647, -0.892464,
		31.176851, 35.655613, 34.954266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488686, 35.915134, 35.695831>,  <31.119616, 35.345058, 35.578991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488686, 35.915134, 35.695831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299332, 35.993767, 35.352375>,  <31.185719, 36.040947, 35.146301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299332, 35.993767, 35.352375>,  <31.488686, 35.915134, 35.695831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299332, 35.993767, 35.352375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379528, 0.834140, 0.400210,
		0.794899, 0.515332, -0.320263,
		-0.473386, 0.196578, -0.858640,
		31.157316, 36.052738, 35.094784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395100, 36.649776, 35.714046>,  <31.488686, 35.915134, 35.695831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395100, 36.649776, 35.714046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134581, 36.571064, 35.420902>,  <30.978270, 36.523838, 35.245014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134581, 36.571064, 35.420902>,  <31.395100, 36.649776, 35.714046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134581, 36.571064, 35.420902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551534, 0.786083, 0.279077,
		0.521176, 0.585962, -0.620503,
		-0.651296, -0.196780, -0.732865,
		30.939192, 36.512032, 35.201042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298521, 37.279953, 35.459915>,  <31.395100, 36.649776, 35.714046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298521, 37.279953, 35.459915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996891, 37.060417, 35.315617>,  <30.815912, 36.928696, 35.229038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996891, 37.060417, 35.315617>,  <31.298521, 37.279953, 35.459915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996891, 37.060417, 35.315617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644715, 0.723388, 0.247088,
		0.125349, 0.418904, -0.899337,
		-0.754075, -0.548844, -0.360750,
		30.770668, 36.895763, 35.207390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946867, 37.765862, 35.153576>,  <31.298521, 37.279953, 35.459915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946867, 37.765862, 35.153576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688786, 37.460567, 35.167339>,  <30.533936, 37.277390, 35.175598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688786, 37.460567, 35.167339>,  <30.946867, 37.765862, 35.153576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688786, 37.460567, 35.167339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750259, 0.641455, 0.160142,
		-0.144298, 0.077509, -0.986494,
		-0.645204, -0.763235, 0.034409,
		30.495224, 37.231598, 35.177662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243057, 37.872990, 34.746605>,  <30.946867, 37.765862, 35.153576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243057, 37.872990, 34.746605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139528, 37.617043, 35.036037>,  <30.077410, 37.463474, 35.209698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139528, 37.617043, 35.036037>,  <30.243057, 37.872990, 34.746605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139528, 37.617043, 35.036037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695429, 0.643335, 0.320154,
		-0.670365, -0.420338, -0.611496,
		-0.258824, -0.639872, 0.723585,
		30.061882, 37.425079, 35.253113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522652, 37.901829, 34.813030>,  <30.243057, 37.872990, 34.746605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522652, 37.901829, 34.813030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631802, 37.751530, 35.167286>,  <29.697292, 37.661350, 35.379837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631802, 37.751530, 35.167286>,  <29.522652, 37.901829, 34.813030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631802, 37.751530, 35.167286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731871, 0.516424, 0.444602,
		-0.624422, -0.769493, -0.134080,
		0.272877, -0.375748, 0.885636,
		29.713665, 37.638805, 35.432976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908802, 37.884380, 35.117165>,  <29.522652, 37.901829, 34.813030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908802, 37.884380, 35.117165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167173, 37.846172, 35.420124>,  <29.322195, 37.823246, 35.601898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167173, 37.846172, 35.420124>,  <28.908802, 37.884380, 35.117165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167173, 37.846172, 35.420124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622960, 0.507507, 0.595279,
		-0.441246, -0.856337, 0.268308,
		0.645928, -0.095519, 0.757399,
		29.360952, 37.817516, 35.647343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477919, 37.695992, 35.685364>,  <28.908802, 37.884380, 35.117165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477919, 37.695992, 35.685364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817528, 37.834057, 35.845371>,  <29.021294, 37.916897, 35.941376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817528, 37.834057, 35.845371>,  <28.477919, 37.695992, 35.685364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817528, 37.834057, 35.845371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527417, 0.598758, 0.602761,
		-0.031463, -0.722737, 0.690406,
		0.849024, 0.345167, 0.400022,
		29.072235, 37.937607, 35.965378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369698, 37.644341, 36.444027>,  <28.477919, 37.695992, 35.685364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369698, 37.644341, 36.444027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637966, 37.924335, 36.345867>,  <28.798927, 38.092331, 36.286972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637966, 37.924335, 36.345867>,  <28.369698, 37.644341, 36.444027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637966, 37.924335, 36.345867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501485, 0.671664, 0.545326,
		0.546543, -0.242673, 0.801499,
		0.670674, 0.699984, -0.245397,
		28.839169, 38.134331, 36.272247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289059, 38.091511, 36.980419>,  <28.369698, 37.644341, 36.444027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289059, 38.091511, 36.980419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511940, 38.307743, 36.728291>,  <28.645668, 38.437481, 36.577015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511940, 38.307743, 36.728291>,  <28.289059, 38.091511, 36.980419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511940, 38.307743, 36.728291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369195, 0.841200, 0.395067,
		0.743788, 0.012578, 0.668297,
		0.557202, 0.540578, -0.630318,
		28.679100, 38.469917, 36.539196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650448, 38.623230, 37.431583>,  <28.289059, 38.091511, 36.980419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650448, 38.623230, 37.431583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652931, 38.768261, 37.058811>,  <28.654421, 38.855278, 36.835148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652931, 38.768261, 37.058811>,  <28.650448, 38.623230, 37.431583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652931, 38.768261, 37.058811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318501, 0.884133, 0.341855,
		0.947902, 0.294699, 0.120970,
		0.006210, 0.362574, -0.931934,
		28.654795, 38.877033, 36.779232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073782, 39.181889, 37.518776>,  <28.650448, 38.623230, 37.431583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073782, 39.181889, 37.518776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899050, 39.250626, 37.165585>,  <28.794210, 39.291866, 36.953671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899050, 39.250626, 37.165585>,  <29.073782, 39.181889, 37.518776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899050, 39.250626, 37.165585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260863, 0.915204, 0.307168,
		0.860889, 0.364516, -0.354962,
		-0.436830, 0.171841, -0.882978,
		28.768002, 39.302177, 36.900692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365597, 39.787724, 37.273880>,  <29.073782, 39.181889, 37.518776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365597, 39.787724, 37.273880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008448, 39.744972, 37.098900>,  <28.794159, 39.719322, 36.993912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008448, 39.744972, 37.098900>,  <29.365597, 39.787724, 37.273880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008448, 39.744972, 37.098900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257396, 0.918218, 0.301037,
		0.369499, 0.381384, -0.847359,
		-0.892870, -0.106874, -0.437448,
		28.740587, 39.712910, 36.967667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243954, 40.351147, 36.915112>,  <29.365597, 39.787724, 37.273880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243954, 40.351147, 36.915112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884848, 40.191162, 36.988922>,  <28.669384, 40.095173, 37.033207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884848, 40.191162, 36.988922>,  <29.243954, 40.351147, 36.915112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884848, 40.191162, 36.988922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346807, 0.900109, 0.263681,
		-0.271552, 0.172731, -0.946797,
		-0.897766, -0.399959, 0.184522,
		28.615519, 40.071175, 37.044277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827309, 40.844902, 36.596153>,  <29.243954, 40.351147, 36.915112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827309, 40.844902, 36.596153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648754, 40.627552, 36.880543>,  <28.541622, 40.497143, 37.051178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648754, 40.627552, 36.880543>,  <28.827309, 40.844902, 36.596153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648754, 40.627552, 36.880543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523623, 0.802910, 0.284876,
		-0.725644, -0.245120, -0.642928,
		-0.446385, -0.543370, 0.710978,
		28.514839, 40.464542, 37.093838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168228, 41.078068, 36.576607>,  <28.827309, 40.844902, 36.596153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168228, 41.078068, 36.576607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174425, 40.881901, 36.925148>,  <28.178144, 40.764198, 37.134274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174425, 40.881901, 36.925148>,  <28.168228, 41.078068, 36.576607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174425, 40.881901, 36.925148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562520, 0.716188, 0.413093,
		-0.826638, -0.496551, -0.264775,
		0.015494, -0.490420, 0.871349,
		28.179073, 40.734776, 37.186554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467825, 41.027626, 36.881596>,  <28.168228, 41.078068, 36.576607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467825, 41.027626, 36.881596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720623, 40.971466, 37.186455>,  <27.872301, 40.937771, 37.369370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720623, 40.971466, 37.186455>,  <27.467825, 41.027626, 36.881596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720623, 40.971466, 37.186455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474801, 0.707118, 0.523974,
		-0.612494, -0.693018, 0.380233,
		0.631993, -0.140396, 0.762151,
		27.910221, 40.929348, 37.415100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116814, 41.139271, 37.471542>,  <27.467825, 41.027626, 36.881596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116814, 41.139271, 37.471542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485909, 41.169544, 37.622715>,  <27.707365, 41.187710, 37.713417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485909, 41.169544, 37.622715>,  <27.116814, 41.139271, 37.471542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485909, 41.169544, 37.622715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337241, 0.633301, 0.696562,
		-0.186623, -0.770195, 0.609894,
		0.922735, 0.075687, 0.377930,
		27.762730, 41.192249, 37.736095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028362, 41.365421, 38.178749>,  <27.116814, 41.139271, 37.471542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028362, 41.365421, 38.178749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400471, 41.479931, 38.086979>,  <27.623737, 41.548637, 38.031918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400471, 41.479931, 38.086979>,  <27.028362, 41.365421, 38.178749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400471, 41.479931, 38.086979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148562, 0.865757, 0.477907,
		0.335441, -0.410500, 0.847920,
		0.930273, 0.286278, -0.229425,
		27.679552, 41.565815, 38.018150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227962, 41.722511, 38.787819>,  <27.028362, 41.365421, 38.178749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227962, 41.722511, 38.787819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538534, 41.820377, 38.555511>,  <27.724878, 41.879097, 38.416126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538534, 41.820377, 38.555511>,  <27.227962, 41.722511, 38.787819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538534, 41.820377, 38.555511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131183, 0.838631, 0.528668,
		0.616397, -0.486661, 0.619044,
		0.776431, 0.244661, -0.580771,
		27.771463, 41.893776, 38.381279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825752, 41.906006, 39.183392>,  <27.227962, 41.722511, 38.787819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825752, 41.906006, 39.183392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878187, 42.102192, 38.838776>,  <27.909649, 42.219906, 38.632004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878187, 42.102192, 38.838776>,  <27.825752, 41.906006, 39.183392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878187, 42.102192, 38.838776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131850, 0.869948, 0.475191,
		0.982564, 0.051302, 0.178709,
		0.131090, 0.490468, -0.861544,
		27.917515, 42.249332, 38.580311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338776, 42.393295, 39.333111>,  <27.825752, 41.906006, 39.183392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338776, 42.393295, 39.333111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131176, 42.543976, 39.026196>,  <28.006617, 42.634384, 38.842045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131176, 42.543976, 39.026196>,  <28.338776, 42.393295, 39.333111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131176, 42.543976, 39.026196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018161, 0.902309, 0.430706,
		0.854581, 0.209602, -0.475140,
		-0.519000, 0.376703, -0.767290,
		27.975475, 42.656986, 38.796009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624451, 43.024040, 39.203480>,  <28.338776, 42.393295, 39.333111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624451, 43.024040, 39.203480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273281, 43.063843, 39.016144>,  <28.062578, 43.087723, 38.903744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273281, 43.063843, 39.016144>,  <28.624451, 43.024040, 39.203480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273281, 43.063843, 39.016144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068063, 0.942294, 0.327795,
		0.473933, 0.319657, -0.820492,
		-0.877926, 0.099508, -0.468341,
		28.009903, 43.093697, 38.875641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626785, 43.639469, 38.953011>,  <28.624451, 43.024040, 39.203480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626785, 43.639469, 38.953011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231201, 43.587006, 38.925438>,  <27.993851, 43.555527, 38.908894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231201, 43.587006, 38.925438>,  <28.626785, 43.639469, 38.953011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231201, 43.587006, 38.925438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148094, 0.889776, 0.431702,
		0.004710, 0.437145, -0.899379,
		-0.988962, -0.131159, -0.068930,
		27.934513, 43.547657, 38.904758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319447, 44.323414, 38.650848>,  <28.626785, 43.639469, 38.953011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319447, 44.323414, 38.650848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036514, 44.112625, 38.839310>,  <27.866755, 43.986153, 38.952385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036514, 44.112625, 38.839310>,  <28.319447, 44.323414, 38.650848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036514, 44.112625, 38.839310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298097, 0.826724, 0.477143,
		-0.640956, 0.197047, -0.741855,
		-0.707329, -0.526972, 0.471154,
		27.824316, 43.954533, 38.980656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726154, 44.710079, 38.572960>,  <28.319447, 44.323414, 38.650848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726154, 44.710079, 38.572960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643288, 44.468319, 38.880672>,  <27.593567, 44.323265, 39.065300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643288, 44.468319, 38.880672>,  <27.726154, 44.710079, 38.572960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643288, 44.468319, 38.880672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305919, 0.786924, 0.535877,
		-0.929245, -0.124321, -0.347920,
		-0.207166, -0.604396, 0.769278,
		27.581139, 44.286999, 39.111454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154732, 44.962547, 38.822914>,  <27.726154, 44.710079, 38.572960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154732, 44.962547, 38.822914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257654, 44.762451, 39.153625>,  <27.319408, 44.642395, 39.352051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257654, 44.762451, 39.153625>,  <27.154732, 44.962547, 38.822914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257654, 44.762451, 39.153625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317128, 0.764483, 0.561244,
		-0.912811, -0.406605, 0.038067,
		0.257306, -0.500238, 0.826774,
		27.334846, 44.612381, 39.401657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475025, 44.732506, 39.163403>,  <27.154732, 44.962547, 38.822914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475025, 44.732506, 39.163403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788317, 44.783424, 39.406826>,  <26.976292, 44.813976, 39.552879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788317, 44.783424, 39.406826>,  <26.475025, 44.732506, 39.163403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788317, 44.783424, 39.406826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521115, 0.668276, 0.530892,
		-0.339105, -0.732941, 0.589750,
		0.783228, 0.127299, 0.608563,
		27.023285, 44.821613, 39.589394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262419, 44.782494, 39.888645>,  <26.475025, 44.732506, 39.163403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262419, 44.782494, 39.888645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613871, 44.973354, 39.895981>,  <26.824741, 45.087872, 39.900383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613871, 44.973354, 39.895981>,  <26.262419, 44.782494, 39.888645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613871, 44.973354, 39.895981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307041, 0.535142, 0.786987,
		0.365693, -0.697104, 0.616697,
		0.878632, 0.477147, 0.018342,
		26.877460, 45.116497, 39.901482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748404, 44.748188, 40.483944>,  <26.262419, 44.782494, 39.888645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748404, 44.748188, 40.483944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703014, 45.097492, 40.294403>,  <26.675781, 45.307076, 40.180679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703014, 45.097492, 40.294403>,  <26.748404, 44.748188, 40.483944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703014, 45.097492, 40.294403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321502, 0.418997, 0.849162,
		0.940085, 0.248701, 0.233212,
		-0.113472, 0.873263, -0.473851,
		26.668972, 45.359470, 40.152248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052837, 45.273018, 40.949467>,  <26.748404, 44.748188, 40.483944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052837, 45.273018, 40.949467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791393, 45.453979, 40.706776>,  <26.634527, 45.562557, 40.561161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791393, 45.453979, 40.706776>,  <27.052837, 45.273018, 40.949467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791393, 45.453979, 40.706776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205911, 0.665130, 0.717777,
		0.728280, 0.594080, -0.341581,
		-0.653612, 0.452407, -0.606728,
		26.595310, 45.589703, 40.524757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158060, 45.936268, 40.982220>,  <27.052837, 45.273018, 40.949467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158060, 45.936268, 40.982220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784786, 45.925766, 40.838844>,  <26.560822, 45.919464, 40.752819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784786, 45.925766, 40.838844>,  <27.158060, 45.936268, 40.982220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784786, 45.925766, 40.838844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322971, 0.498770, 0.804312,
		0.157666, 0.866337, -0.473922,
		-0.933183, -0.026250, -0.358441,
		26.504831, 45.917892, 40.731312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597170, 45.939579, 41.535439>,  <27.158060, 45.936268, 40.982220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597170, 45.939579, 41.535439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914761, 46.016212, 41.304649>,  <28.105314, 46.062195, 41.166176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914761, 46.016212, 41.304649>,  <27.597170, 45.939579, 41.535439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914761, 46.016212, 41.304649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470516, -0.794639, 0.383619,
		-0.384988, -0.576059, -0.721069,
		0.793977, 0.191586, -0.576971,
		28.152954, 46.073689, 41.131557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826643, 45.436016, 41.064217>,  <27.597170, 45.939579, 41.535439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826643, 45.436016, 41.064217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124519, 45.655029, 41.216869>,  <28.303246, 45.786438, 41.308460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124519, 45.655029, 41.216869>,  <27.826643, 45.436016, 41.064217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124519, 45.655029, 41.216869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428149, -0.830563, 0.356165,
		0.511981, -0.101838, -0.852939,
		0.744691, 0.547534, 0.381631,
		28.347927, 45.819290, 41.331360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549786, 45.197609, 40.776134>,  <27.826643, 45.436016, 41.064217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549786, 45.197609, 40.776134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605568, 45.365963, 41.134666>,  <28.639038, 45.466976, 41.349785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605568, 45.365963, 41.134666>,  <28.549786, 45.197609, 40.776134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605568, 45.365963, 41.134666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592130, -0.760958, 0.265189,
		0.793684, 0.493762, -0.355336,
		0.139456, 0.420881, 0.896332,
		28.647406, 45.492226, 41.403564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307159, 45.527710, 40.792301>,  <28.549786, 45.197609, 40.776134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307159, 45.527710, 40.792301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108982, 45.369102, 41.101444>,  <28.990076, 45.273937, 41.286930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108982, 45.369102, 41.101444>,  <29.307159, 45.527710, 40.792301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108982, 45.369102, 41.101444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640849, -0.767477, 0.017066,
		0.586384, 0.503741, 0.634350,
		-0.495445, -0.396515, 0.772858,
		28.960348, 45.250149, 41.333302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785789, 45.300236, 41.361633>,  <29.307159, 45.527710, 40.792301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785789, 45.300236, 41.361633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452835, 45.103222, 41.260014>,  <29.253063, 44.985012, 41.199039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452835, 45.103222, 41.260014>,  <29.785789, 45.300236, 41.361633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452835, 45.103222, 41.260014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534055, -0.835350, -0.130294,
		-0.148049, -0.244134, 0.958374,
		-0.832386, -0.492534, -0.254053,
		29.203119, 44.955463, 41.183796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888779, 44.702648, 41.604839>,  <29.785789, 45.300236, 41.361633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888779, 44.702648, 41.604839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576054, 44.624809, 41.367893>,  <29.388418, 44.578106, 41.225727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576054, 44.624809, 41.367893>,  <29.888779, 44.702648, 41.604839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576054, 44.624809, 41.367893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400316, -0.885039, -0.237598,
		-0.478029, -0.422891, 0.769839,
		-0.781815, -0.194600, -0.592365,
		29.341509, 44.566429, 41.190186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793135, 44.018871, 41.791206>,  <29.888779, 44.702648, 41.604839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793135, 44.018871, 41.791206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607143, 44.068649, 41.440594>,  <29.495548, 44.098515, 41.230225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607143, 44.068649, 41.440594>,  <29.793135, 44.018871, 41.791206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607143, 44.068649, 41.440594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375233, -0.869044, -0.322433,
		-0.801871, -0.478828, 0.357388,
		-0.464976, 0.124446, -0.876533,
		29.467651, 44.105984, 41.177635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363626, 43.447792, 41.762051>,  <29.793135, 44.018871, 41.791206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363626, 43.447792, 41.762051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387249, 43.601379, 41.393471>,  <29.401423, 43.693531, 41.172321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387249, 43.601379, 41.393471>,  <29.363626, 43.447792, 41.762051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387249, 43.601379, 41.393471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229057, -0.903649, -0.361872,
		-0.971620, -0.189695, -0.141319,
		0.059057, 0.383972, -0.921454,
		29.404966, 43.716572, 41.117035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018888, 42.983704, 41.400234>,  <29.363626, 43.447792, 41.762051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018888, 42.983704, 41.400234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267363, 43.180843, 41.156521>,  <29.416447, 43.299129, 41.010292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267363, 43.180843, 41.156521>,  <29.018888, 42.983704, 41.400234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267363, 43.180843, 41.156521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379929, -0.869399, -0.315909,
		-0.685407, -0.035246, -0.727307,
		0.621186, 0.492851, -0.609283,
		29.453718, 43.328697, 40.973736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948053, 42.589687, 40.795048>,  <29.018888, 42.983704, 41.400234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948053, 42.589687, 40.795048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278898, 42.808784, 40.744663>,  <29.477406, 42.940243, 40.714432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278898, 42.808784, 40.744663>,  <28.948053, 42.589687, 40.795048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278898, 42.808784, 40.744663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478131, -0.803536, -0.354570,
		-0.295423, 0.233045, -0.926507,
		0.827113, 0.547740, -0.125957,
		29.527033, 42.973106, 40.706875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144436, 42.421902, 40.147121>,  <28.948053, 42.589687, 40.795048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144436, 42.421902, 40.147121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480286, 42.555218, 40.318676>,  <29.681795, 42.635208, 40.421608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480286, 42.555218, 40.318676>,  <29.144436, 42.421902, 40.147121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480286, 42.555218, 40.318676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498635, -0.786083, -0.365291,
		0.215392, 0.520566, -0.826207,
		0.839625, 0.333295, 0.428888,
		29.732174, 42.655205, 40.447342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650837, 42.359169, 39.646885>,  <29.144436, 42.421902, 40.147121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650837, 42.359169, 39.646885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869707, 42.407055, 39.978249>,  <30.001030, 42.435787, 40.177067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869707, 42.407055, 39.978249>,  <29.650837, 42.359169, 39.646885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869707, 42.407055, 39.978249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664011, -0.664646, -0.342543,
		0.509595, 0.737506, -0.443168,
		0.547177, 0.119710, 0.828412,
		30.033859, 42.442966, 40.226772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338697, 42.304569, 39.390755>,  <29.650837, 42.359169, 39.646885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338697, 42.304569, 39.390755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377659, 42.268871, 39.787251>,  <30.401035, 42.247452, 40.025146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377659, 42.268871, 39.787251>,  <30.338697, 42.304569, 39.390755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377659, 42.268871, 39.787251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814114, -0.565751, -0.130934,
		0.572478, 0.819732, 0.017551,
		0.097401, -0.089245, 0.991236,
		30.406879, 42.242096, 40.084621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122850, 42.526566, 39.606537>,  <30.338697, 42.304569, 39.390755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122850, 42.526566, 39.606537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949049, 42.275589, 39.864998>,  <30.844769, 42.125004, 40.020077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949049, 42.275589, 39.864998>,  <31.122850, 42.526566, 39.606537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949049, 42.275589, 39.864998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773903, -0.627087, -0.088520,
		0.460738, 0.461600, 0.758054,
		-0.434505, -0.627445, 0.646156,
		30.818697, 42.087357, 40.058846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635544, 42.319939, 40.110771>,  <31.122850, 42.526566, 39.606537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635544, 42.319939, 40.110771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360559, 42.034679, 40.055893>,  <31.195570, 41.863525, 40.022968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360559, 42.034679, 40.055893>,  <31.635544, 42.319939, 40.110771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360559, 42.034679, 40.055893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726223, -0.675063, -0.129963,
		0.000069, -0.188976, 0.981982,
		-0.687460, -0.713146, -0.137192,
		31.154322, 41.820736, 40.014736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906353, 41.663979, 40.487396>,  <31.635544, 42.319939, 40.110771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906353, 41.663979, 40.487396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622076, 41.526630, 40.241791>,  <31.451509, 41.444221, 40.094425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622076, 41.526630, 40.241791>,  <31.906353, 41.663979, 40.487396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622076, 41.526630, 40.241791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593860, -0.760733, -0.261947,
		-0.377160, -0.550804, 0.744557,
		-0.710690, -0.343366, -0.614018,
		31.408869, 41.423622, 40.057587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935915, 40.838425, 40.518105>,  <31.906353, 41.663979, 40.487396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935915, 40.838425, 40.518105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703514, 40.897934, 40.198029>,  <31.564074, 40.933640, 40.005981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703514, 40.897934, 40.198029>,  <31.935915, 40.838425, 40.518105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703514, 40.897934, 40.198029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396131, -0.807160, -0.437690,
		-0.710995, -0.571280, 0.410032,
		-0.581005, 0.148769, -0.800188,
		31.529213, 40.942566, 39.957973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699299, 40.209568, 40.335354>,  <31.935915, 40.838425, 40.518105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699299, 40.209568, 40.335354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640135, 40.403919, 39.990788>,  <31.604637, 40.520531, 39.784046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640135, 40.403919, 39.990788>,  <31.699299, 40.209568, 40.335354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640135, 40.403919, 39.990788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424657, -0.755420, -0.499006,
		-0.893190, -0.439616, -0.094597,
		-0.147911, 0.485879, -0.861420,
		31.595762, 40.549683, 39.732361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534996, 39.669300, 39.982189>,  <31.699299, 40.209568, 40.335354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534996, 39.669300, 39.982189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609018, 39.963326, 39.721291>,  <31.653431, 40.139740, 39.564751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609018, 39.963326, 39.721291>,  <31.534996, 39.669300, 39.982189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609018, 39.963326, 39.721291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394026, -0.663527, -0.635983,
		-0.900276, -0.139311, -0.412426,
		0.185056, 0.735067, -0.652250,
		31.664536, 40.183846, 39.525616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140203, 39.526783, 39.262398>,  <31.534996, 39.669300, 39.982189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140203, 39.526783, 39.262398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464165, 39.759926, 39.236080>,  <31.658541, 39.899811, 39.220287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464165, 39.759926, 39.236080>,  <31.140203, 39.526783, 39.262398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464165, 39.759926, 39.236080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472730, -0.715017, -0.515051,
		-0.347249, 0.386037, -0.854630,
		0.809904, 0.582860, -0.065798,
		31.707136, 39.934784, 39.216339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259008, 39.541397, 38.551834>,  <31.140203, 39.526783, 39.262398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259008, 39.541397, 38.551834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596655, 39.659161, 38.731075>,  <31.799242, 39.729816, 38.838619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596655, 39.659161, 38.731075>,  <31.259008, 39.541397, 38.551834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596655, 39.659161, 38.731075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524453, -0.627081, -0.575951,
		0.111433, 0.721177, -0.683730,
		0.844116, 0.294404, 0.448101,
		31.849890, 39.747482, 38.865505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705235, 39.575535, 38.041401>,  <31.259008, 39.541397, 38.551834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705235, 39.575535, 38.041401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937527, 39.562115, 38.366760>,  <32.076904, 39.554062, 38.561977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937527, 39.562115, 38.366760>,  <31.705235, 39.575535, 38.041401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937527, 39.562115, 38.366760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633224, -0.609329, -0.477226,
		0.511641, 0.792207, -0.332612,
		0.580732, -0.033551, 0.813403,
		32.111748, 39.552048, 38.610783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378162, 39.651161, 37.811901>,  <31.705235, 39.575535, 38.041401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378162, 39.651161, 37.811901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406631, 39.472462, 38.168633>,  <32.423714, 39.365242, 38.382671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406631, 39.472462, 38.168633>,  <32.378162, 39.651161, 37.811901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406631, 39.472462, 38.168633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578087, -0.710150, -0.401873,
		0.812865, 0.544154, 0.207718,
		0.071170, -0.446747, 0.891825,
		32.427982, 39.338436, 38.436180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980221, 39.496693, 37.963882>,  <32.378162, 39.651161, 37.811901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980221, 39.496693, 37.963882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775726, 39.212284, 38.156998>,  <32.653030, 39.041637, 38.272865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775726, 39.212284, 38.156998>,  <32.980221, 39.496693, 37.963882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775726, 39.212284, 38.156998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520235, -0.703159, -0.484689,
		0.684100, 0.003370, 0.729381,
		-0.511237, -0.711025, 0.482784,
		32.622356, 38.998978, 38.301834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520691, 38.983025, 38.150059>,  <32.980221, 39.496693, 37.963882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520691, 38.983025, 38.150059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174450, 38.787716, 38.194469>,  <32.966705, 38.670528, 38.221115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174450, 38.787716, 38.194469>,  <33.520691, 38.983025, 38.150059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174450, 38.787716, 38.194469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347981, -0.745997, -0.567800,
		0.360065, -0.452854, 0.815645,
		-0.865599, -0.488274, 0.111023,
		32.914768, 38.641235, 38.227776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738388, 38.393120, 38.195290>,  <33.520691, 38.983025, 38.150059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738388, 38.393120, 38.195290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350574, 38.317089, 38.133480>,  <33.117886, 38.271469, 38.096394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350574, 38.317089, 38.133480>,  <33.738388, 38.393120, 38.195290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350574, 38.317089, 38.133480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244870, -0.734473, -0.632920,
		0.006806, -0.651476, 0.758639,
		-0.969532, -0.190076, -0.154528,
		33.059715, 38.260067, 38.087120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690228, 37.672199, 38.398537>,  <33.738388, 38.393120, 38.195290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690228, 37.672199, 38.398537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389595, 37.743340, 38.144451>,  <33.209217, 37.786022, 37.992001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389595, 37.743340, 38.144451>,  <33.690228, 37.672199, 38.398537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389595, 37.743340, 38.144451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333533, -0.728340, -0.598562,
		-0.569106, -0.661732, 0.488087,
		-0.751581, 0.177851, -0.635213,
		33.164120, 37.796696, 37.953888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540707, 37.000343, 38.204857>,  <33.690228, 37.672199, 38.398537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540707, 37.000343, 38.204857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345798, 37.223251, 37.935928>,  <33.228855, 37.356998, 37.774570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345798, 37.223251, 37.935928>,  <33.540707, 37.000343, 38.204857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345798, 37.223251, 37.935928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255915, -0.644975, -0.720080,
		-0.834912, -0.522929, 0.171661,
		-0.487267, 0.557273, -0.672322,
		33.199619, 37.390434, 37.734230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924683, 36.670959, 37.907051>,  <33.540707, 37.000343, 38.204857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924683, 36.670959, 37.907051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072670, 36.938747, 37.649387>,  <33.161461, 37.099419, 37.494789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072670, 36.938747, 37.649387>,  <32.924683, 36.670959, 37.907051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072670, 36.938747, 37.649387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249360, -0.739468, -0.625305,
		-0.894955, 0.070714, -0.440517,
		0.369966, 0.669467, -0.644158,
		33.183659, 37.139587, 37.456139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501907, 36.561195, 37.278057>,  <32.924683, 36.670959, 37.907051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501907, 36.561195, 37.278057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857338, 36.722580, 37.190742>,  <33.070595, 36.819412, 37.138351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857338, 36.722580, 37.190742>,  <32.501907, 36.561195, 37.278057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857338, 36.722580, 37.190742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155385, -0.712453, -0.684299,
		-0.431610, 0.574133, -0.695761,
		0.888576, 0.403462, -0.218290,
		33.123909, 36.843620, 37.125256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518738, 36.505077, 36.583832>,  <32.501907, 36.561195, 37.278057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518738, 36.505077, 36.583832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900669, 36.587440, 36.669529>,  <33.129829, 36.636860, 36.720947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900669, 36.587440, 36.669529>,  <32.518738, 36.505077, 36.583832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900669, 36.587440, 36.669529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292105, -0.782725, -0.549559,
		0.054534, 0.587317, -0.807517,
		0.954830, 0.205911, 0.214244,
		33.187119, 36.649212, 36.733803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829285, 36.465824, 36.059799>,  <32.518738, 36.505077, 36.583832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829285, 36.465824, 36.059799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156223, 36.434845, 36.288166>,  <33.352386, 36.416260, 36.425186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156223, 36.434845, 36.288166>,  <32.829285, 36.465824, 36.059799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156223, 36.434845, 36.288166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353922, -0.714424, -0.603604,
		0.454621, 0.695414, -0.556524,
		0.817349, -0.077445, 0.570915,
		33.401428, 36.411610, 36.459442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318085, 36.618382, 35.663055>,  <32.829285, 36.465824, 36.059799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318085, 36.618382, 35.663055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477871, 36.398434, 35.956470>,  <33.573742, 36.266464, 36.132519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477871, 36.398434, 35.956470>,  <33.318085, 36.618382, 35.663055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477871, 36.398434, 35.956470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293073, -0.681560, -0.670510,
		0.868639, 0.482825, -0.111108,
		0.399466, -0.549869, 0.733533,
		33.597710, 36.233475, 36.176529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971535, 36.312782, 35.382328>,  <33.318085, 36.618382, 35.663055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971535, 36.312782, 35.382328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882790, 36.108269, 35.714439>,  <33.829544, 35.985561, 35.913708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882790, 36.108269, 35.714439>,  <33.971535, 36.312782, 35.382328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882790, 36.108269, 35.714439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384579, -0.828359, -0.407332,
		0.896034, 0.228939, 0.380408,
		-0.221861, -0.511280, 0.830283,
		33.816231, 35.954884, 35.963524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651913, 36.021206, 35.649853>,  <33.971535, 36.312782, 35.382328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651913, 36.021206, 35.649853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385529, 35.785324, 35.832611>,  <34.225700, 35.643795, 35.942265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385529, 35.785324, 35.832611>,  <34.651913, 36.021206, 35.649853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385529, 35.785324, 35.832611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489596, -0.807605, -0.328739,
		0.562847, 0.004767, 0.826547,
		-0.665957, -0.589704, 0.456892,
		34.185741, 35.608414, 35.969677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076576, 35.520458, 35.993889>,  <34.651913, 36.021206, 35.649853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076576, 35.520458, 35.993889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706322, 35.369457, 35.983326>,  <34.484169, 35.278858, 35.976990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706322, 35.369457, 35.983326>,  <35.076576, 35.520458, 35.993889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706322, 35.369457, 35.983326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375235, -0.906552, -0.193295,
		0.049030, -0.188829, 0.980785,
		-0.925632, -0.377502, -0.026407,
		34.428631, 35.256207, 35.975403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153980, 34.852261, 36.417362>,  <35.076576, 35.520458, 35.993889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153980, 34.852261, 36.417362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836548, 34.835129, 36.174580>,  <34.646088, 34.824848, 36.028908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836548, 34.835129, 36.174580>,  <35.153980, 34.852261, 36.417362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836548, 34.835129, 36.174580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206143, -0.957454, -0.201956,
		-0.572486, -0.285388, 0.768644,
		-0.793577, -0.042833, -0.606960,
		34.598476, 34.822277, 35.992493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785381, 34.210201, 36.574429>,  <35.153980, 34.852261, 36.417362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785381, 34.210201, 36.574429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724239, 34.329208, 36.197468>,  <34.687553, 34.400612, 35.971291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724239, 34.329208, 36.197468>,  <34.785381, 34.210201, 36.574429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724239, 34.329208, 36.197468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243313, -0.912922, -0.327675,
		-0.957828, -0.279384, 0.067153,
		-0.152853, 0.297518, -0.942401,
		34.678383, 34.418465, 35.914749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508926, 33.646973, 36.299850>,  <34.785381, 34.210201, 36.574429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508926, 33.646973, 36.299850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611862, 33.883282, 35.993973>,  <34.673622, 34.025066, 35.810448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611862, 33.883282, 35.993973>,  <34.508926, 33.646973, 36.299850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611862, 33.883282, 35.993973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189720, -0.806834, -0.559487,
		-0.947514, -0.001100, -0.319712,
		0.257339, 0.590777, -0.764695,
		34.689064, 34.060516, 35.764565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339024, 33.229107, 35.754768>,  <34.508926, 33.646973, 36.299850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339024, 33.229107, 35.754768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584713, 33.503693, 35.599079>,  <34.732124, 33.668446, 35.505665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584713, 33.503693, 35.599079>,  <34.339024, 33.229107, 35.754768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584713, 33.503693, 35.599079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335629, -0.673648, -0.658446,
		-0.714202, 0.273796, -0.644167,
		0.614222, 0.686465, -0.389227,
		34.768978, 33.709633, 35.482311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205757, 33.218735, 34.945229>,  <34.339024, 33.229107, 35.754768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205757, 33.218735, 34.945229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551529, 33.407421, 35.014782>,  <34.758991, 33.520634, 35.056515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551529, 33.407421, 35.014782>,  <34.205757, 33.218735, 34.945229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551529, 33.407421, 35.014782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447419, -0.564080, -0.693995,
		-0.229285, 0.677713, -0.698666,
		0.864433, 0.471719, 0.173887,
		34.810860, 33.548935, 35.066948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490662, 33.285038, 34.291126>,  <34.205757, 33.218735, 34.945229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490662, 33.285038, 34.291126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805298, 33.332569, 34.533501>,  <34.994080, 33.361088, 34.678925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805298, 33.332569, 34.533501>,  <34.490662, 33.285038, 34.291126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805298, 33.332569, 34.533501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517913, -0.661296, -0.542637,
		0.336220, 0.740653, -0.581712,
		0.786589, 0.118831, 0.605934,
		35.041275, 33.368217, 34.715282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050625, 33.460255, 33.843376>,  <34.490662, 33.285038, 34.291126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050625, 33.460255, 33.843376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180965, 33.294888, 34.183472>,  <35.259171, 33.195667, 34.387527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180965, 33.294888, 34.183472>,  <35.050625, 33.460255, 33.843376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180965, 33.294888, 34.183472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410257, -0.748406, -0.521131,
		0.851770, 0.518626, -0.074259,
		0.325848, -0.413419, 0.850240,
		35.278721, 33.170860, 34.438545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788799, 33.305897, 33.624535>,  <35.050625, 33.460255, 33.843376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788799, 33.305897, 33.624535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728325, 33.093540, 33.958073>,  <35.692039, 32.966125, 34.158195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728325, 33.093540, 33.958073>,  <35.788799, 33.305897, 33.624535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728325, 33.093540, 33.958073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576753, -0.732448, -0.361767,
		0.802807, 0.426229, 0.416928,
		-0.151183, -0.530894, 0.833844,
		35.682968, 32.934273, 34.208225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436626, 33.033306, 33.721012>,  <35.788799, 33.305897, 33.624535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436626, 33.033306, 33.721012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195637, 32.795429, 33.933941>,  <36.051044, 32.652702, 34.061699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195637, 32.795429, 33.933941>,  <36.436626, 33.033306, 33.721012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195637, 32.795429, 33.933941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551912, -0.792208, -0.260385,
		0.576559, 0.136921, 0.805501,
		-0.602472, -0.594693, 0.532323,
		36.014896, 32.617020, 34.093639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570583, 33.818272, 33.993034>,  <36.436626, 33.033306, 33.721012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570583, 33.818272, 33.993034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962799, 33.888374, 34.028431>,  <37.198128, 33.930435, 34.049671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962799, 33.888374, 34.028431>,  <36.570583, 33.818272, 33.993034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962799, 33.888374, 34.028431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187323, 0.700181, 0.688954,
		0.058780, -0.692122, 0.719383,
		0.980538, 0.175254, 0.088494,
		37.256962, 33.940952, 34.054977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700031, 33.913338, 34.617218>,  <36.570583, 33.818272, 33.993034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700031, 33.913338, 34.617218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048046, 34.080231, 34.512184>,  <37.256855, 34.180367, 34.449165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048046, 34.080231, 34.512184>,  <36.700031, 33.913338, 34.617218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048046, 34.080231, 34.512184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074487, 0.637787, 0.766603,
		0.487323, -0.647416, 0.585978,
		0.870039, 0.417231, -0.262584,
		37.309059, 34.205399, 34.433411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179855, 33.997494, 35.219536>,  <36.700031, 33.913338, 34.617218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179855, 33.997494, 35.219536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283855, 34.278069, 34.954086>,  <37.346256, 34.446411, 34.794819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283855, 34.278069, 34.954086>,  <37.179855, 33.997494, 35.219536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283855, 34.278069, 34.954086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049818, 0.696085, 0.716229,
		0.964323, -0.153158, 0.215925,
		0.259998, 0.701433, -0.663621,
		37.361855, 34.488499, 34.755001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656422, 34.248875, 35.531521>,  <37.179855, 33.997494, 35.219536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656422, 34.248875, 35.531521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525028, 34.520336, 35.268761>,  <37.446190, 34.683212, 35.111103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525028, 34.520336, 35.268761>,  <37.656422, 34.248875, 35.531521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525028, 34.520336, 35.268761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030866, 0.687412, 0.725612,
		0.944004, 0.258630, -0.204859,
		-0.328487, 0.678657, -0.656902,
		37.426483, 34.723934, 35.071690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003666, 34.931831, 35.710129>,  <37.656422, 34.248875, 35.531521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003666, 34.931831, 35.710129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685841, 35.028076, 35.487141>,  <37.495144, 35.085823, 35.353348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685841, 35.028076, 35.487141>,  <38.003666, 34.931831, 35.710129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685841, 35.028076, 35.487141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134021, 0.825988, 0.547524,
		0.592207, 0.509755, -0.624052,
		-0.794562, 0.240611, -0.557474,
		37.447472, 35.100258, 35.319897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967461, 35.731232, 35.654465>,  <38.003666, 34.931831, 35.710129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967461, 35.731232, 35.654465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598518, 35.595413, 35.580730>,  <37.377155, 35.513924, 35.536491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598518, 35.595413, 35.580730>,  <37.967461, 35.731232, 35.654465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598518, 35.595413, 35.580730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379291, 0.704981, 0.599283,
		-0.073530, 0.622665, -0.779025,
		-0.922351, -0.339542, -0.184334,
		37.321812, 35.493549, 35.525429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583984, 36.355221, 35.655937>,  <37.967461, 35.731232, 35.654465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583984, 36.355221, 35.655937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320087, 36.057117, 35.694592>,  <37.161751, 35.878258, 35.717785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320087, 36.057117, 35.694592>,  <37.583984, 36.355221, 35.655937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320087, 36.057117, 35.694592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424815, 0.475929, 0.770080,
		-0.619899, 0.466999, -0.630585,
		-0.659740, -0.745254, 0.096640,
		37.122166, 35.833542, 35.723583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962769, 36.638069, 35.408180>,  <37.583984, 36.355221, 35.655937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962769, 36.638069, 35.408180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912579, 36.339737, 35.669865>,  <36.882465, 36.160736, 35.826874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912579, 36.339737, 35.669865>,  <36.962769, 36.638069, 35.408180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912579, 36.339737, 35.669865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357371, 0.649131, 0.671502,
		-0.925496, -0.149542, -0.347986,
		-0.125471, -0.745832, 0.654210,
		36.874939, 36.115986, 35.866127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385227, 36.923309, 35.697254>,  <36.962769, 36.638069, 35.408180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385227, 36.923309, 35.697254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544952, 36.660706, 35.953236>,  <36.640789, 36.503143, 36.106827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544952, 36.660706, 35.953236>,  <36.385227, 36.923309, 35.697254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544952, 36.660706, 35.953236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555590, 0.381973, 0.738523,
		-0.729293, -0.650455, -0.212224,
		0.399313, -0.656510, 0.639957,
		36.664745, 36.463753, 36.145222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715611, 36.932159, 36.077827>,  <36.385227, 36.923309, 35.697254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715611, 36.932159, 36.077827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027790, 36.798405, 36.289143>,  <36.215099, 36.718151, 36.415932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027790, 36.798405, 36.289143>,  <35.715611, 36.932159, 36.077827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027790, 36.798405, 36.289143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196700, 0.670734, 0.715140,
		-0.593473, -0.662043, 0.457699,
		0.780448, -0.334387, 0.528286,
		36.261925, 36.698090, 36.447628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515141, 36.842644, 36.730267>,  <35.715611, 36.932159, 36.077827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515141, 36.842644, 36.730267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910191, 36.843307, 36.792995>,  <36.147221, 36.843708, 36.830631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910191, 36.843307, 36.792995>,  <35.515141, 36.842644, 36.730267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910191, 36.843307, 36.792995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130374, 0.564476, 0.815089,
		-0.087167, -0.825448, 0.557707,
		0.987626, 0.001662, 0.156821,
		36.206478, 36.843807, 36.840042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646423, 36.858101, 37.509911>,  <35.515141, 36.842644, 36.730267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646423, 36.858101, 37.509911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003006, 36.969810, 37.367184>,  <36.216953, 37.036835, 37.281548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003006, 36.969810, 37.367184>,  <35.646423, 36.858101, 37.509911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003006, 36.969810, 37.367184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137190, 0.584171, 0.799952,
		0.431846, -0.762072, 0.482448,
		0.891453, 0.279269, -0.356820,
		36.270443, 37.053593, 37.260136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197956, 36.759686, 38.026226>,  <35.646423, 36.858101, 37.509911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197956, 36.759686, 38.026226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306877, 37.052223, 37.776112>,  <36.372231, 37.227745, 37.626041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306877, 37.052223, 37.776112>,  <36.197956, 36.759686, 38.026226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306877, 37.052223, 37.776112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185460, 0.597768, 0.779921,
		0.944169, -0.328341, 0.027139,
		0.272303, 0.731345, -0.625289,
		36.388569, 37.271626, 37.588524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583817, 37.231373, 38.534195>,  <36.197956, 36.759686, 38.026226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583817, 37.231373, 38.534195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528988, 37.447960, 38.202408>,  <36.496090, 37.577911, 38.003334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528988, 37.447960, 38.202408>,  <36.583817, 37.231373, 38.534195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528988, 37.447960, 38.202408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056678, 0.840290, 0.539166,
		0.988938, 0.026893, -0.145871,
		-0.137074, 0.541470, -0.829470,
		36.487865, 37.610401, 37.953568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835091, 37.905602, 38.747505>,  <36.583817, 37.231373, 38.534195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835091, 37.905602, 38.747505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601913, 37.979984, 38.431126>,  <36.462009, 38.024612, 38.241299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601913, 37.979984, 38.431126>,  <36.835091, 37.905602, 38.747505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601913, 37.979984, 38.431126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309083, 0.849525, 0.427521,
		0.751432, 0.493689, -0.437746,
		-0.582939, 0.185953, -0.790951,
		36.427032, 38.035770, 38.193840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996655, 38.572948, 38.623451>,  <36.835091, 37.905602, 38.747505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996655, 38.572948, 38.623451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630863, 38.485928, 38.486984>,  <36.411388, 38.433716, 38.405106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630863, 38.485928, 38.486984>,  <36.996655, 38.572948, 38.623451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630863, 38.485928, 38.486984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362920, 0.813842, 0.453818,
		0.178923, 0.538823, -0.823199,
		-0.914481, -0.217557, -0.341165,
		36.356518, 38.420662, 38.384636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795807, 39.287666, 38.418530>,  <36.996655, 38.572948, 38.623451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795807, 39.287666, 38.418530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469414, 39.058121, 38.446407>,  <36.273579, 38.920395, 38.463135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469414, 39.058121, 38.446407>,  <36.795807, 39.287666, 38.418530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469414, 39.058121, 38.446407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527747, 0.788703, 0.315327,
		-0.235924, 0.220518, -0.946420,
		-0.815980, -0.573864, 0.069696,
		36.224621, 38.885963, 38.467316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240852, 39.742355, 38.068756>,  <36.795807, 39.287666, 38.418530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240852, 39.742355, 38.068756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082016, 39.465645, 38.310005>,  <35.986713, 39.299618, 38.454754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082016, 39.465645, 38.310005>,  <36.240852, 39.742355, 38.068756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082016, 39.465645, 38.310005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691595, 0.657553, 0.298865,
		-0.603335, -0.298440, -0.739541,
		-0.397094, -0.691779, 0.603124,
		35.962887, 39.258110, 38.490944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500439, 39.743900, 37.903027>,  <36.240852, 39.742355, 38.068756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500439, 39.743900, 37.903027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507084, 39.567650, 38.262043>,  <35.511070, 39.461899, 38.477451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507084, 39.567650, 38.262043>,  <35.500439, 39.743900, 37.903027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507084, 39.567650, 38.262043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709283, 0.627501, 0.321186,
		-0.704729, -0.641944, -0.302101,
		0.016615, -0.440624, 0.897538,
		35.512070, 39.435463, 38.531303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726547, 39.727955, 38.063210>,  <35.500439, 39.743900, 37.903027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726547, 39.727955, 38.063210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929001, 39.644653, 38.397984>,  <35.050472, 39.594673, 38.598846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929001, 39.644653, 38.397984>,  <34.726547, 39.727955, 38.063210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929001, 39.644653, 38.397984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711959, 0.446811, 0.541732,
		-0.486769, -0.870052, 0.077879,
		0.506133, -0.208252, 0.836935,
		35.080841, 39.582176, 38.649063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206894, 39.754128, 38.580616>,  <34.726547, 39.727955, 38.063210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206894, 39.754128, 38.580616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556591, 39.789169, 38.771626>,  <34.766407, 39.810196, 38.886230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556591, 39.789169, 38.771626>,  <34.206894, 39.754128, 38.580616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556591, 39.789169, 38.771626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396588, 0.696219, 0.598328,
		-0.280046, -0.712463, 0.643405,
		0.874238, 0.087608, 0.477528,
		34.818863, 39.815453, 38.914883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062515, 39.650982, 39.371113>,  <34.206894, 39.754128, 38.580616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062515, 39.650982, 39.371113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388397, 39.873924, 39.307098>,  <34.583927, 40.007690, 39.268688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388397, 39.873924, 39.307098>,  <34.062515, 39.650982, 39.371113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388397, 39.873924, 39.307098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488546, 0.808405, 0.328336,
		0.312373, -0.189312, 0.930905,
		0.814706, 0.557354, -0.160036,
		34.632809, 40.041130, 39.259087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031219, 40.143421, 39.876484>,  <34.062515, 39.650982, 39.371113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031219, 40.143421, 39.876484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270325, 40.329792, 39.615532>,  <34.413788, 40.441612, 39.458961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270325, 40.329792, 39.615532>,  <34.031219, 40.143421, 39.876484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270325, 40.329792, 39.615532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483058, 0.858783, 0.170721,
		0.639794, 0.213086, 0.738415,
		0.597761, 0.465924, -0.652378,
		34.449654, 40.469570, 39.419819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224312, 40.713940, 40.181271>,  <34.031219, 40.143421, 39.876484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224312, 40.713940, 40.181271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348526, 40.816116, 39.815033>,  <34.423054, 40.877422, 39.595291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348526, 40.816116, 39.815033>,  <34.224312, 40.713940, 40.181271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348526, 40.816116, 39.815033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432525, 0.895697, 0.103193,
		0.846457, 0.363973, 0.388631,
		0.310536, 0.255441, -0.915596,
		34.441689, 40.892750, 39.540356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497986, 41.460690, 40.272713>,  <34.224312, 40.713940, 40.181271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497986, 41.460690, 40.272713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408688, 41.417374, 39.885220>,  <34.355110, 41.391384, 39.652725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408688, 41.417374, 39.885220>,  <34.497986, 41.460690, 40.272713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408688, 41.417374, 39.885220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345619, 0.938036, -0.025210,
		0.911433, 0.329183, -0.246838,
		-0.223244, -0.108289, -0.968729,
		34.341713, 41.384888, 39.594601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599800, 42.101833, 39.947376>,  <34.497986, 41.460690, 40.272713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599800, 42.101833, 39.947376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351482, 41.923874, 39.689175>,  <34.202492, 41.817097, 39.534256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351482, 41.923874, 39.689175>,  <34.599800, 42.101833, 39.947376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351482, 41.923874, 39.689175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394471, 0.888818, -0.233229,
		0.677496, 0.109843, -0.727279,
		-0.620800, -0.444902, -0.645500,
		34.165241, 41.790401, 39.495525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586082, 42.491016, 39.410789>,  <34.599800, 42.101833, 39.947376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586082, 42.491016, 39.410789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243622, 42.287281, 39.375946>,  <34.038147, 42.165039, 39.355042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243622, 42.287281, 39.375946>,  <34.586082, 42.491016, 39.410789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243622, 42.287281, 39.375946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478578, 0.845159, -0.238054,
		0.194867, -0.162123, -0.967338,
		-0.856148, -0.509335, -0.087105,
		33.986778, 42.134480, 39.349815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246124, 42.826580, 38.785873>,  <34.586082, 42.491016, 39.410789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246124, 42.826580, 38.785873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955906, 42.642273, 38.990334>,  <33.781776, 42.531689, 39.113010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955906, 42.642273, 38.990334>,  <34.246124, 42.826580, 38.785873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955906, 42.642273, 38.990334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643939, 0.716569, -0.268090,
		-0.242743, -0.523659, -0.816613,
		-0.725547, -0.460772, 0.511146,
		33.738243, 42.504040, 39.143677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610382, 42.957352, 38.405327>,  <34.246124, 42.826580, 38.785873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610382, 42.957352, 38.405327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457027, 42.844021, 38.756950>,  <33.365017, 42.776024, 38.967926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457027, 42.844021, 38.756950>,  <33.610382, 42.957352, 38.405327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457027, 42.844021, 38.756950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729223, 0.676951, -0.099849,
		-0.566790, -0.679310, -0.466140,
		-0.383383, -0.283327, 0.879058,
		33.342014, 42.759022, 39.020668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972000, 42.833099, 38.306984>,  <33.610382, 42.957352, 38.405327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972000, 42.833099, 38.306984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954742, 42.900150, 38.700947>,  <32.944389, 42.940380, 38.937325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954742, 42.900150, 38.700947>,  <32.972000, 42.833099, 38.306984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954742, 42.900150, 38.700947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743049, 0.653607, -0.143792,
		-0.667845, -0.738036, 0.096359,
		-0.043143, 0.167631, 0.984905,
		32.941799, 42.950439, 38.996418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336922, 42.786385, 38.389118>,  <32.972000, 42.833099, 38.306984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336922, 42.786385, 38.389118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452789, 42.982845, 38.717720>,  <32.522308, 43.100719, 38.914879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452789, 42.982845, 38.717720>,  <32.336922, 42.786385, 38.389118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452789, 42.982845, 38.717720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695932, 0.697324, -0.171514,
		-0.657093, -0.522028, 0.543798,
		0.289669, 0.491148, 0.821503,
		32.539688, 43.130188, 38.964172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690382, 42.878895, 38.688507>,  <32.336922, 42.786385, 38.389118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690382, 42.878895, 38.688507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962503, 43.121407, 38.853241>,  <32.125778, 43.266914, 38.952080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962503, 43.121407, 38.853241>,  <31.690382, 42.878895, 38.688507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962503, 43.121407, 38.853241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614013, 0.778272, -0.131455,
		-0.400217, -0.163441, 0.901728,
		0.680304, 0.606283, 0.411833,
		32.166595, 43.303291, 38.976791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335787, 43.277168, 39.083904>,  <31.690382, 42.878895, 38.688507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335787, 43.277168, 39.083904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661306, 43.508453, 39.060570>,  <31.856619, 43.647224, 39.046570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661306, 43.508453, 39.060570>,  <31.335787, 43.277168, 39.083904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661306, 43.508453, 39.060570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575310, 0.787373, -0.221500,
		-0.082145, 0.213816, 0.973414,
		0.813800, 0.578210, -0.058332,
		31.905447, 43.681915, 39.043072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385374, 43.887775, 39.609951>,  <31.335787, 43.277168, 39.083904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385374, 43.887775, 39.609951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632298, 44.020416, 39.324581>,  <31.780451, 44.100002, 39.153358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632298, 44.020416, 39.324581>,  <31.385374, 43.887775, 39.609951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632298, 44.020416, 39.324581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470344, 0.882477, 0.003199,
		0.630639, 0.333579, 0.700728,
		0.617309, 0.331601, -0.713421,
		31.817490, 44.119896, 39.110554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661106, 44.553486, 39.893936>,  <31.385374, 43.887775, 39.609951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661106, 44.553486, 39.893936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728306, 44.566116, 39.499825>,  <31.768625, 44.573696, 39.263355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728306, 44.566116, 39.499825>,  <31.661106, 44.553486, 39.893936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728306, 44.566116, 39.499825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520948, 0.851367, -0.061541,
		0.836892, 0.523620, 0.159480,
		0.168000, 0.031577, -0.985281,
		31.778706, 44.575588, 39.204239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612396, 45.285175, 39.847733>,  <31.661106, 44.553486, 39.893936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612396, 45.285175, 39.847733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595253, 45.159973, 39.468220>,  <31.584967, 45.084854, 39.240513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595253, 45.159973, 39.468220>,  <31.612396, 45.285175, 39.847733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595253, 45.159973, 39.468220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622337, 0.751275, -0.219731,
		0.781575, 0.581047, -0.226990,
		-0.042858, -0.313001, -0.948785,
		31.582396, 45.066074, 39.183582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913191, 45.830574, 39.353157>,  <31.612396, 45.285175, 39.847733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913191, 45.830574, 39.353157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642218, 45.595284, 39.176487>,  <31.479633, 45.454109, 39.070484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642218, 45.595284, 39.176487>,  <31.913191, 45.830574, 39.353157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642218, 45.595284, 39.176487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590277, 0.792996, -0.150768,
		0.438930, 0.158573, -0.884418,
		-0.677432, -0.588228, -0.441672,
		31.438988, 45.418816, 39.043987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509718, 46.079819, 38.700390>,  <31.913191, 45.830574, 39.353157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509718, 46.079819, 38.700390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298235, 45.849380, 38.949734>,  <31.171345, 45.711117, 39.099339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298235, 45.849380, 38.949734>,  <31.509718, 46.079819, 38.700390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298235, 45.849380, 38.949734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655726, 0.743545, 0.131011,
		-0.538972, -0.339487, -0.770882,
		-0.528709, -0.576098, 0.623360,
		31.139622, 45.676552, 39.136742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237465, 45.965260, 38.683514>,  <31.509718, 46.079819, 38.700390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237465, 45.965260, 38.683514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307972, 46.275692, 38.441315>,  <32.350277, 46.461952, 38.295998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307972, 46.275692, 38.441315>,  <32.237465, 45.965260, 38.683514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307972, 46.275692, 38.441315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733354, -0.513857, -0.445133,
		-0.656597, -0.365578, -0.659722,
		0.176272, 0.776083, -0.605495,
		32.360855, 46.508518, 38.259666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209976, 45.726051, 37.979359>,  <32.237465, 45.965260, 38.683514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209976, 45.726051, 37.979359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413937, 46.067730, 37.938660>,  <32.536312, 46.272736, 37.914242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413937, 46.067730, 37.938660>,  <32.209976, 45.726051, 37.979359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413937, 46.067730, 37.938660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634203, -0.453200, -0.626415,
		-0.581191, 0.254884, -0.772821,
		0.509906, 0.854192, -0.101748,
		32.566910, 46.323986, 37.908134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225304, 45.798729, 37.310860>,  <32.209976, 45.726051, 37.979359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225304, 45.798729, 37.310860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537735, 46.006493, 37.449497>,  <32.725193, 46.131153, 37.532681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537735, 46.006493, 37.449497>,  <32.225304, 45.798729, 37.310860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537735, 46.006493, 37.449497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587801, -0.424273, -0.688827,
		-0.210734, 0.741756, -0.636701,
		0.781077, 0.519413, 0.346596,
		32.772057, 46.162315, 37.553474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726204, 45.838326, 36.804111>,  <32.225304, 45.798729, 37.310860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726204, 45.838326, 36.804111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960369, 45.955753, 37.106400>,  <33.100868, 46.026211, 37.287773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960369, 45.955753, 37.106400>,  <32.726204, 45.838326, 36.804111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960369, 45.955753, 37.106400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794305, -0.394397, -0.462093,
		0.162398, 0.870787, -0.464066,
		0.585411, 0.293567, 0.755720,
		33.135994, 46.043823, 37.333115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414330, 46.087719, 36.588612>,  <32.726204, 45.838326, 36.804111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414330, 46.087719, 36.588612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497578, 45.985016, 36.966133>,  <33.547527, 45.923393, 37.192646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497578, 45.985016, 36.966133>,  <33.414330, 46.087719, 36.588612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497578, 45.985016, 36.966133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753183, -0.573549, -0.322114,
		0.624021, 0.777894, 0.074015,
		0.208119, -0.256753, 0.943803,
		33.560013, 45.907990, 37.249275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147232, 46.196766, 36.708981>,  <33.414330, 46.087719, 36.588612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147232, 46.196766, 36.708981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990673, 45.932083, 36.964775>,  <33.896736, 45.773273, 37.118252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990673, 45.932083, 36.964775>,  <34.147232, 46.196766, 36.708981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990673, 45.932083, 36.964775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744066, -0.636463, -0.203177,
		0.541456, 0.396300, 0.741466,
		-0.391396, -0.661711, 0.639490,
		33.873253, 45.733570, 37.156624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726070, 45.920540, 36.953468>,  <34.147232, 46.196766, 36.708981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726070, 45.920540, 36.953468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463219, 45.643715, 37.072948>,  <34.305508, 45.477619, 37.144638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463219, 45.643715, 37.072948>,  <34.726070, 45.920540, 36.953468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463219, 45.643715, 37.072948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639440, -0.721642, -0.265235,
		0.399114, 0.016705, 0.916749,
		-0.657134, -0.692065, 0.298699,
		34.266079, 45.436096, 37.162560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215176, 45.313110, 37.097271>,  <34.726070, 45.920540, 36.953468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215176, 45.313110, 37.097271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843475, 45.169033, 37.130138>,  <34.620457, 45.082584, 37.149860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843475, 45.169033, 37.130138>,  <35.215176, 45.313110, 37.097271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843475, 45.169033, 37.130138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331830, -0.911503, -0.243003,
		0.162428, -0.198544, 0.966539,
		-0.929250, -0.360197, 0.082171,
		34.564701, 45.060974, 37.154789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216721, 44.678806, 37.761192>,  <35.215176, 45.313110, 37.097271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216721, 44.678806, 37.761192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940792, 44.670414, 37.471722>,  <34.775234, 44.665379, 37.298038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940792, 44.670414, 37.471722>,  <35.216721, 44.678806, 37.761192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940792, 44.670414, 37.471722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327251, -0.900672, -0.285827,
		-0.645794, -0.433993, 0.628172,
		-0.689823, -0.020985, -0.723674,
		34.733845, 44.664120, 37.254620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962132, 44.016079, 37.773216>,  <35.216721, 44.678806, 37.761192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962132, 44.016079, 37.773216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857193, 44.144951, 37.409374>,  <34.794231, 44.222275, 37.191071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857193, 44.144951, 37.409374>,  <34.962132, 44.016079, 37.773216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857193, 44.144951, 37.409374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227385, -0.895437, -0.382738,
		-0.937802, -0.307239, 0.161654,
		-0.262343, 0.322175, -0.909604,
		34.778488, 44.241604, 37.136494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573521, 43.483917, 37.455406>,  <34.962132, 44.016079, 37.773216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573521, 43.483917, 37.455406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681076, 43.694565, 37.132824>,  <34.745609, 43.820953, 36.939274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681076, 43.694565, 37.132824>,  <34.573521, 43.483917, 37.455406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681076, 43.694565, 37.132824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202989, -0.849472, -0.487024,
		-0.941538, -0.032746, -0.335313,
		0.268891, 0.526616, -0.806457,
		34.761742, 43.852551, 36.890888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394501, 43.053207, 37.003590>,  <34.573521, 43.483917, 37.455406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394501, 43.053207, 37.003590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622234, 43.300289, 36.786591>,  <34.758873, 43.448540, 36.656391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622234, 43.300289, 36.786591>,  <34.394501, 43.053207, 37.003590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622234, 43.300289, 36.786591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327643, -0.775702, -0.539386,
		-0.753996, 0.129345, -0.644018,
		0.569333, 0.617703, -0.542497,
		34.793034, 43.485600, 36.623840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296913, 42.812927, 36.295506>,  <34.394501, 43.053207, 37.003590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296913, 42.812927, 36.295506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634537, 43.026649, 36.313774>,  <34.837109, 43.154884, 36.324734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634537, 43.026649, 36.313774>,  <34.296913, 42.812927, 36.295506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634537, 43.026649, 36.313774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507059, -0.767481, -0.392255,
		-0.174537, 0.354241, -0.918722,
		0.844054, 0.534310, 0.045668,
		34.887753, 43.186943, 36.327473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593529, 42.811470, 35.609879>,  <34.296913, 42.812927, 36.295506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593529, 42.811470, 35.609879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894520, 42.861198, 35.868587>,  <35.075115, 42.891037, 36.023811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894520, 42.861198, 35.868587>,  <34.593529, 42.811470, 35.609879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894520, 42.861198, 35.868587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474623, -0.783208, -0.401645,
		0.456624, 0.609204, -0.648355,
		0.752481, 0.124323, 0.646774,
		35.120262, 42.898495, 36.062618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135647, 42.595623, 35.285622>,  <34.593529, 42.811470, 35.609879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135647, 42.595623, 35.285622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257927, 42.587456, 35.666386>,  <35.331295, 42.582554, 35.894844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257927, 42.587456, 35.666386>,  <35.135647, 42.595623, 35.285622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257927, 42.587456, 35.666386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585801, -0.784114, -0.204947,
		0.750590, 0.620281, -0.227742,
		0.305701, -0.020420, 0.951909,
		35.349636, 42.581329, 35.951958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830448, 42.451599, 35.193565>,  <35.135647, 42.595623, 35.285622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830448, 42.451599, 35.193565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726559, 42.372055, 35.571560>,  <35.664227, 42.324329, 35.798355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726559, 42.372055, 35.571560>,  <35.830448, 42.451599, 35.193565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726559, 42.372055, 35.571560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580833, -0.813939, -0.011647,
		0.771478, 0.545855, 0.326901,
		-0.259720, -0.198860, 0.944987,
		35.648643, 42.312397, 35.855057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457672, 42.340981, 35.519997>,  <35.830448, 42.451599, 35.193565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457672, 42.340981, 35.519997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164223, 42.192051, 35.747391>,  <35.988155, 42.102692, 35.883827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164223, 42.192051, 35.747391>,  <36.457672, 42.340981, 35.519997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164223, 42.192051, 35.747391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470326, -0.882006, 0.029285,
		0.490502, 0.288857, 0.822173,
		-0.733621, -0.372325, 0.568483,
		35.944138, 42.080353, 35.917934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797710, 42.024681, 36.012215>,  <36.457672, 42.340981, 35.519997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797710, 42.024681, 36.012215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449997, 41.832195, 36.057442>,  <36.241371, 41.716705, 36.084579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449997, 41.832195, 36.057442>,  <36.797710, 42.024681, 36.012215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449997, 41.832195, 36.057442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487294, -0.872634, 0.032456,
		0.083049, 0.083311, 0.993057,
		-0.869280, -0.481216, 0.113068,
		36.189213, 41.687832, 36.091362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758224, 41.561043, 36.598225>,  <36.797710, 42.024681, 36.012215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758224, 41.561043, 36.598225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478676, 41.416206, 36.351498>,  <36.310947, 41.329304, 36.203461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478676, 41.416206, 36.351498>,  <36.758224, 41.561043, 36.598225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478676, 41.416206, 36.351498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399482, -0.912949, 0.083302,
		-0.593287, -0.188190, 0.782684,
		-0.698874, -0.362090, -0.616819,
		36.269012, 41.307579, 36.166451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633682, 40.814194, 36.895527>,  <36.758224, 41.561043, 36.598225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633682, 40.814194, 36.895527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466084, 40.806004, 36.532425>,  <36.365524, 40.801090, 36.314564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466084, 40.806004, 36.532425>,  <36.633682, 40.814194, 36.895527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466084, 40.806004, 36.532425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326358, -0.936331, -0.129515,
		-0.847307, -0.350521, 0.399006,
		-0.419000, -0.020480, -0.907755,
		36.340385, 40.799858, 36.260098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311821, 40.164070, 36.828053>,  <36.633682, 40.814194, 36.895527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311821, 40.164070, 36.828053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364090, 40.280769, 36.449039>,  <36.395451, 40.350788, 36.221634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364090, 40.280769, 36.449039>,  <36.311821, 40.164070, 36.828053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364090, 40.280769, 36.449039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483504, -0.853117, -0.195998,
		-0.865534, -0.432523, -0.252536,
		0.130669, 0.291745, -0.947529,
		36.403290, 40.368294, 36.164780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037334, 39.531792, 36.611092>,  <36.311821, 40.164070, 36.828053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037334, 39.531792, 36.611092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214741, 39.729301, 36.311897>,  <36.321182, 39.847809, 36.132381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214741, 39.729301, 36.311897>,  <36.037334, 39.531792, 36.611092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214741, 39.729301, 36.311897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402194, -0.855455, -0.326245,
		-0.800960, -0.156142, -0.577999,
		0.443512, 0.493777, -0.747985,
		36.347794, 39.877434, 36.087502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839397, 39.082279, 36.003380>,  <36.037334, 39.531792, 36.611092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839397, 39.082279, 36.003380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159611, 39.302094, 35.907749>,  <36.351738, 39.433983, 35.850372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159611, 39.302094, 35.907749>,  <35.839397, 39.082279, 36.003380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159611, 39.302094, 35.907749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453681, -0.816375, -0.357359,
		-0.391557, 0.177614, -0.902849,
		0.800536, 0.549532, -0.239077,
		36.399773, 39.466953, 35.836025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038113, 38.881340, 35.361282>,  <35.839397, 39.082279, 36.003380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038113, 38.881340, 35.361282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360661, 39.055790, 35.521069>,  <36.554188, 39.160461, 35.616940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360661, 39.055790, 35.521069>,  <36.038113, 38.881340, 35.361282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360661, 39.055790, 35.521069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584651, -0.689709, -0.427183,
		0.089209, 0.578012, -0.811138,
		0.806365, 0.436124, 0.399463,
		36.602570, 39.186626, 35.640907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583977, 38.670494, 34.873188>,  <36.038113, 38.881340, 35.361282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583977, 38.670494, 34.873188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789616, 38.820065, 35.181961>,  <36.912998, 38.909805, 35.367226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789616, 38.820065, 35.181961>,  <36.583977, 38.670494, 34.873188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789616, 38.820065, 35.181961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756432, -0.621930, -0.202515,
		0.404363, 0.688028, -0.602585,
		0.514102, 0.373925, 0.771932,
		36.943848, 38.932243, 35.413540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209011, 38.995892, 34.577156>,  <36.583977, 38.670494, 34.873188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209011, 38.995892, 34.577156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239147, 38.858669, 34.951672>,  <37.257229, 38.776337, 35.176380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239147, 38.858669, 34.951672>,  <37.209011, 38.995892, 34.577156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239147, 38.858669, 34.951672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774148, -0.571697, -0.271766,
		0.628505, 0.745301, 0.222505,
		0.075341, -0.343058, 0.936288,
		37.261749, 38.755753, 35.232559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954021, 39.008896, 34.742462>,  <37.209011, 38.995892, 34.577156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954021, 39.008896, 34.742462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797520, 38.751942, 35.006054>,  <37.703617, 38.597767, 35.164211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797520, 38.751942, 35.006054>,  <37.954021, 39.008896, 34.742462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797520, 38.751942, 35.006054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754524, -0.633887, -0.169943,
		0.526890, 0.430727, 0.732708,
		-0.391255, -0.642388, 0.658982,
		37.680141, 38.559227, 35.203747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586517, 38.776684, 35.075676>,  <37.954021, 39.008896, 34.742462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586517, 38.776684, 35.075676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295738, 38.511707, 35.148029>,  <38.121269, 38.352722, 35.191441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295738, 38.511707, 35.148029>,  <38.586517, 38.776684, 35.075676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295738, 38.511707, 35.148029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629834, -0.748162, -0.208716,
		0.273592, -0.037799, 0.961103,
		-0.726950, -0.662439, 0.180884,
		38.077652, 38.312977, 35.202293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879696, 38.329494, 35.555099>,  <38.586517, 38.776684, 35.075676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879696, 38.329494, 35.555099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585773, 38.129032, 35.372276>,  <38.409420, 38.008755, 35.262581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585773, 38.129032, 35.372276>,  <38.879696, 38.329494, 35.555099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585773, 38.129032, 35.372276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591391, -0.803347, -0.069928,
		-0.332132, -0.321684, 0.886683,
		-0.734809, -0.501152, -0.457058,
		38.365330, 37.978687, 35.235157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911263, 37.629715, 35.817226>,  <38.879696, 38.329494, 35.555099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911263, 37.629715, 35.817226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669945, 37.585617, 35.501282>,  <38.525154, 37.559158, 35.311714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669945, 37.585617, 35.501282>,  <38.911263, 37.629715, 35.817226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669945, 37.585617, 35.501282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578411, -0.742346, -0.338176,
		-0.549071, -0.660885, 0.511616,
		-0.603292, -0.110241, -0.789864,
		38.488956, 37.552544, 35.264324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766579, 36.908459, 35.827728>,  <38.911263, 37.629715, 35.817226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766579, 36.908459, 35.827728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705322, 37.068119, 35.466125>,  <38.668568, 37.163914, 35.249165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705322, 37.068119, 35.466125>,  <38.766579, 36.908459, 35.827728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705322, 37.068119, 35.466125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672398, -0.628293, -0.391316,
		-0.724174, -0.667780, -0.172169,
		-0.153140, 0.399147, -0.904008,
		38.659382, 37.187862, 35.194923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720928, 36.233971, 35.446114>,  <38.766579, 36.908459, 35.827728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720928, 36.233971, 35.446114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793053, 36.539944, 35.198769>,  <38.836327, 36.723526, 35.050362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793053, 36.539944, 35.198769>,  <38.720928, 36.233971, 35.446114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793053, 36.539944, 35.198769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620493, -0.576252, -0.531905,
		-0.763201, -0.287776, -0.578541,
		0.180316, 0.764930, -0.618359,
		38.847149, 36.769424, 35.013260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581890, 35.940182, 34.784081>,  <38.720928, 36.233971, 35.446114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581890, 35.940182, 34.784081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794346, 36.261753, 34.677052>,  <38.921818, 36.454697, 34.612835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794346, 36.261753, 34.677052>,  <38.581890, 35.940182, 34.784081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794346, 36.261753, 34.677052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646705, -0.588685, -0.484997,
		-0.547416, 0.084563, -0.832577,
		0.531138, 0.803927, -0.267569,
		38.953686, 36.502930, 34.596783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573029, 35.958431, 34.067734>,  <38.581890, 35.940182, 34.784081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573029, 35.958431, 34.067734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903542, 36.139034, 34.202435>,  <39.101849, 36.247395, 34.283257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903542, 36.139034, 34.202435>,  <38.573029, 35.958431, 34.067734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903542, 36.139034, 34.202435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556980, -0.565959, -0.607836,
		-0.083854, 0.689807, -0.719121,
		0.826282, 0.451505, 0.336750,
		39.151424, 36.274487, 34.303459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921238, 36.150017, 33.536224>,  <38.573029, 35.958431, 34.067734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921238, 36.150017, 33.536224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226799, 36.155331, 33.794304>,  <39.410133, 36.158520, 33.949150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226799, 36.155331, 33.794304>,  <38.921238, 36.150017, 33.536224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226799, 36.155331, 33.794304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494832, -0.653831, -0.572405,
		0.414243, 0.756524, -0.506037,
		0.763901, 0.013289, 0.645197,
		39.455971, 36.159317, 33.987862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547253, 36.440247, 33.201046>,  <38.921238, 36.150017, 33.536224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547253, 36.440247, 33.201046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676083, 36.219620, 33.508823>,  <39.753380, 36.087242, 33.693489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676083, 36.219620, 33.508823>,  <39.547253, 36.440247, 33.201046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676083, 36.219620, 33.508823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567750, -0.537847, -0.623202,
		0.757581, 0.637566, 0.139929,
		0.322072, -0.551571, 0.769441,
		39.772705, 36.054150, 33.739655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302406, 36.311485, 33.052914>,  <39.547253, 36.440247, 33.201046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302406, 36.311485, 33.052914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203423, 36.055851, 33.344212>,  <40.144032, 35.902470, 33.518990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203423, 36.055851, 33.344212>,  <40.302406, 36.311485, 33.052914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203423, 36.055851, 33.344212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589861, -0.695649, -0.410045,
		0.768654, 0.328094, 0.549113,
		-0.247456, -0.639083, 0.728243,
		40.129185, 35.864124, 33.562683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966770, 36.129364, 33.354843>,  <40.302406, 36.311485, 33.052914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966770, 36.129364, 33.354843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687695, 35.846333, 33.399685>,  <40.520248, 35.676514, 33.426590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687695, 35.846333, 33.399685>,  <40.966770, 36.129364, 33.354843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687695, 35.846333, 33.399685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617501, -0.673299, -0.406646,
		0.363215, -0.214484, 0.906681,
		-0.697687, -0.707577, 0.112108,
		40.478390, 35.634060, 33.433319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355999, 35.472527, 33.557461>,  <40.966770, 36.129364, 33.354843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355999, 35.472527, 33.557461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986347, 35.356087, 33.458473>,  <40.764557, 35.286224, 33.399082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986347, 35.356087, 33.458473>,  <41.355999, 35.472527, 33.557461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986347, 35.356087, 33.458473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379939, -0.631851, -0.675582,
		0.040299, -0.718350, 0.694514,
		-0.924133, -0.291098, -0.247467,
		40.709106, 35.268757, 33.384232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259747, 34.885498, 33.870193>,  <41.355999, 35.472527, 33.557461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259747, 34.885498, 33.870193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185387, 34.682446, 34.206703>,  <41.140770, 34.560616, 34.408611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185387, 34.682446, 34.206703>,  <41.259747, 34.885498, 33.870193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185387, 34.682446, 34.206703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982428, -0.081596, 0.167859,
		-0.016566, 0.857701, 0.513881,
		-0.185904, -0.507632, 0.841279,
		41.129616, 34.530155, 34.459087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561287, 35.140163, 34.469044>,  <41.259747, 34.885498, 33.870193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561287, 35.140163, 34.469044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532539, 34.741608, 34.450935>,  <41.515289, 34.502476, 34.440071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532539, 34.741608, 34.450935>,  <41.561287, 35.140163, 34.469044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532539, 34.741608, 34.450935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997030, -0.070509, -0.030962,
		0.027658, -0.047362, 0.998495,
		-0.071869, -0.996386, -0.045271,
		41.510979, 34.442692, 34.437355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917130, 34.655613, 33.987080>,  <41.561287, 35.140163, 34.469044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917130, 34.655613, 33.987080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197090, 34.851696, 33.779293>,  <42.365067, 34.969345, 33.654621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197090, 34.851696, 33.779293>,  <41.917130, 34.655613, 33.987080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197090, 34.851696, 33.779293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702237, -0.339494, 0.625785,
		0.130409, -0.802771, -0.581852,
		0.699898, 0.490206, -0.519463,
		42.407059, 34.998756, 33.623455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596951, 34.236973, 33.992619>,  <41.917130, 34.655613, 33.987080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596951, 34.236973, 33.992619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704628, 34.592560, 33.844414>,  <42.769234, 34.805912, 33.755489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704628, 34.592560, 33.844414>,  <42.596951, 34.236973, 33.992619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704628, 34.592560, 33.844414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916358, -0.118034, 0.382565,
		0.296352, -0.442507, -0.846382,
		0.269189, 0.888963, -0.370515,
		42.785385, 34.859249, 33.733257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213364, 34.285816, 33.473316>,  <42.596951, 34.236973, 33.992619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213364, 34.285816, 33.473316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161968, 34.606388, 33.706966>,  <43.131130, 34.798733, 33.847157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161968, 34.606388, 33.706966>,  <43.213364, 34.285816, 33.473316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161968, 34.606388, 33.706966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879725, -0.179786, 0.440183,
		0.457793, 0.570428, -0.681937,
		-0.128490, 0.801429, 0.584124,
		43.123421, 34.846817, 33.882202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746159, 34.858509, 33.324352>,  <43.213364, 34.285816, 33.473316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746159, 34.858509, 33.324352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607693, 34.896767, 33.697666>,  <43.524612, 34.919724, 33.921654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607693, 34.896767, 33.697666>,  <43.746159, 34.858509, 33.324352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607693, 34.896767, 33.697666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932012, 0.148897, 0.330430,
		-0.107359, 0.984216, -0.140686,
		-0.346162, 0.095647, 0.933286,
		43.503845, 34.925461, 33.977654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847351, 35.540623, 33.632603>,  <43.746159, 34.858509, 33.324352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847351, 35.540623, 33.632603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844425, 35.265255, 33.922710>,  <43.842670, 35.100033, 34.096775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844425, 35.265255, 33.922710>,  <43.847351, 35.540623, 33.632603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844425, 35.265255, 33.922710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984117, 0.123695, 0.127334,
		-0.177372, 0.714685, 0.676583,
		-0.007314, -0.688422, 0.725274,
		43.842232, 35.058727, 34.140293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093269, 35.993820, 34.149197>,  <43.847351, 35.540623, 33.632603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093269, 35.993820, 34.149197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354424, 36.198273, 34.372799>,  <44.511116, 36.320942, 34.506958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354424, 36.198273, 34.372799>,  <44.093269, 35.993820, 34.149197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354424, 36.198273, 34.372799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755827, -0.487968, -0.436593,
		0.049620, 0.707556, -0.704913,
		0.652889, 0.511129, 0.559002,
		44.550289, 36.351612, 34.540501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456348, 35.482616, 34.472366>,  <44.093269, 35.993820, 34.149197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456348, 35.482616, 34.472366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584885, 35.770641, 34.718372>,  <44.662006, 35.943459, 34.865978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584885, 35.770641, 34.718372>,  <44.456348, 35.482616, 34.472366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584885, 35.770641, 34.718372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648468, -0.305968, 0.697046,
		0.690095, -0.622807, 0.368620,
		0.321339, 0.720066, 0.615017,
		44.681286, 35.986660, 34.902878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573452, 35.150013, 35.070690>,  <44.456348, 35.482616, 34.472366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573452, 35.150013, 35.070690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569248, 35.532192, 35.188675>,  <44.566727, 35.761501, 35.259464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569248, 35.532192, 35.188675>,  <44.573452, 35.150013, 35.070690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569248, 35.532192, 35.188675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628130, -0.235827, 0.741511,
		0.778038, -0.177478, 0.602627,
		-0.010513, 0.955451, 0.294961,
		44.566093, 35.818829, 35.277164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549725, 35.027946, 35.781963>,  <44.573452, 35.150013, 35.070690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549725, 35.027946, 35.781963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445637, 35.412067, 35.741741>,  <44.383183, 35.642540, 35.717606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445637, 35.412067, 35.741741>,  <44.549725, 35.027946, 35.781963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445637, 35.412067, 35.741741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570463, -0.068884, 0.818430,
		0.779009, 0.270339, 0.565740,
		-0.260224, 0.960298, -0.100557,
		44.367569, 35.700157, 35.711575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573494, 35.343475, 36.475594>,  <44.549725, 35.027946, 35.781963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573494, 35.343475, 36.475594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346100, 35.599464, 36.268806>,  <44.209663, 35.753059, 36.144733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346100, 35.599464, 36.268806>,  <44.573494, 35.343475, 36.475594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346100, 35.599464, 36.268806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555323, 0.165132, 0.815075,
		0.606996, 0.750442, 0.261518,
		-0.568482, 0.639975, -0.516972,
		44.175556, 35.791458, 36.113716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539787, 36.049072, 36.841583>,  <44.573494, 35.343475, 36.475594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539787, 36.049072, 36.841583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208500, 36.006371, 36.621525>,  <44.009727, 35.980751, 36.489491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208500, 36.006371, 36.621525>,  <44.539787, 36.049072, 36.841583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208500, 36.006371, 36.621525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551727, -0.016822, 0.833855,
		-0.098272, 0.994143, -0.044967,
		-0.828215, -0.106755, -0.550149,
		43.960037, 35.974342, 36.456482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075344, 36.711685, 36.951023>,  <44.539787, 36.049072, 36.841583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075344, 36.711685, 36.951023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849014, 36.416695, 36.803532>,  <43.713215, 36.239700, 36.715038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849014, 36.416695, 36.803532>,  <44.075344, 36.711685, 36.951023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849014, 36.416695, 36.803532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668996, 0.149230, 0.728131,
		-0.481957, 0.658675, -0.577811,
		-0.565828, -0.737481, -0.368728,
		43.679264, 36.195450, 36.692913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476990, 36.962040, 36.874771>,  <44.075344, 36.711685, 36.951023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476990, 36.962040, 36.874771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403149, 36.568916, 36.875084>,  <43.358845, 36.333042, 36.875271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403149, 36.568916, 36.875084>,  <43.476990, 36.962040, 36.874771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403149, 36.568916, 36.875084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696523, 0.131395, 0.705401,
		-0.693380, 0.129674, -0.708808,
		-0.184606, -0.982813, 0.000785,
		43.347767, 36.274071, 36.875320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717781, 36.950367, 36.781204>,  <43.476990, 36.962040, 36.874771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717781, 36.950367, 36.781204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846775, 36.608799, 36.944580>,  <42.924171, 36.403858, 37.042606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846775, 36.608799, 36.944580>,  <42.717781, 36.950367, 36.781204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846775, 36.608799, 36.944580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659386, 0.106920, 0.744162,
		-0.679127, -0.509299, -0.528585,
		0.322485, -0.853922, 0.408437,
		42.943520, 36.352623, 37.067112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148746, 36.616020, 37.136429>,  <42.717781, 36.950367, 36.781204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148746, 36.616020, 37.136429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467754, 36.452087, 37.313519>,  <42.659157, 36.353729, 37.419773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467754, 36.452087, 37.313519>,  <42.148746, 36.616020, 37.136429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467754, 36.452087, 37.313519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524282, -0.107734, 0.844702,
		-0.298490, -0.905776, -0.300787,
		0.797516, -0.409832, 0.442725,
		42.707008, 36.329136, 37.446335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869976, 35.952656, 37.403458>,  <42.148746, 36.616020, 37.136429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869976, 35.952656, 37.403458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195789, 36.065155, 37.606411>,  <42.391277, 36.132652, 37.728184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195789, 36.065155, 37.606411>,  <41.869976, 35.952656, 37.403458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195789, 36.065155, 37.606411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407354, -0.345425, 0.845426,
		0.413036, -0.895311, -0.166794,
		0.814533, 0.281247, 0.507381,
		42.440151, 36.149529, 37.758625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108006, 35.332397, 37.734474>,  <41.869976, 35.952656, 37.403458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108006, 35.332397, 37.734474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268532, 35.625492, 37.954311>,  <42.364849, 35.801350, 38.086212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268532, 35.625492, 37.954311>,  <42.108006, 35.332397, 37.734474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268532, 35.625492, 37.954311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390197, -0.406090, 0.826340,
		0.828669, -0.546071, 0.122939,
		0.401316, 0.732733, 0.549589,
		42.388927, 35.845310, 38.119186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270634, 34.944759, 38.238579>,  <42.108006, 35.332397, 37.734474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270634, 34.944759, 38.238579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266582, 35.315472, 38.388771>,  <42.264153, 35.537899, 38.478886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266582, 35.315472, 38.388771>,  <42.270634, 34.944759, 38.238579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266582, 35.315472, 38.388771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478142, -0.334275, 0.812183,
		0.878224, -0.171304, 0.446516,
		-0.010129, 0.926777, 0.375476,
		42.263542, 35.593506, 38.501415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579407, 34.892353, 38.912628>,  <42.270634, 34.944759, 38.238579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579407, 34.892353, 38.912628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362957, 35.228718, 38.909462>,  <42.233089, 35.430534, 38.907562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362957, 35.228718, 38.909462>,  <42.579407, 34.892353, 38.912628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362957, 35.228718, 38.909462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483053, -0.303112, 0.821452,
		0.688367, 0.448327, 0.570223,
		-0.541121, 0.840908, -0.007913,
		42.200623, 35.480991, 38.907089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433666, 35.065678, 39.596840>,  <42.579407, 34.892353, 38.912628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433666, 35.065678, 39.596840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179226, 35.319706, 39.421539>,  <42.026562, 35.472122, 39.316360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179226, 35.319706, 39.421539>,  <42.433666, 35.065678, 39.596840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179226, 35.319706, 39.421539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634965, -0.108121, 0.764938,
		0.438406, 0.764849, 0.472023,
		-0.636097, 0.635072, -0.438251,
		41.988396, 35.510227, 39.290062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188633, 35.434853, 40.162182>,  <42.433666, 35.065678, 39.596840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188633, 35.434853, 40.162182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936123, 35.516857, 39.862991>,  <41.784618, 35.566059, 39.683475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936123, 35.516857, 39.862991>,  <42.188633, 35.434853, 40.162182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936123, 35.516857, 39.862991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724973, 0.186630, 0.663010,
		0.275517, 0.960802, 0.030811,
		-0.631272, 0.205007, -0.747976,
		41.746742, 35.578358, 39.638599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934620, 36.113705, 40.281662>,  <42.188633, 35.434853, 40.162182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934620, 36.113705, 40.281662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676346, 35.913940, 40.050602>,  <41.521381, 35.794083, 39.911964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676346, 35.913940, 40.050602>,  <41.934620, 36.113705, 40.281662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676346, 35.913940, 40.050602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723062, 0.156649, 0.672787,
		-0.245506, 0.852088, -0.462247,
		-0.645684, -0.499407, -0.577654,
		41.482639, 35.764118, 39.877304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348763, 36.445316, 40.242794>,  <41.934620, 36.113705, 40.281662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348763, 36.445316, 40.242794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256115, 36.059956, 40.188816>,  <41.200527, 35.828739, 40.156429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256115, 36.059956, 40.188816>,  <41.348763, 36.445316, 40.242794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256115, 36.059956, 40.188816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581531, 0.025919, 0.813111,
		-0.779855, 0.266804, -0.566252,
		-0.231618, -0.963402, -0.134942,
		41.186630, 35.770935, 40.148335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807060, 36.425304, 40.556705>,  <41.348763, 36.445316, 40.242794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807060, 36.425304, 40.556705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859314, 36.030853, 40.515747>,  <40.890667, 35.794182, 40.491173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859314, 36.030853, 40.515747>,  <40.807060, 36.425304, 40.556705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859314, 36.030853, 40.515747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501334, -0.154810, 0.851292,
		-0.855335, -0.059877, -0.514604,
		0.130638, -0.986128, -0.102396,
		40.898506, 35.735016, 40.485027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285641, 36.183754, 40.805733>,  <40.807060, 36.425304, 40.556705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285641, 36.183754, 40.805733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519264, 35.861698, 40.846943>,  <40.659439, 35.668465, 40.871670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519264, 35.861698, 40.846943>,  <40.285641, 36.183754, 40.805733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519264, 35.861698, 40.846943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463830, -0.226883, 0.856379,
		-0.666134, -0.547966, -0.505964,
		0.584061, -0.805144, 0.103029,
		40.694485, 35.620155, 40.877853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857361, 35.667217, 41.100971>,  <40.285641, 36.183754, 40.805733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857361, 35.667217, 41.100971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222889, 35.520565, 41.170837>,  <40.442207, 35.432575, 41.212757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222889, 35.520565, 41.170837>,  <39.857361, 35.667217, 41.100971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222889, 35.520565, 41.170837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319849, -0.384727, 0.865842,
		-0.250242, -0.847095, -0.468839,
		0.913825, -0.366627, 0.174667,
		40.497036, 35.410576, 41.223236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817577, 34.942551, 41.328892>,  <39.857361, 35.667217, 41.100971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817577, 34.942551, 41.328892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164669, 35.077801, 41.474609>,  <40.372925, 35.158951, 41.562038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164669, 35.077801, 41.474609>,  <39.817577, 34.942551, 41.328892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164669, 35.077801, 41.474609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278619, -0.276043, 0.919876,
		0.411595, -0.899706, -0.145323,
		0.867733, 0.338127, 0.364293,
		40.424988, 35.179237, 41.583897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203674, 34.415958, 41.792858>,  <39.817577, 34.942551, 41.328892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203674, 34.415958, 41.792858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275143, 34.785709, 41.927677>,  <40.318024, 35.007561, 42.008568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275143, 34.785709, 41.927677>,  <40.203674, 34.415958, 41.792858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275143, 34.785709, 41.927677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288588, -0.278258, 0.916127,
		0.940634, -0.260956, 0.217047,
		0.178674, 0.924378, 0.337048,
		40.328743, 35.063023, 42.028793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690426, 34.392578, 42.430145>,  <40.203674, 34.415958, 41.792858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690426, 34.392578, 42.430145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432381, 34.697182, 42.405037>,  <40.277554, 34.879944, 42.389973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432381, 34.697182, 42.405037>,  <40.690426, 34.392578, 42.430145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432381, 34.697182, 42.405037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405587, -0.271655, 0.872756,
		0.647560, 0.588480, 0.484104,
		-0.645109, 0.761508, -0.062767,
		40.238850, 34.925632, 42.386208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657272, 34.844730, 43.152458>,  <40.690426, 34.392578, 42.430145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657272, 34.844730, 43.152458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341225, 34.806675, 42.910248>,  <40.151596, 34.783844, 42.764923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341225, 34.806675, 42.910248>,  <40.657272, 34.844730, 43.152458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341225, 34.806675, 42.910248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492462, -0.489663, 0.719522,
		-0.364953, 0.866707, 0.340043,
		-0.790121, -0.095134, -0.605524,
		40.104187, 34.778133, 42.728592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274681, 34.823269, 43.521015>,  <40.657272, 34.844730, 43.152458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274681, 34.823269, 43.521015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486698, 34.539993, 43.334454>,  <41.613907, 34.370029, 43.222519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486698, 34.539993, 43.334454>,  <41.274681, 34.823269, 43.521015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486698, 34.539993, 43.334454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713181, 0.669843, -0.206597,
		0.458725, -0.223124, 0.860109,
		0.530041, -0.708185, -0.466402,
		41.645710, 34.327538, 43.194534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989407, 34.766693, 43.756916>,  <41.274681, 34.823269, 43.521015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989407, 34.766693, 43.756916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965431, 34.656059, 43.373268>,  <41.951046, 34.589680, 43.143078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965431, 34.656059, 43.373268>,  <41.989407, 34.766693, 43.756916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965431, 34.656059, 43.373268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664545, 0.705911, -0.245091,
		0.744841, -0.652067, 0.141493,
		-0.059935, -0.276582, -0.959119,
		41.947453, 34.573086, 43.085533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379128, 35.335159, 44.148731>,  <41.989407, 34.766693, 43.756916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379128, 35.335159, 44.148731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455112, 35.193939, 44.515179>,  <42.500706, 35.109207, 44.735046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455112, 35.193939, 44.515179>,  <42.379128, 35.335159, 44.148731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455112, 35.193939, 44.515179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663058, -0.734294, -0.145485,
		0.724063, -0.579802, -0.373581,
		0.189966, -0.353046, 0.916118,
		42.512104, 35.088024, 44.790012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871971, 35.833652, 43.929543>,  <42.379128, 35.335159, 44.148731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871971, 35.833652, 43.929543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611652, 35.856544, 43.626705>,  <42.455460, 35.870281, 43.445004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611652, 35.856544, 43.626705>,  <42.871971, 35.833652, 43.929543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611652, 35.856544, 43.626705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096547, 0.995298, -0.007751,
		0.753086, -0.078140, -0.653265,
		-0.650799, 0.057234, -0.757090,
		42.416412, 35.873714, 43.399578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239838, 35.390987, 43.395012>,  <42.871971, 35.833652, 43.929543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239838, 35.390987, 43.395012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300369, 35.126644, 43.689049>,  <43.336689, 34.968037, 43.865471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300369, 35.126644, 43.689049>,  <43.239838, 35.390987, 43.395012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300369, 35.126644, 43.689049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678347, -0.471484, -0.563515,
		0.718989, 0.583926, 0.376942,
		0.151329, -0.660858, 0.735096,
		43.345768, 34.928387, 43.909576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006725, 35.430656, 43.647671>,  <43.239838, 35.390987, 43.395012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006725, 35.430656, 43.647671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796806, 35.090164, 43.647381>,  <43.670856, 34.885868, 43.647205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796806, 35.090164, 43.647381>,  <44.006725, 35.430656, 43.647671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796806, 35.090164, 43.647381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628994, -0.387209, -0.674119,
		0.573548, -0.354230, 0.738623,
		-0.524795, -0.851228, -0.000726,
		43.639366, 34.834797, 43.647163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528637, 35.054317, 43.634575>,  <44.006725, 35.430656, 43.647671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528637, 35.054317, 43.634575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197594, 34.893333, 43.478065>,  <43.998970, 34.796741, 43.384159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197594, 34.893333, 43.478065>,  <44.528637, 35.054317, 43.634575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197594, 34.893333, 43.478065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495287, -0.195585, -0.846426,
		0.264124, -0.894301, 0.361199,
		-0.827604, -0.402459, -0.391277,
		43.949314, 34.772594, 43.360683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697662, 34.365253, 43.384533>,  <44.528637, 35.054317, 43.634575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697662, 34.365253, 43.384533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391506, 34.529095, 43.185982>,  <44.207813, 34.627399, 43.066849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391506, 34.529095, 43.185982>,  <44.697662, 34.365253, 43.384533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391506, 34.529095, 43.185982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510505, -0.083211, -0.855839,
		-0.391863, -0.908459, -0.145418,
		-0.765394, 0.409608, -0.496380,
		44.161888, 34.651978, 43.037067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661545, 34.028690, 42.715855>,  <44.697662, 34.365253, 43.384533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661545, 34.028690, 42.715855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476387, 34.381660, 42.682278>,  <44.365292, 34.593445, 42.662132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476387, 34.381660, 42.682278>,  <44.661545, 34.028690, 42.715855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476387, 34.381660, 42.682278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362234, 0.101883, -0.926502,
		-0.809020, -0.459281, -0.366807,
		-0.462897, 0.882429, -0.083942,
		44.337517, 34.646389, 42.657097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427055, 34.087994, 42.081619>,  <44.661545, 34.028690, 42.715855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427055, 34.087994, 42.081619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429127, 34.471741, 42.194466>,  <44.430370, 34.701988, 42.262173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429127, 34.471741, 42.194466>,  <44.427055, 34.087994, 42.081619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429127, 34.471741, 42.194466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524356, 0.237616, -0.817673,
		-0.851483, 0.152161, -0.501820,
		0.005177, 0.959367, 0.282113,
		44.430679, 34.759552, 42.279099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149990, 34.478146, 41.533836>,  <44.427055, 34.087994, 42.081619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149990, 34.478146, 41.533836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344780, 34.746815, 41.757160>,  <44.461655, 34.908016, 41.891155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344780, 34.746815, 41.757160>,  <44.149990, 34.478146, 41.533836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344780, 34.746815, 41.757160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406156, 0.391764, -0.825565,
		-0.773234, 0.628793, -0.082023,
		0.486976, 0.671670, 0.558314,
		44.490871, 34.948315, 41.924656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101166, 35.049541, 41.140503>,  <44.149990, 34.478146, 41.533836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101166, 35.049541, 41.140503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392635, 35.142723, 41.398113>,  <44.567516, 35.198631, 41.552677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392635, 35.142723, 41.398113>,  <44.101166, 35.049541, 41.140503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392635, 35.142723, 41.398113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484856, 0.488663, -0.725344,
		-0.483679, 0.840799, 0.243130,
		0.728677, 0.232951, 0.644022,
		44.611237, 35.212608, 41.591320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226810, 35.682289, 41.017769>,  <44.101166, 35.049541, 41.140503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226810, 35.682289, 41.017769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547726, 35.495914, 41.167027>,  <44.740276, 35.384090, 41.256580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547726, 35.495914, 41.167027>,  <44.226810, 35.682289, 41.017769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547726, 35.495914, 41.167027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494916, 0.169709, -0.852207,
		0.333749, 0.868390, 0.366756,
		0.802290, -0.465937, 0.373140,
		44.788414, 35.356133, 41.278969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767567, 36.110775, 40.826241>,  <44.226810, 35.682289, 41.017769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767567, 36.110775, 40.826241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967575, 35.773796, 40.906506>,  <45.087578, 35.571609, 40.954666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967575, 35.773796, 40.906506>,  <44.767567, 36.110775, 40.826241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967575, 35.773796, 40.906506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721417, 0.277005, -0.634686,
		0.479104, 0.462117, 0.746262,
		0.500017, -0.842447, 0.200664,
		45.117580, 35.521061, 40.966705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477478, 36.307987, 40.832474>,  <44.767567, 36.110775, 40.826241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477478, 36.307987, 40.832474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.478374, 35.912533, 40.772362>,  <45.478912, 35.675259, 40.736294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.478374, 35.912533, 40.772362>,  <45.477478, 36.307987, 40.832474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.478374, 35.912533, 40.772362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664880, 0.113728, -0.738242,
		0.746947, -0.098262, 0.657583,
		0.002244, -0.988641, -0.150281,
		45.479046, 35.615940, 40.727276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.224682, 36.090271, 40.760468>,  <45.477478, 36.307987, 40.832474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.224682, 36.090271, 40.760468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.025635, 35.786106, 40.593544>,  <45.906208, 35.603607, 40.493389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.025635, 35.786106, 40.593544>,  <46.224682, 36.090271, 40.760468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.025635, 35.786106, 40.593544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583784, 0.062233, -0.809521,
		0.641541, -0.646451, 0.412949,
		-0.497616, -0.760413, -0.417312,
		45.876350, 35.557983, 40.468349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.742100, 35.703144, 40.480625>,  <46.224682, 36.090271, 40.760468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.742100, 35.703144, 40.480625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392624, 35.640560, 40.296371>,  <46.182938, 35.603008, 40.185822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392624, 35.640560, 40.296371>,  <46.742100, 35.703144, 40.480625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.392624, 35.640560, 40.296371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460421, 0.039786, -0.886809,
		0.157081, -0.986882, 0.037279,
		-0.873692, -0.156465, -0.460631,
		46.130516, 35.593620, 40.158184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.957317, 35.322048, 39.920891>,  <46.742100, 35.703144, 40.480625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.957317, 35.322048, 39.920891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595100, 35.455936, 39.816620>,  <46.377769, 35.536270, 39.754059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595100, 35.455936, 39.816620>,  <46.957317, 35.322048, 39.920891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.595100, 35.455936, 39.816620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279385, 0.008083, -0.960145,
		-0.319278, -0.942281, -0.100837,
		-0.905541, 0.334725, -0.260678,
		46.323437, 35.556355, 39.738415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818851, 34.865829, 39.361423>,  <46.957317, 35.322048, 39.920891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818851, 34.865829, 39.361423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586758, 35.190399, 39.333355>,  <46.447502, 35.385139, 39.316513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586758, 35.190399, 39.333355>,  <46.818851, 34.865829, 39.361423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.586758, 35.190399, 39.333355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272245, 0.112032, -0.955684,
		-0.767600, -0.573625, -0.285910,
		-0.580235, 0.811421, -0.070171,
		46.412685, 35.433826, 39.312305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515484, 34.804615, 38.741035>,  <46.818851, 34.865829, 39.361423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515484, 34.804615, 38.741035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.424744, 35.186745, 38.816814>,  <46.370300, 35.416023, 38.862282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.424744, 35.186745, 38.816814>,  <46.515484, 34.804615, 38.741035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.424744, 35.186745, 38.816814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001381, 0.194207, -0.980960,
		-0.973929, -0.222790, -0.042736,
		-0.226848, 0.955326, 0.189451,
		46.356689, 35.473343, 38.873650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955807, 35.049526, 38.255390>,  <46.515484, 34.804615, 38.741035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955807, 35.049526, 38.255390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136112, 35.386204, 38.374294>,  <46.244293, 35.588211, 38.445637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136112, 35.386204, 38.374294>,  <45.955807, 35.049526, 38.255390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136112, 35.386204, 38.374294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028239, 0.319395, -0.947201,
		-0.892199, 0.435354, 0.120202,
		0.450760, 0.841697, 0.297257,
		46.271339, 35.638714, 38.463470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.608776, 35.514545, 37.901176>,  <45.955807, 35.049526, 38.255390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.608776, 35.514545, 37.901176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951839, 35.703468, 37.982513>,  <46.157677, 35.816822, 38.031315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951839, 35.703468, 37.982513>,  <45.608776, 35.514545, 37.901176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951839, 35.703468, 37.982513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052942, 0.312227, -0.948531,
		-0.511488, 0.824281, 0.242779,
		0.857658, 0.472309, 0.203339,
		46.209137, 35.845161, 38.043514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545055, 35.946857, 37.432224>,  <45.608776, 35.514545, 37.901176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545055, 35.946857, 37.432224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.918777, 35.996960, 37.565727>,  <46.143009, 36.027020, 37.645828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.918777, 35.996960, 37.565727>,  <45.545055, 35.946857, 37.432224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.918777, 35.996960, 37.565727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212026, 0.557389, -0.802722,
		-0.286577, 0.820749, 0.494212,
		0.934301, 0.125256, 0.333755,
		46.199066, 36.034538, 37.665855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792709, 36.673130, 37.338085>,  <45.545055, 35.946857, 37.432224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792709, 36.673130, 37.338085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.120667, 36.444126, 37.336636>,  <46.317440, 36.306725, 37.335766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.120667, 36.444126, 37.336636>,  <45.792709, 36.673130, 37.338085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.120667, 36.444126, 37.336636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330741, 0.478797, -0.813243,
		0.467325, 0.665571, 0.581913,
		0.819889, -0.572511, -0.003622,
		46.366634, 36.272373, 37.335548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.281128, 37.107807, 37.100243>,  <45.792709, 36.673130, 37.338085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.281128, 37.107807, 37.100243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457954, 36.751034, 37.062218>,  <46.564049, 36.536968, 37.039402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457954, 36.751034, 37.062218>,  <46.281128, 37.107807, 37.100243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457954, 36.751034, 37.062218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354870, 0.271242, -0.894703,
		0.823800, 0.361780, 0.436426,
		0.442063, -0.891932, -0.095065,
		46.590572, 36.483456, 37.033699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.019451, 37.259552, 36.995045>,  <46.281128, 37.107807, 37.100243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.019451, 37.259552, 36.995045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.923866, 36.901344, 36.844872>,  <46.866516, 36.686420, 36.754768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.923866, 36.901344, 36.844872>,  <47.019451, 37.259552, 36.995045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.923866, 36.901344, 36.844872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491917, 0.221710, -0.841939,
		0.837207, -0.385871, 0.387540,
		-0.238958, -0.895516, -0.375434,
		46.852180, 36.632690, 36.732243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.639812, 37.082863, 36.654747>,  <47.019451, 37.259552, 36.995045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.639812, 37.082863, 36.654747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.360428, 36.840233, 36.502838>,  <47.192799, 36.694656, 36.411694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.360428, 36.840233, 36.502838>,  <47.639812, 37.082863, 36.654747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.360428, 36.840233, 36.502838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368199, 0.150459, -0.917492,
		0.613666, -0.780661, 0.118250,
		-0.698458, -0.606573, -0.379770,
		47.150890, 36.658260, 36.388908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.983402, 36.528049, 36.199509>,  <47.639812, 37.082863, 36.654747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.983402, 36.528049, 36.199509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.612938, 36.623119, 36.082390>,  <47.390659, 36.680161, 36.012119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.612938, 36.623119, 36.082390>,  <47.983402, 36.528049, 36.199509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.612938, 36.623119, 36.082390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312113, 0.047307, -0.948866,
		-0.211671, -0.970192, -0.117995,
		-0.926165, 0.237676, -0.292796,
		47.335087, 36.694424, 35.994553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.747231, 36.057434, 35.745941>,  <47.983402, 36.528049, 36.199509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.747231, 36.057434, 35.745941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.642159, 36.437439, 35.678436>,  <47.579117, 36.665440, 35.637932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.642159, 36.437439, 35.678436>,  <47.747231, 36.057434, 35.745941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.642159, 36.437439, 35.678436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578499, 0.015077, -0.815544,
		-0.772230, -0.311857, -0.553540,
		-0.262679, 0.950009, -0.168766,
		47.563354, 36.722443, 35.627808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.284817, 36.206905, 35.180019>,  <47.747231, 36.057434, 35.745941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.284817, 36.206905, 35.180019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.550518, 36.500126, 35.238537>,  <47.709938, 36.676060, 35.273647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.550518, 36.500126, 35.238537>,  <47.284817, 36.206905, 35.180019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.550518, 36.500126, 35.238537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358992, -0.141178, -0.922601,
		-0.655661, 0.665361, -0.356938,
		0.664254, 0.733051, 0.146294,
		47.749794, 36.720039, 35.282425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.736267, 35.760109, 34.843063>,  <47.284817, 36.206905, 35.180019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.736267, 35.760109, 34.843063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.838024, 35.802364, 34.458538>,  <47.899078, 35.827717, 34.227821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.838024, 35.802364, 34.458538>,  <47.736267, 35.760109, 34.843063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.838024, 35.802364, 34.458538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244599, 0.968726, 0.041725,
		0.935657, 0.224521, 0.272281,
		0.254398, 0.105640, -0.961313,
		47.914345, 35.834057, 34.170143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.382397, 35.139324, 34.720825>,  <47.736267, 35.760109, 34.843063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.382397, 35.139324, 34.720825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.678394, 35.109539, 34.988220>,  <47.855991, 35.091667, 35.148655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.678394, 35.109539, 34.988220>,  <47.382397, 35.139324, 34.720825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.678394, 35.109539, 34.988220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612927, -0.334657, -0.715769,
		0.277012, 0.939393, -0.202001,
		0.739990, -0.074465, 0.668483,
		47.900391, 35.087200, 35.188766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.306227, 40.174416, 32.828159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.131554, 39.979385, 33.130573>,  <30.026749, 39.862370, 33.312019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.131554, 39.979385, 33.130573>,  <30.306227, 40.174416, 32.828159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131554, 39.979385, 33.130573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478912, -0.837405, -0.263430,
		0.761545, 0.247036, 0.599185,
		-0.436684, -0.487571, 0.756031,
		30.000549, 39.833115, 33.357384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858841, 39.891441, 33.259102>,  <30.306227, 40.174416, 32.828159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858841, 39.891441, 33.259102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.527195, 39.670815, 33.295650>,  <30.328207, 39.538441, 33.317581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.527195, 39.670815, 33.295650>,  <30.858841, 39.891441, 33.259102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527195, 39.670815, 33.295650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547071, -0.834087, -0.070794,
		0.115258, -0.008710, 0.993297,
		-0.829113, -0.551564, 0.091370,
		30.278461, 39.505344, 33.323063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124897, 39.455597, 33.671856>,  <30.858841, 39.891441, 33.259102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124897, 39.455597, 33.671856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.815657, 39.286064, 33.483101>,  <30.630114, 39.184345, 33.369846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.815657, 39.286064, 33.483101>,  <31.124897, 39.455597, 33.671856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815657, 39.286064, 33.483101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547783, -0.821207, -0.159852,
		-0.319770, -0.382075, 0.867045,
		-0.773099, -0.423837, -0.471891,
		30.583727, 39.158913, 33.341534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157640, 38.721107, 33.866386>,  <31.124897, 39.455597, 33.671856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157640, 38.721107, 33.866386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.918200, 38.735172, 33.546276>,  <30.774536, 38.743610, 33.354210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.918200, 38.735172, 33.546276>,  <31.157640, 38.721107, 33.866386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918200, 38.735172, 33.546276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456820, -0.805676, -0.377097,
		-0.658021, -0.591313, 0.466217,
		-0.598602, 0.035161, -0.800275,
		30.738619, 38.745720, 33.306194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756599, 38.079685, 33.822361>,  <31.157640, 38.721107, 33.866386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756599, 38.079685, 33.822361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.766129, 38.204918, 33.442589>,  <30.771847, 38.280060, 33.214725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.766129, 38.204918, 33.442589>,  <30.756599, 38.079685, 33.822361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766129, 38.204918, 33.442589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395665, -0.875103, -0.278646,
		-0.918086, -0.369017, -0.144726,
		0.023825, 0.313084, -0.949426,
		30.773275, 38.298843, 33.157761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409594, 37.628609, 33.500713>,  <30.756599, 38.079685, 33.822361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409594, 37.628609, 33.500713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.586731, 37.800194, 33.185783>,  <30.693014, 37.903145, 32.996826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.586731, 37.800194, 33.185783>,  <30.409594, 37.628609, 33.500713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586731, 37.800194, 33.185783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131028, -0.899657, -0.416473,
		-0.886972, 0.081272, -0.454615,
		0.442845, 0.428967, -0.787322,
		30.719585, 37.928883, 32.949585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204412, 37.247032, 32.966908>,  <30.409594, 37.628609, 33.500713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204412, 37.247032, 32.966908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.537914, 37.429935, 32.843121>,  <30.738014, 37.539677, 32.768848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.537914, 37.429935, 32.843121>,  <30.204412, 37.247032, 32.966908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537914, 37.429935, 32.843121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344740, -0.868932, -0.355123,
		-0.431289, 0.189399, -0.882110,
		0.833753, 0.457259, -0.309468,
		30.788040, 37.567112, 32.750278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448080, 36.701405, 32.546509>,  <30.204412, 37.247032, 32.966908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448080, 36.701405, 32.546509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.743509, 36.971027, 32.551636>,  <30.920767, 37.132801, 32.554710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.743509, 36.971027, 32.551636>,  <30.448080, 36.701405, 32.546509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743509, 36.971027, 32.551636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629026, -0.682143, -0.372837,
		-0.242568, 0.283430, -0.927808,
		0.738571, 0.674053, 0.012819,
		30.965080, 37.173244, 32.555481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805222, 36.633987, 31.969254>,  <30.448080, 36.701405, 32.546509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805222, 36.633987, 31.969254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.074053, 36.819103, 32.200470>,  <31.235352, 36.930172, 32.339199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.074053, 36.819103, 32.200470>,  <30.805222, 36.633987, 31.969254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074053, 36.819103, 32.200470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704793, -0.639219, -0.307679,
		0.227104, 0.614185, -0.755778,
		0.672079, 0.462792, 0.578042,
		31.275677, 36.957939, 32.373882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479273, 36.935658, 31.570791>,  <30.805222, 36.633987, 31.969254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479273, 36.935658, 31.570791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.574011, 36.884975, 31.956091>,  <31.630854, 36.854565, 32.187271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.574011, 36.884975, 31.956091>,  <31.479273, 36.935658, 31.570791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574011, 36.884975, 31.956091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774452, -0.574025, -0.265931,
		0.586624, 0.808976, -0.037827,
		0.236846, -0.126706, 0.963250,
		31.645065, 36.846962, 32.245068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172359, 37.129051, 31.662949>,  <31.479273, 36.935658, 31.570791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172359, 37.129051, 31.662949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.069122, 36.880871, 31.959171>,  <32.007179, 36.731960, 32.136906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.069122, 36.880871, 31.959171>,  <32.172359, 37.129051, 31.662949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069122, 36.880871, 31.959171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733768, -0.624519, -0.267508,
		0.628468, 0.474356, 0.616453,
		-0.258093, -0.620454, 0.740557,
		31.991693, 36.694736, 32.181339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803417, 36.901051, 31.868961>,  <32.172359, 37.129051, 31.662949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803417, 36.901051, 31.868961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539310, 36.639977, 32.017582>,  <32.380848, 36.483330, 32.106754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539310, 36.639977, 32.017582>,  <32.803417, 36.901051, 31.868961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539310, 36.639977, 32.017582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622642, -0.752347, -0.215152,
		0.419964, 0.089287, 0.903138,
		-0.660263, -0.652687, 0.371553,
		32.341232, 36.444172, 32.129047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204796, 36.465157, 32.380074>,  <32.803417, 36.901051, 31.868961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204796, 36.465157, 32.380074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.872131, 36.273861, 32.267200>,  <32.672535, 36.159084, 32.199478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.872131, 36.273861, 32.267200>,  <33.204796, 36.465157, 32.380074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872131, 36.273861, 32.267200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550819, -0.774836, -0.310206,
		-0.070292, -0.413418, 0.907824,
		-0.831660, -0.478242, -0.282183,
		32.622635, 36.130390, 32.182545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268173, 35.782139, 32.616371>,  <33.204796, 36.465157, 32.380074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268173, 35.782139, 32.616371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.990646, 35.745071, 32.330708>,  <32.824131, 35.722832, 32.159309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.990646, 35.745071, 32.330708>,  <33.268173, 35.782139, 32.616371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990646, 35.745071, 32.330708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468620, -0.811095, -0.350029,
		-0.546818, -0.577528, 0.606178,
		-0.693820, -0.092665, -0.714162,
		32.782501, 35.717274, 32.116459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068596, 35.107910, 32.686405>,  <33.268173, 35.782139, 32.616371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068596, 35.107910, 32.686405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.981613, 35.208466, 32.309147>,  <32.929424, 35.268799, 32.082794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.981613, 35.208466, 32.309147>,  <33.068596, 35.107910, 32.686405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981613, 35.208466, 32.309147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587949, -0.737558, -0.332152,
		-0.779120, -0.626749, 0.012587,
		-0.217459, 0.251386, -0.943142,
		32.916374, 35.283882, 32.026203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768253, 34.561485, 32.393410>,  <33.068596, 35.107910, 32.686405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768253, 34.561485, 32.393410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.918896, 34.760960, 32.081135>,  <33.009281, 34.880646, 31.893768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.918896, 34.760960, 32.081135>,  <32.768253, 34.561485, 32.393410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918896, 34.760960, 32.081135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536642, -0.804375, -0.254945,
		-0.755107, -0.322938, -0.570547,
		0.376602, 0.498691, -0.780691,
		33.031876, 34.910568, 31.846928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079796, 34.080013, 31.993557>,  <32.768253, 34.561485, 32.393410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079796, 34.080013, 31.993557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.237862, 34.397694, 31.808910>,  <33.332703, 34.588303, 31.698122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.237862, 34.397694, 31.808910>,  <33.079796, 34.080013, 31.993557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237862, 34.397694, 31.808910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784141, -0.553398, -0.280843,
		-0.478504, -0.250994, -0.841449,
		0.395166, 0.794199, -0.461618,
		33.356411, 34.635952, 31.670425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247841, 33.862232, 31.259613>,  <33.079796, 34.080013, 31.993557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247841, 33.862232, 31.259613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.478901, 34.167122, 31.376467>,  <33.617538, 34.350056, 31.446579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.478901, 34.167122, 31.376467>,  <33.247841, 33.862232, 31.259613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478901, 34.167122, 31.376467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813228, -0.506429, -0.286687,
		-0.070573, 0.403177, -0.912397,
		0.577649, 0.762219, 0.292134,
		33.652195, 34.395786, 31.464108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721230, 33.905659, 30.777510>,  <33.247841, 33.862232, 31.259613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721230, 33.905659, 30.777510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.898563, 34.116859, 31.067245>,  <34.004963, 34.243580, 31.241087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.898563, 34.116859, 31.067245>,  <33.721230, 33.905659, 30.777510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898563, 34.116859, 31.067245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879472, -0.412334, -0.237716,
		0.173154, 0.742423, -0.647167,
		0.443335, 0.528004, 0.724338,
		34.031563, 34.275261, 31.284548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349316, 34.147167, 30.450443>,  <33.721230, 33.905659, 30.777510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349316, 34.147167, 30.450443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.410690, 34.184059, 30.843981>,  <34.447514, 34.206196, 31.080103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.410690, 34.184059, 30.843981>,  <34.349316, 34.147167, 30.450443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410690, 34.184059, 30.843981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929980, -0.350063, -0.112218,
		0.334058, 0.932174, -0.139485,
		0.153435, 0.092231, 0.983845,
		34.456722, 34.211727, 31.139133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917557, 34.548347, 30.506847>,  <34.349316, 34.147167, 30.450443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917557, 34.548347, 30.506847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.882523, 34.325596, 30.837231>,  <34.861500, 34.191944, 31.035461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.882523, 34.325596, 30.837231>,  <34.917557, 34.548347, 30.506847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882523, 34.325596, 30.837231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935082, -0.331822, -0.124561,
		0.343437, 0.761430, 0.549796,
		-0.087589, -0.556884, 0.825959,
		34.856247, 34.158531, 31.085018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467323, 34.699306, 30.897781>,  <34.917557, 34.548347, 30.506847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467323, 34.699306, 30.897781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337864, 34.341454, 31.020988>,  <35.260189, 34.126740, 31.094913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337864, 34.341454, 31.020988>,  <35.467323, 34.699306, 30.897781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337864, 34.341454, 31.020988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938417, -0.261908, 0.225340,
		-0.120925, 0.361982, 0.924309,
		-0.323653, -0.894636, 0.308019,
		35.240768, 34.073063, 31.113394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825466, 34.576561, 31.562899>,  <35.467323, 34.699306, 30.897781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825466, 34.576561, 31.562899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.691673, 34.218704, 31.444410>,  <35.611397, 34.003990, 31.373318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.691673, 34.218704, 31.444410>,  <35.825466, 34.576561, 31.562899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691673, 34.218704, 31.444410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796466, -0.436374, 0.418592,
		-0.503752, -0.095919, 0.858507,
		-0.334479, -0.894638, -0.296221,
		35.591328, 33.950314, 31.355545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423717, 34.608829, 32.127518>,  <35.825466, 34.576561, 31.562899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423717, 34.608829, 32.127518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760654, 34.775375, 31.990643>,  <36.962818, 34.875301, 31.908516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760654, 34.775375, 31.990643>,  <36.423717, 34.608829, 32.127518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760654, 34.775375, 31.990643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299116, 0.889352, 0.345807,
		0.448309, -0.188934, 0.873683,
		0.842347, 0.416361, -0.342192,
		37.013359, 34.900284, 31.887985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627880, 34.973675, 32.643719>,  <36.423717, 34.608829, 32.127518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627880, 34.973675, 32.643719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789993, 35.117565, 32.307541>,  <36.887260, 35.203899, 32.105835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789993, 35.117565, 32.307541>,  <36.627880, 34.973675, 32.643719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789993, 35.117565, 32.307541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383060, 0.901554, 0.201163,
		0.830065, 0.240410, 0.503184,
		0.405286, 0.359728, -0.840440,
		36.911579, 35.225483, 32.055408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945885, 35.702324, 32.756062>,  <36.627880, 34.973675, 32.643719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945885, 35.702324, 32.756062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904247, 35.684715, 32.358624>,  <36.879265, 35.674152, 32.120163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904247, 35.684715, 32.358624>,  <36.945885, 35.702324, 32.756062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904247, 35.684715, 32.358624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324269, 0.945932, -0.007935,
		0.940220, 0.321366, -0.112737,
		-0.104091, -0.044018, -0.993593,
		36.873020, 35.671509, 32.060547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261116, 36.287777, 32.574265>,  <36.945885, 35.702324, 32.756062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261116, 36.287777, 32.574265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.001637, 36.187954, 32.286678>,  <36.845947, 36.128059, 32.114128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.001637, 36.187954, 32.286678>,  <37.261116, 36.287777, 32.574265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001637, 36.187954, 32.286678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171717, 0.968343, -0.181177,
		0.741420, 0.005929, -0.671016,
		-0.648699, -0.249553, -0.718966,
		36.807026, 36.113087, 32.070988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325283, 36.885113, 32.139084>,  <37.261116, 36.287777, 32.574265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325283, 36.885113, 32.139084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997036, 36.677208, 32.044056>,  <36.800087, 36.552464, 31.987040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997036, 36.677208, 32.044056>,  <37.325283, 36.885113, 32.139084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997036, 36.677208, 32.044056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532695, 0.846231, -0.011364,
		0.206944, 0.117226, -0.971304,
		-0.820616, -0.519761, -0.237568,
		36.750851, 36.521278, 31.972786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027710, 37.216278, 31.549566>,  <37.325283, 36.885113, 32.139084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027710, 37.216278, 31.549566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.740696, 37.017467, 31.744755>,  <36.568489, 36.898182, 31.861868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.740696, 37.017467, 31.744755>,  <37.027710, 37.216278, 31.549566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740696, 37.017467, 31.744755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532909, 0.842853, 0.074881,
		-0.448507, -0.206316, -0.869641,
		-0.717530, -0.497024, 0.487973,
		36.525436, 36.868359, 31.891148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388092, 37.558941, 31.335398>,  <37.027710, 37.216278, 31.549566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388092, 37.558941, 31.335398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249519, 37.343288, 31.642469>,  <36.166378, 37.213898, 31.826712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249519, 37.343288, 31.642469>,  <36.388092, 37.558941, 31.335398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249519, 37.343288, 31.642469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630845, 0.739561, 0.234701,
		-0.694278, -0.402979, -0.596310,
		-0.346428, -0.539127, 0.767678,
		36.145592, 37.181549, 31.872772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611912, 37.712112, 31.373877>,  <36.388092, 37.558941, 31.335398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611912, 37.712112, 31.373877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657925, 37.536484, 31.730301>,  <35.685532, 37.431107, 31.944155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657925, 37.536484, 31.730301>,  <35.611912, 37.712112, 31.373877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657925, 37.536484, 31.730301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700761, 0.599904, 0.386069,
		-0.704060, -0.668830, -0.238673,
		0.115034, -0.439069, 0.891059,
		35.692436, 37.404762, 31.997618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906689, 37.517506, 31.605999>,  <35.611912, 37.712112, 31.373877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906689, 37.517506, 31.605999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143837, 37.564938, 31.924608>,  <35.286125, 37.593395, 32.115772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143837, 37.564938, 31.924608>,  <34.906689, 37.517506, 31.605999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143837, 37.564938, 31.924608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612189, 0.708972, 0.350119,
		-0.523197, -0.695197, 0.492917,
		0.592866, 0.118577, 0.796523,
		35.321697, 37.600510, 32.163567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428467, 37.671635, 32.164276>,  <34.906689, 37.517506, 31.605999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428467, 37.671635, 32.164276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.777145, 37.790623, 32.320049>,  <34.986351, 37.862015, 32.413513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.777145, 37.790623, 32.320049>,  <34.428467, 37.671635, 32.164276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777145, 37.790623, 32.320049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463526, 0.758384, 0.458255,
		-0.159024, -0.579972, 0.798964,
		0.871697, 0.297467, 0.389433,
		35.038654, 37.879864, 32.436878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344242, 37.803066, 32.815872>,  <34.428467, 37.671635, 32.164276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344242, 37.803066, 32.815872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666985, 38.023228, 32.730057>,  <34.860630, 38.155327, 32.678566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666985, 38.023228, 32.730057>,  <34.344242, 37.803066, 32.815872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666985, 38.023228, 32.730057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481861, 0.823302, 0.299972,
		0.341740, -0.138657, 0.929510,
		0.806861, 0.550407, -0.214542,
		34.909042, 38.188351, 32.665695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333355, 38.286674, 33.404266>,  <34.344242, 37.803066, 32.815872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333355, 38.286674, 33.404266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.609867, 38.430325, 33.153458>,  <34.775776, 38.516514, 33.002972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.609867, 38.430325, 33.153458>,  <34.333355, 38.286674, 33.404266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609867, 38.430325, 33.153458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260023, 0.933253, 0.247845,
		0.674179, -0.008290, 0.738521,
		0.691281, 0.359125, -0.627024,
		34.817253, 38.538063, 32.965351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633713, 38.712467, 33.771008>,  <34.333355, 38.286674, 33.404266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633713, 38.712467, 33.771008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.737144, 38.831585, 33.403431>,  <34.799202, 38.903057, 33.182884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.737144, 38.831585, 33.403431>,  <34.633713, 38.712467, 33.771008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737144, 38.831585, 33.403431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300431, 0.928909, 0.216492,
		0.918085, 0.220099, 0.329662,
		0.258576, 0.297798, -0.918942,
		34.814716, 38.920925, 33.127747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095253, 39.319111, 33.832726>,  <34.633713, 38.712467, 33.771008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095253, 39.319111, 33.832726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893490, 39.340675, 33.488014>,  <34.772434, 39.353615, 33.281185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893490, 39.340675, 33.488014>,  <35.095253, 39.319111, 33.832726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893490, 39.340675, 33.488014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374864, 0.885415, 0.274802,
		0.777851, 0.461663, -0.426398,
		-0.504405, 0.053913, -0.861782,
		34.742168, 39.356850, 33.229481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167221, 40.068058, 33.635986>,  <35.095253, 39.319111, 33.832726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167221, 40.068058, 33.635986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.846481, 39.898602, 33.467434>,  <34.654037, 39.796928, 33.366302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.846481, 39.898602, 33.467434>,  <35.167221, 40.068058, 33.635986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846481, 39.898602, 33.467434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577496, 0.730518, 0.364475,
		0.153421, 0.535602, -0.830417,
		-0.801848, -0.423644, -0.421385,
		34.605927, 39.771507, 33.341019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870586, 40.520847, 33.057732>,  <35.167221, 40.068058, 33.635986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870586, 40.520847, 33.057732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.576233, 40.269283, 33.158089>,  <34.399620, 40.118343, 33.218304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.576233, 40.269283, 33.158089>,  <34.870586, 40.520847, 33.057732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576233, 40.269283, 33.158089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602598, 0.777266, 0.180922,
		-0.308795, -0.018051, -0.950957,
		-0.735881, -0.628913, 0.250894,
		34.355469, 40.080608, 33.233356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192799, 40.735119, 32.713039>,  <34.870586, 40.520847, 33.057732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192799, 40.735119, 32.713039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.079075, 40.505505, 33.020195>,  <34.010841, 40.367737, 33.204487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.079075, 40.505505, 33.020195>,  <34.192799, 40.735119, 32.713039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079075, 40.505505, 33.020195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773985, 0.610093, 0.169511,
		-0.565789, -0.546142, -0.617748,
		-0.284306, -0.574035, 0.767889,
		33.993782, 40.333294, 33.250561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.389603, 40.908226, 32.760609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460213, 40.702919, 33.096561>,  <33.502579, 40.579735, 33.298134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460213, 40.702919, 33.096561>,  <33.389603, 40.908226, 32.760609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460213, 40.702919, 33.096561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798065, 0.424812, 0.427349,
		-0.576133, -0.745718, -0.334627,
		0.176528, -0.513264, 0.839880,
		33.513172, 40.548939, 33.348526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752251, 40.433987, 32.941563>,  <33.389603, 40.908226, 32.760609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752251, 40.433987, 32.941563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.951084, 40.528015, 33.275665>,  <33.070385, 40.584435, 33.476128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.951084, 40.528015, 33.275665>,  <32.752251, 40.433987, 32.941563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951084, 40.528015, 33.275665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841019, 0.367416, 0.397105,
		-0.213537, -0.899859, 0.380337,
		0.497080, 0.235074, 0.835255,
		33.100208, 40.598537, 33.526241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365547, 40.323124, 33.501114>,  <32.752251, 40.433987, 32.941563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365547, 40.323124, 33.501114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.618858, 40.589077, 33.659546>,  <32.770847, 40.748650, 33.754604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.618858, 40.589077, 33.659546>,  <32.365547, 40.323124, 33.501114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618858, 40.589077, 33.659546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769910, 0.489204, 0.409778,
		0.078692, -0.564451, 0.821707,
		0.633283, 0.664887, 0.396080,
		32.808842, 40.788544, 33.778370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118698, 40.455128, 34.145924>,  <32.365547, 40.323124, 33.501114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118698, 40.455128, 34.145924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.357811, 40.772621, 34.100956>,  <32.501278, 40.963120, 34.073975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.357811, 40.772621, 34.100956>,  <32.118698, 40.455128, 34.145924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357811, 40.772621, 34.100956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649310, 0.561638, 0.512796,
		0.470163, -0.233546, 0.851118,
		0.597782, 0.793737, -0.112417,
		32.537144, 41.010742, 34.067230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234608, 40.818325, 34.904022>,  <32.118698, 40.455128, 34.145924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234608, 40.818325, 34.904022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.351158, 41.106945, 34.652798>,  <32.421089, 41.280117, 34.502064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.351158, 41.106945, 34.652798>,  <32.234608, 40.818325, 34.904022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351158, 41.106945, 34.652798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605350, 0.647451, 0.462989,
		0.740710, 0.245294, 0.625443,
		0.291376, 0.721553, -0.628062,
		32.438572, 41.323410, 34.464378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398327, 41.398693, 35.278881>,  <32.234608, 40.818325, 34.904022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398327, 41.398693, 35.278881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.298294, 41.526398, 34.913250>,  <32.238274, 41.603020, 34.693871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.298294, 41.526398, 34.913250>,  <32.398327, 41.398693, 35.278881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298294, 41.526398, 34.913250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641195, 0.652777, 0.403424,
		0.725483, 0.686990, 0.041458,
		-0.250086, 0.319260, -0.914073,
		32.223267, 41.622177, 34.639027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424068, 42.117714, 35.374752>,  <32.398327, 41.398693, 35.278881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424068, 42.117714, 35.374752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.220592, 42.035217, 35.040398>,  <32.098507, 41.985718, 34.839787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.220592, 42.035217, 35.040398>,  <32.424068, 42.117714, 35.374752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220592, 42.035217, 35.040398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670324, 0.704143, 0.234200,
		0.540278, 0.679446, -0.496440,
		-0.508690, -0.206242, -0.835882,
		32.067986, 41.973343, 34.789635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387726, 42.727795, 35.047733>,  <32.424068, 42.117714, 35.374752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387726, 42.727795, 35.047733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.113441, 42.536316, 34.828411>,  <31.948870, 42.421429, 34.696815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.113441, 42.536316, 34.828411>,  <32.387726, 42.727795, 35.047733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113441, 42.536316, 34.828411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544456, 0.837291, -0.050102,
		0.483077, 0.264174, -0.834774,
		-0.685714, -0.478701, -0.548308,
		31.907728, 42.392704, 34.663918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201698, 43.131516, 34.310078>,  <32.387726, 42.727795, 35.047733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201698, 43.131516, 34.310078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.900808, 42.898422, 34.433094>,  <31.720274, 42.758568, 34.506905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.900808, 42.898422, 34.433094>,  <32.201698, 43.131516, 34.310078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900808, 42.898422, 34.433094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624987, 0.778838, -0.052938,
		-0.208673, -0.232028, -0.950063,
		-0.752228, -0.582730, 0.307537,
		31.675140, 42.723602, 34.525356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684048, 43.446537, 33.961487>,  <32.201698, 43.131516, 34.310078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684048, 43.446537, 33.961487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.502214, 43.201618, 34.220238>,  <31.393114, 43.054668, 34.375488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.502214, 43.201618, 34.220238>,  <31.684048, 43.446537, 33.961487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502214, 43.201618, 34.220238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714509, 0.684305, 0.145614,
		-0.531819, -0.396006, -0.748564,
		-0.454582, -0.612296, 0.646877,
		31.365839, 43.017929, 34.414299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992153, 43.412674, 33.815853>,  <31.684048, 43.446537, 33.961487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992153, 43.412674, 33.815853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.045448, 43.337627, 34.205120>,  <31.077425, 43.292599, 34.438679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.045448, 43.337627, 34.205120>,  <30.992153, 43.412674, 33.815853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045448, 43.337627, 34.205120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562007, 0.794479, 0.230112,
		-0.816331, -0.577585, 0.000414,
		0.133238, -0.187614, 0.973164,
		31.085421, 43.281342, 34.497070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319702, 43.527016, 34.082790>,  <30.992153, 43.412674, 33.815853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319702, 43.527016, 34.082790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.561583, 43.537640, 34.401196>,  <30.706711, 43.544014, 34.592239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.561583, 43.537640, 34.401196>,  <30.319702, 43.527016, 34.082790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561583, 43.537640, 34.401196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517414, 0.772912, 0.367274,
		-0.605491, -0.633958, 0.481122,
		0.604701, 0.026558, 0.796010,
		30.742992, 43.545609, 34.639999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948301, 43.697975, 34.697514>,  <30.319702, 43.527016, 34.082790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948301, 43.697975, 34.697514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.319273, 43.814240, 34.791656>,  <30.541855, 43.883999, 34.848145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.319273, 43.814240, 34.791656>,  <29.948301, 43.697975, 34.697514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319273, 43.814240, 34.791656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347041, 0.903408, 0.251825,
		-0.139432, -0.315230, 0.938717,
		0.927427, 0.290661, 0.235362,
		30.597502, 43.901436, 34.862267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843716, 44.063328, 35.230629>,  <29.948301, 43.697975, 34.697514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843716, 44.063328, 35.230629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.218348, 44.194424, 35.180973>,  <30.443127, 44.273079, 35.151180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.218348, 44.194424, 35.180973>,  <29.843716, 44.063328, 35.230629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218348, 44.194424, 35.180973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249906, 0.872890, 0.419060,
		0.245699, -0.361460, 0.899433,
		0.936579, 0.327736, -0.124137,
		30.499321, 44.292744, 35.143730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063976, 44.273067, 35.816830>,  <29.843716, 44.063328, 35.230629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063976, 44.273067, 35.816830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.351748, 44.442181, 35.596405>,  <30.524410, 44.543648, 35.464149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.351748, 44.442181, 35.596405>,  <30.063976, 44.273067, 35.816830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351748, 44.442181, 35.596405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068770, 0.832857, 0.549200,
		0.691151, -0.357215, 0.628258,
		0.719431, 0.422785, -0.551064,
		30.567577, 44.569016, 35.431084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582706, 44.509975, 36.265129>,  <30.063976, 44.273067, 35.816830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582706, 44.509975, 36.265129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.639931, 44.727310, 35.934235>,  <30.674265, 44.857712, 35.735699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.639931, 44.727310, 35.934235>,  <30.582706, 44.509975, 36.265129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639931, 44.727310, 35.934235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075393, 0.827424, 0.556494,
		0.986838, -0.141981, 0.077409,
		0.143061, 0.543334, -0.827237,
		30.682850, 44.890312, 35.686062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175251, 44.937122, 36.288811>,  <30.582706, 44.509975, 36.265129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175251, 44.937122, 36.288811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.908829, 45.116505, 36.050396>,  <30.748976, 45.224136, 35.907349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.908829, 45.116505, 36.050396>,  <31.175251, 44.937122, 36.288811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908829, 45.116505, 36.050396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004460, 0.801458, 0.598035,
		0.745890, 0.395665, -0.535815,
		-0.666055, 0.448458, -0.596034,
		30.709013, 45.251041, 35.871586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419903, 45.713203, 36.389748>,  <31.175251, 44.937122, 36.288811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419903, 45.713203, 36.389748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.081652, 45.728539, 36.176792>,  <30.878700, 45.737740, 36.049019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.081652, 45.728539, 36.176792>,  <31.419903, 45.713203, 36.389748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081652, 45.728539, 36.176792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194289, 0.906891, 0.373899,
		0.497155, 0.419618, -0.759445,
		-0.845629, 0.038334, -0.532393,
		30.827963, 45.740040, 36.017075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478245, 46.281162, 36.029186>,  <31.419903, 45.713203, 36.389748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478245, 46.281162, 36.029186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.086081, 46.207489, 36.057087>,  <30.850780, 46.163284, 36.073830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.086081, 46.207489, 36.057087>,  <31.478245, 46.281162, 36.029186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086081, 46.207489, 36.057087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160053, 0.951480, 0.262810,
		-0.114776, 0.246498, -0.962323,
		-0.980413, -0.184187, 0.069755,
		30.791956, 46.152233, 36.078014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115099, 46.928249, 35.847897>,  <31.478245, 46.281162, 36.029186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115099, 46.928249, 35.847897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.824694, 46.721519, 36.029354>,  <30.650452, 46.597481, 36.138229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.824694, 46.721519, 36.029354>,  <31.115099, 46.928249, 35.847897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824694, 46.721519, 36.029354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436840, 0.856087, 0.276200,
		-0.531109, 0.002353, -0.847300,
		-0.726012, -0.516827, 0.453648,
		30.606890, 46.566471, 36.165447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539915, 47.248192, 35.576107>,  <31.115099, 46.928249, 35.847897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539915, 47.248192, 35.576107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.451843, 47.073410, 35.924953>,  <30.399000, 46.968540, 36.134262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.451843, 47.073410, 35.924953>,  <30.539915, 47.248192, 35.576107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451843, 47.073410, 35.924953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333815, 0.873829, 0.353539,
		-0.916564, -0.213284, -0.338261,
		-0.220178, -0.436958, 0.872118,
		30.385790, 46.942322, 36.186588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825083, 47.508827, 35.758255>,  <30.539915, 47.248192, 35.576107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825083, 47.508827, 35.758255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.955513, 47.375877, 36.112251>,  <30.033772, 47.296108, 36.324650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.955513, 47.375877, 36.112251>,  <29.825083, 47.508827, 35.758255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955513, 47.375877, 36.112251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431619, 0.780540, 0.452174,
		-0.841059, -0.529420, 0.111056,
		0.326074, -0.332372, 0.884989,
		30.053335, 47.276165, 36.377747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239132, 47.488594, 36.288994>,  <29.825083, 47.508827, 35.758255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239132, 47.488594, 36.288994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.593878, 47.550480, 36.463139>,  <29.806725, 47.587612, 36.567627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.593878, 47.550480, 36.463139>,  <29.239132, 47.488594, 36.288994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593878, 47.550480, 36.463139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416433, 0.675835, 0.608137,
		-0.200147, -0.720633, 0.663799,
		0.886862, 0.154711, 0.435362,
		29.859936, 47.596893, 36.593746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195816, 47.283627, 37.094601>,  <29.239132, 47.488594, 36.288994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195816, 47.283627, 37.094601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.446466, 47.582230, 37.005100>,  <29.596857, 47.761391, 36.951401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.446466, 47.582230, 37.005100>,  <29.195816, 47.283627, 37.094601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446466, 47.582230, 37.005100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540080, 0.622967, 0.565885,
		0.561828, -0.233754, 0.793541,
		0.626628, 0.746506, -0.223755,
		29.634455, 47.806183, 36.937973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828592, 46.644184, 36.940441>,  <29.195816, 47.283627, 37.094601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828592, 46.644184, 36.940441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.491913, 46.555649, 37.137440>,  <28.289906, 46.502529, 37.255638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.491913, 46.555649, 37.137440>,  <28.828592, 46.644184, 36.940441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491913, 46.555649, 37.137440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228616, -0.972415, -0.046302,
		0.489158, 0.073620, 0.869083,
		-0.841700, -0.221335, 0.492495,
		28.239403, 46.489246, 37.285187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020670, 46.202122, 37.523846>,  <28.828592, 46.644184, 36.940441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020670, 46.202122, 37.523846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.641539, 46.126225, 37.421375>,  <28.414061, 46.080688, 37.359894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.641539, 46.126225, 37.421375>,  <29.020670, 46.202122, 37.523846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641539, 46.126225, 37.421375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206824, -0.977509, -0.041226,
		-0.242589, -0.092058, 0.965751,
		-0.947826, -0.189739, -0.256173,
		28.357191, 46.069302, 37.344524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745155, 45.592411, 37.901760>,  <29.020670, 46.202122, 37.523846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745155, 45.592411, 37.901760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.453142, 45.606861, 37.628777>,  <28.277935, 45.615532, 37.464985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.453142, 45.606861, 37.628777>,  <28.745155, 45.592411, 37.901760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453142, 45.606861, 37.628777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172527, -0.956515, -0.235188,
		-0.661277, -0.289437, 0.692054,
		-0.730032, 0.036127, -0.682457,
		28.234133, 45.617699, 37.424038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386440, 44.981308, 37.999474>,  <28.745155, 45.592411, 37.901760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386440, 44.981308, 37.999474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.270168, 45.096779, 37.634579>,  <28.200405, 45.166061, 37.415642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.270168, 45.096779, 37.634579>,  <28.386440, 44.981308, 37.999474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270168, 45.096779, 37.634579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000848, -0.953322, -0.301954,
		-0.956823, -0.088542, 0.276857,
		-0.290669, 0.288682, -0.912236,
		28.182964, 45.183384, 37.360909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991831, 44.445042, 37.721069>,  <28.386440, 44.981308, 37.999474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991831, 44.445042, 37.721069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.076258, 44.659592, 37.394203>,  <28.126913, 44.788322, 37.198086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.076258, 44.659592, 37.394203>,  <27.991831, 44.445042, 37.721069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076258, 44.659592, 37.394203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105997, -0.843624, -0.526368,
		-0.971708, 0.024482, -0.234915,
		0.211066, 0.536376, -0.817161,
		28.139578, 44.820503, 37.149055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422705, 44.315987, 37.153545>,  <27.991831, 44.445042, 37.721069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422705, 44.315987, 37.153545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.762089, 44.420258, 36.969303>,  <27.965719, 44.482819, 36.858757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.762089, 44.420258, 36.969303>,  <27.422705, 44.315987, 37.153545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762089, 44.420258, 36.969303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048671, -0.905037, -0.422540,
		-0.527013, 0.336091, -0.780577,
		0.848462, 0.260675, -0.460608,
		28.016628, 44.498459, 36.831120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411371, 44.026035, 36.472336>,  <27.422705, 44.315987, 37.153545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411371, 44.026035, 36.472336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.797009, 44.114246, 36.531517>,  <28.028391, 44.167175, 36.567024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.797009, 44.114246, 36.531517>,  <27.411371, 44.026035, 36.472336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797009, 44.114246, 36.531517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264489, -0.847444, -0.460309,
		0.023868, 0.482912, -0.875343,
		0.964093, 0.220532, 0.147951,
		28.086237, 44.180405, 36.575901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730898, 43.948498, 35.867912>,  <27.411371, 44.026035, 36.472336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730898, 43.948498, 35.867912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.022442, 43.899410, 36.137341>,  <28.197369, 43.869957, 36.299000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.022442, 43.899410, 36.137341>,  <27.730898, 43.948498, 35.867912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022442, 43.899410, 36.137341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344293, -0.784671, -0.515513,
		0.591797, 0.607644, -0.529665,
		0.728861, -0.122720, 0.673574,
		28.241100, 43.862595, 36.339413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459202, 43.941818, 35.548859>,  <27.730898, 43.948498, 35.867912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459202, 43.941818, 35.548859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.505766, 43.761070, 35.902641>,  <28.533705, 43.652622, 36.114910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.505766, 43.761070, 35.902641>,  <28.459202, 43.941818, 35.548859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505766, 43.761070, 35.902641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402010, -0.792864, -0.457989,
		0.908205, 0.408875, 0.089359,
		0.116411, -0.451872, 0.884455,
		28.540689, 43.625507, 36.167976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048691, 43.706425, 35.488144>,  <28.459202, 43.941818, 35.548859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048691, 43.706425, 35.488144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.900749, 43.489105, 35.789616>,  <28.811985, 43.358711, 35.970497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.900749, 43.489105, 35.789616>,  <29.048691, 43.706425, 35.488144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900749, 43.489105, 35.789616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451573, -0.814058, -0.365228,
		0.811967, 0.205260, 0.546422,
		-0.369853, -0.543303, 0.753679,
		28.789793, 43.326115, 36.015720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573994, 43.402664, 35.686474>,  <29.048691, 43.706425, 35.488144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573994, 43.402664, 35.686474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.271685, 43.158630, 35.781639>,  <29.090300, 43.012211, 35.838737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.271685, 43.158630, 35.781639>,  <29.573994, 43.402664, 35.686474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271685, 43.158630, 35.781639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445875, -0.745524, -0.495368,
		0.479584, -0.268308, 0.835470,
		-0.755774, -0.610085, 0.237910,
		29.044952, 42.975605, 35.853012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875122, 42.782681, 35.980099>,  <29.573994, 43.402664, 35.686474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875122, 42.782681, 35.980099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.510071, 42.642353, 35.896160>,  <29.291040, 42.558155, 35.845798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.510071, 42.642353, 35.896160>,  <29.875122, 42.782681, 35.980099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510071, 42.642353, 35.896160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405302, -0.709615, -0.576348,
		0.053284, -0.611042, 0.789803,
		-0.912629, -0.350819, -0.209846,
		29.236282, 42.537106, 35.833206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905680, 42.074646, 35.999195>,  <29.875122, 42.782681, 35.980099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905680, 42.074646, 35.999195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.572918, 42.139256, 35.786839>,  <29.373260, 42.178020, 35.659424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.572918, 42.139256, 35.786839>,  <29.905680, 42.074646, 35.999195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572918, 42.139256, 35.786839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202555, -0.802300, -0.561504,
		-0.516631, -0.574652, 0.634719,
		-0.831904, 0.161525, -0.530891,
		29.323347, 42.187714, 35.627571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600697, 41.410538, 35.954132>,  <29.905680, 42.074646, 35.999195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600697, 41.410538, 35.954132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.413027, 41.622257, 35.671368>,  <29.300425, 41.749287, 35.501709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.413027, 41.622257, 35.671368>,  <29.600697, 41.410538, 35.954132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413027, 41.622257, 35.671368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005351, -0.798763, -0.601621,
		-0.883089, -0.286049, 0.371928,
		-0.469176, 0.529295, -0.706910,
		29.272274, 41.781044, 35.459293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030024, 41.017082, 35.776703>,  <29.600697, 41.410538, 35.954132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030024, 41.017082, 35.776703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.122284, 41.258362, 35.471298>,  <29.177639, 41.403130, 35.288055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.122284, 41.258362, 35.471298>,  <29.030024, 41.017082, 35.776703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122284, 41.258362, 35.471298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029188, -0.788607, -0.614205,
		-0.972599, 0.119381, -0.199498,
		0.230650, 0.603198, -0.763513,
		29.191479, 41.439320, 35.242245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588451, 40.780872, 35.343304>,  <29.030024, 41.017082, 35.776703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588451, 40.780872, 35.343304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.872673, 40.985836, 35.150410>,  <29.043205, 41.108814, 35.034676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.872673, 40.985836, 35.150410>,  <28.588451, 40.780872, 35.343304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872673, 40.985836, 35.150410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102840, -0.753601, -0.649237,
		-0.696087, 0.411725, -0.588171,
		0.710554, 0.512413, -0.482231,
		29.085838, 41.139561, 35.005741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545397, 40.634781, 34.601131>,  <28.588451, 40.780872, 35.343304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545397, 40.634781, 34.601131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.920347, 40.773880, 34.593109>,  <29.145317, 40.857338, 34.588295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.920347, 40.773880, 34.593109>,  <28.545397, 40.634781, 34.601131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920347, 40.773880, 34.593109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176097, -0.522791, -0.834074,
		-0.300533, 0.778307, -0.551287,
		0.937374, 0.347747, -0.020058,
		29.201559, 40.878204, 34.587093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651617, 40.798992, 33.928265>,  <28.545397, 40.634781, 34.601131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651617, 40.798992, 33.928265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.021008, 40.763447, 34.077557>,  <29.242641, 40.742119, 34.167130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.021008, 40.763447, 34.077557>,  <28.651617, 40.798992, 33.928265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021008, 40.763447, 34.077557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237775, -0.630891, -0.738539,
		0.301093, 0.770766, -0.561483,
		0.923475, -0.088862, 0.373225,
		29.298050, 40.736790, 34.189526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078850, 40.791206, 33.334740>,  <28.651617, 40.798992, 33.928265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078850, 40.791206, 33.334740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.275928, 40.608688, 33.631130>,  <29.394176, 40.499180, 33.808964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.275928, 40.608688, 33.631130>,  <29.078850, 40.791206, 33.334740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275928, 40.608688, 33.631130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254957, -0.738442, -0.624260,
		0.832013, 0.496489, -0.247495,
		0.492699, -0.456291, 0.740977,
		29.423738, 40.471802, 33.853424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635252, 40.627773, 32.965981>,  <29.078850, 40.791206, 33.334740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635252, 40.627773, 32.965981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.642000, 40.413021, 33.303375>,  <29.646049, 40.284168, 33.505814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.642000, 40.413021, 33.303375>,  <29.635252, 40.627773, 32.965981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642000, 40.413021, 33.303375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199956, -0.824756, -0.528956,
		0.979660, 0.177585, 0.093438,
		0.016872, -0.536881, 0.843489,
		29.647062, 40.251957, 33.556423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.542156, 35.573204, 42.026642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.193588, 35.436638, 41.885754>,  <40.984447, 35.354698, 41.801220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.193588, 35.436638, 41.885754>,  <41.542156, 35.573204, 42.026642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193588, 35.436638, 41.885754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334781, 0.110875, -0.935750,
		0.358535, -0.933349, 0.017682,
		-0.871421, -0.341419, -0.352220,
		40.932163, 35.334213, 41.780087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722958, 35.083595, 41.483688>,  <41.542156, 35.573204, 42.026642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722958, 35.083595, 41.483688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.338402, 35.160900, 41.405331>,  <41.107666, 35.207283, 41.358318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.338402, 35.160900, 41.405331>,  <41.722958, 35.083595, 41.483688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338402, 35.160900, 41.405331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188740, -0.054934, -0.980489,
		-0.200254, -0.979608, 0.016336,
		-0.961392, 0.193264, -0.195892,
		41.049984, 35.218880, 41.346561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575336, 34.676422, 40.871086>,  <41.722958, 35.083595, 41.483688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575336, 34.676422, 40.871086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.288055, 34.953285, 40.899673>,  <41.115688, 35.119404, 40.916828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.288055, 34.953285, 40.899673>,  <41.575336, 34.676422, 40.871086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288055, 34.953285, 40.899673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047102, 0.150836, -0.987436,
		-0.694241, -0.705810, -0.140932,
		-0.718200, 0.692156, 0.071471,
		41.072594, 35.160931, 40.921116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242756, 34.492992, 40.416294>,  <41.575336, 34.676422, 40.871086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242756, 34.492992, 40.416294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.130512, 34.875668, 40.447315>,  <41.063164, 35.105270, 40.465927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.130512, 34.875668, 40.447315>,  <41.242756, 34.492992, 40.416294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130512, 34.875668, 40.447315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285754, 0.160402, -0.944784,
		-0.916298, -0.242957, -0.318386,
		-0.280611, 0.956683, 0.077550,
		41.046329, 35.162674, 40.470581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883053, 34.576996, 39.828323>,  <41.242756, 34.492992, 40.416294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883053, 34.576996, 39.828323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.940205, 34.960903, 39.925018>,  <40.974495, 35.191246, 39.983036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.940205, 34.960903, 39.925018>,  <40.883053, 34.576996, 39.828323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940205, 34.960903, 39.925018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260091, 0.199249, -0.944803,
		-0.954954, 0.197871, -0.221156,
		0.142884, 0.959764, 0.241738,
		40.983070, 35.248833, 39.997540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639145, 35.046726, 39.215626>,  <40.883053, 34.576996, 39.828323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639145, 35.046726, 39.215626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.917953, 35.244205, 39.423630>,  <41.085239, 35.362694, 39.548431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.917953, 35.244205, 39.423630>,  <40.639145, 35.046726, 39.215626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917953, 35.244205, 39.423630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376023, 0.365828, -0.851338,
		-0.610542, 0.788942, 0.069349,
		0.697026, 0.493700, 0.520014,
		41.127060, 35.392315, 39.579636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790760, 35.568470, 38.777473>,  <40.639145, 35.046726, 39.215626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790760, 35.568470, 38.777473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.087395, 35.589909, 39.044960>,  <41.265373, 35.602772, 39.205452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.087395, 35.589909, 39.044960>,  <40.790760, 35.568470, 38.777473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087395, 35.589909, 39.044960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586160, 0.433067, -0.684740,
		-0.326297, 0.899767, 0.289741,
		0.741584, 0.053594, 0.668716,
		41.309872, 35.605988, 39.245575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166618, 36.203419, 38.550159>,  <40.790760, 35.568470, 38.777473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166618, 36.203419, 38.550159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.397762, 35.996914, 38.803001>,  <41.536449, 35.873013, 38.954708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.397762, 35.996914, 38.803001>,  <41.166618, 36.203419, 38.550159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397762, 35.996914, 38.803001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804403, 0.229403, -0.548006,
		0.137907, 0.825136, 0.547843,
		0.577856, -0.516260, 0.632106,
		41.571117, 35.842037, 38.992634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536083, 36.588055, 39.025532>,  <41.166618, 36.203419, 38.550159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536083, 36.588055, 39.025532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.748722, 36.250610, 38.995270>,  <41.876305, 36.048141, 38.977112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.748722, 36.250610, 38.995270>,  <41.536083, 36.588055, 39.025532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748722, 36.250610, 38.995270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670965, 0.473943, -0.570249,
		0.516926, 0.252379, 0.817981,
		0.531595, -0.843613, -0.075656,
		41.908199, 35.997528, 38.972572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223812, 36.785446, 39.021538>,  <41.536083, 36.588055, 39.025532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223812, 36.785446, 39.021538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.229843, 36.419933, 38.859169>,  <42.233463, 36.200626, 38.761749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.229843, 36.419933, 38.859169>,  <42.223812, 36.785446, 39.021538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229843, 36.419933, 38.859169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644085, 0.319398, -0.695082,
		0.764805, -0.250969, 0.593370,
		0.015077, -0.913783, -0.405923,
		42.234367, 36.145798, 38.737392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956833, 36.714531, 38.873978>,  <42.223812, 36.785446, 39.021538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956833, 36.714531, 38.873978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.775574, 36.440502, 38.645828>,  <42.666817, 36.276085, 38.508938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.775574, 36.440502, 38.645828>,  <42.956833, 36.714531, 38.873978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775574, 36.440502, 38.645828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633720, 0.202423, -0.746608,
		0.626939, -0.699784, 0.342417,
		-0.453152, -0.685075, -0.570374,
		42.639629, 36.234982, 38.474716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492504, 36.233715, 38.496758>,  <42.956833, 36.714531, 38.873978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492504, 36.233715, 38.496758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165478, 36.211212, 38.267529>,  <42.969261, 36.197712, 38.129990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165478, 36.211212, 38.267529>,  <43.492504, 36.233715, 38.496758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165478, 36.211212, 38.267529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573075, 0.017737, -0.819311,
		0.056258, -0.998259, 0.017739,
		-0.817569, -0.056258, -0.573075,
		42.920208, 36.194336, 38.095608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631096, 35.584064, 38.121204>,  <43.492504, 36.233715, 38.496758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631096, 35.584064, 38.121204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353985, 35.799232, 37.929077>,  <43.187717, 35.928333, 37.813801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353985, 35.799232, 37.929077>,  <43.631096, 35.584064, 38.121204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353985, 35.799232, 37.929077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561234, -0.016083, -0.827501,
		-0.452856, -0.842841, -0.290759,
		-0.692776, 0.537922, -0.480314,
		43.146152, 35.960609, 37.784985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396797, 35.194370, 37.490398>,  <43.631096, 35.584064, 38.121204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396797, 35.194370, 37.490398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.274406, 35.552513, 37.360962>,  <43.200970, 35.767399, 37.283298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.274406, 35.552513, 37.360962>,  <43.396797, 35.194370, 37.490398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274406, 35.552513, 37.360962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343549, -0.213155, -0.914625,
		-0.887891, -0.391029, -0.242377,
		-0.305981, 0.895356, -0.323596,
		43.182613, 35.821121, 37.263882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157597, 34.971333, 36.846260>,  <43.396797, 35.194370, 37.490398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157597, 34.971333, 36.846260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211346, 35.367466, 36.860073>,  <43.243595, 35.605145, 36.868362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211346, 35.367466, 36.860073>,  <43.157597, 34.971333, 36.846260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211346, 35.367466, 36.860073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369757, -0.017778, -0.928958,
		-0.919361, 0.137592, -0.368570,
		0.134369, 0.990329, 0.034531,
		43.251656, 35.664566, 36.870434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824100, 35.266163, 36.139870>,  <43.157597, 34.971333, 36.846260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824100, 35.266163, 36.139870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.094147, 35.519447, 36.291267>,  <43.256176, 35.671417, 36.382107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.094147, 35.519447, 36.291267>,  <42.824100, 35.266163, 36.139870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094147, 35.519447, 36.291267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309693, 0.222403, -0.924460,
		-0.669556, 0.741339, -0.045952,
		0.675119, 0.633209, 0.378499,
		43.296680, 35.709412, 36.404816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927235, 35.690392, 35.639080>,  <42.824100, 35.266163, 36.139870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927235, 35.690392, 35.639080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242413, 35.761749, 35.874817>,  <43.431519, 35.804562, 36.016258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242413, 35.761749, 35.874817>,  <42.927235, 35.690392, 35.639080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242413, 35.761749, 35.874817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569976, 0.150797, -0.807705,
		-0.232957, 0.972336, 0.017142,
		0.787945, 0.178390, 0.589338,
		43.478798, 35.815266, 36.051617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301121, 36.383495, 35.325340>,  <42.927235, 35.690392, 35.639080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301121, 36.383495, 35.325340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.570282, 36.233788, 35.580566>,  <43.731777, 36.143963, 35.733704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.570282, 36.233788, 35.580566>,  <43.301121, 36.383495, 35.325340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570282, 36.233788, 35.580566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738609, 0.292489, -0.607376,
		0.040693, 0.879986, 0.473253,
		0.672904, -0.374265, 0.638064,
		43.772152, 36.121510, 35.771984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885315, 36.889790, 35.564030>,  <43.301121, 36.383495, 35.325340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885315, 36.889790, 35.564030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.061340, 36.535522, 35.623283>,  <44.166954, 36.322964, 35.658836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.061340, 36.535522, 35.623283>,  <43.885315, 36.889790, 35.564030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061340, 36.535522, 35.623283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765751, 0.283966, -0.577053,
		0.469011, 0.367370, 0.803161,
		0.440062, -0.885665, 0.148131,
		44.193359, 36.269821, 35.667721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550186, 37.029766, 35.736404>,  <43.885315, 36.889790, 35.564030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550186, 37.029766, 35.736404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.559811, 36.649315, 35.613262>,  <44.565586, 36.421043, 35.539379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.559811, 36.649315, 35.613262>,  <44.550186, 37.029766, 35.736404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559811, 36.649315, 35.613262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782348, 0.209624, -0.586506,
		0.622376, -0.226738, 0.749158,
		0.024059, -0.951130, -0.307853,
		44.567028, 36.363976, 35.520905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241516, 36.841026, 35.672741>,  <44.550186, 37.029766, 35.736404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241516, 36.841026, 35.672741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.039692, 36.602959, 35.422562>,  <44.918598, 36.460117, 35.272453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.039692, 36.602959, 35.422562>,  <45.241516, 36.841026, 35.672741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039692, 36.602959, 35.422562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644548, 0.222320, -0.731527,
		0.574435, -0.772232, 0.271443,
		-0.504562, -0.595173, -0.625449,
		44.888325, 36.424408, 35.234928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.739243, 36.387913, 35.453125>,  <45.241516, 36.841026, 35.672741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.739243, 36.387913, 35.453125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.434998, 36.427795, 35.196522>,  <45.252449, 36.451725, 35.042561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.434998, 36.427795, 35.196522>,  <45.739243, 36.387913, 35.453125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434998, 36.427795, 35.196522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647420, 0.189739, -0.738137,
		0.048123, -0.976759, -0.208869,
		-0.760612, 0.099705, -0.641505,
		45.206814, 36.457706, 35.004070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.284023, 35.896030, 35.783920>,  <45.739243, 36.387913, 35.453125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.284023, 35.896030, 35.783920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.551762, 36.115250, 35.984570>,  <46.712402, 36.246780, 36.104958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.551762, 36.115250, 35.984570>,  <46.284023, 35.896030, 35.783920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.551762, 36.115250, 35.984570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367578, -0.342461, 0.864643,
		0.645653, -0.763126, -0.027772,
		0.669342, 0.548051, 0.501619,
		46.752563, 36.279663, 36.135056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.671112, 35.447330, 36.189968>,  <46.284023, 35.896030, 35.783920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.671112, 35.447330, 36.189968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.717964, 35.800320, 36.372185>,  <46.746075, 36.012112, 36.481514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.717964, 35.800320, 36.372185>,  <46.671112, 35.447330, 36.189968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.717964, 35.800320, 36.372185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119667, -0.442817, 0.888590,
		0.985880, -0.158596, 0.053735,
		0.117132, 0.882474, 0.455543,
		46.753105, 36.065063, 36.508846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.095654, 35.278248, 36.801067>,  <46.671112, 35.447330, 36.189968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.095654, 35.278248, 36.801067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.930664, 35.636402, 36.868187>,  <46.831669, 35.851295, 36.908459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.930664, 35.636402, 36.868187>,  <47.095654, 35.278248, 36.801067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.930664, 35.636402, 36.868187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096317, -0.226034, 0.969346,
		0.905864, 0.383668, 0.179473,
		-0.412474, 0.895382, 0.167802,
		46.806923, 35.905018, 36.918530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.434368, 35.545807, 37.350746>,  <47.095654, 35.278248, 36.801067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.434368, 35.545807, 37.350746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.098480, 35.762970, 37.346371>,  <46.896946, 35.893269, 37.343746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.098480, 35.762970, 37.346371>,  <47.434368, 35.545807, 37.350746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.098480, 35.762970, 37.346371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170309, -0.244187, 0.954656,
		0.515617, 0.803509, 0.297511,
		-0.839723, 0.542905, -0.010938,
		46.846565, 35.925842, 37.343090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.506672, 36.007763, 37.894100>,  <47.434368, 35.545807, 37.350746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.506672, 36.007763, 37.894100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.112194, 36.039116, 37.835747>,  <46.875507, 36.057930, 37.800735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.112194, 36.039116, 37.835747>,  <47.506672, 36.007763, 37.894100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.112194, 36.039116, 37.835747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143510, 0.035078, 0.989027,
		0.082643, 0.996306, -0.023344,
		-0.986192, 0.078386, -0.145879,
		46.816338, 36.062634, 37.791985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.218239, 36.591301, 38.338081>,  <47.506672, 36.007763, 37.894100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.218239, 36.591301, 38.338081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.919651, 36.339699, 38.251232>,  <46.740498, 36.188736, 38.199123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.919651, 36.339699, 38.251232>,  <47.218239, 36.591301, 38.338081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.919651, 36.339699, 38.251232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328165, 0.064134, 0.942441,
		-0.578876, 0.774751, -0.254292,
		-0.746465, -0.629006, -0.217120,
		46.695713, 36.150997, 38.186096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.681553, 36.811829, 38.783337>,  <47.218239, 36.591301, 38.338081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.681553, 36.811829, 38.783337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.563629, 36.442261, 38.685802>,  <46.492874, 36.220520, 38.627281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.563629, 36.442261, 38.685802>,  <46.681553, 36.811829, 38.783337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.563629, 36.442261, 38.685802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327046, -0.142203, 0.934248,
		-0.897847, 0.355167, -0.260243,
		-0.294807, -0.923923, -0.243833,
		46.475185, 36.165085, 38.612652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.152744, 36.746658, 39.117970>,  <46.681553, 36.811829, 38.783337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.152744, 36.746658, 39.117970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.209999, 36.358894, 39.038204>,  <46.244350, 36.126236, 38.990345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.209999, 36.358894, 39.038204>,  <46.152744, 36.746658, 39.117970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209999, 36.358894, 39.038204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510473, -0.244930, 0.824274,
		-0.847897, -0.016190, -0.529913,
		0.143137, -0.969405, -0.199411,
		46.252941, 36.068073, 38.978382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.594372, 36.472794, 39.278866>,  <46.152744, 36.746658, 39.117970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.594372, 36.472794, 39.278866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.827847, 36.148830, 39.255707>,  <45.967934, 35.954453, 39.241814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.827847, 36.148830, 39.255707>,  <45.594372, 36.472794, 39.278866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.827847, 36.148830, 39.255707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472770, -0.396956, 0.786712,
		-0.660147, -0.431824, -0.614600,
		0.583690, -0.809910, -0.057896,
		46.002953, 35.905857, 39.238338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118378, 35.994492, 39.515343>,  <45.594372, 36.472794, 39.278866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118378, 35.994492, 39.515343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.473721, 35.816120, 39.559105>,  <45.686928, 35.709099, 39.585361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.473721, 35.816120, 39.559105>,  <45.118378, 35.994492, 39.515343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473721, 35.816120, 39.559105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317617, -0.424751, 0.847765,
		-0.331570, -0.787869, -0.518965,
		0.888359, -0.445925, 0.109406,
		45.740227, 35.682343, 39.591927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089397, 35.222824, 39.495171>,  <45.118378, 35.994492, 39.515343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089397, 35.222824, 39.495171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.411243, 35.336929, 39.703484>,  <45.604351, 35.405392, 39.828472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.411243, 35.336929, 39.703484>,  <45.089397, 35.222824, 39.495171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.411243, 35.336929, 39.703484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375587, -0.434814, 0.818457,
		0.459916, -0.854146, -0.242720,
		0.804619, 0.285259, 0.520784,
		45.652630, 35.422508, 39.859718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229031, 34.571136, 39.974892>,  <45.089397, 35.222824, 39.495171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229031, 34.571136, 39.974892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.414703, 34.894108, 40.120541>,  <45.526108, 35.087891, 40.207932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.414703, 34.894108, 40.120541>,  <45.229031, 34.571136, 39.974892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414703, 34.894108, 40.120541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347889, -0.211860, 0.913284,
		0.814557, -0.550609, 0.182554,
		0.464186, 0.807431, 0.364123,
		45.553959, 35.136337, 40.229778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401848, 34.339855, 40.646542>,  <45.229031, 34.571136, 39.974892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401848, 34.339855, 40.646542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.457077, 34.734398, 40.682392>,  <45.490215, 34.971123, 40.703903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.457077, 34.734398, 40.682392>,  <45.401848, 34.339855, 40.646542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457077, 34.734398, 40.682392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565683, 0.004254, 0.824612,
		0.812982, -0.164554, 0.558554,
		0.138069, 0.986359, 0.089627,
		45.498497, 35.030304, 40.709282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.818115, 34.500538, 41.315178>,  <45.401848, 34.339855, 40.646542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.818115, 34.500538, 41.315178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.599510, 34.819427, 41.212608>,  <45.468346, 35.010761, 41.151066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.599510, 34.819427, 41.212608>,  <45.818115, 34.500538, 41.315178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.599510, 34.819427, 41.212608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472043, -0.040334, 0.880652,
		0.691736, 0.602333, 0.398368,
		-0.546513, 0.797225, -0.256427,
		45.435555, 35.058594, 41.135681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.833061, 35.060661, 41.907055>,  <45.818115, 34.500538, 41.315178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.833061, 35.060661, 41.907055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.495201, 35.139011, 41.707775>,  <45.292484, 35.186020, 41.588207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.495201, 35.139011, 41.707775>,  <45.833061, 35.060661, 41.907055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495201, 35.139011, 41.707775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481169, 0.130101, 0.866920,
		0.234620, 0.971961, -0.015642,
		-0.844647, 0.195871, -0.498202,
		45.241806, 35.197773, 41.558315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560074, 35.617176, 42.354275>,  <45.833061, 35.060661, 41.907055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560074, 35.617176, 42.354275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.270592, 35.455376, 42.130623>,  <45.096901, 35.358295, 41.996429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.270592, 35.455376, 42.130623>,  <45.560074, 35.617176, 42.354275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270592, 35.455376, 42.130623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607772, -0.010204, 0.794046,
		-0.326895, 0.914482, -0.238458,
		-0.723708, -0.404498, -0.559132,
		45.053478, 35.334026, 41.962883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039936, 35.840935, 42.705112>,  <45.560074, 35.617176, 42.354275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039936, 35.840935, 42.705112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.875473, 35.580238, 42.450180>,  <44.776794, 35.423820, 42.297222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.875473, 35.580238, 42.450180>,  <45.039936, 35.840935, 42.705112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875473, 35.580238, 42.450180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740257, -0.169273, 0.650666,
		-0.531946, 0.739314, -0.412855,
		-0.411161, -0.651738, -0.637327,
		44.752125, 35.384716, 42.258984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373222, 36.035427, 42.548069>,  <45.039936, 35.840935, 42.705112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373222, 36.035427, 42.548069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.374413, 35.642075, 42.475460>,  <44.375126, 35.406063, 42.431896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.374413, 35.642075, 42.475460>,  <44.373222, 36.035427, 42.548069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374413, 35.642075, 42.475460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596363, -0.147452, 0.789056,
		-0.802709, 0.105904, -0.586892,
		0.002974, -0.983383, -0.181518,
		44.375305, 35.347061, 42.421005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706123, 35.839279, 42.643181>,  <44.373222, 36.035427, 42.548069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706123, 35.839279, 42.643181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.899010, 35.489201, 42.627689>,  <44.014744, 35.279156, 42.618393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.899010, 35.489201, 42.627689>,  <43.706123, 35.839279, 42.643181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899010, 35.489201, 42.627689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573133, -0.348606, 0.741615,
		-0.662558, -0.335425, -0.669707,
		0.482220, -0.875194, -0.038728,
		44.043674, 35.226643, 42.616070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196838, 35.265930, 42.456490>,  <43.706123, 35.839279, 42.643181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196838, 35.265930, 42.456490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.507286, 35.111359, 42.655815>,  <43.693554, 35.018616, 42.775410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.507286, 35.111359, 42.655815>,  <43.196838, 35.265930, 42.456490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507286, 35.111359, 42.655815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630109, -0.506033, 0.588976,
		0.024566, -0.771106, -0.636232,
		0.776118, -0.386427, 0.498313,
		43.740120, 34.995430, 42.805309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.009579, 38.816570, 32.362919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661430, 38.636383, 32.442455>,  <35.452541, 38.528271, 32.490177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661430, 38.636383, 32.442455>,  <36.009579, 38.816570, 32.362919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661430, 38.636383, 32.442455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469649, -0.880789, 0.060345,
		0.147952, 0.145907, 0.978173,
		-0.870368, -0.450469, 0.198839,
		35.400318, 38.501244, 32.502106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273296, 38.237305, 32.755676>,  <36.009579, 38.816570, 32.362919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273296, 38.237305, 32.755676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889954, 38.147751, 32.684761>,  <35.659950, 38.094017, 32.642212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889954, 38.147751, 32.684761>,  <36.273296, 38.237305, 32.755676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889954, 38.147751, 32.684761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215635, -0.974325, 0.064753,
		-0.187236, 0.023826, 0.982026,
		-0.958355, -0.223883, -0.177291,
		35.602448, 38.080585, 32.631573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093468, 37.748993, 33.209839>,  <36.273296, 38.237305, 32.755676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093468, 37.748993, 33.209839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837280, 37.677818, 32.911003>,  <35.683567, 37.635113, 32.731701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837280, 37.677818, 32.911003>,  <36.093468, 37.748993, 33.209839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837280, 37.677818, 32.911003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389688, -0.913550, -0.116491,
		-0.661777, -0.365741, 0.654435,
		-0.640464, -0.177934, -0.747091,
		35.645142, 37.624439, 32.686874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928951, 37.059074, 33.225014>,  <36.093468, 37.748993, 33.209839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928951, 37.059074, 33.225014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836029, 37.157471, 32.848602>,  <35.780277, 37.216507, 32.622757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836029, 37.157471, 32.848602>,  <35.928951, 37.059074, 33.225014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836029, 37.157471, 32.848602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456391, -0.826802, -0.328794,
		-0.858920, -0.505854, 0.079800,
		-0.232300, 0.245987, -0.941024,
		35.766338, 37.231266, 32.566296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658840, 36.440678, 32.824219>,  <35.928951, 37.059074, 33.225014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658840, 36.440678, 32.824219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801102, 36.685055, 32.541302>,  <35.886459, 36.831680, 32.371552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801102, 36.685055, 32.541302>,  <35.658840, 36.440678, 32.824219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801102, 36.685055, 32.541302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339715, -0.789510, -0.511143,
		-0.870692, -0.058487, -0.488339,
		0.355653, 0.610944, -0.707289,
		35.907799, 36.868340, 32.329117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483685, 36.099075, 32.293102>,  <35.658840, 36.440678, 32.824219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483685, 36.099075, 32.293102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772846, 36.340378, 32.158352>,  <35.946342, 36.485161, 32.077499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772846, 36.340378, 32.158352>,  <35.483685, 36.099075, 32.293102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772846, 36.340378, 32.158352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488098, -0.790956, -0.368984,
		-0.489050, 0.102309, -0.866235,
		0.722904, 0.603259, -0.336880,
		35.989716, 36.521355, 32.057289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592278, 35.906582, 31.651192>,  <35.483685, 36.099075, 32.293102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592278, 35.906582, 31.651192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934132, 36.090775, 31.747160>,  <36.139244, 36.201290, 31.804741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934132, 36.090775, 31.747160>,  <35.592278, 35.906582, 31.651192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934132, 36.090775, 31.747160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519157, -0.765723, -0.379663,
		0.008886, 0.449029, -0.893473,
		0.854633, 0.460479, 0.239921,
		36.190521, 36.228920, 31.819136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998260, 35.799496, 31.137079>,  <35.592278, 35.906582, 31.651192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998260, 35.799496, 31.137079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237144, 35.882225, 31.447063>,  <36.380474, 35.931862, 31.633053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237144, 35.882225, 31.447063>,  <35.998260, 35.799496, 31.137079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237144, 35.882225, 31.447063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627167, -0.722705, -0.290446,
		0.499997, 0.659487, -0.561320,
		0.597214, 0.206819, 0.774959,
		36.416309, 35.944271, 31.679550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675678, 35.620163, 30.764603>,  <35.998260, 35.799496, 31.137079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675678, 35.620163, 30.764603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728954, 35.633183, 31.160824>,  <36.760921, 35.640995, 31.398558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728954, 35.633183, 31.160824>,  <36.675678, 35.620163, 30.764603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728954, 35.633183, 31.160824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694679, -0.715917, -0.069882,
		0.706881, 0.697426, -0.117970,
		0.133194, 0.032554, 0.990555,
		36.768913, 35.642948, 31.457991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356827, 35.529671, 30.799093>,  <36.675678, 35.620163, 30.764603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356827, 35.529671, 30.799093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242104, 35.465176, 31.176823>,  <37.173267, 35.426479, 31.403460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242104, 35.465176, 31.176823>,  <37.356827, 35.529671, 30.799093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242104, 35.465176, 31.176823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655817, -0.751587, 0.070858,
		0.698315, 0.639625, 0.321304,
		-0.286810, -0.161235, 0.944321,
		37.156059, 35.416805, 31.460119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008976, 35.508205, 31.293058>,  <37.356827, 35.529671, 30.799093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008976, 35.508205, 31.293058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695538, 35.322399, 31.458082>,  <37.507473, 35.210915, 31.557096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695538, 35.322399, 31.458082>,  <38.008976, 35.508205, 31.293058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695538, 35.322399, 31.458082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542605, -0.835119, 0.090310,
		0.302585, 0.294622, 0.906443,
		-0.783596, -0.464514, 0.412558,
		37.460461, 35.183044, 31.581850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190136, 35.221241, 31.982883>,  <38.008976, 35.508205, 31.293058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190136, 35.221241, 31.982883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895256, 35.018253, 31.804440>,  <37.718327, 34.896461, 31.697374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895256, 35.018253, 31.804440>,  <38.190136, 35.221241, 31.982883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895256, 35.018253, 31.804440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518914, -0.848077, 0.107208,
		-0.432739, -0.152458, 0.888535,
		-0.737201, -0.507467, -0.446109,
		37.674095, 34.866013, 31.670607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008972, 35.356922, 32.244579>,  <38.190136, 35.221241, 31.982883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008972, 35.356922, 32.244579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133865, 35.611248, 31.962233>,  <39.208801, 35.763844, 31.792824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133865, 35.611248, 31.962233>,  <39.008972, 35.356922, 32.244579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133865, 35.611248, 31.962233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940016, -0.099311, 0.326352,
		0.137398, -0.765429, -0.628682,
		0.312235, 0.635811, -0.705870,
		39.227535, 35.801991, 31.750471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604362, 35.060669, 31.879610>,  <39.008972, 35.356922, 32.244579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604362, 35.060669, 31.879610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613750, 35.460545, 31.876320>,  <39.619385, 35.700470, 31.874346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613750, 35.460545, 31.876320>,  <39.604362, 35.060669, 31.879610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613750, 35.460545, 31.876320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909843, -0.017950, 0.414565,
		0.414289, -0.017215, -0.909983,
		0.023470, 0.999691, -0.008226,
		39.620792, 35.760452, 31.873852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851074, 35.258873, 32.515945>,  <39.604362, 35.060669, 31.879610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851074, 35.258873, 32.515945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126255, 35.063431, 32.730606>,  <40.291363, 34.946167, 32.859402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126255, 35.063431, 32.730606>,  <39.851074, 35.258873, 32.515945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126255, 35.063431, 32.730606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315206, 0.464903, 0.827351,
		-0.653736, -0.738331, 0.165820,
		0.687949, -0.488602, 0.536650,
		40.332642, 34.916851, 32.891602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580639, 34.822567, 33.051624>,  <39.851074, 35.258873, 32.515945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580639, 34.822567, 33.051624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942719, 34.951134, 33.162842>,  <40.159966, 35.028275, 33.229572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942719, 34.951134, 33.162842>,  <39.580639, 34.822567, 33.051624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942719, 34.951134, 33.162842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412996, 0.510939, 0.753907,
		0.100260, -0.797264, 0.595246,
		0.905198, 0.321421, 0.278040,
		40.214279, 35.047562, 33.246254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574898, 34.690540, 33.782879>,  <39.580639, 34.822567, 33.051624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574898, 34.690540, 33.782879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823723, 34.988106, 33.685204>,  <39.973019, 35.166645, 33.626598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823723, 34.988106, 33.685204>,  <39.574898, 34.690540, 33.782879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823723, 34.988106, 33.685204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466587, 0.602659, 0.647378,
		0.628761, -0.288769, 0.721991,
		0.622058, 0.743918, -0.244193,
		40.010342, 35.211281, 33.611946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786961, 34.954605, 34.413872>,  <39.574898, 34.690540, 33.782879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786961, 34.954605, 34.413872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884842, 35.224873, 34.135708>,  <39.943569, 35.387032, 33.968811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884842, 35.224873, 34.135708>,  <39.786961, 34.954605, 34.413872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884842, 35.224873, 34.135708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333028, 0.732150, 0.594179,
		0.910612, 0.086196, 0.404173,
		0.244699, 0.675667, -0.695411,
		39.958252, 35.427574, 33.927086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206909, 35.481171, 34.829472>,  <39.786961, 34.954605, 34.413872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206909, 35.481171, 34.829472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076038, 35.646336, 34.489483>,  <39.997517, 35.745434, 34.285488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076038, 35.646336, 34.489483>,  <40.206909, 35.481171, 34.829472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076038, 35.646336, 34.489483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277271, 0.817941, 0.504077,
		0.903368, 0.400597, -0.153126,
		-0.327179, 0.412910, -0.849976,
		39.977886, 35.770210, 34.234489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436565, 36.197552, 34.876087>,  <40.206909, 35.481171, 34.829472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436565, 36.197552, 34.876087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133007, 36.164837, 34.617664>,  <39.950874, 36.145206, 34.462608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133007, 36.164837, 34.617664>,  <40.436565, 36.197552, 34.876087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133007, 36.164837, 34.617664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423588, 0.815524, 0.394328,
		0.494626, 0.572915, -0.653538,
		-0.758893, -0.081786, -0.646060,
		39.905338, 36.140301, 34.423847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137482, 36.926949, 34.840359>,  <40.436565, 36.197552, 34.876087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137482, 36.926949, 34.840359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841843, 36.714214, 34.675003>,  <39.664459, 36.586575, 34.575790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841843, 36.714214, 34.675003>,  <40.137482, 36.926949, 34.840359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841843, 36.714214, 34.675003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670772, 0.637298, 0.379363,
		0.061689, 0.557672, -0.827766,
		-0.739094, -0.531840, -0.413385,
		39.620113, 36.554661, 34.550987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817081, 37.421535, 34.370968>,  <40.137482, 36.926949, 34.840359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817081, 37.421535, 34.370968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540924, 37.146881, 34.462078>,  <39.375229, 36.982090, 34.516743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540924, 37.146881, 34.462078>,  <39.817081, 37.421535, 34.370968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540924, 37.146881, 34.462078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639991, 0.726499, 0.250219,
		-0.337289, 0.026976, -0.941015,
		-0.690397, -0.686638, 0.227776,
		39.333805, 36.940891, 34.530411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140076, 37.606689, 34.146412>,  <39.817081, 37.421535, 34.370968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140076, 37.606689, 34.146412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028843, 37.326508, 34.409328>,  <38.962101, 37.158398, 34.567078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028843, 37.326508, 34.409328>,  <39.140076, 37.606689, 34.146412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028843, 37.326508, 34.409328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769465, 0.572040, 0.284067,
		-0.574973, -0.426766, -0.698052,
		-0.278084, -0.700458, 0.657289,
		38.945419, 37.116371, 34.606514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415802, 37.570721, 33.983921>,  <39.140076, 37.606689, 34.146412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415802, 37.570721, 33.983921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499710, 37.448147, 34.355316>,  <38.550056, 37.374603, 34.578156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499710, 37.448147, 34.355316>,  <38.415802, 37.570721, 33.983921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499710, 37.448147, 34.355316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691565, 0.624795, 0.362449,
		-0.691182, -0.718143, -0.080853,
		0.209773, -0.306433, 0.928490,
		38.562641, 37.356216, 34.633862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783764, 37.410885, 34.170040>,  <38.415802, 37.570721, 33.983921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783764, 37.410885, 34.170040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003540, 37.446228, 34.502380>,  <38.135406, 37.467434, 34.701786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003540, 37.446228, 34.502380>,  <37.783764, 37.410885, 34.170040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003540, 37.446228, 34.502380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636410, 0.688575, 0.347630,
		-0.541387, -0.719762, 0.434560,
		0.549439, 0.088356, 0.830849,
		38.168373, 37.472736, 34.751637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284523, 37.333710, 34.873184>,  <37.783764, 37.410885, 34.170040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284523, 37.333710, 34.873184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608799, 37.536934, 34.989574>,  <37.803364, 37.658867, 35.059406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608799, 37.536934, 34.989574>,  <37.284523, 37.333710, 34.873184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608799, 37.536934, 34.989574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583738, 0.663064, 0.468611,
		0.045150, -0.549747, 0.834110,
		0.810685, 0.508060, 0.290971,
		37.852005, 37.689350, 35.076866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122406, 37.501205, 35.535820>,  <37.284523, 37.333710, 34.873184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122406, 37.501205, 35.535820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422279, 37.751152, 35.448627>,  <37.602203, 37.901119, 35.396313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422279, 37.751152, 35.448627>,  <37.122406, 37.501205, 35.535820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422279, 37.751152, 35.448627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463356, 0.730779, 0.501261,
		0.472516, -0.274785, 0.837390,
		0.749686, 0.624864, -0.217982,
		37.647186, 37.938610, 35.383232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247910, 37.744759, 36.128307>,  <37.122406, 37.501205, 35.535820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247910, 37.744759, 36.128307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377201, 37.999992, 35.848774>,  <37.454777, 38.153133, 35.681053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377201, 37.999992, 35.848774>,  <37.247910, 37.744759, 36.128307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377201, 37.999992, 35.848774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582756, 0.716052, 0.384272,
		0.745600, 0.283042, 0.603297,
		0.323227, 0.638088, -0.698833,
		37.474171, 38.191418, 35.639126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406223, 37.566616, 36.835415>,  <37.247910, 37.744759, 36.128307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406223, 37.566616, 36.835415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069374, 37.402569, 36.975491>,  <36.867264, 37.304138, 37.059536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069374, 37.402569, 36.975491>,  <37.406223, 37.566616, 36.835415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069374, 37.402569, 36.975491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173728, -0.821046, -0.543785,
		0.510542, -0.397094, 0.762668,
		-0.842120, -0.410122, 0.350192,
		36.816738, 37.279533, 37.080547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520828, 36.899345, 36.885292>,  <37.406223, 37.566616, 36.835415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520828, 36.899345, 36.885292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121288, 36.880341, 36.882874>,  <36.881565, 36.868938, 36.881420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121288, 36.880341, 36.882874>,  <37.520828, 36.899345, 36.885292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121288, 36.880341, 36.882874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042698, -0.826105, -0.561896,
		0.021701, -0.561509, 0.827186,
		-0.998852, -0.047512, -0.006048,
		36.821632, 36.866085, 36.881058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430611, 36.181694, 36.968216>,  <37.520828, 36.899345, 36.885292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430611, 36.181694, 36.968216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072266, 36.305664, 36.840858>,  <36.857258, 36.380047, 36.764446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072266, 36.305664, 36.840858>,  <37.430611, 36.181694, 36.968216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072266, 36.305664, 36.840858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046562, -0.778103, -0.626408,
		-0.441881, -0.546352, 0.711506,
		-0.895864, 0.309927, -0.318390,
		36.803505, 36.398643, 36.745342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066597, 35.558308, 36.950306>,  <37.430611, 36.181694, 36.968216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066597, 35.558308, 36.950306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908058, 35.829227, 36.702377>,  <36.812935, 35.991779, 36.553619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908058, 35.829227, 36.702377>,  <37.066597, 35.558308, 36.950306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908058, 35.829227, 36.702377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035536, -0.685922, -0.726807,
		-0.917412, -0.266042, 0.295933,
		-0.396348, 0.677298, -0.619819,
		36.789154, 36.032417, 36.516430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675461, 35.024841, 36.529640>,  <37.066597, 35.558308, 36.950306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675461, 35.024841, 36.529640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736710, 35.374592, 36.345455>,  <36.773457, 35.584442, 36.234943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736710, 35.374592, 36.345455>,  <36.675461, 35.024841, 36.529640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736710, 35.374592, 36.345455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171104, -0.435460, -0.883797,
		-0.973282, 0.214112, 0.082932,
		0.153118, 0.874374, -0.460461,
		36.782646, 35.636906, 36.207317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227203, 34.989326, 35.985817>,  <36.675461, 35.024841, 36.529640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227203, 34.989326, 35.985817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513416, 35.251831, 35.890034>,  <36.685143, 35.409332, 35.832565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513416, 35.251831, 35.890034>,  <36.227203, 34.989326, 35.985817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513416, 35.251831, 35.890034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025815, -0.317700, -0.947840,
		-0.698104, 0.684390, -0.210383,
		0.715531, 0.656260, -0.239455,
		36.728077, 35.448708, 35.818195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118011, 35.104691, 35.237629>,  <36.227203, 34.989326, 35.985817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118011, 35.104691, 35.237629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488251, 35.221561, 35.333870>,  <36.710396, 35.291683, 35.391617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488251, 35.221561, 35.333870>,  <36.118011, 35.104691, 35.237629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488251, 35.221561, 35.333870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346369, -0.397561, -0.849691,
		-0.152609, 0.869813, -0.469186,
		0.925602, 0.292182, 0.240605,
		36.765930, 35.309216, 35.406052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428879, 35.486610, 34.689007>,  <36.118011, 35.104691, 35.237629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428879, 35.486610, 34.689007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736637, 35.333080, 34.893242>,  <36.921291, 35.240963, 35.015781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736637, 35.333080, 34.893242>,  <36.428879, 35.486610, 34.689007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736637, 35.333080, 34.893242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348685, -0.417368, -0.839180,
		0.535204, 0.823699, -0.187288,
		0.769399, -0.383828, 0.510589,
		36.967457, 35.217934, 35.046417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023449, 35.666183, 34.250435>,  <36.428879, 35.486610, 34.689007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023449, 35.666183, 34.250435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119820, 35.362499, 34.492279>,  <37.177643, 35.180290, 34.637386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119820, 35.362499, 34.492279>,  <37.023449, 35.666183, 34.250435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119820, 35.362499, 34.492279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416231, -0.481941, -0.771028,
		0.876758, 0.437423, 0.199892,
		0.240930, -0.759206, 0.604614,
		37.192097, 35.134739, 34.673664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490429, 35.391823, 33.844509>,  <37.023449, 35.666183, 34.250435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490429, 35.391823, 33.844509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480057, 35.106960, 34.125126>,  <37.473835, 34.936043, 34.293495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480057, 35.106960, 34.125126>,  <37.490429, 35.391823, 33.844509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480057, 35.106960, 34.125126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181619, -0.693450, -0.697239,
		0.983027, 0.109336, 0.147321,
		-0.025926, -0.712161, 0.701537,
		37.472279, 34.893311, 34.335587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041401, 35.003624, 33.764713>,  <37.490429, 35.391823, 33.844509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041401, 35.003624, 33.764713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812504, 34.736790, 33.955513>,  <37.675167, 34.576687, 34.069992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812504, 34.736790, 33.955513>,  <38.041401, 35.003624, 33.764713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812504, 34.736790, 33.955513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517203, -0.744956, -0.421357,
		0.636428, 0.005589, 0.771316,
		-0.572241, -0.667090, 0.477002,
		37.640831, 34.536663, 34.098614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420040, 34.472984, 34.058834>,  <38.041401, 35.003624, 33.764713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420040, 34.472984, 34.058834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072628, 34.283878, 33.999298>,  <37.864182, 34.170414, 33.963577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072628, 34.283878, 33.999298>,  <38.420040, 34.472984, 34.058834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072628, 34.283878, 33.999298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494577, -0.806965, -0.322802,
		0.032499, -0.353976, 0.934690,
		-0.868526, -0.472766, -0.148843,
		37.812069, 34.142048, 33.954643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.956890, 40.111046, 39.507488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.602917, 40.004135, 39.354927>,  <35.390533, 39.939991, 39.263390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.602917, 40.004135, 39.354927>,  <35.956890, 40.111046, 39.507488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602917, 40.004135, 39.354927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362733, -0.909181, -0.204488,
		-0.292106, -0.319303, 0.901510,
		-0.884929, -0.267275, -0.381399,
		35.337437, 39.923954, 39.240509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840969, 39.462017, 39.744614>,  <35.956890, 40.111046, 39.507488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840969, 39.462017, 39.744614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.609772, 39.504253, 39.420940>,  <35.471054, 39.529594, 39.226738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.609772, 39.504253, 39.420940>,  <35.840969, 39.462017, 39.744614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609772, 39.504253, 39.420940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410512, -0.819368, -0.400144,
		-0.705269, -0.563459, 0.430244,
		-0.577993, 0.105589, -0.809181,
		35.436375, 39.535931, 39.178185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489826, 38.874512, 39.694874>,  <35.840969, 39.462017, 39.744614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489826, 38.874512, 39.694874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.512356, 39.058319, 39.340321>,  <35.525871, 39.168602, 39.127590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.512356, 39.058319, 39.340321>,  <35.489826, 38.874512, 39.694874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512356, 39.058319, 39.340321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453783, -0.802576, -0.387238,
		-0.889331, -0.380415, -0.253724,
		0.056321, 0.459519, -0.886381,
		35.529251, 39.196175, 39.074406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380100, 38.339809, 39.303207>,  <35.489826, 38.874512, 39.694874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380100, 38.339809, 39.303207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.533569, 38.597382, 39.038437>,  <35.625652, 38.751926, 38.879574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.533569, 38.597382, 39.038437>,  <35.380100, 38.339809, 39.303207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533569, 38.597382, 39.038437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312610, -0.765029, -0.563033,
		-0.868948, 0.009096, -0.494820,
		0.383673, 0.643932, -0.661927,
		35.648670, 38.790562, 38.839859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206650, 38.125214, 38.664925>,  <35.380100, 38.339809, 39.303207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206650, 38.125214, 38.664925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.517120, 38.366577, 38.591774>,  <35.703403, 38.511395, 38.547882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.517120, 38.366577, 38.591774>,  <35.206650, 38.125214, 38.664925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517120, 38.366577, 38.591774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262716, -0.573173, -0.776178,
		-0.573173, 0.554409, -0.603410,
		0.776178, 0.603410, -0.182876,
		35.749973, 38.547600, 38.536911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152214, 38.232960, 37.943073>,  <35.206650, 38.125214, 38.664925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152214, 38.232960, 37.943073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.529930, 38.279335, 38.066277>,  <35.756561, 38.307159, 38.140198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.529930, 38.279335, 38.066277>,  <35.152214, 38.232960, 37.943073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529930, 38.279335, 38.066277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322155, -0.517002, -0.793048,
		0.067295, 0.848096, -0.525552,
		0.944292, 0.115941, 0.308010,
		35.813217, 38.314117, 38.158680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588352, 38.216061, 37.301006>,  <35.152214, 38.232960, 37.943073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588352, 38.216061, 37.301006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.890781, 38.200024, 37.562309>,  <36.072239, 38.190399, 37.719093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.890781, 38.200024, 37.562309>,  <35.588352, 38.216061, 37.301006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890781, 38.200024, 37.562309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449309, -0.693967, -0.562612,
		0.475900, 0.718890, -0.506672,
		0.756069, -0.040094, 0.653262,
		36.117603, 38.187996, 37.758289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265236, 38.426914, 37.005314>,  <35.588352, 38.216061, 37.301006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265236, 38.426914, 37.005314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.335907, 38.171288, 37.304749>,  <36.378307, 38.017910, 37.484409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.335907, 38.171288, 37.304749>,  <36.265236, 38.426914, 37.005314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335907, 38.171288, 37.304749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255853, -0.704586, -0.661890,
		0.950434, 0.308466, 0.039025,
		0.176674, -0.639068, 0.748585,
		36.388908, 37.979568, 37.529324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919716, 38.132881, 36.809719>,  <36.265236, 38.426914, 37.005314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919716, 38.132881, 36.809719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.740639, 37.868568, 37.050697>,  <36.633190, 37.709980, 37.195286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.740639, 37.868568, 37.050697>,  <36.919716, 38.132881, 36.809719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740639, 37.868568, 37.050697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271991, -0.742443, -0.612209,
		0.851816, -0.110223, 0.512114,
		-0.447695, -0.660779, 0.602445,
		36.606331, 37.670334, 37.231430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554695, 38.446045, 36.533005>,  <36.919716, 38.132881, 36.809719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554695, 38.446045, 36.533005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460091, 38.543362, 36.156734>,  <37.403328, 38.601749, 35.930973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460091, 38.543362, 36.156734>,  <37.554695, 38.446045, 36.533005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460091, 38.543362, 36.156734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570768, 0.748703, 0.337147,
		0.786311, 0.616648, -0.038215,
		-0.236512, 0.243290, -0.940676,
		37.389137, 38.616348, 35.874531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465652, 39.150108, 36.620258>,  <37.554695, 38.446045, 36.533005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465652, 39.150108, 36.620258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.336910, 39.084797, 36.247215>,  <37.259666, 39.045612, 36.023392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.336910, 39.084797, 36.247215>,  <37.465652, 39.150108, 36.620258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336910, 39.084797, 36.247215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384320, 0.922747, -0.028914,
		0.865278, 0.349112, -0.359742,
		-0.321857, -0.163275, -0.932604,
		37.240353, 39.035816, 35.967434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678055, 39.738152, 36.090698>,  <37.465652, 39.150108, 36.620258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678055, 39.738152, 36.090698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.341148, 39.556412, 35.974659>,  <37.139004, 39.447369, 35.905037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.341148, 39.556412, 35.974659>,  <37.678055, 39.738152, 36.090698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341148, 39.556412, 35.974659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498441, 0.861352, 0.098131,
		0.205291, 0.227249, -0.951952,
		-0.842266, -0.454347, -0.290098,
		37.088470, 39.420109, 35.887630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435081, 40.126034, 35.488384>,  <37.678055, 39.738152, 36.090698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435081, 40.126034, 35.488384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112251, 39.930065, 35.620201>,  <36.918552, 39.812485, 35.699291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112251, 39.930065, 35.620201>,  <37.435081, 40.126034, 35.488384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112251, 39.930065, 35.620201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530447, 0.846761, -0.040257,
		-0.259325, -0.207298, -0.943281,
		-0.807079, -0.489921, 0.329547,
		36.870129, 39.783089, 35.719067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976429, 40.426296, 35.063343>,  <37.435081, 40.126034, 35.488384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976429, 40.426296, 35.063343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.788319, 40.269962, 35.379845>,  <36.675453, 40.176163, 35.569748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.788319, 40.269962, 35.379845>,  <36.976429, 40.426296, 35.063343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788319, 40.269962, 35.379845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532861, 0.840458, 0.098438,
		-0.703492, -0.375338, -0.603507,
		-0.470275, -0.390836, 0.791258,
		36.647236, 40.152710, 35.617222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341259, 40.472313, 34.908646>,  <36.976429, 40.426296, 35.063343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341259, 40.472313, 34.908646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.365440, 40.465000, 35.307846>,  <36.379951, 40.460613, 35.547367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.365440, 40.465000, 35.307846>,  <36.341259, 40.472313, 34.908646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365440, 40.465000, 35.307846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437656, 0.898116, 0.042963,
		-0.897108, -0.439379, 0.046293,
		0.060454, -0.018282, 0.998004,
		36.383575, 40.459515, 35.607246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733822, 40.766079, 35.066849>,  <36.341259, 40.472313, 34.908646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733822, 40.766079, 35.066849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.929539, 40.781944, 35.415337>,  <36.046970, 40.791466, 35.624428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.929539, 40.781944, 35.415337>,  <35.733822, 40.766079, 35.066849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929539, 40.781944, 35.415337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477601, 0.848040, 0.229618,
		-0.729719, -0.528445, 0.433886,
		0.489293, 0.039668, 0.871217,
		36.076328, 40.793846, 35.676701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248695, 40.809399, 35.461559>,  <35.733822, 40.766079, 35.066849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248695, 40.809399, 35.461559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.565826, 40.939034, 35.668015>,  <35.756104, 41.016815, 35.791885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.565826, 40.939034, 35.668015>,  <35.248695, 40.809399, 35.461559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565826, 40.939034, 35.668015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512807, 0.812383, 0.277602,
		-0.329331, -0.484767, 0.810273,
		0.792824, 0.324091, 0.516135,
		35.803673, 41.036263, 35.822857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028210, 41.098583, 36.062809>,  <35.248695, 40.809399, 35.461559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028210, 41.098583, 36.062809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383686, 41.277344, 36.021824>,  <35.596973, 41.384602, 35.997234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383686, 41.277344, 36.021824>,  <35.028210, 41.098583, 36.062809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383686, 41.277344, 36.021824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422989, 0.885366, 0.192891,
		0.176918, -0.128082, 0.975856,
		0.888696, 0.446903, -0.102460,
		35.650295, 41.411415, 35.991085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948418, 41.607185, 36.625637>,  <35.028210, 41.098583, 36.062809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948418, 41.607185, 36.625637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.264755, 41.736214, 36.417595>,  <35.454559, 41.813633, 36.292770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.264755, 41.736214, 36.417595>,  <34.948418, 41.607185, 36.625637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264755, 41.736214, 36.417595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260559, 0.946420, 0.190786,
		0.553776, -0.015366, 0.832524,
		0.790849, 0.322574, -0.520101,
		35.502010, 41.832985, 36.261566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414959, 42.020622, 37.092041>,  <34.948418, 41.607185, 36.625637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414959, 42.020622, 37.092041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.470039, 42.115692, 36.707428>,  <35.503090, 42.172733, 36.476658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.470039, 42.115692, 36.707428>,  <35.414959, 42.020622, 37.092041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470039, 42.115692, 36.707428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184560, 0.959938, 0.210848,
		0.973126, 0.148426, 0.176052,
		0.137704, 0.237674, -0.961535,
		35.511353, 42.186993, 36.418968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946541, 42.551170, 37.102665>,  <35.414959, 42.020622, 37.092041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946541, 42.551170, 37.102665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.726807, 42.565762, 36.768742>,  <35.594967, 42.574516, 36.568390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.726807, 42.565762, 36.768742>,  <35.946541, 42.551170, 37.102665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726807, 42.565762, 36.768742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251829, 0.945370, 0.207023,
		0.796750, 0.323953, -0.510142,
		-0.549338, 0.036477, -0.834804,
		35.562004, 42.576706, 36.518299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097107, 43.116867, 36.920647>,  <35.946541, 42.551170, 37.102665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097107, 43.116867, 36.920647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.786785, 43.053043, 36.676460>,  <35.600594, 43.014748, 36.529949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.786785, 43.053043, 36.676460>,  <36.097107, 43.116867, 36.920647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786785, 43.053043, 36.676460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225737, 0.973650, 0.032384,
		0.589213, 0.162929, -0.791380,
		-0.775803, -0.159562, -0.610466,
		35.554043, 43.005177, 36.493320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074841, 43.679024, 36.518036>,  <36.097107, 43.116867, 36.920647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074841, 43.679024, 36.518036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.701839, 43.537033, 36.491402>,  <35.478039, 43.451839, 36.475422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.701839, 43.537033, 36.491402>,  <36.074841, 43.679024, 36.518036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701839, 43.537033, 36.491402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361152, 0.918180, 0.162836,
		0.003338, 0.175894, -0.984403,
		-0.932501, -0.354975, -0.066589,
		35.422089, 43.430542, 36.471424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.554426, 39.552948, 36.411781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.900089, 39.587402, 36.610100>,  <28.107487, 39.608074, 36.729092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.900089, 39.587402, 36.610100>,  <27.554426, 39.552948, 36.411781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900089, 39.587402, 36.610100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451611, -0.567382, -0.688568,
		0.221991, 0.818937, -0.529209,
		0.864157, 0.086140, 0.495794,
		28.159336, 39.613243, 36.758839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023247, 39.642899, 35.902203>,  <27.554426, 39.552948, 36.411781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023247, 39.642899, 35.902203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.258827, 39.525284, 36.203316>,  <28.400175, 39.454716, 36.383984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.258827, 39.525284, 36.203316>,  <28.023247, 39.642899, 35.902203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258827, 39.525284, 36.203316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535887, -0.555155, -0.636104,
		0.604946, 0.778041, -0.169391,
		0.588953, -0.294034, 0.752780,
		28.435513, 39.437073, 36.429150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585484, 39.359734, 35.600811>,  <28.023247, 39.642899, 35.902203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585484, 39.359734, 35.600811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.597357, 39.208523, 35.970940>,  <28.604481, 39.117794, 36.193016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.597357, 39.208523, 35.970940>,  <28.585484, 39.359734, 35.600811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597357, 39.208523, 35.970940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460965, -0.816231, -0.348251,
		0.886922, 0.436875, 0.150032,
		0.029682, -0.378030, 0.925317,
		28.606262, 39.095112, 36.248535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362314, 39.058029, 35.611832>,  <28.585484, 39.359734, 35.600811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362314, 39.058029, 35.611832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.154558, 38.898975, 35.914387>,  <29.029903, 38.803543, 36.095921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.154558, 38.898975, 35.914387>,  <29.362314, 39.058029, 35.611832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154558, 38.898975, 35.914387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427013, -0.887478, -0.173328,
		0.740198, 0.232962, 0.630742,
		-0.519391, -0.397632, 0.756387,
		28.998741, 38.779686, 36.141304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910576, 38.905819, 36.054550>,  <29.362314, 39.058029, 35.611832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910576, 38.905819, 36.054550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.589840, 38.675037, 36.116741>,  <29.397398, 38.536568, 36.154057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.589840, 38.675037, 36.116741>,  <29.910576, 38.905819, 36.054550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589840, 38.675037, 36.116741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552050, -0.814863, -0.176747,
		0.228671, -0.055889, 0.971898,
		-0.801842, -0.576953, 0.155482,
		29.349287, 38.501953, 36.163387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131414, 38.443607, 36.581097>,  <29.910576, 38.905819, 36.054550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131414, 38.443607, 36.581097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.825758, 38.276169, 36.384781>,  <29.642365, 38.175705, 36.266991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.825758, 38.276169, 36.384781>,  <30.131414, 38.443607, 36.581097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825758, 38.276169, 36.384781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598688, -0.743472, -0.298031,
		-0.240131, -0.521564, 0.818723,
		-0.764140, -0.418593, -0.490785,
		29.596516, 38.150589, 36.237545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260332, 37.712437, 36.624615>,  <30.131414, 38.443607, 36.581097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260332, 37.712437, 36.624615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.973608, 37.732079, 36.346401>,  <29.801573, 37.743862, 36.179474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.973608, 37.732079, 36.346401>,  <30.260332, 37.712437, 36.624615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973608, 37.732079, 36.346401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363128, -0.825278, -0.432497,
		-0.595250, -0.562587, 0.573736,
		-0.716809, 0.049104, -0.695538,
		29.758566, 37.746811, 36.137741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046701, 37.032410, 36.521118>,  <30.260332, 37.712437, 36.624615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046701, 37.032410, 36.521118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.928530, 37.213562, 36.184639>,  <29.857626, 37.322254, 35.982750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.928530, 37.213562, 36.184639>,  <30.046701, 37.032410, 36.521118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928530, 37.213562, 36.184639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400535, -0.740667, -0.539429,
		-0.867348, -0.496294, 0.037420,
		-0.295431, 0.452885, -0.841199,
		29.839901, 37.349426, 35.932278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608248, 36.560455, 36.182423>,  <30.046701, 37.032410, 36.521118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608248, 36.560455, 36.182423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.762545, 36.804043, 35.905193>,  <29.855122, 36.950195, 35.738853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.762545, 36.804043, 35.905193>,  <29.608248, 36.560455, 36.182423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762545, 36.804043, 35.905193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272225, -0.792896, -0.545169,
		-0.881531, 0.021621, -0.471631,
		0.385741, 0.608973, -0.693077,
		29.878267, 36.986736, 35.697269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714703, 36.248287, 35.580658>,  <29.608248, 36.560455, 36.182423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714703, 36.248287, 35.580658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.938290, 36.551426, 35.446064>,  <30.072441, 36.733311, 35.365307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.938290, 36.551426, 35.446064>,  <29.714703, 36.248287, 35.580658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938290, 36.551426, 35.446064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614078, -0.651024, -0.446179,
		-0.557194, 0.042773, -0.829280,
		0.558966, 0.757851, -0.336481,
		30.105980, 36.778782, 35.345119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746332, 36.158722, 34.827053>,  <29.714703, 36.248287, 35.580658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746332, 36.158722, 34.827053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.054918, 36.383991, 34.945492>,  <30.240070, 36.519154, 35.016556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.054918, 36.383991, 34.945492>,  <29.746332, 36.158722, 34.827053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054918, 36.383991, 34.945492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622339, -0.571043, -0.535354,
		-0.132412, 0.597282, -0.791026,
		0.771467, 0.563173, 0.296099,
		30.286358, 36.552944, 35.034321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016342, 36.362988, 34.233173>,  <29.746332, 36.158722, 34.827053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016342, 36.362988, 34.233173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.288631, 36.372856, 34.526024>,  <30.452005, 36.378777, 34.701733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.288631, 36.372856, 34.526024>,  <30.016342, 36.362988, 34.233173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288631, 36.372856, 34.526024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613557, -0.565212, -0.551438,
		0.400203, 0.824577, -0.399889,
		0.680725, 0.024668, 0.732124,
		30.492849, 36.380257, 34.745663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586401, 36.471550, 34.015388>,  <30.016342, 36.362988, 34.233173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586401, 36.471550, 34.015388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.781471, 36.335812, 34.337139>,  <30.898514, 36.254368, 34.530190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.781471, 36.335812, 34.337139>,  <30.586401, 36.471550, 34.015388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781471, 36.335812, 34.337139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541045, -0.605621, -0.583519,
		0.685161, 0.719769, -0.111744,
		0.487673, -0.339345, 0.804375,
		30.927773, 36.234009, 34.578453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331209, 36.415836, 33.886372>,  <30.586401, 36.471550, 34.015388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331209, 36.415836, 33.886372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.293877, 36.183319, 34.209702>,  <31.271477, 36.043808, 34.403698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.293877, 36.183319, 34.209702>,  <31.331209, 36.415836, 33.886372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293877, 36.183319, 34.209702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564380, -0.699718, -0.438030,
		0.820222, 0.415317, 0.393379,
		-0.093333, -0.581297, 0.808321,
		31.265877, 36.008930, 34.452198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919523, 36.652431, 33.486042>,  <31.331209, 36.415836, 33.886372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919523, 36.652431, 33.486042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.825546, 36.729301, 33.104912>,  <31.769159, 36.775425, 32.876236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.825546, 36.729301, 33.104912>,  <31.919523, 36.652431, 33.486042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825546, 36.729301, 33.104912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299846, 0.918125, 0.259112,
		0.924605, 0.346577, -0.158084,
		-0.234943, 0.192175, -0.952822,
		31.755064, 36.786953, 32.819065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022823, 37.342819, 33.368427>,  <31.919523, 36.652431, 33.486042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022823, 37.342819, 33.368427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.790546, 37.230705, 33.062687>,  <31.651180, 37.163437, 32.879242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.790546, 37.230705, 33.062687>,  <32.022823, 37.342819, 33.368427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790546, 37.230705, 33.062687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373224, 0.926047, -0.056036,
		0.723535, 0.252736, -0.642357,
		-0.580690, -0.280287, -0.764355,
		31.616339, 37.146618, 32.833382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094704, 37.729347, 32.848698>,  <32.022823, 37.342819, 33.368427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094704, 37.729347, 32.848698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.739382, 37.575649, 32.748074>,  <31.526190, 37.483433, 32.687698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.739382, 37.575649, 32.748074>,  <32.094704, 37.729347, 32.848698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739382, 37.575649, 32.748074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386842, 0.921229, -0.041111,
		0.247538, 0.060794, -0.966969,
		-0.888300, -0.384241, -0.251557,
		31.472891, 37.460377, 32.672607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815521, 38.139206, 32.242569>,  <32.094704, 37.729347, 32.848698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815521, 38.139206, 32.242569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.515806, 37.949112, 32.427052>,  <31.335978, 37.835056, 32.537743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.515806, 37.949112, 32.427052>,  <31.815521, 38.139206, 32.242569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515806, 37.949112, 32.427052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510060, 0.858328, 0.055784,
		-0.422381, -0.193447, -0.885535,
		-0.749288, -0.475238, 0.461211,
		31.291019, 37.806541, 32.565414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250738, 38.545116, 31.969042>,  <31.815521, 38.139206, 32.242569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250738, 38.545116, 31.969042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.075153, 38.333969, 32.259880>,  <30.969803, 38.207279, 32.434383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.075153, 38.333969, 32.259880>,  <31.250738, 38.545116, 31.969042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075153, 38.333969, 32.259880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490070, 0.818920, 0.298666,
		-0.753088, -0.225224, -0.618168,
		-0.438964, -0.527868, 0.727095,
		30.943464, 38.175610, 32.478008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615849, 38.687893, 31.956789>,  <31.250738, 38.545116, 31.969042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615849, 38.687893, 31.956789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.645594, 38.550842, 32.331398>,  <30.663441, 38.468613, 32.556164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.645594, 38.550842, 32.331398>,  <30.615849, 38.687893, 31.956789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645594, 38.550842, 32.331398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558830, 0.763497, 0.323699,
		-0.825941, -0.547429, -0.134694,
		0.074363, -0.342628, 0.936523,
		30.667902, 38.448055, 32.612354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890789, 38.713879, 32.304676>,  <30.615849, 38.687893, 31.956789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890789, 38.713879, 32.304676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.164125, 38.720558, 32.596638>,  <30.328127, 38.724567, 32.771816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.164125, 38.720558, 32.596638>,  <29.890789, 38.713879, 32.304676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164125, 38.720558, 32.596638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568310, 0.639770, 0.517415,
		-0.458330, -0.768385, 0.446674,
		0.683343, 0.016702, 0.729906,
		30.369129, 38.725571, 32.815609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456614, 38.728760, 32.841911>,  <29.890789, 38.713879, 32.304676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456614, 38.728760, 32.841911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.815842, 38.821533, 32.991409>,  <30.031378, 38.877197, 33.081108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.815842, 38.821533, 32.991409>,  <29.456614, 38.728760, 32.841911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815842, 38.821533, 32.991409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418897, 0.710137, 0.565889,
		-0.134160, -0.664766, 0.734906,
		0.898068, 0.231930, 0.373741,
		30.085262, 38.891113, 33.103531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157141, 38.835423, 33.497829>,  <29.456614, 38.728760, 32.841911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157141, 38.835423, 33.497829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.494719, 39.045517, 33.454216>,  <29.697266, 39.171574, 33.428047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.494719, 39.045517, 33.454216>,  <29.157141, 38.835423, 33.497829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494719, 39.045517, 33.454216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393098, 0.743840, 0.540533,
		0.365007, -0.413320, 0.834228,
		0.843946, 0.525232, -0.109031,
		29.747902, 39.203087, 33.421505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275660, 39.146069, 34.134357>,  <29.157141, 38.835423, 33.497829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275660, 39.146069, 34.134357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.499229, 39.371120, 33.890701>,  <29.633371, 39.506149, 33.744507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.499229, 39.371120, 33.890701>,  <29.275660, 39.146069, 34.134357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499229, 39.371120, 33.890701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159648, 0.793869, 0.586757,
		0.813709, -0.230701, 0.533531,
		0.558919, 0.562627, -0.609148,
		29.666906, 39.539909, 33.707958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781260, 39.526413, 34.618053>,  <29.275660, 39.146069, 34.134357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781260, 39.526413, 34.618053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.744301, 39.750034, 34.288467>,  <29.722126, 39.884209, 34.090717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.744301, 39.750034, 34.288467>,  <29.781260, 39.526413, 34.618053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744301, 39.750034, 34.288467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020773, 0.828408, 0.559740,
		0.995506, 0.034602, -0.088155,
		-0.092396, 0.559056, -0.823966,
		29.716581, 39.917751, 34.041279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246279, 40.075760, 34.689877>,  <29.781260, 39.526413, 34.618053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246279, 40.075760, 34.689877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.986435, 40.212391, 34.418194>,  <29.830528, 40.294369, 34.255184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.986435, 40.212391, 34.418194>,  <30.246279, 40.075760, 34.689877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986435, 40.212391, 34.418194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077649, 0.918523, 0.387668,
		0.756290, 0.199093, -0.623207,
		-0.649611, 0.341581, -0.679211,
		29.791552, 40.314865, 34.214432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532518, 40.672668, 34.533154>,  <30.246279, 40.075760, 34.689877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532518, 40.672668, 34.533154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.145014, 40.692020, 34.435860>,  <29.912512, 40.703632, 34.377483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.145014, 40.692020, 34.435860>,  <30.532518, 40.672668, 34.533154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145014, 40.692020, 34.435860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084131, 0.858502, 0.505862,
		0.233289, 0.510523, -0.827613,
		-0.968761, 0.048385, -0.243230,
		29.854385, 40.706535, 34.362892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324520, 41.393192, 34.309994>,  <30.532518, 40.672668, 34.533154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324520, 41.393192, 34.309994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.995853, 41.206192, 34.440411>,  <29.798655, 41.093990, 34.518661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.995853, 41.206192, 34.440411>,  <30.324520, 41.393192, 34.309994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995853, 41.206192, 34.440411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285118, 0.832456, 0.475104,
		-0.493533, 0.297415, -0.817294,
		-0.821665, -0.467505, 0.326046,
		29.749353, 41.065941, 34.538223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889042, 41.756500, 34.174809>,  <30.324520, 41.393192, 34.309994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889042, 41.756500, 34.174809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.207649, 41.951122, 34.318378>,  <31.398813, 42.067894, 34.404522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.207649, 41.951122, 34.318378>,  <30.889042, 41.756500, 34.174809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207649, 41.951122, 34.318378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600560, -0.705336, -0.376602,
		0.069929, 0.515527, -0.854015,
		0.796516, 0.486552, 0.358928,
		31.446604, 42.097088, 34.426056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453287, 41.770393, 33.669373>,  <30.889042, 41.756500, 34.174809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453287, 41.770393, 33.669373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.633909, 41.813316, 34.023682>,  <31.742283, 41.839069, 34.236267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.633909, 41.813316, 34.023682>,  <31.453287, 41.770393, 33.669373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633909, 41.813316, 34.023682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782319, -0.524981, -0.335219,
		0.429041, 0.844323, -0.321002,
		0.451553, 0.107303, 0.885768,
		31.769375, 41.845509, 34.289413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049515, 41.977463, 33.397511>,  <31.453287, 41.770393, 33.669373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049515, 41.977463, 33.397511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.075577, 41.863079, 33.779919>,  <32.091213, 41.794449, 34.009365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.075577, 41.863079, 33.779919>,  <32.049515, 41.977463, 33.397511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075577, 41.863079, 33.779919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806056, -0.549687, -0.219357,
		0.588242, 0.784901, 0.194685,
		0.065158, -0.285962, 0.956023,
		32.095123, 41.777290, 34.066727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685471, 42.220623, 33.602203>,  <32.049515, 41.977463, 33.397511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685471, 42.220623, 33.602203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.573132, 41.922565, 33.844158>,  <32.505730, 41.743732, 33.989330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.573132, 41.922565, 33.844158>,  <32.685471, 42.220623, 33.602203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573132, 41.922565, 33.844158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805402, -0.525748, -0.273708,
		0.521970, 0.410307, 0.747794,
		-0.280847, -0.745142, 0.604887,
		32.488876, 41.699024, 34.025623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370762, 41.995838, 33.927589>,  <32.685471, 42.220623, 33.602203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370762, 41.995838, 33.927589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.111267, 41.695229, 33.975491>,  <32.955570, 41.514862, 34.004230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.111267, 41.695229, 33.975491>,  <33.370762, 41.995838, 33.927589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111267, 41.695229, 33.975491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732633, -0.659339, -0.168880,
		0.205875, -0.021825, 0.978335,
		-0.648741, -0.751529, 0.119751,
		32.916645, 41.469769, 34.011417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580006, 41.659126, 34.461266>,  <33.370762, 41.995838, 33.927589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580006, 41.659126, 34.461266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340225, 41.393581, 34.282406>,  <33.196358, 41.234253, 34.175091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340225, 41.393581, 34.282406>,  <33.580006, 41.659126, 34.461266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340225, 41.393581, 34.282406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787169, -0.590161, -0.179097,
		-0.144996, -0.459344, 0.876344,
		-0.599451, -0.663862, -0.447153,
		33.160389, 41.194424, 34.148258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784431, 40.891533, 34.581627>,  <33.580006, 41.659126, 34.461266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784431, 40.891533, 34.581627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.562965, 40.783020, 34.266701>,  <33.430084, 40.717915, 34.077744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.562965, 40.783020, 34.266701>,  <33.784431, 40.891533, 34.581627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562965, 40.783020, 34.266701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680094, -0.692896, -0.239517,
		-0.480551, -0.668059, 0.568127,
		-0.553664, -0.271280, -0.787314,
		33.396866, 40.701637, 34.030506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790276, 40.113239, 34.554840>,  <33.784431, 40.891533, 34.581627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790276, 40.113239, 34.554840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.699783, 40.251316, 34.190498>,  <33.645489, 40.334164, 33.971893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.699783, 40.251316, 34.190498>,  <33.790276, 40.113239, 34.554840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699783, 40.251316, 34.190498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491881, -0.766633, -0.412706,
		-0.840757, -0.541400, 0.003642,
		-0.226231, 0.345194, -0.910857,
		33.631912, 40.354874, 33.917240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582703, 39.543232, 34.199810>,  <33.790276, 40.113239, 34.554840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582703, 39.543232, 34.199810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.717251, 39.789467, 33.914738>,  <33.797981, 39.937206, 33.743694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.717251, 39.789467, 33.914738>,  <33.582703, 39.543232, 34.199810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717251, 39.789467, 33.914738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442042, -0.771435, -0.457698,
		-0.831538, -0.161079, -0.531600,
		0.336369, 0.615583, -0.712681,
		33.818161, 39.974140, 33.700932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416767, 39.210861, 33.519478>,  <33.582703, 39.543232, 34.199810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416767, 39.210861, 33.519478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.695087, 39.485561, 33.435352>,  <33.862080, 39.650383, 33.384876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.695087, 39.485561, 33.435352>,  <33.416767, 39.210861, 33.519478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695087, 39.485561, 33.435352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523498, -0.685399, -0.506140,
		-0.491740, 0.242076, -0.836416,
		0.695803, 0.686751, -0.210312,
		33.903828, 39.691586, 33.372257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542564, 39.246445, 32.699295>,  <33.416767, 39.210861, 33.519478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542564, 39.246445, 32.699295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.858875, 39.398628, 32.891098>,  <34.048660, 39.489937, 33.006180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.858875, 39.398628, 32.891098>,  <33.542564, 39.246445, 32.699295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858875, 39.398628, 32.891098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598991, -0.642265, -0.478232,
		0.126022, 0.665394, -0.735778,
		0.790777, 0.380457, 0.479504,
		34.096107, 39.512764, 33.034950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990135, 39.542763, 32.107468>,  <33.542564, 39.246445, 32.699295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990135, 39.542763, 32.107468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.203922, 39.459003, 32.435005>,  <34.332195, 39.408749, 32.631527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.203922, 39.459003, 32.435005>,  <33.990135, 39.542763, 32.107468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203922, 39.459003, 32.435005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486894, -0.715629, -0.500809,
		0.690855, 0.666353, -0.280523,
		0.534466, -0.209401, 0.818839,
		34.364262, 39.396183, 32.680656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715603, 39.459869, 31.934921>,  <33.990135, 39.542763, 32.107468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715603, 39.459869, 31.934921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.702183, 39.267536, 32.285389>,  <34.694130, 39.152134, 32.495670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.702183, 39.267536, 32.285389>,  <34.715603, 39.459869, 31.934921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702183, 39.267536, 32.285389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652407, -0.674655, -0.345263,
		0.757126, 0.560032, 0.336339,
		-0.033555, -0.480838, 0.876167,
		34.692116, 39.123283, 32.548241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403618, 39.197754, 32.048729>,  <34.715603, 39.459869, 31.934921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403618, 39.197754, 32.048729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163460, 38.974915, 32.278217>,  <35.019363, 38.841209, 32.415913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163460, 38.974915, 32.278217>,  <35.403618, 39.197754, 32.048729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163460, 38.974915, 32.278217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663888, -0.747198, -0.030795,
		0.445841, 0.362400, 0.818469,
		-0.600398, -0.557101, 0.573724,
		34.983341, 38.807785, 32.450336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.046770, 39.051811, 26.252636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.796040, 38.740170, 26.248730>,  <25.645601, 38.553185, 26.246386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.796040, 38.740170, 26.248730>,  <26.046770, 39.051811, 26.252636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796040, 38.740170, 26.248730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265566, 0.201843, 0.942727,
		-0.732507, 0.593518, -0.333422,
		-0.626824, -0.779100, -0.009767,
		25.607992, 38.506439, 26.245800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390165, 39.262859, 26.649431>,  <26.046770, 39.051811, 26.252636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390165, 39.262859, 26.649431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.449987, 38.868534, 26.618971>,  <25.485880, 38.631939, 26.600695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.449987, 38.868534, 26.618971>,  <25.390165, 39.262859, 26.649431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449987, 38.868534, 26.618971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016519, -0.074516, 0.997083,
		-0.988616, -0.150375, 0.005141,
		0.149553, -0.985817, -0.076152,
		25.494854, 38.572788, 26.596125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.097172, 39.008083, 27.297094>,  <25.390165, 39.262859, 26.649431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.097172, 39.008083, 27.297094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.309641, 38.687206, 27.188030>,  <25.437122, 38.494678, 27.122593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.309641, 38.687206, 27.188030>,  <25.097172, 39.008083, 27.297094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.309641, 38.687206, 27.188030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089559, -0.266848, 0.959568,
		-0.842517, -0.534115, -0.069899,
		0.531172, -0.802193, -0.272659,
		25.468992, 38.446548, 27.106232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.815798, 38.407410, 27.682228>,  <25.097172, 39.008083, 27.297094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.815798, 38.407410, 27.682228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.196016, 38.367504, 27.564579>,  <25.424147, 38.343559, 27.493990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.196016, 38.367504, 27.564579>,  <24.815798, 38.407410, 27.682228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.196016, 38.367504, 27.564579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218777, -0.457092, 0.862092,
		-0.220449, -0.883806, -0.412661,
		0.950546, -0.099767, -0.294122,
		25.481180, 38.337574, 27.476343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886873, 37.708157, 27.898556>,  <24.815798, 38.407410, 27.682228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886873, 37.708157, 27.898556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.241135, 37.892620, 27.876827>,  <25.453691, 38.003300, 27.863791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.241135, 37.892620, 27.876827>,  <24.886873, 37.708157, 27.898556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241135, 37.892620, 27.876827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248377, -0.371638, 0.894536,
		0.392337, -0.805740, -0.443684,
		0.885652, 0.461160, -0.054320,
		25.506830, 38.030968, 27.860531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292183, 37.125347, 28.018335>,  <24.886873, 37.708157, 27.898556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292183, 37.125347, 28.018335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.531525, 37.440968, 28.074020>,  <25.675129, 37.630341, 28.107431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.531525, 37.440968, 28.074020>,  <25.292183, 37.125347, 28.018335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531525, 37.440968, 28.074020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418479, -0.455930, 0.785496,
		0.683264, -0.411745, -0.603006,
		0.598352, 0.789046, 0.139214,
		25.711031, 37.677681, 28.115784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896124, 36.895454, 28.006153>,  <25.292183, 37.125347, 28.018335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896124, 36.895454, 28.006153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.919703, 37.225475, 28.230940>,  <25.933849, 37.423489, 28.365812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.919703, 37.225475, 28.230940>,  <25.896124, 36.895454, 28.006153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919703, 37.225475, 28.230940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448663, -0.524782, 0.723398,
		0.891755, 0.209492, -0.401106,
		0.058947, 0.825056, 0.561969,
		25.937387, 37.472992, 28.399530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545557, 36.868954, 28.286106>,  <25.896124, 36.895454, 28.006153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545557, 36.868954, 28.286106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.316097, 37.104156, 28.514204>,  <26.178421, 37.245277, 28.651062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.316097, 37.104156, 28.514204>,  <26.545557, 36.868954, 28.286106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316097, 37.104156, 28.514204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383842, -0.422034, 0.821311,
		0.723597, 0.690028, 0.016398,
		-0.573648, 0.588004, 0.570244,
		26.144003, 37.280560, 28.685278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016651, 37.104862, 28.719992>,  <26.545557, 36.868954, 28.286106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016651, 37.104862, 28.719992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.672632, 37.170959, 28.913078>,  <26.466221, 37.210617, 29.028931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.672632, 37.170959, 28.913078>,  <27.016651, 37.104862, 28.719992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672632, 37.170959, 28.913078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449147, -0.203629, 0.869944,
		0.242044, 0.965003, 0.100914,
		-0.860048, 0.165239, 0.482715,
		26.414618, 37.220531, 29.057894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230612, 37.272133, 29.388145>,  <27.016651, 37.104862, 28.719992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230612, 37.272133, 29.388145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.844873, 37.173321, 29.426117>,  <26.613430, 37.114033, 29.448900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.844873, 37.173321, 29.426117>,  <27.230612, 37.272133, 29.388145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844873, 37.173321, 29.426117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173536, -0.319463, 0.931573,
		-0.199801, 0.914833, 0.350942,
		-0.964347, -0.247030, 0.094928,
		26.555569, 37.099213, 29.454596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952625, 37.592754, 29.972485>,  <27.230612, 37.272133, 29.388145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952625, 37.592754, 29.972485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.694929, 37.292091, 29.915962>,  <26.540312, 37.111694, 29.882050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.694929, 37.292091, 29.915962>,  <26.952625, 37.592754, 29.972485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694929, 37.292091, 29.915962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208309, -0.350217, 0.913212,
		-0.735908, 0.558894, 0.382200,
		-0.644242, -0.751655, -0.141305,
		26.501657, 37.066593, 29.873571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470922, 37.652718, 30.517109>,  <26.952625, 37.592754, 29.972485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470922, 37.652718, 30.517109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.481020, 37.279945, 30.372408>,  <26.487078, 37.056282, 30.285587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.481020, 37.279945, 30.372408>,  <26.470922, 37.652718, 30.517109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.481020, 37.279945, 30.372408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171860, -0.352433, 0.919921,
		-0.984798, -0.085393, 0.151265,
		0.025244, -0.931933, -0.361751,
		26.488594, 37.000366, 30.263882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210634, 37.336163, 31.149273>,  <26.470922, 37.652718, 30.517109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210634, 37.336163, 31.149273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.355776, 37.033741, 30.931383>,  <26.442860, 36.852287, 30.800650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.355776, 37.033741, 30.931383>,  <26.210634, 37.336163, 31.149273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355776, 37.033741, 30.931383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192185, -0.511280, 0.837650,
		-0.911813, -0.408632, -0.040218,
		0.362853, -0.756051, -0.544725,
		26.464632, 36.806927, 30.767965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872494, 36.724392, 31.395308>,  <26.210634, 37.336163, 31.149273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872494, 36.724392, 31.395308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.208176, 36.601639, 31.215729>,  <26.409584, 36.527985, 31.107981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.208176, 36.601639, 31.215729>,  <25.872494, 36.724392, 31.395308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208176, 36.601639, 31.215729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189017, -0.609478, 0.769941,
		-0.509909, -0.730997, -0.453471,
		0.839205, -0.306887, -0.448949,
		26.459938, 36.509571, 31.081043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977400, 36.012260, 31.611500>,  <25.872494, 36.724392, 31.395308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977400, 36.012260, 31.611500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.347401, 36.051170, 31.464581>,  <26.569401, 36.074516, 31.376429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.347401, 36.051170, 31.464581>,  <25.977400, 36.012260, 31.611500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347401, 36.051170, 31.464581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318283, -0.726337, 0.609205,
		-0.207521, -0.680421, -0.702825,
		0.925003, 0.097274, -0.367297,
		26.624901, 36.080353, 31.354391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210566, 35.354877, 31.486622>,  <25.977400, 36.012260, 31.611500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210566, 35.354877, 31.486622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.516438, 35.604267, 31.551792>,  <26.699961, 35.753902, 31.590895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.516438, 35.604267, 31.551792>,  <26.210566, 35.354877, 31.486622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.516438, 35.604267, 31.551792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359276, -0.622364, 0.695402,
		0.534963, -0.473225, -0.699909,
		0.764679, 0.623475, 0.162924,
		26.745842, 35.791309, 31.600670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718456, 34.917641, 31.818645>,  <26.210566, 35.354877, 31.486622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718456, 34.917641, 31.818645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.837948, 35.287403, 31.913502>,  <26.909643, 35.509262, 31.970415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.837948, 35.287403, 31.913502>,  <26.718456, 34.917641, 31.818645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837948, 35.287403, 31.913502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296936, -0.326187, 0.897458,
		0.906968, -0.197680, -0.371931,
		0.298728, 0.924405, 0.237142,
		26.927567, 35.564724, 31.984644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466967, 35.158848, 31.816788>,  <26.718456, 34.917641, 31.818645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466967, 35.158848, 31.816788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.225779, 35.320545, 32.091892>,  <27.081066, 35.417564, 32.256954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.225779, 35.320545, 32.091892>,  <27.466967, 35.158848, 31.816788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225779, 35.320545, 32.091892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439930, -0.550686, 0.709370,
		0.665498, 0.730295, 0.154208,
		-0.602970, 0.404244, 0.687760,
		27.044888, 35.441818, 32.298222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874699, 35.485043, 32.416729>,  <27.466967, 35.158848, 31.816788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874699, 35.485043, 32.416729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.527912, 35.328697, 32.540401>,  <27.319839, 35.234890, 32.614605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.527912, 35.328697, 32.540401>,  <27.874699, 35.485043, 32.416729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527912, 35.328697, 32.540401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451781, -0.354498, 0.818673,
		-0.210387, 0.849444, 0.483923,
		-0.866967, -0.390865, 0.309181,
		27.267822, 35.211437, 32.633156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068684, 34.872242, 32.082760>,  <27.874699, 35.485043, 32.416729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068684, 34.872242, 32.082760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374212, 34.614094, 32.079556>,  <28.557529, 34.459206, 32.077633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374212, 34.614094, 32.079556>,  <28.068684, 34.872242, 32.082760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374212, 34.614094, 32.079556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115718, -0.124720, -0.985421,
		0.634967, 0.753615, -0.169946,
		0.763824, -0.645375, -0.008014,
		28.603359, 34.420483, 32.077152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436600, 35.046028, 31.530256>,  <28.068684, 34.872242, 32.082760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436600, 35.046028, 31.530256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.539757, 34.664093, 31.589281>,  <28.601650, 34.434933, 31.624697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.539757, 34.664093, 31.589281>,  <28.436600, 35.046028, 31.530256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539757, 34.664093, 31.589281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234112, -0.209934, -0.949273,
		0.937381, 0.210262, -0.277679,
		0.257891, -0.954839, 0.147563,
		28.617125, 34.377640, 31.633551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922049, 34.815964, 30.983150>,  <28.436600, 35.046028, 31.530256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922049, 34.815964, 30.983150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777309, 34.480511, 31.146008>,  <28.690466, 34.279240, 31.243723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777309, 34.480511, 31.146008>,  <28.922049, 34.815964, 30.983150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777309, 34.480511, 31.146008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171196, -0.369533, -0.913311,
		0.916383, -0.400181, -0.009855,
		-0.361848, -0.838630, 0.407144,
		28.668755, 34.228920, 31.268150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237583, 34.269806, 30.591536>,  <28.922049, 34.815964, 30.983150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237583, 34.269806, 30.591536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.921452, 34.101761, 30.769922>,  <28.731773, 34.000935, 30.876955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.921452, 34.101761, 30.769922>,  <29.237583, 34.269806, 30.591536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921452, 34.101761, 30.769922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157995, -0.563526, -0.810849,
		0.591963, -0.711297, 0.378994,
		-0.790328, -0.420113, 0.445968,
		28.684353, 33.975727, 30.903713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301575, 33.550880, 30.419996>,  <29.237583, 34.269806, 30.591536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301575, 33.550880, 30.419996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.922312, 33.609661, 30.532709>,  <28.694754, 33.644932, 30.600338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.922312, 33.609661, 30.532709>,  <29.301575, 33.550880, 30.419996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922312, 33.609661, 30.532709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310985, -0.246378, -0.917925,
		-0.065469, -0.957968, 0.279306,
		-0.948157, 0.146956, 0.281783,
		28.637865, 33.653748, 30.617245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979076, 32.985970, 30.144236>,  <29.301575, 33.550880, 30.419996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979076, 32.985970, 30.144236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655535, 33.207527, 30.223183>,  <28.461411, 33.340462, 30.270552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655535, 33.207527, 30.223183>,  <28.979076, 32.985970, 30.144236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655535, 33.207527, 30.223183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442928, -0.353169, -0.824067,
		-0.386750, -0.753965, 0.531000,
		-0.808850, 0.553903, 0.197365,
		28.412878, 33.373695, 30.282394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410645, 32.558308, 29.951363>,  <28.979076, 32.985970, 30.144236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410645, 32.558308, 29.951363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.277149, 32.935371, 29.950439>,  <28.197052, 33.161610, 29.949886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.277149, 32.935371, 29.950439>,  <28.410645, 32.558308, 29.951363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277149, 32.935371, 29.950439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311018, -0.112420, -0.943732,
		-0.889880, -0.314242, 0.330704,
		-0.333738, 0.942663, -0.002306,
		28.177027, 33.218170, 29.949747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690371, 32.528221, 29.725899>,  <28.410645, 32.558308, 29.951363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690371, 32.528221, 29.725899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.797766, 32.909546, 29.670603>,  <27.862204, 33.138340, 29.637426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.797766, 32.909546, 29.670603>,  <27.690371, 32.528221, 29.725899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797766, 32.909546, 29.670603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467450, 0.003462, -0.884013,
		-0.842262, 0.301967, 0.446555,
		0.268489, 0.953312, -0.138239,
		27.878313, 33.195541, 29.629131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075481, 32.843819, 29.427708>,  <27.690371, 32.528221, 29.725899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075481, 32.843819, 29.427708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372017, 33.095592, 29.334562>,  <27.549938, 33.246658, 29.278675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372017, 33.095592, 29.334562>,  <27.075481, 32.843819, 29.427708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372017, 33.095592, 29.334562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456467, 0.218542, -0.862483,
		-0.491988, 0.745687, 0.449331,
		0.741340, 0.629436, -0.232862,
		27.594419, 33.284424, 29.264704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678095, 33.380459, 29.195250>,  <27.075481, 32.843819, 29.427708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678095, 33.380459, 29.195250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.048470, 33.435249, 29.054464>,  <27.270695, 33.468124, 28.969994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.048470, 33.435249, 29.054464>,  <26.678095, 33.380459, 29.195250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048470, 33.435249, 29.054464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377324, 0.295106, -0.877804,
		-0.016372, 0.945595, 0.324934,
		0.925937, 0.136977, -0.351964,
		27.326250, 33.476341, 28.948875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681856, 34.019890, 28.738539>,  <26.678095, 33.380459, 29.195250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681856, 34.019890, 28.738539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001434, 33.813068, 28.615679>,  <27.193182, 33.688976, 28.541964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001434, 33.813068, 28.615679>,  <26.681856, 34.019890, 28.738539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001434, 33.813068, 28.615679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271519, 0.145593, -0.951357,
		0.536624, 0.843479, -0.024069,
		0.798945, -0.517056, -0.307149,
		27.241117, 33.657951, 28.523535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977249, 34.435516, 28.274065>,  <26.681856, 34.019890, 28.738539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977249, 34.435516, 28.274065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.098677, 34.062473, 28.196009>,  <27.171534, 33.838646, 28.149174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.098677, 34.062473, 28.196009>,  <26.977249, 34.435516, 28.274065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098677, 34.062473, 28.196009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344997, 0.083323, -0.934898,
		0.888157, 0.351129, -0.296454,
		0.303569, -0.932612, -0.195143,
		27.189747, 33.782688, 28.137466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394053, 34.427990, 27.600458>,  <26.977249, 34.435516, 28.274065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394053, 34.427990, 27.600458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270205, 34.052452, 27.660742>,  <27.195896, 33.827129, 27.696911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270205, 34.052452, 27.660742>,  <27.394053, 34.427990, 27.600458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270205, 34.052452, 27.660742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340701, -0.038434, -0.939386,
		0.887726, -0.342199, -0.307964,
		-0.309621, -0.938841, 0.150707,
		27.177319, 33.770802, 27.705954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523540, 34.167297, 26.969465>,  <27.394053, 34.427990, 27.600458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523540, 34.167297, 26.969465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.267933, 33.913376, 27.143215>,  <27.114569, 33.761024, 27.247465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.267933, 33.913376, 27.143215>,  <27.523540, 34.167297, 26.969465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267933, 33.913376, 27.143215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460143, -0.137044, -0.877204,
		0.616377, -0.760427, -0.204525,
		-0.639021, -0.634800, 0.434376,
		27.076227, 33.722935, 27.273527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414412, 33.653519, 26.509653>,  <27.523540, 34.167297, 26.969465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414412, 33.653519, 26.509653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.098900, 33.630531, 26.754446>,  <26.909592, 33.616737, 26.901321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.098900, 33.630531, 26.754446>,  <27.414412, 33.653519, 26.509653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098900, 33.630531, 26.754446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607842, -0.075099, -0.790499,
		0.091392, -0.995518, 0.024302,
		-0.788781, -0.057473, 0.611982,
		26.862265, 33.613289, 26.938040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011311, 33.351345, 26.079439>,  <27.414412, 33.653519, 26.509653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011311, 33.351345, 26.079439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.765852, 33.489540, 26.363432>,  <26.618578, 33.572456, 26.533829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.765852, 33.489540, 26.363432>,  <27.011311, 33.351345, 26.079439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765852, 33.489540, 26.363432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661446, 0.266119, -0.701192,
		-0.431195, -0.899899, 0.065220,
		-0.613645, 0.345490, 0.709983,
		26.581758, 33.593185, 26.576427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258249, 33.046017, 25.928703>,  <27.011311, 33.351345, 26.079439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258249, 33.046017, 25.928703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.216709, 33.362915, 26.169224>,  <26.191786, 33.553055, 26.313536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.216709, 33.362915, 26.169224>,  <26.258249, 33.046017, 25.928703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216709, 33.362915, 26.169224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675149, 0.387787, -0.627531,
		-0.730335, -0.471137, 0.494611,
		-0.103849, 0.792244, 0.601302,
		26.185555, 33.600590, 26.349615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514170, 33.099380, 26.021765>,  <26.258249, 33.046017, 25.928703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514170, 33.099380, 26.021765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.694742, 33.448868, 26.094234>,  <25.803085, 33.658562, 26.137716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.694742, 33.448868, 26.094234>,  <25.514170, 33.099380, 26.021765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694742, 33.448868, 26.094234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646399, 0.460177, -0.608610,
		-0.615126, 0.157635, 0.772509,
		0.451429, 0.873721, 0.181172,
		25.830172, 33.710983, 26.148586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.952339, 33.476738, 26.141546>,  <25.514170, 33.099380, 26.021765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.952339, 33.476738, 26.141546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.262083, 33.711460, 26.046865>,  <25.447929, 33.852295, 25.990057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.262083, 33.711460, 26.046865>,  <24.952339, 33.476738, 26.141546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.262083, 33.711460, 26.046865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592688, 0.541684, -0.596070,
		-0.221560, 0.601862, 0.767251,
		0.774359, 0.586806, -0.236700,
		25.494390, 33.887501, 25.975855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.650696, 34.071720, 26.176027>,  <24.952339, 33.476738, 26.141546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.650696, 34.071720, 26.176027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.975780, 34.148800, 25.956076>,  <25.170832, 34.195049, 25.824104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.975780, 34.148800, 25.956076>,  <24.650696, 34.071720, 26.176027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975780, 34.148800, 25.956076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529103, 0.639318, -0.557963,
		0.244026, 0.744405, 0.621541,
		0.812712, 0.192702, -0.549877,
		25.219595, 34.206612, 25.791113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.748001, 34.772099, 26.142590>,  <24.650696, 34.071720, 26.176027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.748001, 34.772099, 26.142590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.911747, 34.611610, 25.814821>,  <25.009995, 34.515320, 25.618160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.911747, 34.611610, 25.814821>,  <24.748001, 34.772099, 26.142590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.911747, 34.611610, 25.814821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500632, 0.652057, -0.569375,
		0.762751, 0.643309, 0.066067,
		0.409364, -0.401216, -0.819419,
		25.034555, 34.491245, 25.568996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131794, 35.296448, 25.874990>,  <24.748001, 34.772099, 26.142590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131794, 35.296448, 25.874990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.026224, 35.029190, 25.596731>,  <24.962881, 34.868835, 25.429775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.026224, 35.029190, 25.596731>,  <25.131794, 35.296448, 25.874990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.026224, 35.029190, 25.596731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291217, 0.742759, -0.602910,
		0.919530, 0.043461, -0.390609,
		-0.263926, -0.668146, -0.695646,
		24.947046, 34.828747, 25.388037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312857, 35.483822, 25.257458>,  <25.131794, 35.296448, 25.874990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312857, 35.483822, 25.257458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.023342, 35.224949, 25.161722>,  <24.849634, 35.069626, 25.104280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.023342, 35.224949, 25.161722>,  <25.312857, 35.483822, 25.257458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.023342, 35.224949, 25.161722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386883, 0.667828, -0.635867,
		0.571360, -0.367637, -0.733751,
		-0.723788, -0.647185, -0.239337,
		24.806206, 35.030792, 25.089920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.670765, 44.260071, 36.063236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.378719, 44.024708, 36.202206>,  <35.203491, 43.883488, 36.285587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.378719, 44.024708, 36.202206>,  <35.670765, 44.260071, 36.063236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378719, 44.024708, 36.202206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476054, 0.802745, 0.359128,
		-0.490208, 0.096812, -0.866212,
		-0.730116, -0.588411, 0.347424,
		35.159683, 43.848183, 36.306435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069946, 44.598202, 35.868000>,  <35.670765, 44.260071, 36.063236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069946, 44.598202, 35.868000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965500, 44.345406, 36.159863>,  <34.902832, 44.193729, 36.334980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965500, 44.345406, 36.159863>,  <35.069946, 44.598202, 35.868000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965500, 44.345406, 36.159863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535435, 0.723770, 0.435277,
		-0.803197, -0.277027, -0.527380,
		-0.261118, -0.631991, 0.729660,
		34.887165, 44.155807, 36.378761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389805, 44.474060, 35.933758>,  <35.069946, 44.598202, 35.868000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389805, 44.474060, 35.933758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514980, 44.421917, 36.310070>,  <34.590084, 44.390633, 36.535858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514980, 44.421917, 36.310070>,  <34.389805, 44.474060, 35.933758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514980, 44.421917, 36.310070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634002, 0.708865, 0.309115,
		-0.707185, -0.693194, 0.139183,
		0.312939, -0.130359, 0.940785,
		34.608864, 44.382809, 36.592304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756474, 44.508690, 36.292919>,  <34.389805, 44.474060, 35.933758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756474, 44.508690, 36.292919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049248, 44.567303, 36.559090>,  <34.224915, 44.602470, 36.718792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049248, 44.567303, 36.559090>,  <33.756474, 44.508690, 36.292919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049248, 44.567303, 36.559090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555653, 0.693592, 0.458454,
		-0.394356, -0.705307, 0.589088,
		0.731938, 0.146534, 0.665428,
		34.268829, 44.611263, 36.758717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459732, 44.477764, 36.904900>,  <33.756474, 44.508690, 36.292919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459732, 44.477764, 36.904900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804192, 44.655506, 37.003666>,  <34.010868, 44.762154, 37.062927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804192, 44.655506, 37.003666>,  <33.459732, 44.477764, 36.904900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804192, 44.655506, 37.003666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507322, 0.720333, 0.473016,
		0.032327, -0.532604, 0.845747,
		0.861150, 0.444357, 0.246915,
		34.062538, 44.788815, 37.077740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535572, 44.488079, 37.614491>,  <33.459732, 44.477764, 36.904900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535572, 44.488079, 37.614491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746002, 44.794086, 37.465897>,  <33.872261, 44.977692, 37.376740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746002, 44.794086, 37.465897>,  <33.535572, 44.488079, 37.614491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746002, 44.794086, 37.465897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510052, 0.633350, 0.581991,
		0.680510, -0.116695, 0.723386,
		0.526072, 0.765016, -0.371481,
		33.903824, 45.023590, 37.354454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772942, 44.940758, 38.160202>,  <33.535572, 44.488079, 37.614491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772942, 44.940758, 38.160202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801727, 45.181091, 37.841751>,  <33.819000, 45.325291, 37.650681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801727, 45.181091, 37.841751>,  <33.772942, 44.940758, 38.160202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801727, 45.181091, 37.841751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316413, 0.770723, 0.553054,
		0.945888, 0.212106, 0.245575,
		0.071964, 0.600830, -0.796130,
		33.823315, 45.361340, 37.602913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770149, 45.548203, 38.450714>,  <33.772942, 44.940758, 38.160202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770149, 45.548203, 38.450714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.730251, 45.655830, 38.067539>,  <33.706314, 45.720409, 37.837635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.730251, 45.655830, 38.067539>,  <33.770149, 45.548203, 38.450714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730251, 45.655830, 38.067539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505428, 0.815586, 0.281713,
		0.857085, 0.512268, 0.054651,
		-0.099740, 0.269074, -0.957941,
		33.700329, 45.736553, 37.780155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938473, 46.235321, 38.322323>,  <33.770149, 45.548203, 38.450714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938473, 46.235321, 38.322323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.679134, 46.176060, 38.023605>,  <33.523533, 46.140503, 37.844376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.679134, 46.176060, 38.023605>,  <33.938473, 46.235321, 38.322323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679134, 46.176060, 38.023605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481069, 0.839980, 0.251010,
		0.590106, 0.522001, -0.615864,
		-0.648341, -0.148150, -0.746796,
		33.484631, 46.131615, 37.799568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744858, 46.888889, 37.914803>,  <33.938473, 46.235321, 38.322323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744858, 46.888889, 37.914803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436100, 46.639935, 37.862934>,  <33.250847, 46.490562, 37.831814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436100, 46.639935, 37.862934>,  <33.744858, 46.888889, 37.914803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436100, 46.639935, 37.862934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625324, 0.706492, 0.331420,
		-0.114661, 0.336906, -0.934530,
		-0.771895, -0.622385, -0.129669,
		33.204533, 46.453220, 37.824032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293766, 47.390923, 37.869324>,  <33.744858, 46.888889, 37.914803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293766, 47.390923, 37.869324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.070137, 47.059704, 37.886189>,  <32.935959, 46.860973, 37.896309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.070137, 47.059704, 37.886189>,  <33.293766, 47.390923, 37.869324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070137, 47.059704, 37.886189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784740, 0.544881, 0.295444,
		-0.267615, 0.132087, -0.954429,
		-0.559075, -0.828044, 0.042165,
		32.902416, 46.811291, 37.898838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598698, 47.516266, 37.509449>,  <33.293766, 47.390923, 37.869324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598698, 47.516266, 37.509449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534660, 47.209999, 37.758648>,  <32.496239, 47.026237, 37.908165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534660, 47.209999, 37.758648>,  <32.598698, 47.516266, 37.509449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534660, 47.209999, 37.758648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853762, 0.424181, 0.301928,
		-0.495439, -0.483551, -0.721609,
		-0.160095, -0.765669, 0.622993,
		32.486633, 46.980297, 37.945545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904932, 47.263412, 37.424984>,  <32.598698, 47.516266, 37.509449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904932, 47.263412, 37.424984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050705, 47.199623, 37.791973>,  <32.138168, 47.161350, 38.012165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050705, 47.199623, 37.791973>,  <31.904932, 47.263412, 37.424984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050705, 47.199623, 37.791973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653265, 0.658352, 0.373921,
		-0.663652, -0.735622, 0.135745,
		0.364432, -0.159475, 0.917473,
		32.160034, 47.151779, 38.067215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293974, 46.992458, 37.899754>,  <31.904932, 47.263412, 37.424984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293974, 46.992458, 37.899754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.594324, 47.202621, 38.059818>,  <31.774534, 47.328720, 38.155857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.594324, 47.202621, 38.059818>,  <31.293974, 46.992458, 37.899754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594324, 47.202621, 38.059818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659986, 0.619526, 0.424977,
		-0.024623, -0.583207, 0.811951,
		0.750874, 0.525412, 0.400163,
		31.819586, 47.360245, 38.179867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675461, 46.904297, 37.423882>,  <31.293974, 46.992458, 37.899754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675461, 46.904297, 37.423882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.482483, 47.022263, 37.093967>,  <30.366697, 47.093040, 36.896019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.482483, 47.022263, 37.093967>,  <30.675461, 46.904297, 37.423882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482483, 47.022263, 37.093967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149363, -0.900129, -0.409218,
		-0.863098, -0.320618, 0.390213,
		-0.482445, 0.294912, -0.824788,
		30.337749, 47.110737, 36.846531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189484, 46.360340, 37.330441>,  <30.675461, 46.904297, 37.423882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189484, 46.360340, 37.330441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.279133, 46.537682, 36.983292>,  <30.332922, 46.644085, 36.775002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.279133, 46.537682, 36.983292>,  <30.189484, 46.360340, 37.330441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279133, 46.537682, 36.983292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237961, -0.888470, -0.392422,
		-0.945063, -0.118571, -0.304627,
		0.224122, 0.443353, -0.867875,
		30.346369, 46.670689, 36.722927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837017, 45.834988, 36.860100>,  <30.189484, 46.360340, 37.330441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837017, 45.834988, 36.860100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.074440, 46.080406, 36.651772>,  <30.216894, 46.227657, 36.526775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.074440, 46.080406, 36.651772>,  <29.837017, 45.834988, 36.860100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074440, 46.080406, 36.651772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206284, -0.741514, -0.638438,
		-0.777905, 0.271513, -0.566696,
		0.593557, 0.613545, -0.520819,
		30.252506, 46.264469, 36.495525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524323, 45.892353, 36.252106>,  <29.837017, 45.834988, 36.860100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524323, 45.892353, 36.252106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.912830, 45.970543, 36.197803>,  <30.145935, 46.017456, 36.165222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.912830, 45.970543, 36.197803>,  <29.524323, 45.892353, 36.252106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912830, 45.970543, 36.197803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040826, -0.698822, -0.714129,
		-0.234462, 0.688069, -0.686724,
		0.971268, 0.195472, -0.135756,
		30.204210, 46.029186, 36.157078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661686, 45.889858, 35.472801>,  <29.524323, 45.892353, 36.252106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661686, 45.889858, 35.472801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.020214, 45.828384, 35.639168>,  <30.235331, 45.791500, 35.738987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.020214, 45.828384, 35.639168>,  <29.661686, 45.889858, 35.472801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020214, 45.828384, 35.639168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193976, -0.707586, -0.679482,
		0.398725, 0.689713, -0.604413,
		0.896322, -0.153685, 0.415919,
		30.289110, 45.782280, 35.763943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077330, 45.807655, 34.965820>,  <29.661686, 45.889858, 35.472801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077330, 45.807655, 34.965820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.284235, 45.634380, 35.261059>,  <30.408379, 45.530415, 35.438202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.284235, 45.634380, 35.261059>,  <30.077330, 45.807655, 34.965820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284235, 45.634380, 35.261059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249015, -0.748944, -0.614064,
		0.818798, 0.501430, -0.279531,
		0.517263, -0.433187, 0.738098,
		30.439413, 45.504425, 35.482487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640207, 45.581348, 34.598434>,  <30.077330, 45.807655, 34.965820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640207, 45.581348, 34.598434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.655819, 45.363762, 34.933712>,  <30.665186, 45.233212, 35.134880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.655819, 45.363762, 34.933712>,  <30.640207, 45.581348, 34.598434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655819, 45.363762, 34.933712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324263, -0.786546, -0.525545,
		0.945161, 0.292308, 0.145692,
		0.039028, -0.543967, 0.838198,
		30.667528, 45.200573, 35.185173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245167, 45.237812, 34.549934>,  <30.640207, 45.581348, 34.598434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245167, 45.237812, 34.549934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.043522, 45.027481, 34.823978>,  <30.922535, 44.901283, 34.988407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.043522, 45.027481, 34.823978>,  <31.245167, 45.237812, 34.549934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043522, 45.027481, 34.823978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427495, -0.841212, -0.331075,
		0.750411, 0.125983, 0.648854,
		-0.504114, -0.525824, 0.685112,
		30.892288, 44.869732, 35.029510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635944, 44.614246, 34.657101>,  <31.245167, 45.237812, 34.549934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635944, 44.614246, 34.657101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.305725, 44.534561, 34.868301>,  <31.107594, 44.486748, 34.995022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.305725, 44.534561, 34.868301>,  <31.635944, 44.614246, 34.657101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305725, 44.534561, 34.868301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254955, -0.966354, 0.034020,
		0.503459, 0.162701, 0.848562,
		-0.825547, -0.199218, 0.528001,
		31.058062, 44.474796, 35.026703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734179, 44.305588, 35.343433>,  <31.635944, 44.614246, 34.657101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734179, 44.305588, 35.343433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.388706, 44.176876, 35.188251>,  <31.181423, 44.099648, 35.095142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.388706, 44.176876, 35.188251>,  <31.734179, 44.305588, 35.343433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388706, 44.176876, 35.188251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392467, -0.912289, -0.117041,
		-0.316266, -0.253346, 0.914216,
		-0.863681, -0.321783, -0.387956,
		31.129602, 44.080341, 35.071865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579021, 43.651012, 35.637501>,  <31.734179, 44.305588, 35.343433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579021, 43.651012, 35.637501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.300167, 43.610325, 35.353626>,  <31.132854, 43.585911, 35.183300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.300167, 43.610325, 35.353626>,  <31.579021, 43.651012, 35.637501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300167, 43.610325, 35.353626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337115, -0.920133, -0.199272,
		-0.632735, -0.378165, 0.675749,
		-0.697137, -0.101718, -0.709685,
		31.091026, 43.579811, 35.140720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191311, 43.022846, 35.767742>,  <31.579021, 43.651012, 35.637501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191311, 43.022846, 35.767742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.132404, 43.088032, 35.377510>,  <31.097061, 43.127144, 35.143372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.132404, 43.088032, 35.377510>,  <31.191311, 43.022846, 35.767742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132404, 43.088032, 35.377510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356963, -0.911103, -0.206080,
		-0.922437, -0.378594, 0.076002,
		-0.147266, 0.162966, -0.975579,
		31.088224, 43.136921, 35.084835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840372, 42.439022, 35.477287>,  <31.191311, 43.022846, 35.767742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840372, 42.439022, 35.477287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.011284, 42.594093, 35.150574>,  <31.113831, 42.687138, 34.954544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.011284, 42.594093, 35.150574>,  <30.840372, 42.439022, 35.477287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011284, 42.594093, 35.150574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337820, -0.906428, -0.253506,
		-0.838637, -0.167609, -0.518262,
		0.427278, 0.387679, -0.816786,
		31.139467, 42.710396, 34.905537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727087, 41.975079, 34.858788>,  <30.840372, 42.439022, 35.477287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727087, 41.975079, 34.858788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.046192, 42.197235, 34.764877>,  <31.237656, 42.330528, 34.708530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.046192, 42.197235, 34.764877>,  <30.727087, 41.975079, 34.858788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046192, 42.197235, 34.764877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393839, -0.774777, -0.494583,
		-0.456583, 0.302096, -0.836821,
		0.797761, 0.555391, -0.234773,
		31.285521, 42.363853, 34.694447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016546, 41.974678, 34.617241>,  <30.727087, 41.975079, 34.858788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016546, 41.974678, 34.617241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.718576, 41.713799, 34.673420>,  <29.539795, 41.557270, 34.707127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.718576, 41.713799, 34.673420>,  <30.016546, 41.974678, 34.617241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718576, 41.713799, 34.673420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555135, 0.722719, 0.411706,
		-0.370016, 0.228724, -0.900429,
		-0.744925, -0.652198, 0.140445,
		29.495098, 41.518139, 34.715553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410765, 42.296593, 34.304302>,  <30.016546, 41.974678, 34.617241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410765, 42.296593, 34.304302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.302338, 42.027863, 34.580036>,  <29.237282, 41.866627, 34.745476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.302338, 42.027863, 34.580036>,  <29.410765, 42.296593, 34.304302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302338, 42.027863, 34.580036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422314, 0.726543, 0.542021,
		-0.864970, -0.144189, -0.480663,
		-0.271069, -0.671822, 0.689330,
		29.221018, 41.826317, 34.786835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883408, 42.596161, 34.544102>,  <29.410765, 42.296593, 34.304302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883408, 42.596161, 34.544102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.968855, 42.320503, 34.821072>,  <29.020124, 42.155109, 34.987251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.968855, 42.320503, 34.821072>,  <28.883408, 42.596161, 34.544102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968855, 42.320503, 34.821072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328541, 0.616819, 0.715259,
		-0.920015, -0.380282, -0.094647,
		0.213620, -0.689145, 0.692421,
		29.032942, 42.113758, 35.028797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264156, 42.586655, 35.031521>,  <28.883408, 42.596161, 34.544102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264156, 42.586655, 35.031521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.584112, 42.439266, 35.221008>,  <28.776087, 42.350834, 35.334702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.584112, 42.439266, 35.221008>,  <28.264156, 42.586655, 35.031521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584112, 42.439266, 35.221008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206502, 0.572153, 0.793724,
		-0.563500, -0.732715, 0.381570,
		0.799890, -0.368469, 0.473715,
		28.824080, 42.328724, 35.363121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001966, 42.348656, 35.562904>,  <28.264156, 42.586655, 35.031521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001966, 42.348656, 35.562904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.389175, 42.381306, 35.657787>,  <28.621502, 42.400898, 35.714718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.389175, 42.381306, 35.657787>,  <28.001966, 42.348656, 35.562904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389175, 42.381306, 35.657787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237386, 0.603783, 0.760983,
		-0.081105, -0.792959, 0.603853,
		0.968024, 0.081627, 0.237208,
		28.679583, 42.405792, 35.728951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069139, 42.236580, 36.239723>,  <28.001966, 42.348656, 35.562904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069139, 42.236580, 36.239723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.389063, 42.453537, 36.136871>,  <28.581017, 42.583710, 36.075161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.389063, 42.453537, 36.136871>,  <28.069139, 42.236580, 36.239723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389063, 42.453537, 36.136871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372021, 0.784091, 0.496792,
		0.471068, -0.301682, 0.828905,
		0.799810, 0.542393, -0.257128,
		28.629005, 42.616257, 36.059734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314953, 42.575893, 36.927212>,  <28.069139, 42.236580, 36.239723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314953, 42.575893, 36.927212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.474836, 42.811310, 36.646111>,  <28.570766, 42.952560, 36.477451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.474836, 42.811310, 36.646111>,  <28.314953, 42.575893, 36.927212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474836, 42.811310, 36.646111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335375, 0.807396, 0.485423,
		0.853086, 0.041656, 0.520104,
		0.399709, 0.588538, -0.702749,
		28.594749, 42.987869, 36.435287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671133, 42.438656, 37.623421>,  <28.314953, 42.575893, 36.927212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671133, 42.438656, 37.623421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.380365, 42.269379, 37.839752>,  <28.205904, 42.167812, 37.969551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.380365, 42.269379, 37.839752>,  <28.671133, 42.438656, 37.623421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380365, 42.269379, 37.839752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316240, -0.905362, -0.283393,
		0.609573, -0.034973, 0.791958,
		-0.726920, -0.423198, 0.540824,
		28.162289, 42.142418, 38.001999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938297, 41.874260, 37.986031>,  <28.671133, 42.438656, 37.623421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938297, 41.874260, 37.986031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.552113, 41.771255, 37.970158>,  <28.320402, 41.709454, 37.960636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.552113, 41.771255, 37.970158>,  <28.938297, 41.874260, 37.986031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552113, 41.771255, 37.970158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254757, -0.901030, -0.351060,
		0.054650, -0.349043, 0.935512,
		-0.965460, -0.257514, -0.039680,
		28.262474, 41.694000, 37.958252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932873, 41.272602, 38.180973>,  <28.938297, 41.874260, 37.986031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932873, 41.272602, 38.180973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.562845, 41.259094, 38.029655>,  <28.340828, 41.250988, 37.938866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.562845, 41.259094, 38.029655>,  <28.932873, 41.272602, 38.180973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562845, 41.259094, 38.029655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110949, -0.976622, -0.184120,
		-0.363230, -0.212295, 0.907190,
		-0.925070, -0.033774, -0.378292,
		28.285324, 41.248962, 37.916168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624388, 40.611385, 38.411327>,  <28.932873, 41.272602, 38.180973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624388, 40.611385, 38.411327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.408115, 40.721382, 38.093323>,  <28.278353, 40.787380, 37.902519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.408115, 40.721382, 38.093323>,  <28.624388, 40.611385, 38.411327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408115, 40.721382, 38.093323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082337, -0.923224, -0.375338,
		-0.837189, -0.268397, 0.476526,
		-0.540680, 0.274993, -0.795012,
		28.245911, 40.803879, 37.854820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258207, 40.020199, 38.314392>,  <28.624388, 40.611385, 38.411327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258207, 40.020199, 38.314392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.230274, 40.232620, 37.976612>,  <28.213514, 40.360073, 37.773945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.230274, 40.232620, 37.976612>,  <28.258207, 40.020199, 38.314392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230274, 40.232620, 37.976612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001071, -0.846480, -0.532420,
		-0.997558, -0.038086, 0.058544,
		-0.069834, 0.531057, -0.844453,
		28.209324, 40.391937, 37.723274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791876, 39.758919, 37.909252>,  <28.258207, 40.020199, 38.314392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791876, 39.758919, 37.909252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.002962, 39.982723, 37.653606>,  <28.129614, 40.117004, 37.500221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.002962, 39.982723, 37.653606>,  <27.791876, 39.758919, 37.909252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002962, 39.982723, 37.653606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130118, -0.796775, -0.590101,
		-0.839397, 0.228245, -0.493272,
		0.527714, 0.559512, -0.639112,
		28.161276, 40.150578, 37.461872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442585, 39.638130, 37.288364>,  <27.791876, 39.758919, 37.909252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442585, 39.638130, 37.288364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.808640, 39.782146, 37.215813>,  <28.028273, 39.868557, 37.172283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.808640, 39.782146, 37.215813>,  <27.442585, 39.638130, 37.288364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808640, 39.782146, 37.215813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204366, -0.802122, -0.561101,
		-0.347504, 0.476417, -0.807631,
		0.915137, 0.360037, -0.181377,
		28.083181, 39.890156, 37.161400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.450825, 44.795582, 39.104286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.645329, 45.082550, 38.904743>,  <30.762032, 45.254730, 38.785019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.645329, 45.082550, 38.904743>,  <30.450825, 44.795582, 39.104286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645329, 45.082550, 38.904743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741317, -0.640929, -0.199145,
		-0.462602, -0.272974, -0.843495,
		0.486259, 0.717422, -0.498855,
		30.791206, 45.297775, 38.755085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701857, 44.522285, 38.551178>,  <30.450825, 44.795582, 39.104286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701857, 44.522285, 38.551178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.935341, 44.833378, 38.644485>,  <31.075432, 45.020035, 38.700470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.935341, 44.833378, 38.644485>,  <30.701857, 44.522285, 38.551178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935341, 44.833378, 38.644485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806021, -0.589702, -0.050804,
		0.098047, 0.217675, -0.971084,
		0.583709, 0.777733, 0.233269,
		31.110455, 45.066696, 38.714466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297953, 44.506500, 38.029099>,  <30.701857, 44.522285, 38.551178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297953, 44.506500, 38.029099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.401247, 44.691750, 38.368237>,  <31.463223, 44.802898, 38.571720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.401247, 44.691750, 38.368237>,  <31.297953, 44.506500, 38.029099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401247, 44.691750, 38.368237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706986, -0.688692, 0.160853,
		0.658396, 0.557875, -0.505262,
		0.258234, 0.463119, 0.847842,
		31.478718, 44.830685, 38.622589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983763, 44.650791, 37.933483>,  <31.297953, 44.506500, 38.029099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983763, 44.650791, 37.933483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.926035, 44.636368, 38.329033>,  <31.891397, 44.627716, 38.566364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.926035, 44.636368, 38.329033>,  <31.983763, 44.650791, 37.933483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926035, 44.636368, 38.329033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674711, -0.734593, 0.071686,
		0.723835, 0.677549, 0.130345,
		-0.144321, -0.036057, 0.988874,
		31.882738, 44.625549, 38.625694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645821, 44.602348, 38.241055>,  <31.983763, 44.650791, 37.933483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645821, 44.602348, 38.241055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.379681, 44.460835, 38.504005>,  <32.219997, 44.375923, 38.661774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.379681, 44.460835, 38.504005>,  <32.645821, 44.602348, 38.241055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379681, 44.460835, 38.504005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591445, -0.787125, 0.175004,
		0.455521, 0.505239, 0.732962,
		-0.665352, -0.353789, 0.657373,
		32.180077, 44.354698, 38.701218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052479, 44.345848, 38.787819>,  <32.645821, 44.602348, 38.241055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052479, 44.345848, 38.787819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.701828, 44.157692, 38.828339>,  <32.491436, 44.044800, 38.852650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.701828, 44.157692, 38.828339>,  <33.052479, 44.345848, 38.787819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701828, 44.157692, 38.828339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479428, -0.835971, 0.267021,
		-0.040924, 0.282641, 0.958352,
		-0.876626, -0.470389, 0.101295,
		32.438839, 44.016575, 38.858727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116474, 44.077137, 39.519646>,  <33.052479, 44.345848, 38.787819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116474, 44.077137, 39.519646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.839352, 43.859962, 39.329803>,  <32.673080, 43.729660, 39.215897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.839352, 43.859962, 39.329803>,  <33.116474, 44.077137, 39.519646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839352, 43.859962, 39.329803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363089, -0.831261, 0.420917,
		-0.623050, 0.119289, 0.773033,
		-0.692803, -0.542932, -0.474605,
		32.631512, 43.697083, 39.187424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752365, 43.755787, 40.048782>,  <33.116474, 44.077137, 39.519646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752365, 43.755787, 40.048782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.727436, 43.568668, 39.696129>,  <32.712479, 43.456398, 39.484535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.727436, 43.568668, 39.696129>,  <32.752365, 43.755787, 40.048782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727436, 43.568668, 39.696129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501340, -0.778497, 0.377626,
		-0.863003, -0.418464, 0.283045,
		-0.062327, -0.467793, -0.881638,
		32.708736, 43.428329, 39.431637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887478, 43.164356, 40.244690>,  <32.752365, 43.755787, 40.048782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887478, 43.164356, 40.244690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.923176, 43.107109, 39.850422>,  <32.944595, 43.072762, 39.613861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.923176, 43.107109, 39.850422>,  <32.887478, 43.164356, 40.244690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923176, 43.107109, 39.850422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492329, -0.853931, 0.168566,
		-0.865822, -0.500319, -0.005747,
		0.089244, -0.143118, -0.985674,
		32.949947, 43.064175, 39.554718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854557, 42.403187, 40.115932>,  <32.887478, 43.164356, 40.244690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854557, 42.403187, 40.115932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.019852, 42.555351, 39.784992>,  <33.119030, 42.646652, 39.586426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.019852, 42.555351, 39.784992>,  <32.854557, 42.403187, 40.115932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019852, 42.555351, 39.784992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670457, -0.741922, -0.006257,
		-0.616213, -0.552120, -0.561645,
		0.413242, 0.380414, -0.827355,
		33.143826, 42.669476, 39.536785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856453, 41.866955, 39.787434>,  <32.854557, 42.403187, 40.115932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856453, 41.866955, 39.787434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.119362, 42.063595, 39.558937>,  <33.277107, 42.181580, 39.421841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.119362, 42.063595, 39.558937>,  <32.856453, 41.866955, 39.787434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119362, 42.063595, 39.558937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531286, -0.839831, -0.111441,
		-0.534530, -0.230245, -0.813182,
		0.657276, 0.491601, -0.571241,
		33.316544, 42.211075, 39.387566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907158, 41.469067, 39.166191>,  <32.856453, 41.866955, 39.787434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907158, 41.469067, 39.166191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.237194, 41.688332, 39.220959>,  <33.435215, 41.819893, 39.253819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.237194, 41.688332, 39.220959>,  <32.907158, 41.469067, 39.166191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237194, 41.688332, 39.220959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551924, -0.833804, 0.012257,
		0.120883, 0.065455, -0.990506,
		0.825086, 0.548166, 0.136919,
		33.484718, 41.852783, 39.262035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307858, 41.153187, 38.782936>,  <32.907158, 41.469067, 39.166191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307858, 41.153187, 38.782936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.138233, 40.868992, 39.007572>,  <32.036457, 40.698475, 39.142353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.138233, 40.868992, 39.007572>,  <32.307858, 41.153187, 38.782936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138233, 40.868992, 39.007572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627209, 0.677723, 0.383798,
		-0.653283, -0.189477, -0.733021,
		-0.424064, -0.710486, 0.561587,
		32.011013, 40.655846, 39.176048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657640, 41.240967, 38.689541>,  <32.307858, 41.153187, 38.782936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657640, 41.240967, 38.689541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.610380, 41.012550, 39.014492>,  <31.582024, 40.875500, 39.209461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.610380, 41.012550, 39.014492>,  <31.657640, 41.240967, 38.689541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610380, 41.012550, 39.014492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596593, 0.694815, 0.401633,
		-0.793799, -0.437205, -0.422771,
		-0.118152, -0.571038, 0.812377,
		31.574934, 40.841240, 39.258205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882967, 41.212986, 38.903858>,  <31.657640, 41.240967, 38.689541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882967, 41.212986, 38.903858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.078316, 41.120697, 39.240490>,  <31.195524, 41.065323, 39.442471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.078316, 41.120697, 39.240490>,  <30.882967, 41.212986, 38.903858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078316, 41.120697, 39.240490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615181, 0.592969, 0.519558,
		-0.618907, -0.771462, 0.147650,
		0.488371, -0.230726, 0.841581,
		31.224827, 41.051479, 39.492966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372890, 41.054974, 39.416801>,  <30.882967, 41.212986, 38.903858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372890, 41.054974, 39.416801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.696201, 41.161808, 39.626698>,  <30.890188, 41.225910, 39.752636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.696201, 41.161808, 39.626698>,  <30.372890, 41.054974, 39.416801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696201, 41.161808, 39.626698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575636, 0.545863, 0.608832,
		-0.123824, -0.794164, 0.594955,
		0.808276, 0.267090, 0.524740,
		30.938684, 41.241936, 39.784119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338942, 40.820229, 40.226562>,  <30.372890, 41.054974, 39.416801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338942, 40.820229, 40.226562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.572901, 41.140934, 40.177448>,  <30.713276, 41.333355, 40.147980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.572901, 41.140934, 40.177448>,  <30.338942, 40.820229, 40.226562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572901, 41.140934, 40.177448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557168, 0.507160, 0.657535,
		0.589457, -0.316178, 0.743352,
		0.584897, 0.801760, -0.122785,
		30.748369, 41.381462, 40.140614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217846, 41.236683, 40.829758>,  <30.338942, 40.820229, 40.226562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217846, 41.236683, 40.829758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.388529, 41.495758, 40.577274>,  <30.490938, 41.651203, 40.425785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.388529, 41.495758, 40.577274>,  <30.217846, 41.236683, 40.829758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388529, 41.495758, 40.577274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469101, 0.755213, 0.457818,
		0.773220, 0.100748, 0.626083,
		0.426702, 0.647690, -0.631207,
		30.516541, 41.690063, 40.387913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558374, 41.798710, 41.230156>,  <30.217846, 41.236683, 40.829758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558374, 41.798710, 41.230156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.486626, 41.946987, 40.865650>,  <30.443577, 42.035954, 40.646946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.486626, 41.946987, 40.865650>,  <30.558374, 41.798710, 41.230156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486626, 41.946987, 40.865650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446334, 0.794809, 0.411176,
		0.876706, 0.480482, 0.022890,
		-0.179370, 0.370697, -0.911269,
		30.432816, 42.058197, 40.592270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695461, 42.520191, 41.326832>,  <30.558374, 41.798710, 41.230156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695461, 42.520191, 41.326832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.519197, 42.500088, 40.968327>,  <30.413439, 42.488026, 40.753223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.519197, 42.500088, 40.968327>,  <30.695461, 42.520191, 41.326832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519197, 42.500088, 40.968327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355969, 0.926359, 0.123064,
		0.824079, 0.373272, -0.426099,
		-0.440658, -0.050263, -0.896267,
		30.387001, 42.485008, 40.699448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864990, 43.112503, 41.004707>,  <30.695461, 42.520191, 41.326832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864990, 43.112503, 41.004707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.539473, 42.982800, 40.811794>,  <30.344162, 42.904976, 40.696045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.539473, 42.982800, 40.811794>,  <30.864990, 43.112503, 41.004707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539473, 42.982800, 40.811794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397845, 0.915766, 0.055607,
		0.423628, 0.237127, -0.874248,
		-0.813793, -0.324258, -0.482284,
		30.295334, 42.885521, 40.667110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616110, 43.663765, 40.542645>,  <30.864990, 43.112503, 41.004707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616110, 43.663765, 40.542645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.276724, 43.461510, 40.605183>,  <30.073093, 43.340157, 40.642704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.276724, 43.461510, 40.605183>,  <30.616110, 43.663765, 40.542645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276724, 43.461510, 40.605183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506772, 0.861349, 0.035501,
		-0.152618, -0.049110, -0.987064,
		-0.848463, -0.505635, 0.156345,
		30.022184, 43.309818, 40.652084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182697, 43.901344, 40.101578>,  <30.616110, 43.663765, 40.542645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182697, 43.901344, 40.101578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.950369, 43.728436, 40.377487>,  <29.810972, 43.624691, 40.543034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.950369, 43.728436, 40.377487>,  <30.182697, 43.901344, 40.101578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950369, 43.728436, 40.377487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431674, 0.881959, 0.189224,
		-0.690147, -0.187851, -0.698863,
		-0.580823, -0.432273, 0.689771,
		29.776121, 43.598755, 40.584419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642406, 44.209614, 39.941143>,  <30.182697, 43.901344, 40.101578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642406, 44.209614, 39.941143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.571989, 44.050770, 40.301434>,  <29.529739, 43.955463, 40.517609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.571989, 44.050770, 40.301434>,  <29.642406, 44.209614, 39.941143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571989, 44.050770, 40.301434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499174, 0.824659, 0.266013,
		-0.848431, -0.402790, -0.343403,
		-0.176042, -0.397111, 0.900728,
		29.519176, 43.931637, 40.571651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925360, 44.229843, 40.000618>,  <29.642406, 44.209614, 39.941143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925360, 44.229843, 40.000618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.121067, 44.220013, 40.349331>,  <29.238491, 44.214115, 40.558559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.121067, 44.220013, 40.349331>,  <28.925360, 44.229843, 40.000618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121067, 44.220013, 40.349331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512341, 0.800836, 0.310111,
		-0.705778, -0.598380, 0.379235,
		0.489269, -0.024572, 0.871787,
		29.267847, 44.212643, 40.610867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370649, 44.458118, 40.344852>,  <28.925360, 44.229843, 40.000618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370649, 44.458118, 40.344852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.670341, 44.477966, 40.609032>,  <28.850157, 44.489876, 40.767540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.670341, 44.477966, 40.609032>,  <28.370649, 44.458118, 40.344852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670341, 44.477966, 40.609032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361119, 0.866531, 0.344553,
		-0.555203, -0.496650, 0.667149,
		0.749228, 0.049624, 0.660450,
		28.895109, 44.492855, 40.807167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737095, 43.912518, 40.371979>,  <28.370649, 44.458118, 40.344852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737095, 43.912518, 40.371979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.576672, 44.107838, 40.061954>,  <27.480417, 44.225029, 39.875942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.576672, 44.107838, 40.061954>,  <27.737095, 43.912518, 40.371979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576672, 44.107838, 40.061954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114474, -0.812736, -0.571276,
		-0.908871, -0.317840, 0.270057,
		-0.401059, 0.488302, -0.775057,
		27.456354, 44.254330, 39.829437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121141, 43.601379, 40.079021>,  <27.737095, 43.912518, 40.371979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121141, 43.601379, 40.079021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.272152, 43.811768, 39.774174>,  <27.362759, 43.938000, 39.591263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.272152, 43.811768, 39.774174>,  <27.121141, 43.601379, 40.079021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272152, 43.811768, 39.774174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066437, -0.836292, -0.544244,
		-0.923612, 0.154834, -0.350667,
		0.377527, 0.525967, -0.762123,
		27.385410, 43.969559, 39.545536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764862, 43.332027, 39.521160>,  <27.121141, 43.601379, 40.079021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764862, 43.332027, 39.521160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.080452, 43.512592, 39.354427>,  <27.269806, 43.620930, 39.254387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.080452, 43.512592, 39.354427>,  <26.764862, 43.332027, 39.521160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080452, 43.512592, 39.354427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071142, -0.740958, -0.667773,
		-0.610294, 0.497202, -0.616711,
		0.788975, 0.451411, -0.416830,
		27.317144, 43.648014, 39.229378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653685, 43.251007, 38.847343>,  <26.764862, 43.332027, 39.521160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653685, 43.251007, 38.847343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.042257, 43.344727, 38.862411>,  <27.275402, 43.400959, 38.871452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.042257, 43.344727, 38.862411>,  <26.653685, 43.251007, 38.847343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042257, 43.344727, 38.862411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199980, -0.722778, -0.661513,
		-0.127768, 0.650149, -0.748987,
		0.971434, 0.234303, 0.037669,
		27.333687, 43.415016, 38.873711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882833, 43.198433, 38.264652>,  <26.653685, 43.251007, 38.847343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882833, 43.198433, 38.264652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.240402, 43.172165, 38.442009>,  <27.454943, 43.156406, 38.548424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.240402, 43.172165, 38.442009>,  <26.882833, 43.198433, 38.264652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240402, 43.172165, 38.442009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206983, -0.816947, -0.538289,
		0.397573, 0.572962, -0.716694,
		0.893920, -0.065666, 0.443390,
		27.508579, 43.152466, 38.575027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438164, 43.156284, 37.750607>,  <26.882833, 43.198433, 38.264652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438164, 43.156284, 37.750607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.602772, 42.999397, 38.079681>,  <27.701536, 42.905266, 38.277126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.602772, 42.999397, 38.079681>,  <27.438164, 43.156284, 37.750607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602772, 42.999397, 38.079681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384089, -0.743959, -0.546809,
		0.826514, 0.541009, -0.155509,
		0.411521, -0.392216, 0.822689,
		27.726229, 42.881733, 38.326488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135275, 42.957520, 37.494812>,  <27.438164, 43.156284, 37.750607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135275, 42.957520, 37.494812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.056669, 42.748432, 37.826630>,  <28.009506, 42.622978, 38.025723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.056669, 42.748432, 37.826630>,  <28.135275, 42.957520, 37.494812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056669, 42.748432, 37.826630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403106, -0.814308, -0.417621,
		0.893805, 0.252326, 0.370735,
		-0.196516, -0.522718, 0.829547,
		27.997715, 42.591618, 38.075493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804993, 43.177269, 37.356163>,  <28.135275, 42.957520, 37.494812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804993, 43.177269, 37.356163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.716537, 43.300640, 36.986088>,  <28.663464, 43.374664, 36.764042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.716537, 43.300640, 36.986088>,  <28.804993, 43.177269, 37.356163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716537, 43.300640, 36.986088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120167, 0.932825, 0.339701,
		0.967811, 0.186298, -0.169219,
		-0.221137, 0.308432, -0.925185,
		28.650196, 43.393169, 36.708530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279657, 43.784370, 37.129551>,  <28.804993, 43.177269, 37.356163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279657, 43.784370, 37.129551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.943150, 43.814899, 36.915470>,  <28.741245, 43.833218, 36.787022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.943150, 43.814899, 36.915470>,  <29.279657, 43.784370, 37.129551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943150, 43.814899, 36.915470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038608, 0.978975, 0.200295,
		0.539236, 0.189165, -0.820634,
		-0.841269, 0.076323, -0.535202,
		28.690769, 43.837795, 36.754910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377222, 44.455925, 36.699100>,  <29.279657, 43.784370, 37.129551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377222, 44.455925, 36.699100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.988716, 44.364754, 36.671707>,  <28.755613, 44.310051, 36.655270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.988716, 44.364754, 36.671707>,  <29.377222, 44.455925, 36.699100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988716, 44.364754, 36.671707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235625, 0.961447, 0.141775,
		0.033532, 0.153839, -0.987527,
		-0.971265, -0.227932, -0.068488,
		28.697336, 44.296375, 36.651161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073891, 45.052212, 36.311943>,  <29.377222, 44.455925, 36.699100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073891, 45.052212, 36.311943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.744650, 44.876057, 36.455364>,  <28.547106, 44.770363, 36.541416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.744650, 44.876057, 36.455364>,  <29.073891, 45.052212, 36.311943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744650, 44.876057, 36.455364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394919, 0.897594, 0.195866,
		-0.408093, 0.019618, -0.912730,
		-0.823103, -0.440386, 0.358554,
		28.497719, 44.743942, 36.562931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460201, 45.383896, 36.043785>,  <29.073891, 45.052212, 36.311943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460201, 45.383896, 36.043785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.378937, 45.220089, 36.399544>,  <28.330177, 45.121803, 36.612999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.378937, 45.220089, 36.399544>,  <28.460201, 45.383896, 36.043785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378937, 45.220089, 36.399544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341503, 0.880934, 0.327614,
		-0.917661, -0.237172, -0.318824,
		-0.203162, -0.409518, 0.889393,
		28.317987, 45.097233, 36.666363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768476, 45.523983, 36.178005>,  <28.460201, 45.383896, 36.043785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768476, 45.523983, 36.178005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.911501, 45.436165, 36.541092>,  <27.997316, 45.383472, 36.758945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.911501, 45.436165, 36.541092>,  <27.768476, 45.523983, 36.178005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911501, 45.436165, 36.541092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361834, 0.863486, 0.351379,
		-0.860945, -0.454082, 0.229309,
		0.357561, -0.219547, 0.907717,
		28.018768, 45.370300, 36.813408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301165, 45.836224, 36.596096>,  <27.768476, 45.523983, 36.178005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301165, 45.836224, 36.596096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.607376, 45.755409, 36.840439>,  <27.791103, 45.706921, 36.987045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.607376, 45.755409, 36.840439>,  <27.301165, 45.836224, 36.596096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607376, 45.755409, 36.840439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121351, 0.887040, 0.445459,
		-0.631854, -0.415140, 0.654538,
		0.765529, -0.202036, 0.610857,
		27.837034, 45.694798, 37.023697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060732, 46.121502, 37.105659>,  <27.301165, 45.836224, 36.596096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060732, 46.121502, 37.105659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.448586, 46.080719, 37.194576>,  <27.681297, 46.056252, 37.247925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.448586, 46.080719, 37.194576>,  <27.060732, 46.121502, 37.105659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448586, 46.080719, 37.194576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006661, 0.919631, 0.392728,
		-0.244467, -0.379322, 0.892385,
		0.969635, -0.101953, 0.222293,
		27.739475, 46.050133, 37.261265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237379, 46.076725, 37.891895>,  <27.060732, 46.121502, 37.105659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237379, 46.076725, 37.891895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.525072, 46.232639, 37.661842>,  <27.697689, 46.326187, 37.523811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.525072, 46.232639, 37.661842>,  <27.237379, 46.076725, 37.891895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525072, 46.232639, 37.661842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051795, 0.855577, 0.515078,
		0.692834, -0.340672, 0.635549,
		0.719234, 0.389782, -0.575128,
		27.740843, 46.349575, 37.489304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.875454, 32.981979, 31.776012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966434, 33.312572, 31.570026>,  <35.021023, 33.510929, 31.446436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966434, 33.312572, 31.570026>,  <34.875454, 32.981979, 31.776012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966434, 33.312572, 31.570026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925910, 0.347334, 0.148496,
		0.301594, 0.443035, 0.844252,
		0.227448, 0.826486, -0.514964,
		35.034668, 33.560520, 31.415537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724293, 33.556126, 32.242210>,  <34.875454, 32.981979, 31.776012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724293, 33.556126, 32.242210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790592, 33.766300, 31.908398>,  <34.830372, 33.892406, 31.708111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790592, 33.766300, 31.908398>,  <34.724293, 33.556126, 32.242210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790592, 33.766300, 31.908398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886333, 0.450389, 0.107533,
		0.432365, 0.721846, 0.540369,
		0.165754, 0.525441, -0.834529,
		34.840317, 33.923931, 31.658039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737175, 34.355118, 32.401939>,  <34.724293, 33.556126, 32.242210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737175, 34.355118, 32.401939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662983, 34.338886, 32.009216>,  <34.618465, 34.329147, 31.773582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662983, 34.338886, 32.009216>,  <34.737175, 34.355118, 32.401939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662983, 34.338886, 32.009216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899861, 0.408418, 0.153118,
		0.394775, 0.911892, -0.112274,
		-0.185482, -0.040583, -0.981809,
		34.607338, 34.326710, 31.714674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658669, 35.038105, 32.134827>,  <34.737175, 34.355118, 32.401939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658669, 35.038105, 32.134827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459255, 34.802834, 31.880108>,  <34.339607, 34.661671, 31.727276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459255, 34.802834, 31.880108>,  <34.658669, 35.038105, 32.134827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459255, 34.802834, 31.880108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802437, 0.591034, 0.082301,
		0.327961, 0.552019, -0.766627,
		-0.498534, -0.588179, -0.636797,
		34.309696, 34.626381, 31.689070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301212, 35.459503, 31.600094>,  <34.658669, 35.038105, 32.134827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301212, 35.459503, 31.600094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098820, 35.116016, 31.567619>,  <33.977386, 34.909924, 31.548134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098820, 35.116016, 31.567619>,  <34.301212, 35.459503, 31.600094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098820, 35.116016, 31.567619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837770, 0.511661, -0.190642,
		0.205248, -0.028444, -0.978297,
		-0.505979, -0.858716, -0.081188,
		33.947025, 34.858402, 31.543262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889397, 35.674740, 31.120535>,  <34.301212, 35.459503, 31.600094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889397, 35.674740, 31.120535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723019, 35.351624, 31.287611>,  <33.623192, 35.157753, 31.387857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723019, 35.351624, 31.287611>,  <33.889397, 35.674740, 31.120535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723019, 35.351624, 31.287611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903404, 0.419656, -0.088033,
		-0.104174, -0.413960, -0.904315,
		-0.415943, -0.807791, 0.417691,
		33.598236, 35.109287, 31.412918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198200, 35.673523, 30.834549>,  <33.889397, 35.674740, 31.120535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198200, 35.673523, 30.834549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130611, 35.419945, 31.136425>,  <33.090057, 35.267799, 31.317551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130611, 35.419945, 31.136425>,  <33.198200, 35.673523, 30.834549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130611, 35.419945, 31.136425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744130, 0.584156, 0.324086,
		-0.646311, -0.506827, -0.570445,
		-0.168973, -0.633946, 0.754692,
		33.079918, 35.229759, 31.362833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481274, 35.515255, 30.811859>,  <33.198200, 35.673523, 30.834549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481274, 35.515255, 30.811859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594967, 35.440578, 31.188021>,  <32.663181, 35.395771, 31.413717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594967, 35.440578, 31.188021>,  <32.481274, 35.515255, 30.811859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594967, 35.440578, 31.188021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716541, 0.610330, 0.337737,
		-0.637010, -0.769832, 0.039699,
		0.284230, -0.186695, 0.940403,
		32.680237, 35.384571, 31.470142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918736, 35.529839, 31.245409>,  <32.481274, 35.515255, 30.811859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918736, 35.529839, 31.245409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201996, 35.615925, 31.514393>,  <32.371952, 35.667576, 31.675783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201996, 35.615925, 31.514393>,  <31.918736, 35.529839, 31.245409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201996, 35.615925, 31.514393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651645, 0.565867, 0.505127,
		-0.271811, -0.795912, 0.540965,
		0.708151, 0.215218, 0.672461,
		32.414440, 35.680489, 31.716131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589636, 35.362492, 31.938116>,  <31.918736, 35.529839, 31.245409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589636, 35.362492, 31.938116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901209, 35.609798, 31.980101>,  <32.088154, 35.758183, 32.005291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901209, 35.609798, 31.980101>,  <31.589636, 35.362492, 31.938116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901209, 35.609798, 31.980101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607397, 0.702168, 0.371522,
		0.155997, -0.353143, 0.922472,
		0.778931, 0.618263, 0.104962,
		32.134888, 35.795277, 32.011589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448061, 35.607777, 32.609062>,  <31.589636, 35.362492, 31.938116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448061, 35.607777, 32.609062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717827, 35.862419, 32.459454>,  <31.879686, 36.015205, 32.369690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717827, 35.862419, 32.459454>,  <31.448061, 35.607777, 32.609062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717827, 35.862419, 32.459454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449133, 0.755777, 0.476531,
		0.586041, -0.153394, 0.795630,
		0.674415, 0.636610, -0.374022,
		31.920151, 36.053402, 32.347248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615891, 35.961697, 33.187023>,  <31.448061, 35.607777, 32.609062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615891, 35.961697, 33.187023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734890, 36.184475, 32.876846>,  <31.806290, 36.318142, 32.690742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734890, 36.184475, 32.876846>,  <31.615891, 35.961697, 33.187023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734890, 36.184475, 32.876846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489892, 0.786186, 0.376719,
		0.819452, 0.267808, 0.506732,
		0.297497, 0.556947, -0.775438,
		31.824139, 36.351559, 32.644215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837328, 35.857666, 33.875225>,  <31.615891, 35.961697, 33.187023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837328, 35.857666, 33.875225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610584, 35.713428, 34.171509>,  <31.474539, 35.626888, 34.349277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610584, 35.713428, 34.171509>,  <31.837328, 35.857666, 33.875225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610584, 35.713428, 34.171509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483374, -0.873660, -0.055393,
		0.667099, 0.326638, 0.669542,
		-0.566858, -0.360591, 0.740706,
		31.440527, 35.605251, 34.393723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364979, 35.538692, 34.338013>,  <31.837328, 35.857666, 33.875225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364979, 35.538692, 34.338013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025021, 35.341267, 34.411842>,  <31.821045, 35.222813, 34.456139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025021, 35.341267, 34.411842>,  <32.364979, 35.538692, 34.338013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025021, 35.341267, 34.411842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477642, -0.869509, -0.125744,
		0.222551, -0.018709, 0.974741,
		-0.849900, -0.493562, 0.184574,
		31.770050, 35.193199, 34.467213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610382, 34.953674, 34.770329>,  <32.364979, 35.538692, 34.338013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610382, 34.953674, 34.770329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244026, 34.863304, 34.637600>,  <32.024212, 34.809082, 34.557964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244026, 34.863304, 34.637600>,  <32.610382, 34.953674, 34.770329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244026, 34.863304, 34.637600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300232, -0.934214, -0.192626,
		-0.266472, -0.276047, 0.923467,
		-0.915889, -0.225925, -0.331820,
		31.969259, 34.795528, 34.538055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299072, 34.225143, 35.179420>,  <32.610382, 34.953674, 34.770329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299072, 34.225143, 35.179420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156666, 34.313858, 34.816307>,  <32.071220, 34.367085, 34.598438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156666, 34.313858, 34.816307>,  <32.299072, 34.225143, 35.179420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156666, 34.313858, 34.816307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312507, -0.887241, -0.339326,
		-0.880675, -0.404494, 0.246569,
		-0.356021, 0.221782, -0.907778,
		32.049862, 34.380394, 34.543972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968851, 33.714550, 34.952774>,  <32.299072, 34.225143, 35.179420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968851, 33.714550, 34.952774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019802, 33.888191, 34.596050>,  <32.050373, 33.992374, 34.382015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019802, 33.888191, 34.596050>,  <31.968851, 33.714550, 34.952774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019802, 33.888191, 34.596050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311721, -0.871099, -0.379496,
		-0.941597, -0.229658, -0.246276,
		0.127377, 0.434102, -0.891813,
		32.058014, 34.018421, 34.328506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809803, 33.233841, 34.518238>,  <31.968851, 33.714550, 34.952774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809803, 33.233841, 34.518238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019238, 33.476158, 34.278614>,  <32.144897, 33.621548, 34.134842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019238, 33.476158, 34.278614>,  <31.809803, 33.233841, 34.518238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019238, 33.476158, 34.278614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429017, -0.794959, -0.428933,
		-0.736071, -0.032422, -0.676127,
		0.523587, 0.605796, -0.599056,
		32.176315, 33.657898, 34.098896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759962, 32.863739, 33.912724>,  <31.809803, 33.233841, 34.518238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759962, 32.863739, 33.912724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054592, 33.129204, 33.860546>,  <32.231369, 33.288483, 33.829239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054592, 33.129204, 33.860546>,  <31.759962, 32.863739, 33.912724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054592, 33.129204, 33.860546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515713, -0.675862, -0.526545,
		-0.437606, 0.320570, -0.840081,
		0.736574, 0.663660, -0.130439,
		32.275566, 33.328300, 33.821415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992674, 32.657539, 33.251892>,  <31.759962, 32.863739, 33.912724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992674, 32.657539, 33.251892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286819, 32.886993, 33.396214>,  <32.463306, 33.024666, 33.482807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286819, 32.886993, 33.396214>,  <31.992674, 32.657539, 33.251892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286819, 32.886993, 33.396214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660712, -0.488520, -0.569919,
		-0.150667, 0.657485, -0.738249,
		0.735363, 0.573638, 0.360805,
		32.507427, 33.059086, 33.504456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260990, 32.914841, 32.672810>,  <31.992674, 32.657539, 33.251892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260990, 32.914841, 32.672810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529308, 32.917725, 32.969456>,  <32.690300, 32.919453, 33.147442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529308, 32.917725, 32.969456>,  <32.260990, 32.914841, 32.672810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529308, 32.917725, 32.969456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613012, -0.568213, -0.548953,
		0.417438, 0.822850, -0.385570,
		0.670792, 0.007205, 0.741611,
		32.730545, 32.919888, 33.191940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879154, 33.005577, 32.340549>,  <32.260990, 32.914841, 32.672810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879154, 33.005577, 32.340549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955780, 32.837971, 32.695564>,  <33.001755, 32.737408, 32.908573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955780, 32.837971, 32.695564>,  <32.879154, 33.005577, 32.340549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955780, 32.837971, 32.695564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632580, -0.638698, -0.438073,
		0.750430, 0.645359, 0.142711,
		0.191565, -0.419019, 0.887539,
		33.013248, 32.712265, 32.961826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468353, 32.544495, 32.172943>,  <32.879154, 33.005577, 32.340549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468353, 32.544495, 32.172943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413689, 32.433151, 32.553226>,  <33.380890, 32.366344, 32.781395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413689, 32.433151, 32.553226>,  <33.468353, 32.544495, 32.172943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413689, 32.433151, 32.553226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488010, -0.854093, -0.179920,
		0.862073, 0.439366, 0.252563,
		-0.136661, -0.278358, 0.950705,
		33.372688, 32.349644, 32.838440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058712, 32.477638, 32.554199>,  <33.468353, 32.544495, 32.172943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058712, 32.477638, 32.554199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780075, 32.223999, 32.688477>,  <33.612892, 32.071815, 32.769043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780075, 32.223999, 32.688477>,  <34.058712, 32.477638, 32.554199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780075, 32.223999, 32.688477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631535, -0.763938, -0.132525,
		0.340480, 0.119685, 0.932603,
		-0.696589, -0.634093, 0.335691,
		33.571098, 32.033772, 32.789185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918808, 33.266582, 32.595570>,  <34.058712, 32.477638, 32.554199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918808, 33.266582, 32.595570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695286, 33.131340, 32.898468>,  <33.561172, 33.050194, 33.080208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695286, 33.131340, 32.898468>,  <33.918808, 33.266582, 32.595570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695286, 33.131340, 32.898468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406457, -0.907583, -0.105291,
		0.722865, 0.248951, 0.644585,
		-0.558802, -0.338107, 0.757248,
		33.527645, 33.029907, 33.125641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388329, 32.997288, 33.024105>,  <33.918808, 33.266582, 32.595570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388329, 32.997288, 33.024105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034836, 32.817665, 33.076828>,  <33.822742, 32.709892, 33.108463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034836, 32.817665, 33.076828>,  <34.388329, 32.997288, 33.024105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034836, 32.817665, 33.076828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433332, -0.891523, -0.131949,
		0.176761, -0.059491, 0.982454,
		-0.883730, -0.449052, 0.131807,
		33.769718, 32.682949, 33.116371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574524, 32.410641, 33.362812>,  <34.388329, 32.997288, 33.024105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574524, 32.410641, 33.362812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201595, 32.347359, 33.232735>,  <33.977840, 32.309391, 33.154686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201595, 32.347359, 33.232735>,  <34.574524, 32.410641, 33.362812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201595, 32.347359, 33.232735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232525, -0.950954, -0.204004,
		-0.276973, -0.265813, 0.923379,
		-0.932319, -0.158205, -0.325197,
		33.921898, 32.299896, 33.135174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041267, 32.030651, 33.977768>,  <34.574524, 32.410641, 33.362812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041267, 32.030651, 33.977768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439911, 32.035069, 34.010361>,  <35.679100, 32.037720, 34.029919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439911, 32.035069, 34.010361>,  <35.041267, 32.030651, 33.977768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439911, 32.035069, 34.010361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079437, 0.385318, 0.919358,
		-0.021246, -0.922718, 0.384890,
		0.996614, 0.011042, 0.081484,
		35.738895, 32.038380, 34.034805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180553, 31.773397, 34.675522>,  <35.041267, 32.030651, 33.977768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180553, 31.773397, 34.675522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436852, 32.039463, 34.522160>,  <35.590630, 32.199100, 34.430141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436852, 32.039463, 34.522160>,  <35.180553, 31.773397, 34.675522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436852, 32.039463, 34.522160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272861, 0.664079, 0.696093,
		0.717628, -0.341403, 0.607004,
		0.640747, 0.665163, -0.383406,
		35.629078, 32.239014, 34.407139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436295, 32.211773, 35.243858>,  <35.180553, 31.773397, 34.675522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436295, 32.211773, 35.243858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515793, 32.438305, 34.923916>,  <35.563492, 32.574223, 34.731949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515793, 32.438305, 34.923916>,  <35.436295, 32.211773, 35.243858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515793, 32.438305, 34.923916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275484, 0.815516, 0.508963,
		0.940537, 0.119195, 0.318092,
		0.198743, 0.566327, -0.799859,
		35.575417, 32.608204, 34.683960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873096, 32.703335, 35.481773>,  <35.436295, 32.211773, 35.243858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873096, 32.703335, 35.481773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668411, 32.831039, 35.162720>,  <35.545601, 32.907661, 34.971287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668411, 32.831039, 35.162720>,  <35.873096, 32.703335, 35.481773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668411, 32.831039, 35.162720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224998, 0.846195, 0.483043,
		0.829169, 0.426647, -0.361180,
		-0.511717, 0.319259, -0.797633,
		35.514896, 32.926819, 34.923431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011280, 33.433849, 35.551601>,  <35.873096, 32.703335, 35.481773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011280, 33.433849, 35.551601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703468, 33.420773, 35.296490>,  <35.518784, 33.412926, 35.143421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703468, 33.420773, 35.296490>,  <36.011280, 33.433849, 35.551601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703468, 33.420773, 35.296490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365950, 0.841028, 0.398437,
		0.523365, 0.540003, -0.659155,
		-0.769526, -0.032690, -0.637779,
		35.472610, 33.410965, 35.105156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038303, 33.975895, 35.191151>,  <36.011280, 33.433849, 35.551601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038303, 33.975895, 35.191151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658455, 33.850983, 35.180561>,  <35.430546, 33.776035, 35.174210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658455, 33.850983, 35.180561>,  <36.038303, 33.975895, 35.191151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658455, 33.850983, 35.180561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301143, 0.885834, 0.353003,
		-0.086786, 0.343191, -0.935248,
		-0.949622, -0.312279, -0.026472,
		35.373569, 33.757298, 35.172619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653381, 34.573231, 34.966858>,  <36.038303, 33.975895, 35.191151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653381, 34.573231, 34.966858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371113, 34.335835, 35.121674>,  <35.201752, 34.193398, 35.214561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371113, 34.335835, 35.121674>,  <35.653381, 34.573231, 34.966858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371113, 34.335835, 35.121674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529256, 0.804700, 0.268972,
		-0.471084, -0.015039, -0.881960,
		-0.705669, -0.593491, 0.387040,
		35.159412, 34.157787, 35.237785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890408, 34.821167, 34.782589>,  <35.653381, 34.573231, 34.966858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890408, 34.821167, 34.782589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842545, 34.585369, 35.102135>,  <34.813828, 34.443890, 35.293861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842545, 34.585369, 35.102135>,  <34.890408, 34.821167, 34.782589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842545, 34.585369, 35.102135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672684, 0.639934, 0.371458,
		-0.730190, -0.492935, -0.473115,
		-0.119657, -0.589492, 0.798863,
		34.806648, 34.408520, 35.341793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179577, 34.693264, 34.759296>,  <34.890408, 34.821167, 34.782589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179577, 34.693264, 34.759296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300556, 34.602417, 35.129581>,  <34.373146, 34.547909, 35.351753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300556, 34.602417, 35.129581>,  <34.179577, 34.693264, 34.759296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300556, 34.602417, 35.129581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628553, 0.682584, 0.372827,
		-0.716550, -0.694622, 0.063695,
		0.302451, -0.227113, 0.925712,
		34.391293, 34.534283, 35.407295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604942, 34.792797, 35.138435>,  <34.179577, 34.693264, 34.759296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604942, 34.792797, 35.138435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897797, 34.805870, 35.410583>,  <34.073509, 34.813713, 35.573872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897797, 34.805870, 35.410583>,  <33.604942, 34.792797, 35.138435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897797, 34.805870, 35.410583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523100, 0.666736, 0.530876,
		-0.436278, -0.744577, 0.505239,
		0.732140, 0.032681, 0.680371,
		34.117439, 34.815674, 35.614693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279865, 34.691978, 35.726547>,  <33.604942, 34.792797, 35.138435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279865, 34.691978, 35.726547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630386, 34.866138, 35.809032>,  <33.840698, 34.970634, 35.858524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630386, 34.866138, 35.809032>,  <33.279865, 34.691978, 35.726547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630386, 34.866138, 35.809032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481218, 0.770780, 0.417526,
		0.022844, -0.465112, 0.884957,
		0.876303, 0.435396, 0.206212,
		33.893276, 34.996758, 35.870895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267128, 34.876877, 36.527267>,  <33.279865, 34.691978, 35.726547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267128, 34.876877, 36.527267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532383, 35.106354, 36.334969>,  <33.691536, 35.244041, 36.219589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532383, 35.106354, 36.334969>,  <33.267128, 34.876877, 36.527267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532383, 35.106354, 36.334969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311806, 0.795639, 0.519360,
		0.680457, -0.194508, 0.706502,
		0.663141, 0.573694, -0.480749,
		33.731323, 35.278461, 36.190742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567833, 35.278637, 37.007843>,  <33.267128, 34.876877, 36.527267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567833, 35.278637, 37.007843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665546, 35.487385, 36.680923>,  <33.724174, 35.612633, 36.484772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665546, 35.487385, 36.680923>,  <33.567833, 35.278637, 37.007843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665546, 35.487385, 36.680923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184465, 0.852452, 0.489180,
		0.951996, 0.031264, 0.304509,
		0.244286, 0.521869, -0.817299,
		33.738831, 35.643944, 36.435734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870640, 35.724194, 37.376331>,  <33.567833, 35.278637, 37.007843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870640, 35.724194, 37.376331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804447, 35.876102, 37.012268>,  <33.764732, 35.967247, 36.793831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804447, 35.876102, 37.012268>,  <33.870640, 35.724194, 37.376331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804447, 35.876102, 37.012268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153781, 0.901655, 0.404189,
		0.974150, 0.206850, -0.090803,
		-0.165479, 0.379777, -0.910157,
		33.754803, 35.990036, 36.739220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346607, 36.349964, 37.350052>,  <33.870640, 35.724194, 37.376331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346607, 36.349964, 37.350052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071777, 36.368626, 37.060017>,  <33.906879, 36.379822, 36.885994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071777, 36.368626, 37.060017>,  <34.346607, 36.349964, 37.350052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071777, 36.368626, 37.060017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178025, 0.956710, 0.230247,
		0.704439, 0.287281, -0.649026,
		-0.687075, 0.046652, -0.725087,
		33.865654, 36.382622, 36.842491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426086, 36.939426, 36.828587>,  <34.346607, 36.349964, 37.350052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426086, 36.939426, 36.828587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038353, 36.841152, 36.830894>,  <33.805714, 36.782188, 36.832279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038353, 36.841152, 36.830894>,  <34.426086, 36.939426, 36.828587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038353, 36.841152, 36.830894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241017, 0.954973, 0.173022,
		-0.048021, 0.166325, -0.984901,
		-0.969332, -0.245686, 0.005772,
		33.747555, 36.767445, 36.832626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114017, 37.557144, 36.739864>,  <34.426086, 36.939426, 36.828587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114017, 37.557144, 36.739864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820351, 37.317463, 36.867584>,  <33.644150, 37.173653, 36.944214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820351, 37.317463, 36.867584>,  <34.114017, 37.557144, 36.739864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820351, 37.317463, 36.867584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329266, 0.725479, 0.604371,
		-0.593784, 0.338577, -0.729922,
		-0.734169, -0.599204, 0.319296,
		33.600101, 37.137703, 36.963371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553310, 38.021328, 36.640526>,  <34.114017, 37.557144, 36.739864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553310, 38.021328, 36.640526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426926, 37.751705, 36.907604>,  <33.351097, 37.589931, 37.067852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426926, 37.751705, 36.907604>,  <33.553310, 38.021328, 36.640526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426926, 37.751705, 36.907604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332659, 0.737777, 0.587386,
		-0.888543, -0.036526, -0.457337,
		-0.315958, -0.674056, 0.667697,
		33.332138, 37.549488, 37.107914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828880, 38.203117, 36.771008>,  <33.553310, 38.021328, 36.640526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828880, 38.203117, 36.771008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927906, 37.955624, 37.069237>,  <32.987320, 37.807129, 37.248177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927906, 37.955624, 37.069237>,  <32.828880, 38.203117, 36.771008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927906, 37.955624, 37.069237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543306, 0.548500, 0.635583,
		-0.802204, -0.562422, -0.200374,
		0.247561, -0.618732, 0.745576,
		33.002174, 37.770004, 37.292912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186096, 37.990635, 37.121555>,  <32.828880, 38.203117, 36.771008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186096, 37.990635, 37.121555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489559, 37.941658, 37.377510>,  <32.671635, 37.912273, 37.531082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489559, 37.941658, 37.377510>,  <32.186096, 37.990635, 37.121555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489559, 37.941658, 37.377510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502615, 0.514920, 0.694432,
		-0.414516, -0.848449, 0.329106,
		0.758653, -0.122439, 0.639886,
		32.717155, 37.904926, 37.569477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847658, 37.913006, 37.763165>,  <32.186096, 37.990635, 37.121555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847658, 37.913006, 37.763165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218170, 38.013817, 37.875225>,  <32.440479, 38.074303, 37.942463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218170, 38.013817, 37.875225>,  <31.847658, 37.913006, 37.763165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218170, 38.013817, 37.875225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376423, 0.584233, 0.719012,
		0.017535, -0.771463, 0.636032,
		0.926282, 0.252025, 0.280152,
		32.496056, 38.089424, 37.959270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910587, 37.861088, 38.473152>,  <31.847658, 37.913006, 37.763165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910587, 37.861088, 38.473152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209984, 38.116516, 38.401615>,  <32.389622, 38.269775, 38.358692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209984, 38.116516, 38.401615>,  <31.910587, 37.861088, 38.473152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209984, 38.116516, 38.401615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259795, 0.530496, 0.806895,
		0.610141, -0.557488, 0.562969,
		0.748488, 0.638577, -0.178845,
		32.434532, 38.308090, 38.347961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052853, 38.257683, 39.164543>,  <31.910587, 37.861088, 38.473152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052853, 38.257683, 39.164543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242615, 38.466347, 38.880905>,  <32.356472, 38.591545, 38.710724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242615, 38.466347, 38.880905>,  <32.052853, 38.257683, 39.164543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242615, 38.466347, 38.880905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082440, 0.828295, 0.554194,
		0.876441, -0.204451, 0.435948,
		0.474400, 0.521658, -0.709097,
		32.384937, 38.622845, 38.668175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491909, 38.642403, 39.546272>,  <32.052853, 38.257683, 39.164543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491909, 38.642403, 39.546272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458092, 38.853210, 39.208015>,  <32.437801, 38.979694, 39.005062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458092, 38.853210, 39.208015>,  <32.491909, 38.642403, 39.546272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458092, 38.853210, 39.208015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213560, 0.819372, 0.531998,
		0.973265, 0.225574, 0.043274,
		-0.084547, 0.527016, -0.845639,
		32.432728, 39.011314, 38.954323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917740, 39.232994, 39.540981>,  <32.491909, 38.642403, 39.546272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917740, 39.232994, 39.540981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666550, 39.358047, 39.255909>,  <32.515835, 39.433079, 39.084866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666550, 39.358047, 39.255909>,  <32.917740, 39.232994, 39.540981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666550, 39.358047, 39.255909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203405, 0.817994, 0.538064,
		0.751184, 0.482852, -0.450085,
		-0.627972, 0.312635, -0.712678,
		32.478157, 39.451839, 39.042107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002354, 39.966278, 39.520519>,  <32.917740, 39.232994, 39.540981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002354, 39.966278, 39.520519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656288, 39.887405, 39.336082>,  <32.448650, 39.840080, 39.225418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656288, 39.887405, 39.336082>,  <33.002354, 39.966278, 39.520519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656288, 39.887405, 39.336082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347572, 0.898569, 0.267896,
		0.361502, 0.392038, -0.845945,
		-0.865165, -0.197182, -0.461096,
		32.396740, 39.828251, 39.197754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870312, 40.538658, 39.042084>,  <33.002354, 39.966278, 39.520519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870312, 40.538658, 39.042084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517998, 40.368977, 39.126251>,  <32.306610, 40.267166, 39.176750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517998, 40.368977, 39.126251>,  <32.870312, 40.538658, 39.042084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517998, 40.368977, 39.126251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357804, 0.887281, 0.291046,
		-0.310162, 0.181060, -0.933283,
		-0.880781, -0.424204, 0.210416,
		32.253765, 40.241714, 39.189377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322723, 41.092365, 38.715675>,  <32.870312, 40.538658, 39.042084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322723, 41.092365, 38.715675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565193, 41.313366, 38.944511>,  <33.710674, 41.445969, 39.081814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565193, 41.313366, 38.944511>,  <33.322723, 41.092365, 38.715675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565193, 41.313366, 38.944511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644433, -0.762764, 0.053822,
		0.466107, 0.336048, -0.818423,
		0.606177, 0.552505, 0.572090,
		33.747047, 41.479118, 39.116138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996002, 41.350319, 38.372185>,  <33.322723, 41.092365, 38.715675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996002, 41.350319, 38.372185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104252, 41.327019, 38.756554>,  <34.169201, 41.313038, 38.987175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104252, 41.327019, 38.756554>,  <33.996002, 41.350319, 38.372185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104252, 41.327019, 38.756554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559492, -0.802767, -0.206235,
		0.783410, 0.593440, -0.184656,
		0.270624, -0.058253, 0.960921,
		34.185440, 41.309544, 39.044830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708061, 41.193424, 38.336868>,  <33.996002, 41.350319, 38.372185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708061, 41.193424, 38.336868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650856, 41.103931, 38.722507>,  <34.616531, 41.050236, 38.953892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650856, 41.103931, 38.722507>,  <34.708061, 41.193424, 38.336868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650856, 41.103931, 38.722507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563743, -0.819062, -0.106443,
		0.813474, 0.528283, 0.243265,
		-0.143017, -0.223728, 0.964102,
		34.607952, 41.036812, 39.011738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305523, 40.953220, 38.581875>,  <34.708061, 41.193424, 38.336868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305523, 40.953220, 38.581875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045799, 40.805347, 38.847725>,  <34.889965, 40.716621, 39.007236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045799, 40.805347, 38.847725>,  <35.305523, 40.953220, 38.581875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045799, 40.805347, 38.847725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496546, -0.868007, 0.002290,
		0.576054, 0.331505, 0.747172,
		-0.649310, -0.369686, 0.664627,
		34.851006, 40.694443, 39.047112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742310, 40.688667, 39.173103>,  <35.305523, 40.953220, 38.581875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742310, 40.688667, 39.173103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393394, 40.493084, 39.175510>,  <35.184044, 40.375736, 39.176956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393394, 40.493084, 39.175510>,  <35.742310, 40.688667, 39.173103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393394, 40.493084, 39.175510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488933, -0.872309, -0.004669,
		0.007534, -0.001130, 0.999971,
		-0.872289, -0.488954, 0.006019,
		35.131706, 40.346397, 39.177315>
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
