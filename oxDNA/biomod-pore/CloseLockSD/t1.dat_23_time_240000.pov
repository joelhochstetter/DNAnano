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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.616275, 14.875929, 15.096244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.392109, 15.089048, 14.842610>,  <4.257610, 15.216920, 14.690431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.392109, 15.089048, 14.842610>,  <4.616275, 14.875929, 15.096244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.392109, 15.089048, 14.842610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799879, 0.149641, -0.581207,
		-0.214782, -0.832906, -0.510035,
		-0.560413, 0.532799, -0.634084,
		4.223985, 15.248888, 14.652385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.553092, 14.588516, 14.419208>,  <4.616275, 14.875929, 15.096244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.553092, 14.588516, 14.419208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.580994, 14.986986, 14.440269>,  <4.597735, 15.226068, 14.452905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.580994, 14.986986, 14.440269>,  <4.553092, 14.588516, 14.419208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.580994, 14.986986, 14.440269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883676, -0.037214, -0.466618,
		-0.462873, 0.079076, -0.882890,
		0.069754, 0.996174, 0.052652,
		4.601920, 15.285838, 14.456064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.132325, 15.051185, 14.249551>,  <4.553092, 14.588516, 14.419208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.132325, 15.051185, 14.249551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.288431, 14.837368, 13.949696>,  <5.382095, 14.709078, 13.769782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.288431, 14.837368, 13.949696>,  <5.132325, 15.051185, 14.249551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.288431, 14.837368, 13.949696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630207, -0.438485, 0.640757,
		-0.671216, -0.722493, 0.165746,
		0.390265, -0.534541, -0.749639,
		5.405511, 14.677006, 13.724804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.422202, 14.399147, 14.453139>,  <5.132325, 15.051185, 14.249551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.422202, 14.399147, 14.453139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.592204, 14.448660, 14.094464>,  <5.694204, 14.478368, 13.879259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.592204, 14.448660, 14.094464>,  <5.422202, 14.399147, 14.453139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.592204, 14.448660, 14.094464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870418, -0.327815, 0.367300,
		-0.248482, -0.936597, -0.247067,
		0.425004, 0.123784, -0.896687,
		5.719705, 14.485795, 13.825458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.708825, 13.789042, 14.261997>,  <5.422202, 14.399147, 14.453139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.708825, 13.789042, 14.261997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.909547, 14.090716, 14.092576>,  <6.029980, 14.271721, 13.990923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.909547, 14.090716, 14.092576>,  <5.708825, 13.789042, 14.261997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.909547, 14.090716, 14.092576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862431, -0.398663, 0.311899,
		0.066375, -0.521797, -0.850483,
		0.501804, 0.754185, -0.423553,
		6.060088, 14.316972, 13.965510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.302119, 13.516330, 14.184196>,  <5.708825, 13.789042, 14.261997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.302119, 13.516330, 14.184196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.425166, 13.884851, 14.089054>,  <6.498994, 14.105963, 14.031969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.425166, 13.884851, 14.089054>,  <6.302119, 13.516330, 14.184196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.425166, 13.884851, 14.089054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947332, -0.273145, 0.167196,
		0.089070, -0.276758, -0.956803,
		0.307618, 0.921302, -0.237853,
		6.517452, 14.161242, 14.017698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.953182, 13.474931, 13.804132>,  <6.302119, 13.516330, 14.184196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.953182, 13.474931, 13.804132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.949039, 13.857524, 13.920772>,  <6.946554, 14.087080, 13.990756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.949039, 13.857524, 13.920772>,  <6.953182, 13.474931, 13.804132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.949039, 13.857524, 13.920772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987428, -0.036218, 0.153866,
		0.157732, 0.289528, -0.944084,
		-0.010356, 0.956484, 0.291601,
		6.945932, 14.144469, 14.008252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.556637, 13.617151, 13.684052>,  <6.953182, 13.474931, 13.804132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.556637, 13.617151, 13.684052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.477964, 13.958538, 13.877095>,  <7.430760, 14.163370, 13.992921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.477964, 13.958538, 13.877095>,  <7.556637, 13.617151, 13.684052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.477964, 13.958538, 13.877095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954538, 0.054227, 0.293115,
		0.223993, 0.518319, -0.825332,
		-0.196682, 0.853466, 0.482609,
		7.418959, 14.214578, 14.021877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.104027, 14.134453, 13.445878>,  <7.556637, 13.617151, 13.684052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.104027, 14.134453, 13.445878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.938152, 14.204980, 13.802966>,  <7.838628, 14.247296, 14.017219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.938152, 14.204980, 13.802966>,  <8.104027, 14.134453, 13.445878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.938152, 14.204980, 13.802966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909959, 0.076718, 0.407541,
		0.003369, 0.981339, -0.192257,
		-0.414685, 0.176319, 0.892719,
		7.813747, 14.257875, 14.070782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.585026, 14.580496, 13.860405>,  <8.104027, 14.134453, 13.445878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.585026, 14.580496, 13.860405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.353861, 14.389542, 14.125168>,  <8.215162, 14.274969, 14.284025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.353861, 14.389542, 14.125168>,  <8.585026, 14.580496, 13.860405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.353861, 14.389542, 14.125168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783131, -0.096200, 0.614371,
		-0.229616, 0.873412, 0.429450,
		-0.577912, -0.477385, 0.661907,
		8.180488, 14.246326, 14.323740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.654726, 14.815579, 14.483027>,  <8.585026, 14.580496, 13.860405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.654726, 14.815579, 14.483027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.531317, 14.448463, 14.583007>,  <8.457272, 14.228194, 14.642995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.531317, 14.448463, 14.583007>,  <8.654726, 14.815579, 14.483027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.531317, 14.448463, 14.583007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793458, -0.103384, 0.599780,
		-0.524631, 0.383372, 0.760124,
		-0.308523, -0.917790, 0.249951,
		8.438760, 14.173126, 14.657992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.007924, 14.730255, 15.004296>,  <8.654726, 14.815579, 14.483027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.007924, 14.730255, 15.004296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.919193, 14.342356, 14.963545>,  <8.865955, 14.109616, 14.939094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.919193, 14.342356, 14.963545>,  <9.007924, 14.730255, 15.004296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.919193, 14.342356, 14.963545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815412, -0.241779, 0.525971,
		-0.534692, 0.033601, 0.844379,
		-0.221826, -0.969749, -0.101879,
		8.852645, 14.051431, 14.932981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.053584, 14.412259, 15.667531>,  <9.007924, 14.730255, 15.004296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.053584, 14.412259, 15.667531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.088061, 14.111263, 15.406356>,  <9.108747, 13.930666, 15.249651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.088061, 14.111263, 15.406356>,  <9.053584, 14.412259, 15.667531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.088061, 14.111263, 15.406356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801600, -0.336798, 0.493968,
		-0.591615, -0.565973, 0.574166,
		0.086194, -0.752490, -0.652938,
		9.113919, 13.885516, 15.210474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.217010, 13.813677, 16.156816>,  <9.053584, 14.412259, 15.667531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.217010, 13.813677, 16.156816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.322533, 13.752620, 15.775848>,  <9.385846, 13.715985, 15.547267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.322533, 13.752620, 15.775848>,  <9.217010, 13.813677, 16.156816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.322533, 13.752620, 15.775848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884707, -0.355120, 0.301965,
		-0.384317, -0.922274, 0.041361,
		0.263806, -0.152643, -0.952421,
		9.401674, 13.706827, 15.490122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.334614, 13.028605, 16.048058>,  <9.217010, 13.813677, 16.156816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.334614, 13.028605, 16.048058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.534143, 13.241055, 15.774101>,  <9.653861, 13.368526, 15.609727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.534143, 13.241055, 15.774101>,  <9.334614, 13.028605, 16.048058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.534143, 13.241055, 15.774101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863374, -0.373707, 0.339011,
		-0.075891, -0.760425, -0.644976,
		0.498825, 0.531128, -0.684892,
		9.683791, 13.400393, 15.568634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.732113, 12.561755, 15.740687>,  <9.334614, 13.028605, 16.048058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.732113, 12.561755, 15.740687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.920961, 12.902957, 15.651706>,  <10.034270, 13.107677, 15.598317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.920961, 12.902957, 15.651706>,  <9.732113, 12.561755, 15.740687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.920961, 12.902957, 15.651706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879823, -0.440247, 0.179146,
		0.054878, -0.280299, -0.958343,
		0.472122, 0.853004, -0.222454,
		10.062598, 13.158858, 15.584970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.309580, 12.365294, 15.403778>,  <9.732113, 12.561755, 15.740687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.309580, 12.365294, 15.403778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.402632, 12.744594, 15.490226>,  <10.458463, 12.972174, 15.542094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.402632, 12.744594, 15.490226>,  <10.309580, 12.365294, 15.403778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.402632, 12.744594, 15.490226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937462, -0.277790, 0.209755,
		0.258936, 0.153807, -0.953570,
		0.232631, 0.948249, 0.216118,
		10.472421, 13.029068, 15.555061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.888727, 12.565584, 14.949109>,  <10.309580, 12.365294, 15.403778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.888727, 12.565584, 14.949109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.887196, 12.791547, 15.279168>,  <10.886276, 12.927124, 15.477203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.887196, 12.791547, 15.279168>,  <10.888727, 12.565584, 14.949109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.887196, 12.791547, 15.279168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972327, -0.190649, 0.135032,
		0.233594, 0.802829, -0.548543,
		-0.003829, 0.564905, 0.825147,
		10.886047, 12.961019, 15.526712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.386593, 13.141592, 14.790283>,  <10.888727, 12.565584, 14.949109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.386593, 13.141592, 14.790283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.364143, 13.104439, 15.187921>,  <11.350674, 13.082147, 15.426503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.364143, 13.104439, 15.187921>,  <11.386593, 13.141592, 14.790283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.364143, 13.104439, 15.187921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998400, -0.012066, 0.055239,
		0.006864, 0.995604, 0.093410,
		-0.056123, -0.092882, 0.994094,
		11.347306, 13.076574, 15.486149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.993946, 13.450962, 15.062469>,  <11.386593, 13.141592, 14.790283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.993946, 13.450962, 15.062469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.881782, 13.273919, 15.403166>,  <11.814483, 13.167693, 15.607584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.881782, 13.273919, 15.403166>,  <11.993946, 13.450962, 15.062469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.881782, 13.273919, 15.403166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959051, -0.092319, 0.267766,
		-0.039883, 0.891951, 0.450370,
		-0.280412, -0.442607, 0.851744,
		11.797658, 13.141137, 15.658689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.414342, 13.776137, 15.643631>,  <11.993946, 13.450962, 15.062469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.414342, 13.776137, 15.643631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.274809, 13.424248, 15.772876>,  <12.191090, 13.213114, 15.850423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.274809, 13.424248, 15.772876>,  <12.414342, 13.776137, 15.643631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.274809, 13.424248, 15.772876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872750, -0.179301, 0.454046,
		-0.341501, 0.440381, 0.830326,
		-0.348832, -0.879725, 0.323111,
		12.170159, 13.160330, 15.869809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.715892, 13.733582, 16.313660>,  <12.414342, 13.776137, 15.643631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.715892, 13.733582, 16.313660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.604831, 13.369703, 16.190136>,  <12.538194, 13.151377, 16.116022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.604831, 13.369703, 16.190136>,  <12.715892, 13.733582, 16.313660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.604831, 13.369703, 16.190136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854446, -0.380777, 0.353458,
		-0.439126, -0.165721, 0.883009,
		-0.277654, -0.909695, -0.308809,
		12.521535, 13.096795, 16.097494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.810403, 13.277238, 16.847666>,  <12.715892, 13.733582, 16.313660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.810403, 13.277238, 16.847666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.825850, 13.064918, 16.509020>,  <12.835117, 12.937526, 16.305832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.825850, 13.064918, 16.509020>,  <12.810403, 13.277238, 16.847666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.825850, 13.064918, 16.509020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942081, -0.263137, 0.207948,
		-0.333154, -0.805612, 0.489895,
		0.038616, -0.530800, -0.846617,
		12.837435, 12.905678, 16.255035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.236022, 12.672329, 17.019430>,  <12.810403, 13.277238, 16.847666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.236022, 12.672329, 17.019430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.223000, 12.681272, 16.619741>,  <13.215186, 12.686637, 16.379929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.223000, 12.681272, 16.619741>,  <13.236022, 12.672329, 17.019430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.223000, 12.681272, 16.619741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941702, -0.334275, -0.038161,
		-0.334868, -0.942210, -0.010165,
		-0.032558, 0.022351, -0.999220,
		13.213233, 12.687979, 16.319975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.449435, 11.932952, 16.636225>,  <13.236022, 12.672329, 17.019430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.449435, 11.932952, 16.636225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.497985, 12.241456, 16.386288>,  <13.527115, 12.426558, 16.236326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.497985, 12.241456, 16.386288>,  <13.449435, 11.932952, 16.636225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.497985, 12.241456, 16.386288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968344, -0.230332, -0.096207,
		-0.218122, -0.593385, -0.774801,
		0.121374, 0.771260, -0.624842,
		13.534397, 12.472834, 16.198835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.776182, 11.639243, 16.102898>,  <13.449435, 11.932952, 16.636225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.776182, 11.639243, 16.102898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.861098, 12.030075, 16.109217>,  <13.912047, 12.264574, 16.113008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.861098, 12.030075, 16.109217>,  <13.776182, 11.639243, 16.102898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.861098, 12.030075, 16.109217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977150, -0.212075, -0.014227,
		-0.010550, 0.018458, -0.999774,
		0.212290, 0.977079, 0.015799,
		13.924786, 12.323199, 16.113956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.456703, 11.591819, 15.715036>,  <13.776182, 11.639243, 16.102898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.456703, 11.591819, 15.715036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.447021, 11.960052, 15.870955>,  <14.441213, 12.180992, 15.964505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.447021, 11.960052, 15.870955>,  <14.456703, 11.591819, 15.715036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.447021, 11.960052, 15.870955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989373, 0.077976, -0.122724,
		-0.143372, 0.382683, -0.912687,
		-0.024203, 0.920583, 0.389796,
		14.439760, 12.236227, 15.987893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.931376, 11.973997, 15.392809>,  <14.456703, 11.591819, 15.715036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.931376, 11.973997, 15.392809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.908182, 12.208596, 15.715958>,  <14.894265, 12.349356, 15.909847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.908182, 12.208596, 15.715958>,  <14.931376, 11.973997, 15.392809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.908182, 12.208596, 15.715958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990463, 0.135112, -0.026996,
		-0.124986, 0.798602, -0.588739,
		-0.057987, 0.586498, 0.807872,
		14.890786, 12.384545, 15.958320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.601051, 12.168692, 15.447412>,  <14.931376, 11.973997, 15.392809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.601051, 12.168692, 15.447412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.429245, 12.349150, 15.760329>,  <15.326161, 12.457424, 15.948080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.429245, 12.349150, 15.760329>,  <15.601051, 12.168692, 15.447412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.429245, 12.349150, 15.760329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898883, 0.296796, 0.322369,
		-0.086747, 0.841654, -0.533005,
		-0.429517, 0.451144, 0.782294,
		15.300390, 12.484493, 15.995017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.954983, 11.401978, 15.314645>,  <15.601051, 12.168692, 15.447412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.954983, 11.401978, 15.314645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.036825, 11.793454, 15.307709>,  <16.085930, 12.028340, 15.303547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.036825, 11.793454, 15.307709>,  <15.954983, 11.401978, 15.314645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.036825, 11.793454, 15.307709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497881, -0.119308, -0.859000,
		-0.842764, 0.167123, -0.511683,
		0.204607, 0.978691, -0.017341,
		16.098207, 12.087061, 15.302506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825332, 11.784329, 14.597887>,  <15.954983, 11.401978, 15.314645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.825332, 11.784329, 14.597887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.128897, 11.964972, 14.785547>,  <16.311035, 12.073359, 14.898144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.128897, 11.964972, 14.785547>,  <15.825332, 11.784329, 14.597887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.128897, 11.964972, 14.785547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549173, -0.056694, -0.833784,
		-0.349945, 0.890414, -0.291036,
		0.758912, 0.451607, 0.469151,
		16.356571, 12.100454, 14.926292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.104277, 12.081520, 14.410310>,  <15.825332, 11.784329, 14.597887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.104277, 12.081520, 14.410310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.153502, 12.478285, 14.422734>,  <15.183038, 12.716344, 14.430189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.153502, 12.478285, 14.422734>,  <15.104277, 12.081520, 14.410310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.153502, 12.478285, 14.422734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393115, 0.077463, -0.916221,
		-0.911217, 0.100543, 0.399468,
		0.123064, 0.991913, 0.031061,
		15.190421, 12.775859, 14.432053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.510669, 12.414585, 14.078727>,  <15.104277, 12.081520, 14.410310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.510669, 12.414585, 14.078727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.782213, 12.708201, 14.086039>,  <14.945140, 12.884371, 14.090425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.782213, 12.708201, 14.086039>,  <14.510669, 12.414585, 14.078727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.782213, 12.708201, 14.086039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341855, 0.337994, -0.876867,
		-0.649833, 0.589021, 0.480386,
		0.678860, 0.734040, 0.018280,
		14.985871, 12.928413, 14.091522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.126037, 13.034767, 14.168771>,  <14.510669, 12.414585, 14.078727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.126037, 13.034767, 14.168771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.461547, 13.035094, 13.950980>,  <14.662853, 13.035291, 13.820306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.461547, 13.035094, 13.950980>,  <14.126037, 13.034767, 14.168771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.461547, 13.035094, 13.950980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510796, 0.347438, -0.786368,
		0.188530, 0.937703, 0.291840,
		0.838776, 0.000817, -0.544477,
		14.713180, 13.035339, 13.787637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.293749, 13.756521, 13.923089>,  <14.126037, 13.034767, 14.168771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.293749, 13.756521, 13.923089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.437918, 13.473251, 13.680244>,  <14.524419, 13.303289, 13.534538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.437918, 13.473251, 13.680244>,  <14.293749, 13.756521, 13.923089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.437918, 13.473251, 13.680244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552004, 0.362725, -0.750814,
		0.751922, 0.605738, -0.260182,
		0.360423, -0.708175, -0.607111,
		14.546044, 13.260798, 13.498111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.502639, 14.043015, 13.345009>,  <14.293749, 13.756521, 13.923089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.502639, 14.043015, 13.345009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.397554, 13.664964, 13.267323>,  <14.334504, 13.438133, 13.220711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.397554, 13.664964, 13.267323>,  <14.502639, 14.043015, 13.345009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.397554, 13.664964, 13.267323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611406, 0.318780, -0.724266,
		0.746435, -0.071527, -0.661603,
		-0.262710, -0.945126, -0.194217,
		14.318741, 13.381426, 13.209058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.439951, 14.039010, 12.630793>,  <14.502639, 14.043015, 13.345009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.439951, 14.039010, 12.630793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.214759, 13.747719, 12.787120>,  <14.079644, 13.572945, 12.880917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.214759, 13.747719, 12.787120>,  <14.439951, 14.039010, 12.630793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.214759, 13.747719, 12.787120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736159, 0.226910, -0.637637,
		0.375665, -0.646681, -0.663837,
		-0.562979, -0.728228, 0.390818,
		14.045865, 13.529251, 12.904366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.097124, 13.776629, 12.109528>,  <14.439951, 14.039010, 12.630793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.097124, 13.776629, 12.109528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.884080, 13.641010, 12.419721>,  <13.756253, 13.559639, 12.605837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.884080, 13.641010, 12.419721>,  <14.097124, 13.776629, 12.109528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.884080, 13.641010, 12.419721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845095, 0.263143, -0.465371,
		-0.046279, -0.903218, -0.426680,
		-0.532610, -0.339048, 0.775483,
		13.724297, 13.539296, 12.652366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.466653, 13.584047, 11.775880>,  <14.097124, 13.776629, 12.109528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.466653, 13.584047, 11.775880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.390736, 13.611435, 12.167653>,  <13.345185, 13.627868, 12.402718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.390736, 13.611435, 12.167653>,  <13.466653, 13.584047, 11.775880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.390736, 13.611435, 12.167653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918089, 0.341183, -0.201757,
		-0.347981, -0.937500, -0.001890,
		-0.189792, 0.068472, 0.979434,
		13.333797, 13.631976, 12.461483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.849601, 13.208721, 11.904040>,  <13.466653, 13.584047, 11.775880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.849601, 13.208721, 11.904040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.867689, 13.490424, 12.187442>,  <12.878542, 13.659446, 12.357483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.867689, 13.490424, 12.187442>,  <12.849601, 13.208721, 11.904040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.867689, 13.490424, 12.187442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841891, 0.408644, -0.352461,
		-0.537749, -0.580545, 0.611387,
		0.045220, 0.704257, 0.708503,
		12.881255, 13.701701, 12.399993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.129481, 13.199107, 12.095403>,  <12.849601, 13.208721, 11.904040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.129481, 13.199107, 12.095403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.263648, 13.518170, 12.295897>,  <12.344149, 13.709608, 12.416193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.263648, 13.518170, 12.295897>,  <12.129481, 13.199107, 12.095403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.263648, 13.518170, 12.295897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906539, 0.418033, -0.058612,
		-0.256285, -0.434730, 0.863324,
		0.335418, 0.797658, 0.501235,
		12.364273, 13.757468, 12.446267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.761331, 13.194410, 12.726282>,  <12.129481, 13.199107, 12.095403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.761331, 13.194410, 12.726282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.896744, 13.556819, 12.624681>,  <11.977992, 13.774264, 12.563720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.896744, 13.556819, 12.624681>,  <11.761331, 13.194410, 12.726282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.896744, 13.556819, 12.624681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934445, 0.355407, 0.022309,
		0.110487, 0.229802, 0.966946,
		0.338533, 0.906023, -0.254005,
		11.998303, 13.828626, 12.548479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.361711, 13.756564, 13.219308>,  <11.761331, 13.194410, 12.726282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.361711, 13.756564, 13.219308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.474755, 13.919236, 12.871804>,  <11.542583, 14.016839, 12.663302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.474755, 13.919236, 12.871804>,  <11.361711, 13.756564, 13.219308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.474755, 13.919236, 12.871804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912997, 0.391838, -0.113577,
		0.294224, 0.825272, 0.482035,
		0.282612, 0.406679, -0.868759,
		11.559539, 14.041240, 12.611176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.048179, 14.351547, 13.363338>,  <11.361711, 13.756564, 13.219308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.048179, 14.351547, 13.363338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.141129, 14.382936, 12.975555>,  <11.196900, 14.401771, 12.742887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.141129, 14.382936, 12.975555>,  <11.048179, 14.351547, 13.363338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.141129, 14.382936, 12.975555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784233, 0.604688, -0.139033,
		0.575308, 0.792587, 0.202058,
		0.232378, 0.078474, -0.969455,
		11.210843, 14.406479, 12.684719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.903676, 14.960451, 13.236647>,  <11.048179, 14.351547, 13.363338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.903676, 14.960451, 13.236647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.907434, 14.798441, 12.870944>,  <10.909689, 14.701235, 12.651523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.907434, 14.798441, 12.870944>,  <10.903676, 14.960451, 13.236647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.907434, 14.798441, 12.870944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783981, 0.564558, -0.258162,
		0.620713, 0.719186, -0.312229,
		0.009395, -0.405026, -0.914257,
		10.910254, 14.676933, 12.596667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.881245, 15.480566, 12.740903>,  <10.903676, 14.960451, 13.236647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.881245, 15.480566, 12.740903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.730692, 15.162006, 12.551553>,  <10.640360, 14.970870, 12.437943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.730692, 15.162006, 12.551553>,  <10.881245, 15.480566, 12.740903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.730692, 15.162006, 12.551553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791044, 0.542225, -0.283269,
		0.482271, 0.267843, -0.834071,
		-0.376382, -0.796399, -0.473375,
		10.617777, 14.923086, 12.409540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.697687, 15.715390, 12.039494>,  <10.881245, 15.480566, 12.740903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.697687, 15.715390, 12.039494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.487183, 15.395953, 12.156316>,  <10.360880, 15.204290, 12.226409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.487183, 15.395953, 12.156316>,  <10.697687, 15.715390, 12.039494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.487183, 15.395953, 12.156316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848283, 0.516838, -0.115302,
		-0.058866, -0.308426, -0.949425,
		-0.526262, -0.798594, 0.292057,
		10.329304, 15.156375, 12.243933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.095687, 15.961449, 11.899385>,  <10.697687, 15.715390, 12.039494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.095687, 15.961449, 11.899385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.000481, 15.620313, 12.085295>,  <9.943357, 15.415631, 12.196840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.000481, 15.620313, 12.085295>,  <10.095687, 15.961449, 11.899385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.000481, 15.620313, 12.085295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961420, 0.274826, 0.011942,
		-0.137917, -0.444000, -0.885349,
		-0.238014, -0.852839, 0.464774,
		9.929076, 15.364461, 12.224727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.590267, 15.673936, 11.526176>,  <10.095687, 15.961449, 11.899385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.590267, 15.673936, 11.526176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.582913, 15.556167, 11.908376>,  <9.578501, 15.485505, 12.137695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.582913, 15.556167, 11.908376>,  <9.590267, 15.673936, 11.526176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.582913, 15.556167, 11.908376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966754, 0.249015, 0.058129,
		-0.255048, -0.922663, -0.289212,
		-0.018385, -0.294422, 0.955498,
		9.577398, 15.467840, 12.195025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.898660, 15.807239, 11.633895>,  <9.590267, 15.673936, 11.526176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.898660, 15.807239, 11.633895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.013520, 15.675798, 11.993798>,  <9.082437, 15.596934, 12.209741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.013520, 15.675798, 11.993798>,  <8.898660, 15.807239, 11.633895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.013520, 15.675798, 11.993798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953008, -0.003336, 0.302926,
		-0.096541, -0.944462, -0.314120,
		0.287150, -0.328603, 0.899758,
		9.099666, 15.577218, 12.263726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.465753, 15.288382, 11.784192>,  <8.898660, 15.807239, 11.633895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.465753, 15.288382, 11.784192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.602084, 15.411662, 12.139461>,  <8.683883, 15.485630, 12.352622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.602084, 15.411662, 12.139461>,  <8.465753, 15.288382, 11.784192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.602084, 15.411662, 12.139461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922291, -0.073532, 0.379437,
		0.182253, -0.948474, 0.259192,
		0.340827, 0.308204, 0.888171,
		8.704332, 15.504123, 12.405912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.098310, 14.883386, 12.329215>,  <8.465753, 15.288382, 11.784192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.098310, 14.883386, 12.329215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.226998, 15.215739, 12.510820>,  <8.304212, 15.415152, 12.619783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.226998, 15.215739, 12.510820>,  <8.098310, 14.883386, 12.329215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.226998, 15.215739, 12.510820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797377, -0.020812, 0.603122,
		0.510574, -0.556055, 0.655833,
		0.321720, 0.830885, 0.454012,
		8.323514, 15.465005, 12.647024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.114691, 14.773095, 13.102767>,  <8.098310, 14.883386, 12.329215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.114691, 14.773095, 13.102767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.095704, 15.168075, 13.042512>,  <8.084311, 15.405063, 13.006359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.095704, 15.168075, 13.042512>,  <8.114691, 14.773095, 13.102767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.095704, 15.168075, 13.042512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779106, 0.057775, 0.624223,
		0.625092, 0.146993, 0.766585,
		-0.047467, 0.987449, -0.150638,
		8.081464, 15.464310, 12.997320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.983746, 15.150521, 13.758445>,  <8.114691, 14.773095, 13.102767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.983746, 15.150521, 13.758445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.886297, 15.422130, 13.481439>,  <7.827827, 15.585094, 13.315235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.886297, 15.422130, 13.481439>,  <7.983746, 15.150521, 13.758445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.886297, 15.422130, 13.481439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764864, 0.304527, 0.567667,
		0.596348, 0.667978, 0.445168,
		-0.243623, 0.679020, -0.692516,
		7.813210, 15.625835, 13.273684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.601992, 15.597430, 14.141865>,  <7.983746, 15.150521, 13.758445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.601992, 15.597430, 14.141865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.517700, 15.735167, 13.775909>,  <7.467124, 15.817808, 13.556336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.517700, 15.735167, 13.775909>,  <7.601992, 15.597430, 14.141865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.517700, 15.735167, 13.775909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797125, 0.481217, 0.364723,
		0.565849, 0.806139, 0.173076,
		-0.210730, 0.344341, -0.914889,
		7.454481, 15.838469, 13.501443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.518546, 16.299990, 14.273350>,  <7.601992, 15.597430, 14.141865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.518546, 16.299990, 14.273350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.343347, 16.216400, 13.923610>,  <7.238228, 16.166246, 13.713766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.343347, 16.216400, 13.923610>,  <7.518546, 16.299990, 14.273350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.343347, 16.216400, 13.923610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846620, 0.422960, 0.323015,
		0.302313, 0.881722, -0.362177,
		-0.437996, -0.208975, -0.874350,
		7.211948, 16.153708, 13.661304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.636279, 16.917936, 14.189630>,  <7.518546, 16.299990, 14.273350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.636279, 16.917936, 14.189630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.697997, 17.270926, 14.367364>,  <7.735028, 17.482719, 14.474005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.697997, 17.270926, 14.367364>,  <7.636279, 16.917936, 14.189630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.697997, 17.270926, 14.367364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057677, -0.440909, 0.895697,
		0.986340, -0.163831, -0.017132,
		0.154297, 0.882473, 0.444336,
		7.744286, 17.535667, 14.500665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.079859, 16.782316, 14.639342>,  <7.636279, 16.917936, 14.189630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.079859, 16.782316, 14.639342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.852859, 17.074373, 14.791571>,  <7.716659, 17.249607, 14.882908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.852859, 17.074373, 14.791571>,  <8.079859, 16.782316, 14.639342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.852859, 17.074373, 14.791571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248598, -0.592581, 0.766190,
		0.784948, 0.340203, 0.517802,
		-0.567500, 0.730144, 0.380571,
		7.682609, 17.293417, 14.905742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.477481, 16.713436, 15.276607>,  <8.079859, 16.782316, 14.639342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.477481, 16.713436, 15.276607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.437847, 16.955614, 15.592485>,  <8.414067, 17.100920, 15.782013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.437847, 16.955614, 15.592485>,  <8.477481, 16.713436, 15.276607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.437847, 16.955614, 15.592485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162561, 0.792789, -0.587417,
		-0.981711, 0.070170, -0.176974,
		-0.099084, 0.605443, 0.789697,
		8.408122, 17.137247, 15.829394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.812106, 16.797144, 14.634469>,  <8.477481, 16.713436, 15.276607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.812106, 16.797144, 14.634469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.692078, 17.150774, 14.491154>,  <8.620060, 17.362951, 14.405165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.692078, 17.150774, 14.491154>,  <8.812106, 16.797144, 14.634469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.692078, 17.150774, 14.491154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167001, 0.418483, 0.892739,
		0.939184, 0.208052, -0.273216,
		-0.300072, 0.884074, -0.358288,
		8.602057, 17.415997, 14.383667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.334337, 17.204340, 14.661701>,  <8.812106, 16.797144, 14.634469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.334337, 17.204340, 14.661701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.005603, 17.431349, 14.681721>,  <8.808362, 17.567554, 14.693732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.005603, 17.431349, 14.681721>,  <9.334337, 17.204340, 14.661701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.005603, 17.431349, 14.681721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254824, 0.287596, 0.923230,
		0.509558, 0.771498, -0.380975,
		-0.821837, 0.567520, 0.050049,
		8.759051, 17.601604, 14.696735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.448133, 18.006714, 14.822503>,  <9.334337, 17.204340, 14.661701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.448133, 18.006714, 14.822503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.098575, 17.876165, 14.966609>,  <8.888840, 17.797836, 15.053073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.098575, 17.876165, 14.966609>,  <9.448133, 18.006714, 14.822503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.098575, 17.876165, 14.966609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241315, 0.352089, 0.904323,
		-0.421992, 0.877220, -0.228929,
		-0.873894, -0.326373, 0.360265,
		8.836407, 17.778254, 15.074688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.968810, 18.475988, 15.272699>,  <9.448133, 18.006714, 14.822503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.968810, 18.475988, 15.272699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.869483, 18.102106, 15.374412>,  <8.809887, 17.877777, 15.435439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.869483, 18.102106, 15.374412>,  <8.968810, 18.475988, 15.272699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.869483, 18.102106, 15.374412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078809, 0.242138, 0.967036,
		-0.965467, 0.260173, 0.013536,
		-0.248319, -0.934708, 0.254281,
		8.794988, 17.821693, 15.450696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.327905, 18.476566, 15.593059>,  <8.968810, 18.475988, 15.272699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.327905, 18.476566, 15.593059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.506818, 18.144341, 15.725785>,  <8.614165, 17.945005, 15.805422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.506818, 18.144341, 15.725785>,  <8.327905, 18.476566, 15.593059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.506818, 18.144341, 15.725785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045398, 0.391602, 0.919014,
		-0.893240, -0.395995, 0.212863,
		0.447283, -0.830563, 0.331817,
		8.641003, 17.895172, 15.825331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.254579, 18.470146, 16.366392>,  <8.327905, 18.476566, 15.593059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.254579, 18.470146, 16.366392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.565889, 18.239145, 16.267784>,  <8.752676, 18.100544, 16.208618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.565889, 18.239145, 16.267784>,  <8.254579, 18.470146, 16.366392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.565889, 18.239145, 16.267784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461697, 0.260217, 0.848011,
		-0.425581, -0.773806, 0.469153,
		0.778278, -0.577504, -0.246521,
		8.799373, 18.065895, 16.193829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.482838, 18.249580, 16.998644>,  <8.254579, 18.470146, 16.366392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.482838, 18.249580, 16.998644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.792313, 18.213675, 16.747774>,  <8.977998, 18.192131, 16.597252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.792313, 18.213675, 16.747774>,  <8.482838, 18.249580, 16.998644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.792313, 18.213675, 16.747774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627590, 0.244234, 0.739243,
		0.086819, -0.965553, 0.245297,
		0.773688, -0.089765, -0.627176,
		9.024419, 18.186745, 16.559622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.920024, 17.627743, 17.176214>,  <8.482838, 18.249580, 16.998644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.920024, 17.627743, 17.176214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.147245, 17.894669, 16.983545>,  <9.283579, 18.054823, 16.867945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.147245, 17.894669, 16.983545>,  <8.920024, 17.627743, 17.176214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.147245, 17.894669, 16.983545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653228, -0.009582, 0.757100,
		0.500607, -0.744716, -0.441351,
		0.568054, 0.667312, -0.481673,
		9.317661, 18.094862, 16.839043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.610885, 17.606001, 17.530819>,  <8.920024, 17.627743, 17.176214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.610885, 17.606001, 17.530819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.648766, 17.943624, 17.319689>,  <9.671494, 18.146198, 17.193010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.648766, 17.943624, 17.319689>,  <9.610885, 17.606001, 17.530819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.648766, 17.943624, 17.319689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681393, 0.331585, 0.652499,
		0.725766, -0.421449, -0.543733,
		0.094701, 0.844057, -0.527825,
		9.677176, 18.196842, 17.161341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.407729, 17.793215, 17.435884>,  <9.610885, 17.606001, 17.530819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.407729, 17.793215, 17.435884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.164696, 18.109350, 17.404369>,  <10.018876, 18.299032, 17.385460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.164696, 18.109350, 17.404369>,  <10.407729, 17.793215, 17.435884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.164696, 18.109350, 17.404369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613367, 0.529917, 0.585636,
		0.504602, 0.307496, -0.806736,
		-0.607584, 0.790338, -0.078790,
		9.982421, 18.346451, 17.380732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.843601, 18.301466, 17.426311>,  <10.407729, 17.793215, 17.435884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.843601, 18.301466, 17.426311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.494607, 18.486336, 17.489765>,  <10.285211, 18.597258, 17.527838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.494607, 18.486336, 17.489765>,  <10.843601, 18.301466, 17.426311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.494607, 18.486336, 17.489765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468535, 0.699116, 0.540103,
		0.138717, 0.545558, -0.826513,
		-0.872486, 0.462172, 0.158634,
		10.232862, 18.624987, 17.537355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.026793, 19.017536, 17.462168>,  <10.843601, 18.301466, 17.426311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.026793, 19.017536, 17.462168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.672564, 18.988966, 17.645760>,  <10.460027, 18.971823, 17.755915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.672564, 18.988966, 17.645760>,  <11.026793, 19.017536, 17.462168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.672564, 18.988966, 17.645760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227319, 0.795058, 0.562325,
		-0.405080, 0.602314, -0.687844,
		-0.885571, -0.071427, 0.458979,
		10.406892, 18.967539, 17.783453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.804679, 19.770908, 17.620266>,  <11.026793, 19.017536, 17.462168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.804679, 19.770908, 17.620266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.579755, 19.549274, 17.865801>,  <10.444800, 19.416294, 18.013123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.579755, 19.549274, 17.865801>,  <10.804679, 19.770908, 17.620266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.579755, 19.549274, 17.865801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014883, 0.748974, 0.662432,
		-0.826792, 0.363356, -0.429403,
		-0.562310, -0.554085, 0.613838,
		10.411062, 19.383049, 18.049952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.307815, 20.240229, 17.883503>,  <10.804679, 19.770908, 17.620266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.307815, 20.240229, 17.883503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.343957, 19.943920, 18.149765>,  <10.365643, 19.766136, 18.309523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.343957, 19.943920, 18.149765>,  <10.307815, 20.240229, 17.883503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.343957, 19.943920, 18.149765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135753, 0.671311, 0.728638,
		-0.986614, 0.024528, 0.161219,
		0.090357, -0.740770, 0.665654,
		10.371064, 19.721689, 18.349461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.898444, 20.472763, 18.504404>,  <10.307815, 20.240229, 17.883503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.898444, 20.472763, 18.504404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.163988, 20.210764, 18.648775>,  <10.323315, 20.053564, 18.735397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.163988, 20.210764, 18.648775>,  <9.898444, 20.472763, 18.504404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.163988, 20.210764, 18.648775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073804, 0.537637, 0.839940,
		-0.744207, -0.530964, 0.405257,
		0.663860, -0.654998, 0.360926,
		10.363146, 20.014265, 18.757053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.636837, 20.314651, 19.202991>,  <9.898444, 20.472763, 18.504404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.636837, 20.314651, 19.202991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.016386, 20.193850, 19.166260>,  <10.244116, 20.121368, 19.144220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.016386, 20.193850, 19.166260>,  <9.636837, 20.314651, 19.202991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.016386, 20.193850, 19.166260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240271, 0.502347, 0.830613,
		-0.204721, -0.810209, 0.549227,
		0.948873, -0.302007, -0.091829,
		10.301048, 20.103247, 19.138712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.833880, 19.947748, 19.793335>,  <9.636837, 20.314651, 19.202991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.833880, 19.947748, 19.793335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.163381, 20.094559, 19.620487>,  <10.361080, 20.182646, 19.516779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.163381, 20.094559, 19.620487>,  <9.833880, 19.947748, 19.793335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.163381, 20.094559, 19.620487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237796, 0.468226, 0.851009,
		0.514671, -0.803776, 0.298425,
		0.823752, 0.367025, -0.432117,
		10.410505, 20.204668, 19.490852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.399237, 19.972601, 20.234217>,  <9.833880, 19.947748, 19.793335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.399237, 19.972601, 20.234217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.506505, 20.247547, 19.964220>,  <10.570866, 20.412514, 19.802221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.506505, 20.247547, 19.964220>,  <10.399237, 19.972601, 20.234217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.506505, 20.247547, 19.964220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459488, 0.524565, 0.716730,
		0.846732, -0.502357, -0.175162,
		0.268170, 0.687363, -0.674994,
		10.586956, 20.453756, 19.761723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.564358, 19.417410, 20.567732>,  <10.399237, 19.972601, 20.234217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.564358, 19.417410, 20.567732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.826537, 19.695890, 20.450638>,  <10.983845, 19.862978, 20.380383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.826537, 19.695890, 20.450638>,  <10.564358, 19.417410, 20.567732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.826537, 19.695890, 20.450638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192465, 0.528783, 0.826647,
		0.730304, -0.485484, 0.480584,
		0.655449, 0.696200, -0.292734,
		11.023171, 19.904751, 20.362818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.805561, 19.628136, 21.191423>,  <10.564358, 19.417410, 20.567732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.805561, 19.628136, 21.191423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.918044, 19.939554, 20.966999>,  <10.985534, 20.126406, 20.832344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.918044, 19.939554, 20.966999>,  <10.805561, 19.628136, 21.191423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.918044, 19.939554, 20.966999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100045, 0.605253, 0.789722,
		0.954418, -0.165945, 0.248091,
		0.281208, 0.778545, -0.561062,
		11.002406, 20.173117, 20.798681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.352329, 19.982748, 21.574650>,  <10.805561, 19.628136, 21.191423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.352329, 19.982748, 21.574650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.240743, 20.275318, 21.325750>,  <11.173791, 20.450861, 21.176411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.240743, 20.275318, 21.325750>,  <11.352329, 19.982748, 21.574650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.240743, 20.275318, 21.325750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226918, 0.579414, 0.782807,
		0.933106, 0.359576, 0.004337,
		-0.278966, 0.731426, -0.622249,
		11.157053, 20.494745, 21.139076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.802210, 20.651817, 21.730387>,  <11.352329, 19.982748, 21.574650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.802210, 20.651817, 21.730387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.455801, 20.739582, 21.550669>,  <11.247956, 20.792240, 21.442839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.455801, 20.739582, 21.550669>,  <11.802210, 20.651817, 21.730387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.455801, 20.739582, 21.550669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141262, 0.754606, 0.640792,
		0.479638, 0.618408, -0.622510,
		-0.866021, 0.219411, -0.449295,
		11.195994, 20.805405, 21.415880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.783329, 21.374668, 21.617317>,  <11.802210, 20.651817, 21.730387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.783329, 21.374668, 21.617317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.405929, 21.242474, 21.626991>,  <11.179488, 21.163157, 21.632795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.405929, 21.242474, 21.626991>,  <11.783329, 21.374668, 21.617317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.405929, 21.242474, 21.626991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239598, 0.730797, 0.639163,
		-0.228909, 0.597256, -0.768691,
		-0.943501, -0.330487, 0.024184,
		11.122878, 21.143328, 21.634247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.475287, 21.916534, 21.852221>,  <11.783329, 21.374668, 21.617317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.475287, 21.916534, 21.852221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.186631, 21.643135, 21.896160>,  <11.013437, 21.479095, 21.922523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.186631, 21.643135, 21.896160>,  <11.475287, 21.916534, 21.852221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.186631, 21.643135, 21.896160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338391, 0.486712, 0.805359,
		-0.603925, 0.544008, -0.582521,
		-0.721641, -0.683496, 0.109850,
		10.970139, 21.438086, 21.929115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.837719, 22.252819, 21.795168>,  <11.475287, 21.916534, 21.852221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.837719, 22.252819, 21.795168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.772345, 21.911226, 21.992754>,  <10.733120, 21.706270, 22.111305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.772345, 21.911226, 21.992754>,  <10.837719, 22.252819, 21.795168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.772345, 21.911226, 21.992754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280317, 0.520257, 0.806694,
		-0.945892, -0.006623, -0.324415,
		-0.163436, -0.853984, 0.493963,
		10.723313, 21.655031, 22.140944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.225906, 22.431276, 22.142847>,  <10.837719, 22.252819, 21.795168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.225906, 22.431276, 22.142847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.371138, 22.112492, 22.335938>,  <10.458277, 21.921221, 22.451792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.371138, 22.112492, 22.335938>,  <10.225906, 22.431276, 22.142847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.371138, 22.112492, 22.335938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196866, 0.440772, 0.875765,
		-0.910724, -0.413004, 0.003141,
		0.363079, -0.796961, 0.482728,
		10.480062, 21.873404, 22.480757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.719230, 22.200510, 22.589642>,  <10.225906, 22.431276, 22.142847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.719230, 22.200510, 22.589642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.052675, 22.044565, 22.746151>,  <10.252743, 21.950998, 22.840057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.052675, 22.044565, 22.746151>,  <9.719230, 22.200510, 22.589642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.052675, 22.044565, 22.746151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253819, 0.358776, 0.898251,
		-0.490576, -0.848107, 0.200126,
		0.833613, -0.389865, 0.391273,
		10.302759, 21.927607, 22.863533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.539482, 21.976963, 23.273520>,  <9.719230, 22.200510, 22.589642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.539482, 21.976963, 23.273520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.935747, 22.029425, 23.288404>,  <10.173507, 22.060902, 23.297335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.935747, 22.029425, 23.288404>,  <9.539482, 21.976963, 23.273520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.935747, 22.029425, 23.288404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097647, 0.492148, 0.865018,
		0.095138, -0.860575, 0.500359,
		0.990663, 0.131154, 0.037211,
		10.232946, 22.068771, 23.299568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.650826, 22.139389, 24.006151>,  <9.539482, 21.976963, 23.273520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.650826, 22.139389, 24.006151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.000821, 22.251680, 23.848373>,  <10.210818, 22.319056, 23.753706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.000821, 22.251680, 23.848373>,  <9.650826, 22.139389, 24.006151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.000821, 22.251680, 23.848373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260024, 0.414757, 0.871988,
		0.408368, -0.865552, 0.289922,
		0.874999, 0.280705, -0.394438,
		10.263317, 22.335899, 23.730040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.297322, 21.922146, 24.522324>,  <9.650826, 22.139389, 24.006151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.297322, 21.922146, 24.522324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.406870, 22.216166, 24.274227>,  <10.472599, 22.392578, 24.125370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.406870, 22.216166, 24.274227>,  <10.297322, 21.922146, 24.522324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.406870, 22.216166, 24.274227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037830, 0.636165, 0.770625,
		0.961023, -0.234514, 0.146419,
		0.273869, 0.735049, -0.620241,
		10.489031, 22.436680, 24.088156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.918242, 22.221077, 24.779003>,  <10.297322, 21.922146, 24.522324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.918242, 22.221077, 24.779003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.759645, 22.498596, 24.538525>,  <10.664487, 22.665108, 24.394238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.759645, 22.498596, 24.538525>,  <10.918242, 22.221077, 24.779003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.759645, 22.498596, 24.538525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387468, 0.720153, 0.575542,
		0.832263, -0.004745, -0.554361,
		-0.396494, 0.693799, -0.601195,
		10.640697, 22.706736, 24.358166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.445066, 22.731707, 24.724058>,  <10.918242, 22.221077, 24.779003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.445066, 22.731707, 24.724058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.114589, 22.925640, 24.609280>,  <10.916302, 23.042000, 24.540413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.114589, 22.925640, 24.609280>,  <11.445066, 22.731707, 24.724058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.114589, 22.925640, 24.609280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334286, 0.831852, 0.443029,
		0.453491, 0.270107, -0.849345,
		-0.826195, 0.484834, -0.286945,
		10.866730, 23.071091, 24.523195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.631041, 23.365149, 24.493061>,  <11.445066, 22.731707, 24.724058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.631041, 23.365149, 24.493061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.251448, 23.375132, 24.618797>,  <11.023692, 23.381123, 24.694239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.251448, 23.375132, 24.618797>,  <11.631041, 23.365149, 24.493061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.251448, 23.375132, 24.618797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155925, 0.903604, 0.398983,
		-0.274082, 0.427641, -0.861395,
		-0.948982, 0.024959, 0.314342,
		10.966753, 23.382620, 24.713100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.383082, 24.007568, 24.380856>,  <11.631041, 23.365149, 24.493061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.383082, 24.007568, 24.380856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.176385, 23.855900, 24.687893>,  <11.052366, 23.764898, 24.872116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.176385, 23.855900, 24.687893>,  <11.383082, 24.007568, 24.380856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.176385, 23.855900, 24.687893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278311, 0.773485, 0.569442,
		-0.809641, 0.507886, -0.294166,
		-0.516744, -0.379174, 0.767595,
		11.021361, 23.742147, 24.918171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.020082, 24.613945, 24.713617>,  <11.383082, 24.007568, 24.380856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.020082, 24.613945, 24.713617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.984337, 24.329741, 24.992813>,  <10.962890, 24.159218, 25.160330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.984337, 24.329741, 24.992813>,  <11.020082, 24.613945, 24.713617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.984337, 24.329741, 24.992813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111655, 0.689230, 0.715888,
		-0.989721, 0.141909, 0.017740,
		-0.089364, -0.710510, 0.697990,
		10.957527, 24.116589, 25.202209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.538283, 24.814009, 25.252337>,  <11.020082, 24.613945, 24.713617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.538283, 24.814009, 25.252337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.761732, 24.532728, 25.428267>,  <10.895802, 24.363960, 25.533825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.761732, 24.532728, 25.428267>,  <10.538283, 24.814009, 25.252337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.761732, 24.532728, 25.428267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101732, 0.584368, 0.805086,
		-0.823160, -0.404994, 0.397979,
		0.558622, -0.703202, 0.439827,
		10.929318, 24.321768, 25.560215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.483103, 24.992302, 25.985567>,  <10.538283, 24.814009, 25.252337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.483103, 24.992302, 25.985567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.796221, 24.743717, 25.972834>,  <10.984092, 24.594566, 25.965193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.796221, 24.743717, 25.972834>,  <10.483103, 24.992302, 25.985567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.796221, 24.743717, 25.972834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393271, 0.454420, 0.799275,
		-0.482254, -0.638189, 0.600122,
		0.782795, -0.621464, -0.031836,
		11.031059, 24.557278, 25.963284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.576648, 24.798244, 26.600462>,  <10.483103, 24.992302, 25.985567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.576648, 24.798244, 26.600462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.932487, 24.717705, 26.436474>,  <11.145989, 24.669380, 26.338081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.932487, 24.717705, 26.436474>,  <10.576648, 24.798244, 26.600462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.932487, 24.717705, 26.436474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454997, 0.312169, 0.833983,
		-0.039943, -0.928444, 0.369318,
		0.889597, -0.201350, -0.409970,
		11.199366, 24.657299, 26.313482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.861163, 24.470133, 27.142210>,  <10.576648, 24.798244, 26.600462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.861163, 24.470133, 27.142210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.178943, 24.551548, 26.913326>,  <11.369611, 24.600397, 26.775995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.178943, 24.551548, 26.913326>,  <10.861163, 24.470133, 27.142210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.178943, 24.551548, 26.913326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485844, 0.352355, 0.799876,
		0.364440, -0.913462, 0.181031,
		0.794443, 0.203554, -0.572212,
		11.417277, 24.612610, 26.741663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.388953, 24.281336, 27.520376>,  <10.861163, 24.470133, 27.142210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.388953, 24.281336, 27.520376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.574517, 24.514811, 27.253815>,  <11.685856, 24.654896, 27.093878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.574517, 24.514811, 27.253815>,  <11.388953, 24.281336, 27.520376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.574517, 24.514811, 27.253815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608900, 0.336296, 0.718433,
		0.643449, -0.739063, -0.199396,
		0.463911, 0.583687, -0.666405,
		11.713691, 24.689917, 27.053894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.133356, 24.086906, 27.533699>,  <11.388953, 24.281336, 27.520376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.133356, 24.086906, 27.533699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.077657, 24.464170, 27.412992>,  <12.044237, 24.690529, 27.340569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.077657, 24.464170, 27.412992>,  <12.133356, 24.086906, 27.533699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.077657, 24.464170, 27.412992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505271, 0.329750, 0.797475,
		0.851652, -0.041426, -0.522468,
		-0.139248, 0.943159, -0.301764,
		12.035883, 24.747118, 27.322464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.724379, 24.373236, 27.651308>,  <12.133356, 24.086906, 27.533699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.724379, 24.373236, 27.651308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.455711, 24.668560, 27.626778>,  <12.294512, 24.845755, 27.612059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.455711, 24.668560, 27.626778>,  <12.724379, 24.373236, 27.651308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.455711, 24.668560, 27.626778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267792, 0.319133, 0.909088,
		0.690761, 0.594182, -0.412065,
		-0.671667, 0.738311, -0.061327,
		12.254211, 24.890053, 27.608379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.147705, 25.078047, 27.633160>,  <12.724379, 24.373236, 27.651308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.147705, 25.078047, 27.633160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.771330, 25.117434, 27.762737>,  <12.545505, 25.141066, 27.840483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.771330, 25.117434, 27.762737>,  <13.147705, 25.078047, 27.633160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.771330, 25.117434, 27.762737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337024, 0.180862, 0.923961,
		0.032392, 0.978567, -0.203366,
		-0.940939, 0.098468, 0.323942,
		12.489048, 25.146975, 27.859921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.221888, 25.301983, 28.278402>,  <13.147705, 25.078047, 27.633160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.221888, 25.301983, 28.278402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.823300, 25.273651, 28.296452>,  <12.584148, 25.256651, 28.307281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.823300, 25.273651, 28.296452>,  <13.221888, 25.301983, 28.278402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.823300, 25.273651, 28.296452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029853, 0.203456, 0.978629,
		-0.078497, 0.976519, -0.200622,
		-0.996467, -0.070831, 0.045123,
		12.524361, 25.252401, 28.309988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.985549, 25.852213, 28.653276>,  <13.221888, 25.301983, 28.278402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.985549, 25.852213, 28.653276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.692026, 25.582462, 28.686125>,  <12.515912, 25.420612, 28.705833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.692026, 25.582462, 28.686125>,  <12.985549, 25.852213, 28.653276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.692026, 25.582462, 28.686125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040600, 0.164194, 0.985592,
		-0.678144, 0.719900, -0.147867,
		-0.733807, -0.674376, 0.082119,
		12.471884, 25.380150, 28.710760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.373761, 26.184715, 28.912853>,  <12.985549, 25.852213, 28.653276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.373761, 26.184715, 28.912853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.342322, 25.793083, 28.987925>,  <12.323459, 25.558104, 29.032967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.342322, 25.793083, 28.987925>,  <12.373761, 26.184715, 28.912853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.342322, 25.793083, 28.987925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012656, 0.189226, 0.981852,
		-0.996826, 0.074796, -0.027264,
		-0.078598, -0.979081, 0.187679,
		12.318743, 25.499359, 29.044228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.535763, 26.853146, 28.804197>,  <12.373761, 26.184715, 28.912853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.535763, 26.853146, 28.804197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.564545, 26.960835, 29.188353>,  <12.581814, 27.025448, 29.418846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.564545, 26.960835, 29.188353>,  <12.535763, 26.853146, 28.804197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.564545, 26.960835, 29.188353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233569, -0.940657, 0.246191,
		0.969674, 0.206602, -0.130567,
		0.071955, 0.269222, 0.960386,
		12.586131, 27.041601, 29.476469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.284748, 26.725056, 29.105436>,  <12.535763, 26.853146, 28.804197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.284748, 26.725056, 29.105436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.013593, 26.713467, 29.399273>,  <12.850900, 26.706512, 29.575575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.013593, 26.713467, 29.399273>,  <13.284748, 26.725056, 29.105436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.013593, 26.713467, 29.399273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222464, -0.960460, 0.167411,
		0.700697, 0.276907, 0.657531,
		-0.677889, -0.028973, 0.734593,
		12.810225, 26.704775, 29.619650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.681144, 26.478294, 29.695168>,  <13.284748, 26.725056, 29.105436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.681144, 26.478294, 29.695168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.295406, 26.380224, 29.735029>,  <13.063964, 26.321383, 29.758945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.295406, 26.380224, 29.735029>,  <13.681144, 26.478294, 29.695168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.295406, 26.380224, 29.735029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254092, -0.963027, 0.089534,
		0.074017, 0.111662, 0.990986,
		-0.964344, -0.245175, 0.099653,
		13.006104, 26.306671, 29.764925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.483958, 26.092535, 30.266665>,  <13.681144, 26.478294, 29.695168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.483958, 26.092535, 30.266665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.260214, 26.026581, 29.941721>,  <13.125967, 25.987007, 29.746756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.260214, 26.026581, 29.941721>,  <13.483958, 26.092535, 30.266665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.260214, 26.026581, 29.941721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328401, -0.943907, -0.034537,
		-0.761096, -0.286098, 0.582135,
		-0.559362, -0.164888, -0.812358,
		13.092405, 25.977114, 29.698013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.968664, 25.552065, 30.418648>,  <13.483958, 26.092535, 30.266665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.968664, 25.552065, 30.418648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.049282, 25.535402, 30.027210>,  <13.097652, 25.525404, 29.792347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.049282, 25.535402, 30.027210>,  <12.968664, 25.552065, 30.418648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.049282, 25.535402, 30.027210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272337, -0.957316, 0.096840,
		-0.940857, -0.286025, -0.181597,
		0.201545, -0.041657, -0.978593,
		13.109746, 25.522905, 29.733633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.574507, 25.099056, 30.042467>,  <12.968664, 25.552065, 30.418648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.574507, 25.099056, 30.042467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.944122, 25.137959, 29.894577>,  <13.165892, 25.161301, 29.805843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.944122, 25.137959, 29.894577>,  <12.574507, 25.099056, 30.042467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.944122, 25.137959, 29.894577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084176, -0.995125, -0.051388,
		-0.372918, 0.016363, -0.927720,
		0.924038, 0.097255, -0.369723,
		13.221334, 25.167135, 29.783661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.646429, 24.796690, 29.312096>,  <12.574507, 25.099056, 30.042467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.646429, 24.796690, 29.312096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.961087, 24.797842, 29.559055>,  <13.149882, 24.798534, 29.707232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.961087, 24.797842, 29.559055>,  <12.646429, 24.796690, 29.312096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.961087, 24.797842, 29.559055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016205, -0.999741, -0.015983,
		0.617191, 0.022578, -0.786489,
		0.786647, 0.002881, 0.617397,
		13.197082, 24.798706, 29.744274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.234565, 24.233154, 29.151680>,  <12.646429, 24.796690, 29.312096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.234565, 24.233154, 29.151680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.169564, 24.315271, 29.537725>,  <13.130564, 24.364542, 29.769354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.169564, 24.315271, 29.537725>,  <13.234565, 24.233154, 29.151680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.169564, 24.315271, 29.537725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059636, -0.974284, 0.217286,
		0.984905, 0.092865, 0.146079,
		-0.162501, 0.205295, 0.965115,
		13.120814, 24.376860, 29.827261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.430032, 23.577957, 29.460640>,  <13.234565, 24.233154, 29.151680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.430032, 23.577957, 29.460640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.214349, 23.762892, 29.742207>,  <13.084939, 23.873852, 29.911146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.214349, 23.762892, 29.742207>,  <13.430032, 23.577957, 29.460640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.214349, 23.762892, 29.742207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431417, -0.869476, 0.240607,
		0.723280, -0.173944, 0.668288,
		-0.539208, 0.462337, 0.703917,
		13.052587, 23.901592, 29.953382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.485576, 23.270899, 30.182575>,  <13.430032, 23.577957, 29.460640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.485576, 23.270899, 30.182575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.147040, 23.425804, 30.036293>,  <12.943919, 23.518747, 29.948524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.147040, 23.425804, 30.036293>,  <13.485576, 23.270899, 30.182575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.147040, 23.425804, 30.036293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385179, -0.919194, -0.081975,
		-0.367899, 0.071482, 0.927114,
		-0.846338, 0.387264, -0.365704,
		12.893139, 23.541983, 29.926582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.867007, 22.964924, 30.551270>,  <13.485576, 23.270899, 30.182575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.867007, 22.964924, 30.551270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.753117, 23.065935, 30.181370>,  <12.684782, 23.126541, 29.959431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.753117, 23.065935, 30.181370>,  <12.867007, 22.964924, 30.551270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.753117, 23.065935, 30.181370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365590, -0.920373, -0.138769,
		-0.886158, 0.298568, 0.354375,
		-0.284726, 0.252527, -0.924750,
		12.667699, 23.141693, 29.903946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.213789, 22.490475, 30.450579>,  <12.867007, 22.964924, 30.551270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.213789, 22.490475, 30.450579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.357737, 22.621258, 30.101044>,  <12.444105, 22.699728, 29.891323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.357737, 22.621258, 30.101044>,  <12.213789, 22.490475, 30.450579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.357737, 22.621258, 30.101044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328652, -0.832134, -0.446700,
		-0.873202, 0.447943, -0.192005,
		0.359870, 0.326956, -0.873838,
		12.465697, 22.719345, 29.838892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.574997, 22.379810, 29.971729>,  <12.213789, 22.490475, 30.450579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.574997, 22.379810, 29.971729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.926222, 22.363380, 29.781017>,  <12.136957, 22.353523, 29.666590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.926222, 22.363380, 29.781017>,  <11.574997, 22.379810, 29.971729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.926222, 22.363380, 29.781017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323704, -0.784767, -0.528542,
		-0.352451, 0.618429, -0.702371,
		0.878063, -0.041074, -0.476780,
		12.189641, 22.351059, 29.637983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.383177, 22.173056, 29.383329>,  <11.574997, 22.379810, 29.971729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.383177, 22.173056, 29.383329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.771006, 22.075605, 29.392937>,  <12.003703, 22.017136, 29.398701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.771006, 22.075605, 29.392937>,  <11.383177, 22.173056, 29.383329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.771006, 22.075605, 29.392937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197950, -0.837931, -0.508614,
		0.144038, 0.488383, -0.860660,
		0.969572, -0.243627, 0.024018,
		12.061877, 22.002518, 29.400143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.522368, 21.995440, 28.752384>,  <11.383177, 22.173056, 29.383329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.522368, 21.995440, 28.752384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.814999, 21.816942, 28.958555>,  <11.990577, 21.709845, 29.082258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.814999, 21.816942, 28.958555>,  <11.522368, 21.995440, 28.752384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.814999, 21.816942, 28.958555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039479, -0.727028, -0.685472,
		0.680617, 0.521823, -0.514258,
		0.731575, -0.446242, 0.515428,
		12.034472, 21.683069, 29.113184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.817606, 21.476095, 28.313446>,  <11.522368, 21.995440, 28.752384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.817606, 21.476095, 28.313446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.049686, 21.379446, 28.624569>,  <12.188935, 21.321457, 28.811243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.049686, 21.379446, 28.624569>,  <11.817606, 21.476095, 28.313446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.049686, 21.379446, 28.624569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188767, -0.889088, -0.417000,
		0.792296, 0.388769, -0.470240,
		0.580202, -0.241622, 0.777808,
		12.223747, 21.306959, 28.857912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.412793, 21.172926, 28.000553>,  <11.817606, 21.476095, 28.313446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.412793, 21.172926, 28.000553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.398378, 21.036104, 28.376148>,  <12.389729, 20.954012, 28.601505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.398378, 21.036104, 28.376148>,  <12.412793, 21.172926, 28.000553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.398378, 21.036104, 28.376148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063864, -0.936890, -0.343742,
		0.997308, -0.072355, 0.011918,
		-0.036038, -0.342055, 0.938989,
		12.387568, 20.933487, 28.657845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.931206, 20.682459, 28.062643>,  <12.412793, 21.172926, 28.000553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.931206, 20.682459, 28.062643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.681349, 20.563185, 28.351339>,  <12.531434, 20.491621, 28.524557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.681349, 20.563185, 28.351339>,  <12.931206, 20.682459, 28.062643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.681349, 20.563185, 28.351339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100571, -0.947249, -0.304311,
		0.774407, -0.117499, 0.621681,
		-0.624643, -0.298184, 0.721740,
		12.493956, 20.473730, 28.567862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.232267, 20.070414, 28.402611>,  <12.931206, 20.682459, 28.062643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.232267, 20.070414, 28.402611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.837958, 20.071566, 28.469835>,  <12.601373, 20.072258, 28.510170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.837958, 20.071566, 28.469835>,  <13.232267, 20.070414, 28.402611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.837958, 20.071566, 28.469835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059326, -0.941465, -0.331848,
		0.157266, -0.337098, 0.928242,
		-0.985773, 0.002881, 0.168059,
		12.542227, 20.072430, 28.520252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.140390, 19.387949, 28.626060>,  <13.232267, 20.070414, 28.402611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.140390, 19.387949, 28.626060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.779718, 19.532396, 28.530924>,  <12.563315, 19.619064, 28.473843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.779718, 19.532396, 28.530924>,  <13.140390, 19.387949, 28.626060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.779718, 19.532396, 28.530924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289396, -0.912670, -0.288589,
		-0.321283, -0.191385, 0.927442,
		-0.901680, 0.361117, -0.237839,
		12.509214, 19.640732, 28.459572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.747959, 18.908007, 28.882505>,  <13.140390, 19.387949, 28.626060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.747959, 18.908007, 28.882505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.536340, 19.108253, 28.608427>,  <12.409369, 19.228401, 28.443979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.536340, 19.108253, 28.608427>,  <12.747959, 18.908007, 28.882505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.536340, 19.108253, 28.608427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301943, -0.865659, -0.399330,
		-0.793055, -0.004376, 0.609134,
		-0.529050, 0.500615, -0.685194,
		12.377625, 19.258438, 28.402868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.297796, 18.382357, 28.608444>,  <12.747959, 18.908007, 28.882505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.297796, 18.382357, 28.608444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.263846, 18.656576, 28.319220>,  <12.243476, 18.821108, 28.145685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.263846, 18.656576, 28.319220>,  <12.297796, 18.382357, 28.608444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.263846, 18.656576, 28.319220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089954, -0.727988, -0.679662,
		-0.992322, 0.007356, 0.123457,
		-0.084876, 0.685550, -0.723061,
		12.238383, 18.862242, 28.102301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.748438, 18.081888, 28.112919>,  <12.297796, 18.382357, 28.608444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.748438, 18.081888, 28.112919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.963224, 18.357391, 27.918074>,  <12.092096, 18.522694, 27.801167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.963224, 18.357391, 27.918074>,  <11.748438, 18.081888, 28.112919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.963224, 18.357391, 27.918074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233428, -0.433564, -0.870364,
		-0.810665, 0.581063, -0.072034,
		0.536968, 0.688759, -0.487111,
		12.124314, 18.564018, 27.771940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.308717, 18.286398, 27.634424>,  <11.748438, 18.081888, 28.112919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.308717, 18.286398, 27.634424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.677836, 18.387651, 27.518242>,  <11.899308, 18.448404, 27.448532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.677836, 18.387651, 27.518242>,  <11.308717, 18.286398, 27.634424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.677836, 18.387651, 27.518242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207010, -0.310058, -0.927906,
		-0.324943, 0.916399, -0.233720,
		0.922799, 0.253134, -0.290455,
		11.954677, 18.463593, 27.431105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.211905, 18.624214, 27.001556>,  <11.308717, 18.286398, 27.634424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.211905, 18.624214, 27.001556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.580844, 18.469921, 27.010353>,  <11.802208, 18.377346, 27.015631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.580844, 18.469921, 27.010353>,  <11.211905, 18.624214, 27.001556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.580844, 18.469921, 27.010353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140104, -0.386971, -0.911386,
		0.360059, 0.837535, -0.410965,
		0.922349, -0.385730, 0.021990,
		11.857549, 18.354202, 27.016951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.467999, 18.845293, 26.423130>,  <11.211905, 18.624214, 27.001556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.467999, 18.845293, 26.423130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.682091, 18.524685, 26.529781>,  <11.810546, 18.332319, 26.593773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.682091, 18.524685, 26.529781>,  <11.467999, 18.845293, 26.423130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.682091, 18.524685, 26.529781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138101, -0.394430, -0.908489,
		0.833340, 0.449431, -0.321802,
		0.535232, -0.801521, 0.266628,
		11.842660, 18.284229, 26.609770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.763866, 18.683619, 25.832661>,  <11.467999, 18.845293, 26.423130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.763866, 18.683619, 25.832661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.807775, 18.346790, 26.043892>,  <11.834121, 18.144693, 26.170631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.807775, 18.346790, 26.043892>,  <11.763866, 18.683619, 25.832661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.807775, 18.346790, 26.043892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138921, -0.539074, -0.830723,
		0.984201, 0.017830, -0.176157,
		0.109773, -0.842070, 0.528080,
		11.840708, 18.094170, 26.202316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.254314, 18.299402, 25.490246>,  <11.763866, 18.683619, 25.832661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.254314, 18.299402, 25.490246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.062354, 18.031322, 25.716707>,  <11.947178, 17.870474, 25.852585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.062354, 18.031322, 25.716707>,  <12.254314, 18.299402, 25.490246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.062354, 18.031322, 25.716707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063685, -0.617004, -0.784379,
		0.875008, -0.412479, 0.253419,
		-0.479901, -0.670199, 0.566153,
		11.918384, 17.830263, 25.886553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.619187, 17.641264, 25.425661>,  <12.254314, 18.299402, 25.490246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.619187, 17.641264, 25.425661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.239306, 17.574530, 25.531664>,  <12.011377, 17.534489, 25.595266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.239306, 17.574530, 25.531664>,  <12.619187, 17.641264, 25.425661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.239306, 17.574530, 25.531664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122375, -0.581239, -0.804478,
		0.288251, -0.796446, 0.531588,
		-0.949703, -0.166838, 0.265008,
		11.954395, 17.524479, 25.611166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.439649, 16.887005, 25.297710>,  <12.619187, 17.641264, 25.425661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.439649, 16.887005, 25.297710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.075259, 17.051594, 25.286257>,  <11.856626, 17.150347, 25.279385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.075259, 17.051594, 25.286257>,  <12.439649, 16.887005, 25.297710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.075259, 17.051594, 25.286257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181782, -0.462828, -0.867609,
		-0.370247, -0.785164, 0.496422,
		-0.910973, 0.411470, -0.028632,
		11.801968, 17.175035, 25.277666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.074918, 16.394779, 25.049776>,  <12.439649, 16.887005, 25.297710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.074918, 16.394779, 25.049776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.802585, 16.684006, 25.003057>,  <11.639185, 16.857542, 24.975027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.802585, 16.684006, 25.003057>,  <12.074918, 16.394779, 25.049776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.802585, 16.684006, 25.003057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198828, -0.335925, -0.920664,
		-0.704937, -0.603595, 0.372475,
		-0.680832, 0.723068, -0.116795,
		11.598335, 16.900927, 24.968019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.402780, 16.117168, 24.869371>,  <12.074918, 16.394779, 25.049776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.402780, 16.117168, 24.869371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.373222, 16.494934, 24.741232>,  <11.355488, 16.721594, 24.664349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.373222, 16.494934, 24.741232>,  <11.402780, 16.117168, 24.869371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.373222, 16.494934, 24.741232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400668, -0.322274, -0.857674,
		-0.913239, 0.064978, 0.402210,
		-0.073892, 0.944414, -0.320348,
		11.351055, 16.778257, 24.645128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.779966, 16.185524, 24.511471>,  <11.402780, 16.117168, 24.869371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.779966, 16.185524, 24.511471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.984080, 16.503870, 24.381111>,  <11.106548, 16.694878, 24.302896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.984080, 16.503870, 24.381111>,  <10.779966, 16.185524, 24.511471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.984080, 16.503870, 24.381111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363383, -0.143927, -0.920455,
		-0.779463, 0.588119, 0.215760,
		0.510284, 0.795865, -0.325898,
		11.137165, 16.742630, 24.283342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.263727, 16.562208, 23.985508>,  <10.779966, 16.185524, 24.511471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.263727, 16.562208, 23.985508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.632435, 16.704210, 23.923136>,  <10.853660, 16.789412, 23.885712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.632435, 16.704210, 23.923136>,  <10.263727, 16.562208, 23.985508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.632435, 16.704210, 23.923136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193776, 0.073436, -0.978293,
		-0.335849, 0.931975, 0.136482,
		0.921768, 0.355006, -0.155931,
		10.908965, 16.810713, 23.876356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.316792, 17.305292, 23.657078>,  <10.263727, 16.562208, 23.985508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.316792, 17.305292, 23.657078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.657563, 17.117649, 23.563993>,  <10.862026, 17.005064, 23.508142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.657563, 17.117649, 23.563993>,  <10.316792, 17.305292, 23.657078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.657563, 17.117649, 23.563993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184195, 0.147552, -0.971751,
		0.490193, 0.870727, 0.039297,
		0.851929, -0.469107, -0.232713,
		10.913142, 16.976917, 23.494179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.645355, 17.674154, 23.213551>,  <10.316792, 17.305292, 23.657078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.645355, 17.674154, 23.213551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.844965, 17.332245, 23.156511>,  <10.964731, 17.127098, 23.122288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.844965, 17.332245, 23.156511>,  <10.645355, 17.674154, 23.213551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.844965, 17.332245, 23.156511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042452, 0.188468, -0.981161,
		0.865548, 0.483570, 0.130337,
		0.499024, -0.854775, -0.142600,
		10.994672, 17.075813, 23.113731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.212593, 17.835501, 22.831512>,  <10.645355, 17.674154, 23.213551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.212593, 17.835501, 22.831512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.124257, 17.448294, 22.783892>,  <11.071256, 17.215969, 22.755320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.124257, 17.448294, 22.783892>,  <11.212593, 17.835501, 22.831512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.124257, 17.448294, 22.783892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046836, 0.132450, -0.990082,
		0.974185, -0.213075, -0.074588,
		-0.220841, -0.968017, -0.119051,
		11.058005, 17.157888, 22.748177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.403587, 17.663456, 22.202839>,  <11.212593, 17.835501, 22.831512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.403587, 17.663456, 22.202839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.189803, 17.332148, 22.270155>,  <11.061532, 17.133364, 22.310545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.189803, 17.332148, 22.270155>,  <11.403587, 17.663456, 22.202839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.189803, 17.332148, 22.270155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106696, -0.131404, -0.985570,
		0.838432, -0.544705, -0.018142,
		-0.534461, -0.828269, 0.168291,
		11.029465, 17.083668, 22.320642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.671427, 17.252756, 21.745321>,  <11.403587, 17.663456, 22.202839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.671427, 17.252756, 21.745321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.311519, 17.104937, 21.838140>,  <11.095573, 17.016245, 21.893831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.311519, 17.104937, 21.838140>,  <11.671427, 17.252756, 21.745321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.311519, 17.104937, 21.838140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162734, -0.209238, -0.964229,
		0.404883, -0.905347, 0.128128,
		-0.899771, -0.369549, 0.232047,
		11.041588, 16.994072, 21.907755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.559974, 16.547291, 21.407841>,  <11.671427, 17.252756, 21.745321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.559974, 16.547291, 21.407841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.182655, 16.658783, 21.479954>,  <10.956264, 16.725677, 21.523222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.182655, 16.658783, 21.479954>,  <11.559974, 16.547291, 21.407841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.182655, 16.658783, 21.479954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224546, -0.135784, -0.964957,
		-0.244482, -0.950722, 0.190672,
		-0.943296, 0.278729, 0.180284,
		10.899667, 16.742401, 21.534039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.191639, 16.102055, 21.009230>,  <11.559974, 16.547291, 21.407841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.191639, 16.102055, 21.009230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.929235, 16.394632, 21.083681>,  <10.771793, 16.570179, 21.128351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.929235, 16.394632, 21.083681>,  <11.191639, 16.102055, 21.009230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.929235, 16.394632, 21.083681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472398, -0.205581, -0.857075,
		-0.588637, -0.650174, 0.480395,
		-0.656008, 0.731444, 0.186128,
		10.732433, 16.614065, 21.139519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.493935, 15.933636, 20.869123>,  <11.191639, 16.102055, 21.009230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.493935, 15.933636, 20.869123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.439965, 16.329971, 20.871517>,  <10.407583, 16.567772, 20.872953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.439965, 16.329971, 20.871517>,  <10.493935, 15.933636, 20.869123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.439965, 16.329971, 20.871517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469714, -0.058642, -0.880869,
		-0.872448, -0.121661, 0.473322,
		-0.134924, 0.990838, 0.005984,
		10.399488, 16.627222, 20.873312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.779023, 16.096935, 20.894691>,  <10.493935, 15.933636, 20.869123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.779023, 16.096935, 20.894691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.968424, 16.408131, 20.729511>,  <10.082065, 16.594849, 20.630404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.968424, 16.408131, 20.729511>,  <9.779023, 16.096935, 20.894691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.968424, 16.408131, 20.729511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403910, -0.224845, -0.886736,
		-0.782721, 0.586667, 0.207773,
		0.473502, 0.777989, -0.412952,
		10.110475, 16.641527, 20.605625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.348424, 16.178894, 20.410980>,  <9.779023, 16.096935, 20.894691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.348424, 16.178894, 20.410980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.654907, 16.402172, 20.283640>,  <9.838797, 16.536139, 20.207235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.654907, 16.402172, 20.283640>,  <9.348424, 16.178894, 20.410980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.654907, 16.402172, 20.283640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251254, -0.195736, -0.947923,
		-0.591437, 0.806293, -0.009727,
		0.766208, 0.558193, -0.318350,
		9.884769, 16.569630, 20.188135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.091063, 16.550739, 19.798159>,  <9.348424, 16.178894, 20.410980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.091063, 16.550739, 19.798159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.484982, 16.605846, 19.755827>,  <9.721333, 16.638910, 19.730429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.484982, 16.605846, 19.755827>,  <9.091063, 16.550739, 19.798159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.484982, 16.605846, 19.755827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086485, -0.139536, -0.986433,
		-0.150667, 0.980586, -0.125499,
		0.984794, 0.137769, -0.105829,
		9.780420, 16.647177, 19.724077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.124549, 17.079567, 19.292286>,  <9.091063, 16.550739, 19.798159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.124549, 17.079567, 19.292286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.470389, 16.878988, 19.279512>,  <9.677894, 16.758642, 19.271849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.470389, 16.878988, 19.279512>,  <9.124549, 17.079567, 19.292286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.470389, 16.878988, 19.279512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063749, -0.046433, -0.996885,
		0.498400, 0.863943, -0.072113,
		0.864600, -0.501445, -0.031933,
		9.729770, 16.728556, 19.269932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.523071, 17.375706, 18.750696>,  <9.124549, 17.079567, 19.292286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.523071, 17.375706, 18.750696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.684530, 17.013620, 18.803854>,  <9.781405, 16.796370, 18.835749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.684530, 17.013620, 18.803854>,  <9.523071, 17.375706, 18.750696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.684530, 17.013620, 18.803854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289785, -0.011280, -0.957025,
		0.867809, 0.424812, 0.257763,
		0.403648, -0.905211, 0.132893,
		9.805625, 16.742058, 18.843721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.188312, 17.415558, 18.505508>,  <9.523071, 17.375706, 18.750696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.188312, 17.415558, 18.505508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.091046, 17.028122, 18.526297>,  <10.032687, 16.795660, 18.538769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.091046, 17.028122, 18.526297>,  <10.188312, 17.415558, 18.505508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.091046, 17.028122, 18.526297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304215, -0.127029, -0.944096,
		0.921046, -0.213759, 0.325549,
		-0.243163, -0.968592, 0.051971,
		10.018098, 16.737545, 18.541887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.781652, 17.089897, 18.195089>,  <10.188312, 17.415558, 18.505508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.781652, 17.089897, 18.195089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.507309, 16.798836, 18.199503>,  <10.342703, 16.624199, 18.202150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.507309, 16.798836, 18.199503>,  <10.781652, 17.089897, 18.195089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.507309, 16.798836, 18.199503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320238, -0.315388, -0.893296,
		0.653488, -0.609141, 0.449334,
		-0.685858, -0.727652, 0.011032,
		10.301552, 16.580540, 18.202812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.089468, 16.500507, 17.995893>,  <10.781652, 17.089897, 18.195089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.089468, 16.500507, 17.995893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.709957, 16.402946, 17.915562>,  <10.482250, 16.344410, 17.867363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.709957, 16.402946, 17.915562>,  <11.089468, 16.500507, 17.995893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.709957, 16.402946, 17.915562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288245, -0.407951, -0.866308,
		0.129368, -0.879822, 0.457359,
		-0.948777, -0.243904, -0.200829,
		10.425323, 16.329775, 17.855312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.510536, 16.877466, 17.549397>,  <11.089468, 16.500507, 17.995893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.510536, 16.877466, 17.549397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.874780, 16.743658, 17.452330>,  <12.093326, 16.663374, 17.394089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.874780, 16.743658, 17.452330>,  <11.510536, 16.877466, 17.549397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.874780, 16.743658, 17.452330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402960, 0.588379, 0.701023,
		-0.091725, -0.736143, 0.670582,
		0.910609, -0.334519, -0.242668,
		12.147963, 16.643303, 17.379530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.009669, 16.458244, 18.117727>,  <11.510536, 16.877466, 17.549397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.009669, 16.458244, 18.117727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.254543, 16.638966, 17.858158>,  <12.401467, 16.747398, 17.702415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.254543, 16.638966, 17.858158>,  <12.009669, 16.458244, 18.117727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.254543, 16.638966, 17.858158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520052, 0.388145, 0.760848,
		0.595631, -0.803254, 0.002654,
		0.612184, 0.451804, -0.648925,
		12.438199, 16.774508, 17.663481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.746157, 16.366693, 18.266233>,  <12.009669, 16.458244, 18.117727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.746157, 16.366693, 18.266233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.694654, 16.711727, 18.070530>,  <12.663752, 16.918747, 17.953108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.694654, 16.711727, 18.070530>,  <12.746157, 16.366693, 18.266233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.694654, 16.711727, 18.070530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590440, 0.463067, 0.661022,
		0.796745, -0.203765, -0.568927,
		-0.128758, 0.862582, -0.489258,
		12.656026, 16.970501, 17.923752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.378973, 16.638525, 18.211061>,  <12.746157, 16.366693, 18.266233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.378973, 16.638525, 18.211061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.166525, 16.973070, 18.156790>,  <13.039056, 17.173798, 18.124228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.166525, 16.973070, 18.156790>,  <13.378973, 16.638525, 18.211061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.166525, 16.973070, 18.156790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556471, 0.465074, 0.688510,
		0.638945, 0.290181, -0.712422,
		-0.531121, 0.836362, -0.135680,
		13.007189, 17.223978, 18.116085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.878440, 17.248713, 18.166651>,  <13.378973, 16.638525, 18.211061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.878440, 17.248713, 18.166651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.521025, 17.397427, 18.267342>,  <13.306576, 17.486654, 18.327757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.521025, 17.397427, 18.267342>,  <13.878440, 17.248713, 18.166651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.521025, 17.397427, 18.267342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422274, 0.505373, 0.752518,
		0.152557, 0.778701, -0.608564,
		-0.893538, 0.371783, 0.251727,
		13.252963, 17.508961, 18.342859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.977735, 17.845078, 18.375628>,  <13.878440, 17.248713, 18.166651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.977735, 17.845078, 18.375628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.606481, 17.808149, 18.519875>,  <13.383728, 17.785992, 18.606422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.606481, 17.808149, 18.519875>,  <13.977735, 17.845078, 18.375628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.606481, 17.808149, 18.519875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281028, 0.461509, 0.841447,
		-0.244111, 0.882318, -0.402398,
		-0.928134, -0.092321, 0.360615,
		13.328040, 17.780453, 18.628059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.827225, 18.517311, 18.589813>,  <13.977735, 17.845078, 18.375628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.827225, 18.517311, 18.589813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.572084, 18.288799, 18.796417>,  <13.419000, 18.151691, 18.920380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.572084, 18.288799, 18.796417>,  <13.827225, 18.517311, 18.589813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.572084, 18.288799, 18.796417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180886, 0.540770, 0.821491,
		-0.748616, 0.617419, -0.241594,
		-0.637851, -0.571280, 0.516512,
		13.380729, 18.117414, 18.951370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.504086, 18.956100, 19.071569>,  <13.827225, 18.517311, 18.589813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.504086, 18.956100, 19.071569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.447642, 18.584673, 19.208887>,  <13.413775, 18.361816, 19.291277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.447642, 18.584673, 19.208887>,  <13.504086, 18.956100, 19.071569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.447642, 18.584673, 19.208887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225444, 0.307511, 0.924452,
		-0.963983, 0.207844, 0.165947,
		-0.141111, -0.928568, 0.343292,
		13.405309, 18.306103, 19.311874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.059391, 19.033318, 19.549015>,  <13.504086, 18.956100, 19.071569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.059391, 19.033318, 19.549015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.265396, 18.698406, 19.622477>,  <13.388999, 18.497459, 19.666553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.265396, 18.698406, 19.622477>,  <13.059391, 19.033318, 19.549015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.265396, 18.698406, 19.622477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107458, 0.275627, 0.955240,
		-0.850421, -0.472225, 0.231923,
		0.515012, -0.837278, 0.183655,
		13.419900, 18.447224, 19.677572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.747057, 18.783564, 20.130207>,  <13.059391, 19.033318, 19.549015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.747057, 18.783564, 20.130207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.095271, 18.587433, 20.113480>,  <13.304199, 18.469755, 20.103443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.095271, 18.587433, 20.113480>,  <12.747057, 18.783564, 20.130207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.095271, 18.587433, 20.113480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139433, 0.164265, 0.976512,
		-0.471940, -0.855919, 0.211365,
		0.870535, -0.490326, -0.041820,
		13.356432, 18.440334, 20.100933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.720504, 18.319330, 20.766159>,  <12.747057, 18.783564, 20.130207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.720504, 18.319330, 20.766159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.103377, 18.366539, 20.660429>,  <13.333101, 18.394865, 20.596991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.103377, 18.366539, 20.660429>,  <12.720504, 18.319330, 20.766159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.103377, 18.366539, 20.660429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257337, 0.071268, 0.963690,
		0.132579, -0.990449, 0.037843,
		0.957184, 0.118027, -0.264328,
		13.390532, 18.401947, 20.581131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.901741, 18.005074, 21.274752>,  <12.720504, 18.319330, 20.766159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.901741, 18.005074, 21.274752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.233694, 18.177080, 21.132551>,  <13.432866, 18.280283, 21.047230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.233694, 18.177080, 21.132551>,  <12.901741, 18.005074, 21.274752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.233694, 18.177080, 21.132551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350121, 0.094727, 0.931902,
		0.434408, -0.897838, -0.071945,
		0.829883, 0.430015, -0.355502,
		13.482659, 18.306086, 21.025900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.501557, 17.552485, 21.354868>,  <12.901741, 18.005074, 21.274752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.501557, 17.552485, 21.354868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.606434, 17.938351, 21.365242>,  <13.669359, 18.169870, 21.371466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.606434, 17.938351, 21.365242>,  <13.501557, 17.552485, 21.354868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.606434, 17.938351, 21.365242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182406, -0.075933, 0.980287,
		0.947620, -0.252291, -0.195870,
		0.262191, 0.964667, 0.025936,
		13.685091, 18.227751, 21.373022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.072337, 17.572866, 21.688303>,  <13.501557, 17.552485, 21.354868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.072337, 17.572866, 21.688303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.991581, 17.964548, 21.696257>,  <13.943128, 18.199558, 21.701029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.991581, 17.964548, 21.696257>,  <14.072337, 17.572866, 21.688303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.991581, 17.964548, 21.696257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292188, 0.040839, 0.955489,
		0.934808, 0.198714, -0.294357,
		-0.201890, 0.979206, 0.019885,
		13.931014, 18.258310, 21.702223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.597838, 17.855028, 22.034750>,  <14.072337, 17.572866, 21.688303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.597838, 17.855028, 22.034750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306203, 18.125717, 22.075686>,  <14.131222, 18.288132, 22.100246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306203, 18.125717, 22.075686>,  <14.597838, 17.855028, 22.034750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306203, 18.125717, 22.075686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215601, 0.085174, 0.972760,
		0.649573, 0.731294, -0.208002,
		-0.729090, 0.676724, 0.102341,
		14.087476, 18.328733, 22.106388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.912619, 18.356218, 22.355301>,  <14.597838, 17.855028, 22.034750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.912619, 18.356218, 22.355301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.526414, 18.441174, 22.415541>,  <14.294691, 18.492146, 22.451685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.526414, 18.441174, 22.415541>,  <14.912619, 18.356218, 22.355301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.526414, 18.441174, 22.415541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180412, 0.128699, 0.975135,
		0.187724, 0.968673, -0.162578,
		-0.965511, 0.212387, 0.150601,
		14.236761, 18.504890, 22.460720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.900664, 18.924522, 22.721098>,  <14.912619, 18.356218, 22.355301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.900664, 18.924522, 22.721098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.541420, 18.770422, 22.805927>,  <14.325873, 18.677961, 22.856825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.541420, 18.770422, 22.805927>,  <14.900664, 18.924522, 22.721098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.541420, 18.770422, 22.805927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138450, 0.210017, 0.967845,
		-0.417405, 0.898595, -0.135281,
		-0.898112, -0.385253, 0.212073,
		14.271986, 18.654846, 22.869549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627892, 19.400196, 23.187355>,  <14.900664, 18.924522, 22.721098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.627892, 19.400196, 23.187355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.406300, 19.071527, 23.240971>,  <14.273344, 18.874327, 23.273140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.406300, 19.071527, 23.240971>,  <14.627892, 19.400196, 23.187355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.406300, 19.071527, 23.240971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100185, 0.225626, 0.969049,
		-0.826480, 0.523405, -0.207311,
		-0.553980, -0.821669, 0.134038,
		14.240106, 18.825027, 23.281181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.145727, 19.663185, 23.512009>,  <14.627892, 19.400196, 23.187355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.145727, 19.663185, 23.512009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.126375, 19.272566, 23.595924>,  <14.114764, 19.038195, 23.646275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.126375, 19.272566, 23.595924>,  <14.145727, 19.663185, 23.512009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.126375, 19.272566, 23.595924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161606, 0.199615, 0.966456,
		-0.985669, 0.080661, 0.148159,
		-0.048381, -0.976549, 0.209789,
		14.111861, 18.979601, 23.658861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.666962, 19.618807, 24.068298>,  <14.145727, 19.663185, 23.512009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.666962, 19.618807, 24.068298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.860539, 19.269985, 24.097483>,  <13.976686, 19.060692, 24.114992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.860539, 19.269985, 24.097483>,  <13.666962, 19.618807, 24.068298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.860539, 19.269985, 24.097483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087461, 0.131155, 0.987496,
		-0.870717, -0.471512, 0.139742,
		0.483945, -0.872052, 0.072960,
		14.005723, 19.008369, 24.119371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.289193, 19.144499, 24.491791>,  <13.666962, 19.618807, 24.068298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.289193, 19.144499, 24.491791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.670153, 19.023239, 24.504669>,  <13.898728, 18.950483, 24.512396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.670153, 19.023239, 24.504669>,  <13.289193, 19.144499, 24.491791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.670153, 19.023239, 24.504669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001295, 0.101585, 0.994826,
		-0.304851, -0.947513, 0.096357,
		0.952399, -0.303149, 0.032195,
		13.955873, 18.932295, 24.514328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.321892, 18.703594, 25.062693>,  <13.289193, 19.144499, 24.491791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.321892, 18.703594, 25.062693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705862, 18.782745, 24.983307>,  <13.936244, 18.830236, 24.935675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705862, 18.782745, 24.983307>,  <13.321892, 18.703594, 25.062693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.705862, 18.782745, 24.983307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194307, 0.040414, 0.980108,
		0.201962, -0.979393, 0.000345,
		0.959925, 0.197878, -0.198465,
		13.993839, 18.842108, 24.923767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.632594, 18.479477, 25.638428>,  <13.321892, 18.703594, 25.062693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.632594, 18.479477, 25.638428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.919465, 18.707579, 25.478193>,  <14.091587, 18.844439, 25.382053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.919465, 18.707579, 25.478193>,  <13.632594, 18.479477, 25.638428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.919465, 18.707579, 25.478193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372156, 0.172598, 0.911981,
		0.589201, -0.803132, -0.088440,
		0.717176, 0.570254, -0.400586,
		14.134618, 18.878654, 25.358017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.187949, 18.239250, 25.954359>,  <13.632594, 18.479477, 25.638428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.187949, 18.239250, 25.954359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.271461, 18.604242, 25.813623>,  <14.321568, 18.823238, 25.729181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.271461, 18.604242, 25.813623>,  <14.187949, 18.239250, 25.954359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.271461, 18.604242, 25.813623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468331, 0.222545, 0.855067,
		0.858532, -0.343298, -0.380880,
		0.208780, 0.912480, -0.351839,
		14.334096, 18.877987, 25.708071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.868431, 18.303631, 26.212908>,  <14.187949, 18.239250, 25.954359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.868431, 18.303631, 26.212908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.742798, 18.670639, 26.115328>,  <14.667418, 18.890844, 26.056780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.742798, 18.670639, 26.115328>,  <14.868431, 18.303631, 26.212908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.742798, 18.670639, 26.115328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503574, 0.378830, 0.776467,
		0.804838, 0.121029, -0.581023,
		-0.314084, 0.917518, -0.243949,
		14.648573, 18.945894, 26.042143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.432954, 18.795666, 26.278282>,  <14.868431, 18.303631, 26.212908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.432954, 18.795666, 26.278282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.082185, 18.984835, 26.312582>,  <14.871723, 19.098335, 26.333162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.082185, 18.984835, 26.312582>,  <15.432954, 18.795666, 26.278282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.082185, 18.984835, 26.312582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317290, 0.435607, 0.842362,
		0.361017, 0.765894, -0.532046,
		-0.876923, 0.472920, 0.085749,
		14.819108, 19.126711, 26.338306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.577878, 19.481371, 26.448414>,  <15.432954, 18.795666, 26.278282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.577878, 19.481371, 26.448414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.193452, 19.438108, 26.550123>,  <14.962796, 19.412151, 26.611149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.193452, 19.438108, 26.550123>,  <15.577878, 19.481371, 26.448414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.193452, 19.438108, 26.550123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173848, 0.478597, 0.860652,
		-0.214780, 0.871348, -0.441161,
		-0.961065, -0.108156, 0.254275,
		14.905132, 19.405663, 26.626406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.258590, 20.199621, 26.490274>,  <15.577878, 19.481371, 26.448414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.258590, 20.199621, 26.490274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.043490, 19.955942, 26.723412>,  <14.914431, 19.809734, 26.863295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.043490, 19.955942, 26.723412>,  <15.258590, 20.199621, 26.490274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.043490, 19.955942, 26.723412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209178, 0.573288, 0.792203,
		-0.816744, 0.547924, -0.180854,
		-0.537748, -0.609196, 0.582843,
		14.882166, 19.773184, 26.898264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.840959, 20.610327, 26.875568>,  <15.258590, 20.199621, 26.490274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.840959, 20.610327, 26.875568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875522, 20.272469, 27.086889>,  <14.896259, 20.069754, 27.213682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875522, 20.272469, 27.086889>,  <14.840959, 20.610327, 26.875568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.875522, 20.272469, 27.086889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152888, 0.535249, 0.830743,
		-0.984459, 0.008989, 0.175386,
		0.086408, -0.844647, 0.528304,
		14.901444, 20.019075, 27.245380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.442653, 20.743614, 27.589012>,  <14.840959, 20.610327, 26.875568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.442653, 20.743614, 27.589012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.680291, 20.427567, 27.649353>,  <14.822874, 20.237938, 27.685558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.680291, 20.427567, 27.649353>,  <14.442653, 20.743614, 27.589012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.680291, 20.427567, 27.649353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464831, 0.490273, 0.737268,
		-0.656491, -0.367887, 0.658543,
		0.594097, -0.790121, 0.150854,
		14.858521, 20.190531, 27.694609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.509405, 20.626331, 28.310629>,  <14.442653, 20.743614, 27.589012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.509405, 20.626331, 28.310629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.818886, 20.391438, 28.215515>,  <15.004574, 20.250502, 28.158447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.818886, 20.391438, 28.215515>,  <14.509405, 20.626331, 28.310629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.818886, 20.391438, 28.215515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579526, 0.504329, 0.640158,
		-0.256001, -0.633094, 0.730518,
		0.773701, -0.587235, -0.237786,
		15.050996, 20.215267, 28.144178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.763341, 20.508638, 28.933405>,  <14.509405, 20.626331, 28.310629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.763341, 20.508638, 28.933405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.054641, 20.468977, 28.662165>,  <15.229421, 20.445181, 28.499420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.054641, 20.468977, 28.662165>,  <14.763341, 20.508638, 28.933405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.054641, 20.468977, 28.662165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630849, 0.483556, 0.606797,
		0.267735, -0.869680, 0.414699,
		0.728250, -0.099152, -0.678101,
		15.273116, 20.439232, 28.458735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.331106, 20.526005, 29.326820>,  <14.763341, 20.508638, 28.933405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.331106, 20.526005, 29.326820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.465121, 20.610703, 28.959579>,  <15.545530, 20.661522, 28.739235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.465121, 20.610703, 28.959579>,  <15.331106, 20.526005, 29.326820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.465121, 20.610703, 28.959579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660093, 0.642568, 0.389080,
		0.672330, -0.736390, 0.075513,
		0.335037, 0.211745, -0.918104,
		15.565633, 20.674225, 28.684149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.815470, 20.970335, 29.853378>,  <15.331106, 20.526005, 29.326820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.815470, 20.970335, 29.853378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.951763, 20.988871, 29.477772>,  <16.033539, 20.999992, 29.252407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.951763, 20.988871, 29.477772>,  <15.815470, 20.970335, 29.853378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.951763, 20.988871, 29.477772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558328, 0.793613, 0.241760,
		0.756419, -0.606656, 0.244538,
		0.340734, 0.046339, -0.939017,
		16.053984, 21.002771, 29.196066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.572115, 20.691629, 29.756927>,  <15.815470, 20.970335, 29.853378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.572115, 20.691629, 29.756927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.438822, 20.977381, 29.510799>,  <16.358847, 21.148832, 29.363123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.438822, 20.977381, 29.510799>,  <16.572115, 20.691629, 29.756927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.438822, 20.977381, 29.510799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783747, 0.572663, 0.240410,
		0.524116, -0.402145, -0.750721,
		-0.333231, 0.714378, -0.615322,
		16.338852, 21.191694, 29.326202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.206783, 20.994539, 29.377651>,  <16.572115, 20.691629, 29.756927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.206783, 20.994539, 29.377651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.909889, 21.260561, 29.410612>,  <16.731752, 21.420174, 29.430389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.909889, 21.260561, 29.410612>,  <17.206783, 20.994539, 29.377651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.909889, 21.260561, 29.410612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669655, 0.740750, 0.053390,
		-0.025533, 0.094809, -0.995168,
		-0.742233, 0.665056, 0.082403,
		16.687220, 21.460077, 29.435333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.304070, 21.569178, 28.935940>,  <17.206783, 20.994539, 29.377651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.304070, 21.569178, 28.935940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084723, 21.679787, 29.251617>,  <16.953114, 21.746153, 29.441023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084723, 21.679787, 29.251617>,  <17.304070, 21.569178, 28.935940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084723, 21.679787, 29.251617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697514, 0.671817, 0.249269,
		-0.461264, 0.687165, -0.561284,
		-0.548370, 0.276525, 0.789192,
		16.920212, 21.762745, 29.488375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.581518, 21.994200, 28.772390>,  <17.304070, 21.569178, 28.935940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.581518, 21.994200, 28.772390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.362051, 22.067423, 28.446089>,  <16.230371, 22.111357, 28.250307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.362051, 22.067423, 28.446089>,  <16.581518, 21.994200, 28.772390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.362051, 22.067423, 28.446089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824725, -0.041488, -0.564011,
		-0.137091, -0.982226, -0.128210,
		-0.548667, 0.183059, -0.815754,
		16.197451, 22.122341, 28.201363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.326300, 22.754286, 28.997063>,  <16.581518, 21.994200, 28.772390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.326300, 22.754286, 28.997063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.542833, 23.087744, 28.953260>,  <16.672754, 23.287819, 28.926979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.542833, 23.087744, 28.953260>,  <16.326300, 22.754286, 28.997063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.542833, 23.087744, 28.953260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327310, 0.088969, -0.940719,
		-0.774484, 0.545086, 0.321023,
		0.541334, 0.833646, -0.109507,
		16.705233, 23.337837, 28.920408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863793, 23.370630, 28.814318>,  <16.326300, 22.754286, 28.997063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863793, 23.370630, 28.814318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.227499, 23.453016, 28.669641>,  <16.445723, 23.502447, 28.582836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.227499, 23.453016, 28.669641>,  <15.863793, 23.370630, 28.814318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.227499, 23.453016, 28.669641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400678, 0.197874, -0.894597,
		-0.112685, 0.958345, 0.262445,
		0.909263, 0.205963, -0.361690,
		16.500278, 23.514805, 28.561134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.866830, 24.099056, 28.547138>,  <15.863793, 23.370630, 28.814318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.866830, 24.099056, 28.547138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.154892, 23.887150, 28.367928>,  <16.327728, 23.760006, 28.260401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.154892, 23.887150, 28.367928>,  <15.866830, 24.099056, 28.547138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.154892, 23.887150, 28.367928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396959, 0.215003, -0.892299,
		0.569035, 0.820441, -0.055460,
		0.720155, -0.529764, -0.448026,
		16.370939, 23.728220, 28.233521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831072, 24.418564, 27.962467>,  <15.866830, 24.099056, 28.547138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.831072, 24.418564, 27.962467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.108271, 24.141293, 27.883213>,  <16.274590, 23.974930, 27.835661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.108271, 24.141293, 27.883213>,  <15.831072, 24.418564, 27.962467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.108271, 24.141293, 27.883213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221819, 0.056485, -0.973451,
		0.685967, 0.718549, -0.114616,
		0.692998, -0.693179, -0.198134,
		16.316170, 23.933338, 27.823772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.206671, 24.644442, 27.431087>,  <15.831072, 24.418564, 27.962467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.206671, 24.644442, 27.431087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.265705, 24.249889, 27.402058>,  <16.301126, 24.013157, 27.384640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.265705, 24.249889, 27.402058>,  <16.206671, 24.644442, 27.431087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265705, 24.249889, 27.402058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241789, 0.035170, -0.969691,
		0.959039, 0.160662, -0.233306,
		0.147588, -0.986382, -0.072576,
		16.309982, 23.953974, 27.380285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564388, 24.555597, 26.804705>,  <16.206671, 24.644442, 27.431087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564388, 24.555597, 26.804705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.393755, 24.205130, 26.894463>,  <16.291376, 23.994848, 26.948317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.393755, 24.205130, 26.894463>,  <16.564388, 24.555597, 26.804705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.393755, 24.205130, 26.894463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332957, -0.078547, -0.939665,
		0.840933, -0.475556, -0.258221,
		-0.426581, -0.876171, 0.224393,
		16.265781, 23.942278, 26.961781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.703207, 24.204994, 26.258617>,  <16.564388, 24.555597, 26.804705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.703207, 24.204994, 26.258617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.427395, 23.966009, 26.422369>,  <16.261908, 23.822618, 26.520620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.427395, 23.966009, 26.422369>,  <16.703207, 24.204994, 26.258617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.427395, 23.966009, 26.422369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368587, -0.197091, -0.908460,
		0.623453, -0.777301, -0.084317,
		-0.689528, -0.597461, 0.409380,
		16.220537, 23.786772, 26.545183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.754356, 23.433712, 25.976669>,  <16.703207, 24.204994, 26.258617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.754356, 23.433712, 25.976669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.386959, 23.500156, 26.120211>,  <16.166521, 23.540024, 26.206335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.386959, 23.500156, 26.120211>,  <16.754356, 23.433712, 25.976669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.386959, 23.500156, 26.120211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395074, -0.346715, -0.850709,
		-0.016892, -0.923145, 0.384081,
		-0.918494, 0.166111, 0.358854,
		16.111410, 23.549990, 26.227867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448059, 22.842150, 25.827805>,  <16.754356, 23.433712, 25.976669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.448059, 22.842150, 25.827805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158829, 23.113708, 25.878815>,  <15.985291, 23.276644, 25.909420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158829, 23.113708, 25.878815>,  <16.448059, 22.842150, 25.827805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.158829, 23.113708, 25.878815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499433, -0.386269, -0.775476,
		-0.477210, -0.624417, 0.618365,
		-0.723075, 0.678896, 0.127523,
		15.941906, 23.317377, 25.917072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.820982, 22.429630, 25.837238>,  <16.448059, 22.842150, 25.827805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.820982, 22.429630, 25.837238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.682224, 22.796175, 25.757292>,  <15.598969, 23.016102, 25.709324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.682224, 22.796175, 25.757292>,  <15.820982, 22.429630, 25.837238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.682224, 22.796175, 25.757292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632344, -0.385890, -0.671737,
		-0.692680, -0.106637, 0.713318,
		-0.346894, 0.916361, -0.199867,
		15.578156, 23.071083, 25.697332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.097919, 22.374815, 25.682169>,  <15.820982, 22.429630, 25.837238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.097919, 22.374815, 25.682169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.167261, 22.728765, 25.509222>,  <15.208866, 22.941135, 25.405455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.167261, 22.728765, 25.509222>,  <15.097919, 22.374815, 25.682169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.167261, 22.728765, 25.509222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577319, -0.264372, -0.772535,
		-0.797904, 0.383537, 0.465026,
		0.173356, 0.884877, -0.432366,
		15.219268, 22.994228, 25.379513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.376337, 22.563320, 25.408550>,  <15.097919, 22.374815, 25.682169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.376337, 22.563320, 25.408550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.656649, 22.770790, 25.212637>,  <14.824836, 22.895271, 25.095089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.656649, 22.770790, 25.212637>,  <14.376337, 22.563320, 25.408550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.656649, 22.770790, 25.212637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435382, -0.232913, -0.869594,
		-0.565113, 0.822635, 0.062601,
		0.700778, 0.518674, -0.489783,
		14.866882, 22.926392, 25.065702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.967407, 22.886126, 24.930016>,  <14.376337, 22.563320, 25.408550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.967407, 22.886126, 24.930016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.345533, 22.902172, 24.800543>,  <14.572409, 22.911800, 24.722860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.345533, 22.902172, 24.800543>,  <13.967407, 22.886126, 24.930016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.345533, 22.902172, 24.800543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292747, -0.333170, -0.896268,
		-0.143796, 0.942013, -0.303206,
		0.945316, 0.040117, -0.323680,
		14.629128, 22.914207, 24.703440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.931969, 23.309008, 24.406116>,  <13.967407, 22.886126, 24.930016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.931969, 23.309008, 24.406116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.262384, 23.104691, 24.310829>,  <14.460634, 22.982100, 24.253656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.262384, 23.104691, 24.310829>,  <13.931969, 23.309008, 24.406116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.262384, 23.104691, 24.310829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411806, -0.258413, -0.873864,
		0.384806, 0.819946, -0.423807,
		0.826039, -0.510795, -0.238219,
		14.510196, 22.951452, 24.239363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.835176, 23.281494, 23.750999>,  <13.931969, 23.309008, 24.406116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.835176, 23.281494, 23.750999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132353, 23.018858, 23.803038>,  <14.310659, 22.861277, 23.834261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132353, 23.018858, 23.803038>,  <13.835176, 23.281494, 23.750999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.132353, 23.018858, 23.803038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142233, -0.344780, -0.927845,
		0.654069, 0.670831, -0.349540,
		0.742942, -0.656591, 0.130096,
		14.355235, 22.821880, 23.842066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.333368, 23.287575, 23.170691>,  <13.835176, 23.281494, 23.750999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.333368, 23.287575, 23.170691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.357803, 22.922899, 23.333218>,  <14.372464, 22.704094, 23.430733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.357803, 22.922899, 23.333218>,  <14.333368, 23.287575, 23.170691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.357803, 22.922899, 23.333218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080787, -0.410256, -0.908385,
		0.994858, 0.022667, -0.098714,
		0.061088, -0.911689, 0.406315,
		14.376130, 22.649393, 23.455112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.713778, 22.923889, 22.683437>,  <14.333368, 23.287575, 23.170691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.713778, 22.923889, 22.683437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547279, 22.638126, 22.908422>,  <14.447380, 22.466669, 23.043413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547279, 22.638126, 22.908422>,  <14.713778, 22.923889, 22.683437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.547279, 22.638126, 22.908422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286945, -0.483776, -0.826815,
		0.862787, -0.505555, -0.003625,
		-0.416247, -0.714405, 0.562462,
		14.422405, 22.423805, 23.077162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.110380, 22.233610, 22.569748>,  <14.713778, 22.923889, 22.683437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.110380, 22.233610, 22.569748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.742583, 22.139408, 22.695648>,  <14.521905, 22.082886, 22.771189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.742583, 22.139408, 22.695648>,  <15.110380, 22.233610, 22.569748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.742583, 22.139408, 22.695648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148280, -0.533751, -0.832540,
		0.364069, -0.812186, 0.455859,
		-0.919493, -0.235507, 0.314753,
		14.466736, 22.068756, 22.790073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.069863, 21.503405, 22.556507>,  <15.110380, 22.233610, 22.569748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.069863, 21.503405, 22.556507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.683256, 21.603628, 22.534369>,  <14.451292, 21.663763, 22.521086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.683256, 21.603628, 22.534369>,  <15.069863, 21.503405, 22.556507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.683256, 21.603628, 22.534369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093968, -0.546324, -0.832286,
		-0.238774, -0.799218, 0.551577,
		-0.966518, 0.250559, -0.055347,
		14.393301, 21.678797, 22.517765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.870361, 20.966251, 22.346899>,  <15.069863, 21.503405, 22.556507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.870361, 20.966251, 22.346899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.548328, 21.190161, 22.268415>,  <14.355109, 21.324507, 22.221325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.548328, 21.190161, 22.268415>,  <14.870361, 20.966251, 22.346899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.548328, 21.190161, 22.268415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243360, -0.613372, -0.751366,
		-0.540942, -0.557162, 0.630041,
		-0.805082, 0.559772, -0.196208,
		14.306804, 21.358093, 22.209553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.287094, 20.501587, 22.253897>,  <14.870361, 20.966251, 22.346899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.287094, 20.501587, 22.253897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.184284, 20.840353, 22.067705>,  <14.122598, 21.043613, 21.955990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.184284, 20.840353, 22.067705>,  <14.287094, 20.501587, 22.253897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.184284, 20.840353, 22.067705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107876, -0.503795, -0.857061,
		-0.960365, -0.170073, 0.220851,
		-0.257026, 0.846916, -0.465480,
		14.107177, 21.094427, 21.928061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.758132, 20.208916, 21.685581>,  <14.287094, 20.501587, 22.253897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.758132, 20.208916, 21.685581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.875142, 20.576828, 21.580944>,  <13.945348, 20.797575, 21.518162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.875142, 20.576828, 21.580944>,  <13.758132, 20.208916, 21.685581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.875142, 20.576828, 21.580944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016907, -0.268539, -0.963120,
		-0.956109, 0.286159, -0.063003,
		0.292524, 0.919782, -0.261591,
		13.962899, 20.852762, 21.502466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.281497, 20.408154, 21.122936>,  <13.758132, 20.208916, 21.685581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.281497, 20.408154, 21.122936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.602504, 20.646610, 21.113302>,  <13.795108, 20.789684, 21.107521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.602504, 20.646610, 21.113302>,  <13.281497, 20.408154, 21.122936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.602504, 20.646610, 21.113302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228283, -0.344107, -0.910756,
		-0.551229, 0.725399, -0.412241,
		0.802517, 0.596143, -0.024085,
		13.843259, 20.825453, 21.106077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.312557, 20.617699, 20.341763>,  <13.281497, 20.408154, 21.122936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.312557, 20.617699, 20.341763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.675710, 20.687077, 20.494429>,  <13.893601, 20.728704, 20.586029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.675710, 20.687077, 20.494429>,  <13.312557, 20.617699, 20.341763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.675710, 20.687077, 20.494429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406328, -0.139958, -0.902945,
		-0.103195, 0.974848, -0.197541,
		0.907881, 0.173446, 0.381665,
		13.948074, 20.739111, 20.608929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.738294, 20.998398, 19.911352>,  <13.312557, 20.617699, 20.341763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.738294, 20.998398, 19.911352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.026431, 20.853090, 20.147705>,  <14.199314, 20.765905, 20.289516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.026431, 20.853090, 20.147705>,  <13.738294, 20.998398, 19.911352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.026431, 20.853090, 20.147705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524319, -0.272512, -0.806738,
		0.454084, 0.890939, -0.005833,
		0.720345, -0.363269, 0.590880,
		14.242535, 20.744110, 20.324968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.414851, 21.252323, 19.610897>,  <13.738294, 20.998398, 19.911352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.414851, 21.252323, 19.610897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.491006, 20.920336, 19.820623>,  <14.536699, 20.721144, 19.946459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.491006, 20.920336, 19.820623>,  <14.414851, 21.252323, 19.610897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.491006, 20.920336, 19.820623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699398, -0.260120, -0.665718,
		0.688909, 0.493450, 0.530953,
		0.190387, -0.829967, 0.524317,
		14.548122, 20.671347, 19.977919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.095663, 21.239990, 19.599445>,  <14.414851, 21.252323, 19.610897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.095663, 21.239990, 19.599445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.984020, 20.867397, 19.692772>,  <14.917034, 20.643841, 19.748768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.984020, 20.867397, 19.692772>,  <15.095663, 21.239990, 19.599445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.984020, 20.867397, 19.692772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634429, -0.361266, -0.683364,
		0.720832, -0.042710, 0.691793,
		-0.279108, -0.931484, 0.233316,
		14.900288, 20.587952, 19.762766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.810928, 20.792212, 19.719055>,  <15.095663, 21.239990, 19.599445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.810928, 20.792212, 19.719055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.528145, 20.522692, 19.633074>,  <15.358475, 20.360979, 19.581486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.528145, 20.522692, 19.633074>,  <15.810928, 20.792212, 19.719055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.528145, 20.522692, 19.633074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635699, -0.472163, -0.610695,
		0.309994, -0.568381, 0.762133,
		-0.706959, -0.673799, -0.214951,
		15.316057, 20.320553, 19.568588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.191740, 20.123186, 19.777792>,  <15.810928, 20.792212, 19.719055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.191740, 20.123186, 19.777792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851987, 20.047935, 19.580547>,  <15.648135, 20.002785, 19.462200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851987, 20.047935, 19.580547>,  <16.191740, 20.123186, 19.777792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.851987, 20.047935, 19.580547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477063, -0.673298, -0.564872,
		-0.225743, -0.715037, 0.661636,
		-0.849383, -0.188126, -0.493110,
		15.597172, 19.991497, 19.432615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305687, 19.430405, 19.692181>,  <16.191740, 20.123186, 19.777792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.305687, 19.430405, 19.692181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.049923, 19.543116, 19.406031>,  <15.896465, 19.610743, 19.234341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.049923, 19.543116, 19.406031>,  <16.305687, 19.430405, 19.692181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.049923, 19.543116, 19.406031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475012, -0.586848, -0.655722,
		-0.604588, -0.759083, 0.241383,
		-0.639403, 0.281782, -0.715376,
		15.858101, 19.627649, 19.191418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.198891, 18.797777, 19.223738>,  <16.305687, 19.430405, 19.692181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.198891, 18.797777, 19.223738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.060871, 19.112631, 19.019243>,  <15.978060, 19.301542, 18.896547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.060871, 19.112631, 19.019243>,  <16.198891, 18.797777, 19.223738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.060871, 19.112631, 19.019243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457673, -0.334440, -0.823824,
		-0.819438, -0.518237, -0.244853,
		-0.345047, 0.787135, -0.511235,
		15.957357, 19.348772, 18.865873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.985307, 18.453249, 18.623924>,  <16.198891, 18.797777, 19.223738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.985307, 18.453249, 18.623924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.005667, 18.837696, 18.515364>,  <16.017883, 19.068365, 18.450226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.005667, 18.837696, 18.515364>,  <15.985307, 18.453249, 18.623924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.005667, 18.837696, 18.515364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444886, -0.265124, -0.855445,
		-0.894140, -0.077202, -0.441082,
		0.050899, 0.961119, -0.271404,
		16.020937, 19.126032, 18.433943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.734512, 18.451767, 17.895212>,  <15.985307, 18.453249, 18.623924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.734512, 18.451767, 17.895212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.958979, 18.773033, 17.975231>,  <16.093658, 18.965792, 18.023243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.958979, 18.773033, 17.975231>,  <15.734512, 18.451767, 17.895212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.958979, 18.773033, 17.975231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481214, -0.119937, -0.868360,
		-0.673443, 0.583560, -0.453798,
		0.561167, 0.803164, 0.200047,
		16.127329, 19.013983, 18.035246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.639157, 19.018681, 17.403015>,  <15.734512, 18.451767, 17.895212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.639157, 19.018681, 17.403015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.004745, 19.064224, 17.558807>,  <16.224098, 19.091551, 17.652283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.004745, 19.064224, 17.558807>,  <15.639157, 19.018681, 17.403015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.004745, 19.064224, 17.558807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403065, -0.143906, -0.903786,
		-0.046854, 0.983020, -0.177418,
		0.913971, 0.113857, 0.389478,
		16.278936, 19.098381, 17.675652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.945070, 19.494810, 16.956406>,  <15.639157, 19.018681, 17.403015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.945070, 19.494810, 16.956406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.262215, 19.343765, 17.147730>,  <16.452501, 19.253138, 17.262524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.262215, 19.343765, 17.147730>,  <15.945070, 19.494810, 16.956406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.262215, 19.343765, 17.147730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443064, -0.181700, -0.877884,
		0.418410, 0.907961, 0.023245,
		0.792861, -0.377614, 0.478309,
		16.500072, 19.230480, 17.291224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.540148, 19.819012, 16.634514>,  <15.945070, 19.494810, 16.956406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.540148, 19.819012, 16.634514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.685957, 19.484205, 16.797745>,  <16.773443, 19.283321, 16.895683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.685957, 19.484205, 16.797745>,  <16.540148, 19.819012, 16.634514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.685957, 19.484205, 16.797745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558402, -0.154209, -0.815111,
		0.745191, 0.524998, 0.411179,
		0.364524, -0.837017, 0.408075,
		16.795315, 19.233101, 16.920168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.298964, 19.775621, 16.461618>,  <16.540148, 19.819012, 16.634514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.298964, 19.775621, 16.461618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.243279, 19.401468, 16.591652>,  <17.209867, 19.176977, 16.669672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.243279, 19.401468, 16.591652>,  <17.298964, 19.775621, 16.461618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.243279, 19.401468, 16.591652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635706, -0.336120, -0.694911,
		0.759275, 0.109916, 0.641420,
		-0.139212, -0.935383, 0.325082,
		17.201515, 19.120853, 16.689177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.983217, 19.444775, 16.578077>,  <17.298964, 19.775621, 16.461618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.983217, 19.444775, 16.578077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.745956, 19.126453, 16.529306>,  <17.603600, 18.935461, 16.500044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.745956, 19.126453, 16.529306>,  <17.983217, 19.444775, 16.578077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.745956, 19.126453, 16.529306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541321, -0.282118, -0.792074,
		0.595939, -0.535822, 0.598124,
		-0.593152, -0.795805, -0.121926,
		17.568010, 18.887712, 16.492729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.458405, 18.782570, 16.607510>,  <17.983217, 19.444775, 16.578077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.458405, 18.782570, 16.607510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.140776, 18.716549, 16.373516>,  <17.950199, 18.676935, 16.233120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.140776, 18.716549, 16.373516>,  <18.458405, 18.782570, 16.607510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.140776, 18.716549, 16.373516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607737, -0.199262, -0.768733,
		0.010318, -0.965946, 0.258538,
		-0.794071, -0.165055, -0.584985,
		17.902554, 18.667032, 16.198021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.639515, 18.205759, 16.292162>,  <18.458405, 18.782570, 16.607510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.639515, 18.205759, 16.292162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.317062, 18.293596, 16.072367>,  <18.123590, 18.346298, 15.940490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.317062, 18.293596, 16.072367>,  <18.639515, 18.205759, 16.292162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.317062, 18.293596, 16.072367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394832, -0.492053, -0.775881,
		-0.440749, -0.842416, 0.309959,
		-0.806131, 0.219588, -0.549485,
		18.075224, 18.359474, 15.907520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.306219, 17.541840, 16.098835>,  <18.639515, 18.205759, 16.292162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.306219, 17.541840, 16.098835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.186329, 17.825731, 15.843822>,  <18.114395, 17.996067, 15.690813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.186329, 17.825731, 15.843822>,  <18.306219, 17.541840, 16.098835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.186329, 17.825731, 15.843822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144785, -0.626676, -0.765712,
		-0.942976, -0.321807, 0.085071,
		-0.299723, 0.709731, -0.637533,
		18.096413, 18.038651, 15.652561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.915762, 17.102131, 16.369349>,  <18.306219, 17.541840, 16.098835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.915762, 17.102131, 16.369349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.520302, 17.052385, 16.335629>,  <18.283026, 17.022537, 16.315397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.520302, 17.052385, 16.335629>,  <18.915762, 17.102131, 16.369349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.520302, 17.052385, 16.335629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112244, 0.984356, -0.135812,
		0.099871, -0.124808, -0.987142,
		-0.988649, -0.124364, -0.084300,
		18.223707, 17.015076, 16.310339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.437792, 17.040590, 16.976593>,  <18.915762, 17.102131, 16.369349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.437792, 17.040590, 16.976593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.777802, 16.837208, 16.921558>,  <18.981808, 16.715178, 16.888536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.777802, 16.837208, 16.921558>,  <18.437792, 17.040590, 16.976593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.777802, 16.837208, 16.921558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180184, 0.035228, 0.983002,
		-0.494966, -0.860367, 0.121561,
		0.850025, -0.508456, -0.137588,
		19.032808, 16.684671, 16.880281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.473083, 16.391253, 17.349356>,  <18.437792, 17.040590, 16.976593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.473083, 16.391253, 17.349356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.832956, 16.563240, 17.319151>,  <19.048880, 16.666433, 17.301029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.832956, 16.563240, 17.319151>,  <18.473083, 16.391253, 17.349356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.832956, 16.563240, 17.319151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125260, -0.088559, 0.988164,
		0.418194, -0.898489, -0.133533,
		0.899680, 0.429970, -0.075510,
		19.102859, 16.692230, 17.296497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.666964, 16.127344, 17.884109>,  <18.473083, 16.391253, 17.349356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.666964, 16.127344, 17.884109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.882845, 16.457239, 17.816545>,  <19.012373, 16.655176, 17.776007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.882845, 16.457239, 17.816545>,  <18.666964, 16.127344, 17.884109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.882845, 16.457239, 17.816545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377013, -0.057389, 0.924428,
		0.752717, -0.562596, -0.341910,
		0.539701, 0.824738, -0.168908,
		19.044756, 16.704660, 17.765873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.222635, 16.081280, 18.379522>,  <18.666964, 16.127344, 17.884109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.222635, 16.081280, 18.379522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.235670, 16.470171, 18.286819>,  <19.243492, 16.703505, 18.231197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.235670, 16.470171, 18.286819>,  <19.222635, 16.081280, 18.379522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.235670, 16.470171, 18.286819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385998, 0.201649, 0.900191,
		0.921924, -0.118794, -0.368706,
		0.032588, 0.972227, -0.231759,
		19.245447, 16.761839, 18.217291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.848389, 16.308544, 18.484278>,  <19.222635, 16.081280, 18.379522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.848389, 16.308544, 18.484278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.597256, 16.616745, 18.528381>,  <19.446575, 16.801664, 18.554844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.597256, 16.616745, 18.528381>,  <19.848389, 16.308544, 18.484278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.597256, 16.616745, 18.528381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469045, 0.261477, 0.843579,
		0.621147, 0.581343, -0.525563,
		-0.627832, 0.770500, 0.110260,
		19.408907, 16.847895, 18.561459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.286589, 16.928116, 18.594769>,  <19.848389, 16.308544, 18.484278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.286589, 16.928116, 18.594769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.922472, 16.919209, 18.760115>,  <19.704002, 16.913864, 18.859322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.922472, 16.919209, 18.760115>,  <20.286589, 16.928116, 18.594769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.922472, 16.919209, 18.760115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401387, 0.196778, 0.894521,
		-0.101261, 0.980195, -0.170187,
		-0.910294, -0.022269, 0.413363,
		19.649384, 16.912527, 18.884123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.522047, 16.125023, 18.661333>,  <20.286589, 16.928116, 18.594769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.522047, 16.125023, 18.661333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.371216, 15.760396, 18.726891>,  <20.280718, 15.541620, 18.766224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.371216, 15.760396, 18.726891>,  <20.522047, 16.125023, 18.661333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.371216, 15.760396, 18.726891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030434, -0.189054, -0.981495,
		0.925681, -0.365112, 0.099030,
		-0.377078, -0.911565, 0.163892,
		20.258093, 15.486926, 18.776058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.843477, 15.722185, 18.152571>,  <20.522047, 16.125023, 18.661333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.843477, 15.722185, 18.152571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.509306, 15.518822, 18.236078>,  <20.308804, 15.396804, 18.286182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.509306, 15.518822, 18.236078>,  <20.843477, 15.722185, 18.152571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.509306, 15.518822, 18.236078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095284, -0.240120, -0.966055,
		0.541280, -0.826961, 0.152160,
		-0.835426, -0.508408, 0.208768,
		20.258678, 15.366300, 18.298708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.012596, 15.097702, 17.790539>,  <20.843477, 15.722185, 18.152571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.012596, 15.097702, 17.790539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.620533, 15.102242, 17.869701>,  <20.385296, 15.104965, 17.917198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.620533, 15.102242, 17.869701>,  <21.012596, 15.097702, 17.790539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.620533, 15.102242, 17.869701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189187, -0.351663, -0.916810,
		0.059191, -0.936058, 0.346832,
		-0.980156, 0.011349, 0.197905,
		20.326487, 15.105646, 17.929073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790920, 14.647691, 17.366791>,  <21.012596, 15.097702, 17.790539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790920, 14.647691, 17.366791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.437347, 14.819205, 17.441414>,  <20.225203, 14.922114, 17.486187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.437347, 14.819205, 17.441414>,  <20.790920, 14.647691, 17.366791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.437347, 14.819205, 17.441414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266699, -0.134581, -0.954337,
		-0.384101, -0.893325, 0.233318,
		-0.883933, 0.428787, 0.186556,
		20.172167, 14.947842, 17.497381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.272469, 14.161007, 17.031204>,  <20.790920, 14.647691, 17.366791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.272469, 14.161007, 17.031204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.132341, 14.532696, 17.078238>,  <20.048265, 14.755709, 17.106459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.132341, 14.532696, 17.078238>,  <20.272469, 14.161007, 17.031204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.132341, 14.532696, 17.078238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054851, 0.145678, -0.987810,
		-0.935024, -0.339596, -0.102002,
		-0.350316, 0.929222, 0.117585,
		20.027246, 14.811462, 17.113512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.697908, 14.192904, 16.445404>,  <20.272469, 14.161007, 17.031204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.697908, 14.192904, 16.445404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.796665, 14.563434, 16.559223>,  <19.855919, 14.785751, 16.627514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.796665, 14.563434, 16.559223>,  <19.697908, 14.192904, 16.445404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.796665, 14.563434, 16.559223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203787, 0.237437, -0.949786,
		-0.947372, 0.292483, -0.130151,
		0.246893, 0.926325, 0.284546,
		19.870733, 14.841331, 16.644587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.374165, 14.549801, 15.932512>,  <19.697908, 14.192904, 16.445404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.374165, 14.549801, 15.932512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.652622, 14.796952, 16.078724>,  <19.819696, 14.945243, 16.166451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.652622, 14.796952, 16.078724>,  <19.374165, 14.549801, 15.932512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.652622, 14.796952, 16.078724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206176, 0.315640, -0.926209,
		-0.687660, 0.720137, 0.092339,
		0.696143, 0.617878, 0.365528,
		19.861465, 14.982316, 16.188383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.265476, 15.149096, 15.605407>,  <19.374165, 14.549801, 15.932512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.265476, 15.149096, 15.605407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.640762, 15.201012, 15.733726>,  <19.865934, 15.232162, 15.810717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.640762, 15.201012, 15.733726>,  <19.265476, 15.149096, 15.605407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.640762, 15.201012, 15.733726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176052, 0.619065, -0.765353,
		-0.297928, 0.774541, 0.557965,
		0.938214, 0.129789, 0.320796,
		19.922226, 15.239948, 15.829965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.416128, 15.889753, 15.559379>,  <19.265476, 15.149096, 15.605407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.416128, 15.889753, 15.559379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.790735, 15.755789, 15.600889>,  <20.015499, 15.675410, 15.625795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.790735, 15.755789, 15.600889>,  <19.416128, 15.889753, 15.559379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.790735, 15.755789, 15.600889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307888, 0.643917, -0.700411,
		0.167752, 0.687899, 0.706155,
		0.936517, -0.334912, 0.103778,
		20.071690, 15.655315, 15.632023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.863914, 16.464437, 15.616351>,  <19.416128, 15.889753, 15.559379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.863914, 16.464437, 15.616351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.093966, 16.157991, 15.501600>,  <20.231997, 15.974124, 15.432750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.093966, 16.157991, 15.501600>,  <19.863914, 16.464437, 15.616351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093966, 16.157991, 15.501600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412891, 0.574579, -0.706668,
		0.706222, 0.287975, 0.646778,
		0.575127, -0.766113, -0.286878,
		20.266504, 15.928158, 15.415537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.420988, 16.789001, 15.538852>,  <19.863914, 16.464437, 15.616351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.420988, 16.789001, 15.538852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.478991, 16.463879, 15.313173>,  <20.513792, 16.268805, 15.177766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.478991, 16.463879, 15.313173>,  <20.420988, 16.789001, 15.538852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.478991, 16.463879, 15.313173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410575, 0.568243, -0.713111,
		0.900222, -0.128238, 0.416118,
		0.145008, -0.812807, -0.564196,
		20.522493, 16.220037, 15.143914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.056477, 16.852518, 15.313171>,  <20.420988, 16.789001, 15.538852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.056477, 16.852518, 15.313171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.921370, 16.576958, 15.056632>,  <20.840305, 16.411621, 14.902708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.921370, 16.576958, 15.056632>,  <21.056477, 16.852518, 15.313171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.921370, 16.576958, 15.056632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509380, 0.439197, -0.740026,
		0.791484, -0.576645, 0.202567,
		-0.337765, -0.688902, -0.641348,
		20.820040, 16.370287, 14.864227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.621588, 16.802856, 14.879118>,  <21.056477, 16.852518, 15.313171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.621588, 16.802856, 14.879118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.315712, 16.650063, 14.671526>,  <21.132187, 16.558386, 14.546970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.315712, 16.650063, 14.671526>,  <21.621588, 16.802856, 14.879118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.315712, 16.650063, 14.671526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334708, 0.452767, -0.826422,
		0.550658, -0.805661, -0.218372,
		-0.764687, -0.381985, -0.518981,
		21.086306, 16.535467, 14.515832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.849688, 16.593847, 14.258018>,  <21.621588, 16.802856, 14.879118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.849688, 16.593847, 14.258018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.463202, 16.616106, 14.157359>,  <21.231310, 16.629461, 14.096963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.463202, 16.616106, 14.157359>,  <21.849688, 16.593847, 14.258018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.463202, 16.616106, 14.157359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249370, 0.448507, -0.858287,
		0.065105, -0.892046, -0.447232,
		-0.966217, 0.055648, -0.251649,
		21.173336, 16.632801, 14.081864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.783525, 16.378056, 13.559092>,  <21.849688, 16.593847, 14.258018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.783525, 16.378056, 13.559092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.449148, 16.586317, 13.628506>,  <21.248522, 16.711275, 13.670155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.449148, 16.586317, 13.628506>,  <21.783525, 16.378056, 13.559092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.449148, 16.586317, 13.628506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031069, 0.360592, -0.932206,
		-0.547934, -0.773881, -0.317611,
		-0.835944, 0.520655, 0.173536,
		21.198364, 16.742514, 13.680567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.285904, 16.243328, 12.952208>,  <21.783525, 16.378056, 13.559092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.285904, 16.243328, 12.952208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.182089, 16.588583, 13.125473>,  <21.119799, 16.795736, 13.229432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.182089, 16.588583, 13.125473>,  <21.285904, 16.243328, 12.952208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.182089, 16.588583, 13.125473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095566, 0.469288, -0.877859,
		-0.960993, -0.186442, -0.204285,
		-0.259538, 0.863139, 0.433165,
		21.104227, 16.847525, 13.255423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.655066, 16.555138, 12.696764>,  <21.285904, 16.243328, 12.952208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.655066, 16.555138, 12.696764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.879995, 16.862701, 12.818467>,  <21.014954, 17.047239, 12.891489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.879995, 16.862701, 12.818467>,  <20.655066, 16.555138, 12.696764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.879995, 16.862701, 12.818467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026195, 0.384321, -0.922828,
		-0.826503, 0.510957, 0.236254,
		0.562323, 0.768909, 0.304258,
		21.048693, 17.093374, 12.909744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.453264, 17.100052, 12.320489>,  <20.655066, 16.555138, 12.696764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.453264, 17.100052, 12.320489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.784983, 17.252415, 12.484036>,  <20.984015, 17.343832, 12.582165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.784983, 17.252415, 12.484036>,  <20.453264, 17.100052, 12.320489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.784983, 17.252415, 12.484036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179091, 0.511920, -0.840158,
		-0.529332, 0.769965, 0.356317,
		0.829298, 0.380909, 0.408869,
		21.033772, 17.366688, 12.606697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.412664, 17.843376, 12.229397>,  <20.453264, 17.100052, 12.320489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.412664, 17.843376, 12.229397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.795637, 17.735859, 12.271501>,  <21.025421, 17.671349, 12.296763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.795637, 17.735859, 12.271501>,  <20.412664, 17.843376, 12.229397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.795637, 17.735859, 12.271501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234114, 0.509707, -0.827882,
		0.168876, 0.817282, 0.550936,
		0.957430, -0.268792, 0.105260,
		21.082867, 17.655222, 12.303079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.689716, 18.472141, 12.255514>,  <20.412664, 17.843376, 12.229397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.689716, 18.472141, 12.255514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.000231, 18.235283, 12.169033>,  <21.186539, 18.093168, 12.117145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.000231, 18.235283, 12.169033>,  <20.689716, 18.472141, 12.255514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.000231, 18.235283, 12.169033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238501, 0.593366, -0.768788,
		0.583523, 0.545234, 0.601848,
		0.776285, -0.592146, -0.216204,
		21.233116, 18.057638, 12.104172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.311510, 18.929230, 12.197239>,  <20.689716, 18.472141, 12.255514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.311510, 18.929230, 12.197239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.354650, 18.584566, 11.998879>,  <21.380535, 18.377768, 11.879864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.354650, 18.584566, 11.998879>,  <21.311510, 18.929230, 12.197239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.354650, 18.584566, 11.998879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170726, 0.507451, -0.844598,
		0.979398, 0.006430, 0.201837,
		0.107853, -0.861657, -0.495899,
		21.387007, 18.326069, 11.850110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.429688, 19.657127, 12.029514>,  <21.311510, 18.929230, 12.197239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.429688, 19.657127, 12.029514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.828751, 19.635618, 12.012600>,  <22.068188, 19.622713, 12.002452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.828751, 19.635618, 12.012600>,  <21.429688, 19.657127, 12.029514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.828751, 19.635618, 12.012600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061590, 0.437109, 0.897297,
		-0.029766, -0.897800, 0.439397,
		0.997658, -0.053771, -0.042285,
		22.128048, 19.619488, 11.999914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.043106, 20.309240, 12.340007>,  <21.429688, 19.657127, 12.029514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.043106, 20.309240, 12.340007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.014111, 20.520802, 12.678240>,  <20.996714, 20.647738, 12.881180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.014111, 20.520802, 12.678240>,  <21.043106, 20.309240, 12.340007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.014111, 20.520802, 12.678240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725475, -0.609752, 0.319200,
		0.684421, -0.590310, 0.427905,
		-0.072489, 0.528901, 0.845582,
		20.992363, 20.679472, 12.931914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.706381, 20.791401, 12.162615>,  <21.043106, 20.309240, 12.340007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.706381, 20.791401, 12.162615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.009438, 20.987967, 12.334425>,  <22.191271, 21.105907, 12.437510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.009438, 20.987967, 12.334425>,  <21.706381, 20.791401, 12.162615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.009438, 20.987967, 12.334425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568911, -0.819779, -0.065599,
		0.319879, 0.294062, -0.900669,
		0.757640, 0.491416, 0.429525,
		22.236729, 21.135391, 12.463283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.175535, 20.210220, 12.238846>,  <21.706381, 20.791401, 12.162615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.175535, 20.210220, 12.238846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.402908, 20.536381, 12.282672>,  <22.539331, 20.732077, 12.308968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.402908, 20.536381, 12.282672>,  <22.175535, 20.210220, 12.238846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.402908, 20.536381, 12.282672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821339, -0.554679, -0.133165,
		-0.047809, 0.165685, -0.985019,
		0.568433, 0.815401, 0.109565,
		22.573439, 20.781002, 12.315541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.701757, 20.230085, 11.609643>,  <22.175535, 20.210220, 12.238846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.701757, 20.230085, 11.609643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.826283, 20.399378, 11.949986>,  <22.900997, 20.500954, 12.154193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.826283, 20.399378, 11.949986>,  <22.701757, 20.230085, 11.609643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.826283, 20.399378, 11.949986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838016, -0.544471, -0.035786,
		0.448122, 0.724174, -0.524174,
		0.311313, 0.423230, 0.850859,
		22.919676, 20.526346, 12.205244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.344805, 20.678585, 11.574066>,  <22.701757, 20.230085, 11.609643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.344805, 20.678585, 11.574066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.322014, 20.484467, 11.923062>,  <23.308340, 20.367996, 12.132461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.322014, 20.484467, 11.923062>,  <23.344805, 20.678585, 11.574066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.322014, 20.484467, 11.923062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764305, -0.583457, -0.274619,
		0.642333, 0.651202, 0.404158,
		-0.056976, -0.485297, 0.872491,
		23.304920, 20.338877, 12.184810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.022825, 20.659170, 11.872153>,  <23.344805, 20.678585, 11.574066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.022825, 20.659170, 11.872153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.793793, 20.347107, 11.972949>,  <23.656372, 20.159868, 12.033426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.793793, 20.347107, 11.972949>,  <24.022825, 20.659170, 11.872153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.793793, 20.347107, 11.972949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697474, -0.625085, -0.350426,
		0.430903, -0.024891, 0.902055,
		-0.572584, -0.780160, 0.251990,
		23.622017, 20.113058, 12.048546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.229368, 20.230463, 12.439260>,  <24.022825, 20.659170, 11.872153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.229368, 20.230463, 12.439260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.022738, 20.055525, 12.144811>,  <23.898758, 19.950562, 11.968142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.022738, 20.055525, 12.144811>,  <24.229368, 20.230463, 12.439260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.022738, 20.055525, 12.144811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802206, -0.547772, -0.237511,
		-0.299353, -0.713214, 0.633808,
		-0.516579, -0.437345, -0.736122,
		23.867764, 19.924322, 11.923974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.613342, 19.759760, 12.717529>,  <24.229368, 20.230463, 12.439260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.613342, 19.759760, 12.717529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003365, 19.678717, 12.753788>,  <25.237377, 19.630091, 12.775543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003365, 19.678717, 12.753788>,  <24.613342, 19.759760, 12.717529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.003365, 19.678717, 12.753788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216293, -0.775593, 0.593020,
		-0.049846, -0.597833, -0.800069,
		0.975055, -0.202609, 0.090646,
		25.295881, 19.617933, 12.780982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.674486, 19.021353, 12.623487>,  <24.613342, 19.759760, 12.717529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.674486, 19.021353, 12.623487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.971788, 19.167763, 12.847486>,  <25.150169, 19.255608, 12.981885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.971788, 19.167763, 12.847486>,  <24.674486, 19.021353, 12.623487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.971788, 19.167763, 12.847486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362534, -0.483137, 0.796961,
		0.562261, -0.795365, -0.226399,
		0.743257, 0.366023, 0.559996,
		25.194765, 19.277569, 13.015485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.097010, 18.425070, 12.952834>,  <24.674486, 19.021353, 12.623487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.097010, 18.425070, 12.952834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.124189, 18.753464, 13.179591>,  <25.140497, 18.950500, 13.315645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.124189, 18.753464, 13.179591>,  <25.097010, 18.425070, 12.952834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.124189, 18.753464, 13.179591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335091, -0.516419, 0.788052,
		0.939733, -0.243508, 0.240014,
		0.067949, 0.820984, 0.566893,
		25.144573, 18.999760, 13.349659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396980, 18.167801, 13.652219>,  <25.097010, 18.425070, 12.952834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396980, 18.167801, 13.652219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201784, 18.512981, 13.704652>,  <25.084667, 18.720089, 13.736112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201784, 18.512981, 13.704652>,  <25.396980, 18.167801, 13.652219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.201784, 18.512981, 13.704652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293064, -0.303447, 0.906661,
		0.822180, 0.404026, 0.400979,
		-0.487990, 0.862950, 0.131083,
		25.055387, 18.771866, 13.743977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421869, 18.153473, 14.337656>,  <25.396980, 18.167801, 13.652219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421869, 18.153473, 14.337656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136908, 18.424198, 14.263461>,  <24.965931, 18.586634, 14.218944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136908, 18.424198, 14.263461>,  <25.421869, 18.153473, 14.337656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.136908, 18.424198, 14.263461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426081, -0.207134, 0.880654,
		0.557617, 0.706414, 0.435940,
		-0.712403, 0.676813, -0.185488,
		24.923187, 18.627241, 14.207815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416052, 18.518227, 14.943596>,  <25.421869, 18.153473, 14.337656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416052, 18.518227, 14.943596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079111, 18.584015, 14.738310>,  <24.876945, 18.623487, 14.615138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079111, 18.584015, 14.738310>,  <25.416052, 18.518227, 14.943596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079111, 18.584015, 14.738310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527140, -0.053388, 0.848100,
		0.112086, 0.984936, 0.131669,
		-0.842354, 0.164469, -0.513215,
		24.826405, 18.633356, 14.584346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.007410, 18.982044, 15.349180>,  <25.416052, 18.518227, 14.943596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.007410, 18.982044, 15.349180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724789, 18.824398, 15.114079>,  <24.555216, 18.729811, 14.973019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724789, 18.824398, 15.114079>,  <25.007410, 18.982044, 15.349180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724789, 18.824398, 15.114079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669451, 0.103034, 0.735676,
		-0.229385, 0.913266, -0.336641,
		-0.706554, -0.394117, -0.587753,
		24.512823, 18.706163, 14.937754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.446388, 19.331928, 15.487081>,  <25.007410, 18.982044, 15.349180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.446388, 19.331928, 15.487081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.303616, 18.989525, 15.337495>,  <24.217951, 18.784082, 15.247744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.303616, 18.989525, 15.337495>,  <24.446388, 19.331928, 15.487081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.303616, 18.989525, 15.337495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594126, -0.100895, 0.798019,
		-0.720842, 0.507021, -0.472563,
		-0.356934, -0.856008, -0.373964,
		24.196535, 18.732723, 15.225306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.672937, 19.272068, 15.594557>,  <24.446388, 19.331928, 15.487081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.672937, 19.272068, 15.594557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.787512, 18.893801, 15.533027>,  <23.856256, 18.666840, 15.496108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.787512, 18.893801, 15.533027>,  <23.672937, 19.272068, 15.594557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.787512, 18.893801, 15.533027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687824, -0.314736, 0.654094,
		-0.666971, -0.081552, -0.740607,
		0.286438, -0.945669, -0.153826,
		23.873444, 18.610100, 15.486878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.018322, 18.865337, 15.643661>,  <23.672937, 19.272068, 15.594557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.018322, 18.865337, 15.643661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.338556, 18.634628, 15.708647>,  <23.530697, 18.496202, 15.747638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.338556, 18.634628, 15.708647>,  <23.018322, 18.865337, 15.643661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.338556, 18.634628, 15.708647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481125, -0.457117, 0.748039,
		-0.357183, -0.677036, -0.643462,
		0.800587, -0.576772, 0.162465,
		23.578732, 18.461596, 15.757385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.684593, 18.285818, 15.830522>,  <23.018322, 18.865337, 15.643661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.684593, 18.285818, 15.830522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.055420, 18.216660, 15.963582>,  <23.277916, 18.175165, 16.043419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.055420, 18.216660, 15.963582>,  <22.684593, 18.285818, 15.830522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.055420, 18.216660, 15.963582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361288, -0.648945, 0.669583,
		0.100105, -0.740930, -0.664079,
		0.927065, -0.172896, 0.332652,
		23.333540, 18.164791, 16.063377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.686502, 17.539501, 15.929065>,  <22.684593, 18.285818, 15.830522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.686502, 17.539501, 15.929065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.970102, 17.708370, 16.155018>,  <23.140263, 17.809690, 16.290590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.970102, 17.708370, 16.155018>,  <22.686502, 17.539501, 15.929065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.970102, 17.708370, 16.155018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212504, -0.635883, 0.741953,
		0.672430, -0.646084, -0.361128,
		0.708999, 0.422171, 0.564882,
		23.182802, 17.835022, 16.324482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.002069, 16.982574, 16.190266>,  <22.686502, 17.539501, 15.929065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.002069, 16.982574, 16.190266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.063629, 17.297922, 16.428522>,  <23.100565, 17.487131, 16.571476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.063629, 17.297922, 16.428522>,  <23.002069, 16.982574, 16.190266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.063629, 17.297922, 16.428522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218887, -0.560644, 0.798603,
		0.963537, -0.253282, 0.086281,
		0.153898, 0.788369, 0.595642,
		23.109798, 17.534433, 16.607214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.324865, 16.752363, 16.778877>,  <23.002069, 16.982574, 16.190266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.324865, 16.752363, 16.778877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.166073, 17.098454, 16.901379>,  <23.070797, 17.306108, 16.974880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.166073, 17.098454, 16.901379>,  <23.324865, 16.752363, 16.778877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.166073, 17.098454, 16.901379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321204, -0.443537, 0.836721,
		0.859787, 0.233793, 0.453990,
		-0.396981, 0.865225, 0.306252,
		23.046978, 17.358021, 16.993254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.411652, 16.826195, 17.505516>,  <23.324865, 16.752363, 16.778877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.411652, 16.826195, 17.505516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.103682, 17.071165, 17.433792>,  <22.918900, 17.218147, 17.390759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.103682, 17.071165, 17.433792>,  <23.411652, 16.826195, 17.505516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.103682, 17.071165, 17.433792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547872, -0.490321, 0.677806,
		0.327186, 0.620098, 0.713041,
		-0.769925, 0.612424, -0.179308,
		22.872704, 17.254892, 17.379999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.830664, 16.398811, 17.952726>,  <23.411652, 16.826195, 17.505516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.830664, 16.398811, 17.952726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170465, 16.569046, 17.828007>,  <24.374346, 16.671186, 17.753174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170465, 16.569046, 17.828007>,  <23.830664, 16.398811, 17.952726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.170465, 16.569046, 17.828007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523204, -0.755578, 0.394157,
		-0.067842, -0.497972, -0.864535,
		0.849503, 0.425588, -0.311801,
		24.425316, 16.696722, 17.734467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.245331, 15.809963, 17.925852>,  <23.830664, 16.398811, 17.952726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.245331, 15.809963, 17.925852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.490780, 16.125162, 17.945965>,  <24.638050, 16.314281, 17.958033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.490780, 16.125162, 17.945965>,  <24.245331, 15.809963, 17.925852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.490780, 16.125162, 17.945965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689879, -0.566016, 0.451323,
		0.384102, -0.242254, -0.890943,
		0.613622, 0.787997, 0.050281,
		24.674866, 16.361561, 17.961050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930626, 15.685077, 17.514515>,  <24.245331, 15.809963, 17.925852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930626, 15.685077, 17.514515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.963491, 15.938977, 17.821850>,  <24.983212, 16.091318, 18.006250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.963491, 15.938977, 17.821850>,  <24.930626, 15.685077, 17.514515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.963491, 15.938977, 17.821850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659874, -0.612397, 0.435358,
		0.746870, 0.471234, -0.469173,
		0.082164, 0.634750, 0.768336,
		24.988140, 16.129402, 18.052351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552753, 15.623514, 17.168032>,  <24.930626, 15.685077, 17.514515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552753, 15.623514, 17.168032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944794, 15.666490, 17.234795>,  <26.180017, 15.692275, 17.274853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944794, 15.666490, 17.234795>,  <25.552753, 15.623514, 17.168032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944794, 15.666490, 17.234795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135833, 0.250129, -0.958637,
		-0.144742, 0.962233, 0.230558,
		0.980102, 0.107438, 0.166907,
		26.238825, 15.698721, 17.284866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891113, 16.343622, 16.960768>,  <25.552753, 15.623514, 17.168032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891113, 16.343622, 16.960768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140802, 16.036604, 16.902498>,  <26.290615, 15.852393, 16.867537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140802, 16.036604, 16.902498>,  <25.891113, 16.343622, 16.960768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140802, 16.036604, 16.902498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115568, 0.275130, -0.954436,
		0.772651, 0.578946, 0.260446,
		0.624223, -0.767545, -0.145672,
		26.328070, 15.806340, 16.858797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553614, 16.525568, 16.636684>,  <25.891113, 16.343622, 16.960768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553614, 16.525568, 16.636684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471273, 16.157320, 16.503971>,  <26.421869, 15.936371, 16.424343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471273, 16.157320, 16.503971>,  <26.553614, 16.525568, 16.636684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471273, 16.157320, 16.503971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591707, 0.387142, -0.707110,
		0.779428, 0.050759, -0.624432,
		-0.205852, -0.920622, -0.331783,
		26.409517, 15.881133, 16.404436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892902, 16.416153, 15.962495>,  <26.553614, 16.525568, 16.636684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892902, 16.416153, 15.962495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535894, 16.241035, 16.005840>,  <26.321690, 16.135965, 16.031847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535894, 16.241035, 16.005840>,  <26.892902, 16.416153, 15.962495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535894, 16.241035, 16.005840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355746, 0.535693, -0.765819,
		0.277222, -0.722059, -0.633860,
		-0.892521, -0.437795, 0.108363,
		26.268139, 16.109697, 16.038349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567446, 15.952915, 15.418048>,  <26.892902, 16.416153, 15.962495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567446, 15.952915, 15.418048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263056, 16.143103, 15.594613>,  <26.080421, 16.257215, 15.700552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263056, 16.143103, 15.594613>,  <26.567446, 15.952915, 15.418048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263056, 16.143103, 15.594613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289104, 0.360575, -0.886795,
		-0.580807, -0.802443, -0.136928,
		-0.760975, 0.475470, 0.441413,
		26.034763, 16.285744, 15.727037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976357, 15.871792, 15.048366>,  <26.567446, 15.952915, 15.418048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976357, 15.871792, 15.048366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985865, 16.224691, 15.236439>,  <25.991570, 16.436432, 15.349282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985865, 16.224691, 15.236439>,  <25.976357, 15.871792, 15.048366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985865, 16.224691, 15.236439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293629, 0.455734, -0.840290,
		-0.955624, -0.118084, 0.269888,
		0.023773, 0.882248, 0.470183,
		25.992996, 16.489367, 15.377494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219723, 15.295033, 14.827204>,  <25.976357, 15.871792, 15.048366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219723, 15.295033, 14.827204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508123, 15.079607, 14.652800>,  <26.681164, 14.950352, 14.548157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508123, 15.079607, 14.652800>,  <26.219723, 15.295033, 14.827204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508123, 15.079607, 14.652800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462601, -0.094365, 0.881530,
		-0.515905, -0.837284, 0.181103,
		0.721001, -0.538564, -0.436011,
		26.724424, 14.918038, 14.521996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361893, 14.656767, 15.247660>,  <26.219723, 15.295033, 14.827204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361893, 14.656767, 15.247660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648886, 14.833791, 15.032492>,  <26.821083, 14.940005, 14.903391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648886, 14.833791, 15.032492>,  <26.361893, 14.656767, 15.247660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648886, 14.833791, 15.032492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574628, 0.060448, 0.816180,
		0.393724, -0.894699, -0.210937,
		0.717485, 0.442560, -0.537919,
		26.864132, 14.966558, 14.871116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.660922, 24.891005, 21.041641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.271164, 24.862885, 21.127069>,  <13.037309, 24.846012, 21.178326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.271164, 24.862885, 21.127069>,  <13.660922, 24.891005, 21.041641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.271164, 24.862885, 21.127069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071473, -0.803755, -0.590652,
		0.213179, -0.590793, 0.778151,
		-0.974395, -0.070298, 0.213569,
		12.978846, 24.841795, 21.191141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.661820, 24.229940, 21.129583>,  <13.660922, 24.891005, 21.041641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.661820, 24.229940, 21.129583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.274188, 24.327021, 21.111782>,  <13.041609, 24.385269, 21.101101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.274188, 24.327021, 21.111782>,  <13.661820, 24.229940, 21.129583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.274188, 24.327021, 21.111782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192268, -0.855786, -0.480274,
		-0.154649, -0.456867, 0.875989,
		-0.969080, 0.242699, -0.044505,
		12.983464, 24.399830, 21.098431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.201746, 23.593319, 21.410599>,  <13.661820, 24.229940, 21.129583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.201746, 23.593319, 21.410599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.007587, 23.796926, 21.126263>,  <12.891092, 23.919090, 20.955662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.007587, 23.796926, 21.126263>,  <13.201746, 23.593319, 21.410599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.007587, 23.796926, 21.126263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213980, -0.857481, -0.467910,
		-0.847704, -0.075017, 0.525139,
		-0.485398, 0.509018, -0.710837,
		12.861969, 23.949633, 20.913012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.677846, 23.117708, 21.280449>,  <13.201746, 23.593319, 21.410599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.677846, 23.117708, 21.280449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.638423, 23.366428, 20.969669>,  <12.614769, 23.515661, 20.783201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.638423, 23.366428, 20.969669>,  <12.677846, 23.117708, 21.280449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.638423, 23.366428, 20.969669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255221, -0.770430, -0.584209,
		-0.961846, 0.140714, 0.234629,
		-0.098559, 0.621802, -0.776949,
		12.608855, 23.552969, 20.736586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.138802, 22.753586, 20.883240>,  <12.677846, 23.117708, 21.280449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.138802, 22.753586, 20.883240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.275048, 23.040678, 20.640310>,  <12.356796, 23.212934, 20.494553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.275048, 23.040678, 20.640310>,  <12.138802, 22.753586, 20.883240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.275048, 23.040678, 20.640310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263178, -0.547344, -0.794451,
		-0.902617, 0.430437, 0.002456,
		0.340617, 0.717732, -0.607323,
		12.377234, 23.255997, 20.458113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.628677, 22.913465, 20.320358>,  <12.138802, 22.753586, 20.883240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.628677, 22.913465, 20.320358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.987764, 23.020443, 20.180313>,  <12.203217, 23.084629, 20.096285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.987764, 23.020443, 20.180313>,  <11.628677, 22.913465, 20.320358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.987764, 23.020443, 20.180313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143197, -0.574412, -0.805944,
		-0.416652, 0.773644, -0.477363,
		0.897717, 0.267442, -0.350114,
		12.257079, 23.100676, 20.075279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.476154, 22.880436, 19.710608>,  <11.628677, 22.913465, 20.320358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.476154, 22.880436, 19.710608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.875413, 22.901829, 19.698988>,  <12.114968, 22.914665, 19.692017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.875413, 22.901829, 19.698988>,  <11.476154, 22.880436, 19.710608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.875413, 22.901829, 19.698988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015331, -0.682837, -0.730410,
		-0.058900, 0.728611, -0.682391,
		0.998146, 0.053483, -0.029049,
		12.174857, 22.917873, 19.690273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.747481, 23.179180, 19.015133>,  <11.476154, 22.880436, 19.710608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.747481, 23.179180, 19.015133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.019099, 22.928003, 19.167229>,  <12.182070, 22.777296, 19.258486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.019099, 22.928003, 19.167229>,  <11.747481, 23.179180, 19.015133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.019099, 22.928003, 19.167229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084995, -0.447236, -0.890368,
		0.729159, 0.636919, -0.250322,
		0.679045, -0.627944, 0.380241,
		12.222813, 22.739620, 19.281301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.245498, 23.181343, 18.521706>,  <11.747481, 23.179180, 19.015133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.245498, 23.181343, 18.521706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.285008, 22.852238, 18.745602>,  <12.308715, 22.654776, 18.879938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.285008, 22.852238, 18.745602>,  <12.245498, 23.181343, 18.521706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.285008, 22.852238, 18.745602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128241, -0.547274, -0.827071,
		0.986812, 0.153477, 0.051453,
		0.098777, -0.822761, 0.559738,
		12.314642, 22.605410, 18.913523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.754380, 22.796839, 18.155472>,  <12.245498, 23.181343, 18.521706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.754380, 22.796839, 18.155472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.607677, 22.522732, 18.407154>,  <12.519654, 22.358267, 18.558163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.607677, 22.522732, 18.407154>,  <12.754380, 22.796839, 18.155472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.607677, 22.522732, 18.407154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189176, -0.717137, -0.670766,
		0.910879, -0.126979, 0.392652,
		-0.366758, -0.685267, 0.629204,
		12.497649, 22.317152, 18.595915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.239034, 22.284277, 18.132378>,  <12.754380, 22.796839, 18.155472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.239034, 22.284277, 18.132378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.915711, 22.112820, 18.293823>,  <12.721718, 22.009945, 18.390692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.915711, 22.112820, 18.293823>,  <13.239034, 22.284277, 18.132378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.915711, 22.112820, 18.293823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106019, -0.780294, -0.616361,
		0.579138, -0.455418, 0.676161,
		-0.808306, -0.428644, 0.403615,
		12.673220, 21.984226, 18.414907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.401978, 21.653111, 18.427008>,  <13.239034, 22.284277, 18.132378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.401978, 21.653111, 18.427008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.009430, 21.633524, 18.352697>,  <12.773901, 21.621773, 18.308111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.009430, 21.633524, 18.352697>,  <13.401978, 21.653111, 18.427008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.009430, 21.633524, 18.352697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137345, -0.854947, -0.500202,
		-0.134334, -0.516399, 0.845746,
		-0.981372, -0.048964, -0.185773,
		12.715018, 21.618835, 18.296965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.268188, 20.955381, 18.502043>,  <13.401978, 21.653111, 18.427008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.268188, 20.955381, 18.502043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.969844, 21.110880, 18.285683>,  <12.790837, 21.204178, 18.155867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.969844, 21.110880, 18.285683>,  <13.268188, 20.955381, 18.502043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.969844, 21.110880, 18.285683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160561, -0.683166, -0.712394,
		-0.646460, -0.618194, 0.447130,
		-0.745861, 0.388743, -0.540897,
		12.746086, 21.227503, 18.123413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.971651, 20.415346, 18.208778>,  <13.268188, 20.955381, 18.502043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.971651, 20.415346, 18.208778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.813922, 20.710707, 17.989954>,  <12.719284, 20.887922, 17.858660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.813922, 20.710707, 17.989954>,  <12.971651, 20.415346, 18.208778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.813922, 20.710707, 17.989954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104933, -0.555224, -0.825055,
		-0.912961, -0.382743, 0.141455,
		-0.394323, 0.738400, -0.547060,
		12.695625, 20.932226, 17.825836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.466942, 20.097391, 17.738560>,  <12.971651, 20.415346, 18.208778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.466942, 20.097391, 17.738560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.578884, 20.442678, 17.570498>,  <12.646049, 20.649851, 17.469660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.578884, 20.442678, 17.570498>,  <12.466942, 20.097391, 17.738560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.578884, 20.442678, 17.570498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044852, -0.425411, -0.903888,
		-0.958994, 0.271802, -0.080336,
		0.279855, 0.863220, -0.420158,
		12.662841, 20.701645, 17.444450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.911806, 20.350279, 17.270458>,  <12.466942, 20.097391, 17.738560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.911806, 20.350279, 17.270458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.284593, 20.460548, 17.176271>,  <12.508265, 20.526711, 17.119759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.284593, 20.460548, 17.176271>,  <11.911806, 20.350279, 17.270458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.284593, 20.460548, 17.176271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077591, -0.482770, -0.872303,
		-0.354147, 0.831227, -0.428535,
		0.931965, 0.275673, -0.235468,
		12.564182, 20.543251, 17.105631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.759346, 20.462986, 16.592596>,  <11.911806, 20.350279, 17.270458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.759346, 20.462986, 16.592596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.157594, 20.491386, 16.616930>,  <12.396543, 20.508427, 16.631531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.157594, 20.491386, 16.616930>,  <11.759346, 20.462986, 16.592596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.157594, 20.491386, 16.616930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085380, -0.425237, -0.901046,
		-0.038109, 0.902293, -0.429437,
		0.995619, 0.071003, 0.060833,
		12.456280, 20.512688, 16.635180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.883779, 20.579630, 15.966179>,  <11.759346, 20.462986, 16.592596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.883779, 20.579630, 15.966179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.226142, 20.434771, 16.113838>,  <12.431561, 20.347855, 16.202435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.226142, 20.434771, 16.113838>,  <11.883779, 20.579630, 15.966179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.226142, 20.434771, 16.113838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128962, -0.541811, -0.830548,
		0.500788, 0.758479, -0.417038,
		0.855909, -0.362146, 0.369148,
		12.482915, 20.326126, 16.224583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.310464, 20.748899, 15.391006>,  <11.883779, 20.579630, 15.966179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.310464, 20.748899, 15.391006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.532201, 20.497810, 15.609609>,  <12.665243, 20.347157, 15.740770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.532201, 20.497810, 15.609609>,  <12.310464, 20.748899, 15.391006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.532201, 20.497810, 15.609609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508083, -0.264850, -0.819577,
		0.659208, 0.731997, 0.172117,
		0.554343, -0.627721, 0.546507,
		12.698503, 20.309494, 15.773561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.958428, 20.879644, 15.176550>,  <12.310464, 20.748899, 15.391006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.958428, 20.879644, 15.176550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.962463, 20.514959, 15.340834>,  <12.964885, 20.296148, 15.439404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.962463, 20.514959, 15.340834>,  <12.958428, 20.879644, 15.176550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.962463, 20.514959, 15.340834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343323, -0.382604, -0.857755,
		0.939163, 0.149659, 0.309152,
		0.010089, -0.911711, 0.410709,
		12.965490, 20.241446, 15.464046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.626863, 20.667690, 15.165832>,  <12.958428, 20.879644, 15.176550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.626863, 20.667690, 15.165832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.405660, 20.334867, 15.183100>,  <13.272938, 20.135174, 15.193460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.405660, 20.334867, 15.183100>,  <13.626863, 20.667690, 15.165832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.405660, 20.334867, 15.183100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422946, -0.324987, -0.845873,
		0.717844, -0.449515, 0.531635,
		-0.553007, -0.832057, 0.043169,
		13.239758, 20.085251, 15.196051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.147756, 20.179199, 15.121420>,  <13.626863, 20.667690, 15.165832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.147756, 20.179199, 15.121420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.784939, 20.037178, 15.030901>,  <13.567248, 19.951965, 14.976589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.784939, 20.037178, 15.030901>,  <14.147756, 20.179199, 15.121420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.784939, 20.037178, 15.030901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373369, -0.429877, -0.822071,
		0.194600, -0.830146, 0.522483,
		-0.907042, -0.355054, -0.226297,
		13.512826, 19.930662, 14.963012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590644, 20.303326, 14.548997>,  <14.147756, 20.179199, 15.121420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590644, 20.303326, 14.548997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.591695, 20.097361, 14.206101>,  <14.592325, 19.973782, 14.000364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.591695, 20.097361, 14.206101>,  <14.590644, 20.303326, 14.548997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.591695, 20.097361, 14.206101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999888, 0.013987, -0.005336,
		0.014738, -0.857128, 0.514893,
		0.002628, -0.514914, -0.857238,
		14.592484, 19.942886, 13.948930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.827066, 20.778364, 15.018709>,  <14.590644, 20.303326, 14.548997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.827066, 20.778364, 15.018709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.196237, 20.714943, 14.878384>,  <15.417739, 20.676889, 14.794188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.196237, 20.714943, 14.878384>,  <14.827066, 20.778364, 15.018709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.196237, 20.714943, 14.878384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355434, 0.701028, 0.618245,
		0.147906, -0.695285, 0.703351,
		0.922925, -0.158553, -0.350814,
		15.473114, 20.667377, 14.773139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.157408, 20.706350, 15.658671>,  <14.827066, 20.778364, 15.018709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.157408, 20.706350, 15.658671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.432872, 20.775061, 15.376894>,  <15.598150, 20.816286, 15.207828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.432872, 20.775061, 15.376894>,  <15.157408, 20.706350, 15.658671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.432872, 20.775061, 15.376894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357767, 0.764535, 0.536180,
		0.630674, -0.621273, 0.465049,
		0.688661, 0.171776, -0.704443,
		15.639470, 20.826593, 15.165561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.925849, 20.762104, 15.929933>,  <15.157408, 20.706350, 15.658671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.925849, 20.762104, 15.929933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.863546, 20.982687, 15.602119>,  <15.826164, 21.115036, 15.405432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.863546, 20.982687, 15.602119>,  <15.925849, 20.762104, 15.929933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.863546, 20.982687, 15.602119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227504, 0.827381, 0.513501,
		0.961240, -0.106465, -0.254329,
		-0.155757, 0.551458, -0.819533,
		15.816819, 21.148125, 15.356259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532639, 21.196915, 15.925192>,  <15.925849, 20.762104, 15.929933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532639, 21.196915, 15.925192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.235050, 21.358105, 15.711982>,  <16.056498, 21.454819, 15.584056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.235050, 21.358105, 15.711982>,  <16.532639, 21.196915, 15.925192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.235050, 21.358105, 15.711982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134583, 0.871710, 0.471178,
		0.654517, 0.278807, -0.702762,
		-0.743972, 0.402974, -0.533026,
		16.011858, 21.478996, 15.552073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.895931, 21.646481, 15.581226>,  <16.532639, 21.196915, 15.925192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.895931, 21.646481, 15.581226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.512289, 21.748938, 15.629398>,  <16.282103, 21.810411, 15.658301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.512289, 21.748938, 15.629398>,  <16.895931, 21.646481, 15.581226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.512289, 21.748938, 15.629398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283042, 0.867673, 0.408693,
		0.000190, 0.426067, -0.904691,
		-0.959107, 0.256143, 0.120430,
		16.224556, 21.825781, 15.665527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.857775, 22.442701, 15.612854>,  <16.895931, 21.646481, 15.581226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.857775, 22.442701, 15.612854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.494034, 22.325853, 15.731340>,  <16.275789, 22.255745, 15.802432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.494034, 22.325853, 15.731340>,  <16.857775, 22.442701, 15.612854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494034, 22.325853, 15.731340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006098, 0.721297, 0.692599,
		-0.415982, 0.628011, -0.657694,
		-0.909352, -0.292119, 0.296217,
		16.221228, 22.238218, 15.820206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.488050, 23.070929, 15.749475>,  <16.857775, 22.442701, 15.612854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.488050, 23.070929, 15.749475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.250097, 22.810194, 15.937613>,  <16.107325, 22.653753, 16.050495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.250097, 22.810194, 15.937613>,  <16.488050, 23.070929, 15.749475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.250097, 22.810194, 15.937613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114774, 0.648028, 0.752918,
		-0.795575, 0.393916, -0.460316,
		-0.594884, -0.651836, 0.470344,
		16.071632, 22.614643, 16.078716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.993893, 23.516146, 16.014746>,  <16.488050, 23.070929, 15.749475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.993893, 23.516146, 16.014746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.975231, 23.182943, 16.235264>,  <15.964034, 22.983023, 16.367575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.975231, 23.182943, 16.235264>,  <15.993893, 23.516146, 16.014746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.975231, 23.182943, 16.235264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044193, 0.549633, 0.834237,
		-0.997933, 0.063284, 0.011171,
		-0.046654, -0.833006, 0.551293,
		15.961235, 22.933041, 16.400652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.550036, 23.623310, 16.545116>,  <15.993893, 23.516146, 16.014746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.550036, 23.623310, 16.545116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.736161, 23.300482, 16.690510>,  <15.847836, 23.106785, 16.777746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.736161, 23.300482, 16.690510>,  <15.550036, 23.623310, 16.545116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.736161, 23.300482, 16.690510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032079, 0.425757, 0.904269,
		-0.884565, -0.409107, 0.224000,
		0.465313, -0.807070, 0.363486,
		15.875755, 23.058361, 16.799555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.178326, 23.239559, 16.995953>,  <15.550036, 23.623310, 16.545116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.178326, 23.239559, 16.995953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.520533, 23.080223, 17.128265>,  <15.725857, 22.984621, 17.207653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.520533, 23.080223, 17.128265>,  <15.178326, 23.239559, 16.995953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520533, 23.080223, 17.128265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225120, 0.289142, 0.930439,
		-0.466274, -0.870472, 0.157692,
		0.855517, -0.398340, 0.330781,
		15.777187, 22.960720, 17.227499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036267, 23.014076, 17.618137>,  <15.178326, 23.239559, 16.995953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036267, 23.014076, 17.618137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.435305, 23.041809, 17.618721>,  <15.674726, 23.058449, 17.619072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.435305, 23.041809, 17.618721>,  <15.036267, 23.014076, 17.618137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.435305, 23.041809, 17.618721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026763, 0.365500, 0.930426,
		0.063975, -0.928226, 0.366476,
		0.997592, 0.069332, 0.001459,
		15.734582, 23.062609, 17.619158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.288494, 22.654036, 18.245821>,  <15.036267, 23.014076, 17.618137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.288494, 22.654036, 18.245821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.552030, 22.926117, 18.117289>,  <15.710151, 23.089365, 18.040169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.552030, 22.926117, 18.117289>,  <15.288494, 22.654036, 18.245821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.552030, 22.926117, 18.117289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146809, 0.302673, 0.941720,
		0.737819, -0.667616, 0.099553,
		0.658840, 0.680204, -0.321330,
		15.749681, 23.130178, 18.020889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.878656, 22.585676, 18.659151>,  <15.288494, 22.654036, 18.245821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.878656, 22.585676, 18.659151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.908071, 22.962582, 18.528469>,  <15.925719, 23.188725, 18.450060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.908071, 22.962582, 18.528469>,  <15.878656, 22.585676, 18.659151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.908071, 22.962582, 18.528469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157911, 0.312456, 0.936715,
		0.984711, -0.120471, -0.125817,
		0.073535, 0.942262, -0.326703,
		15.930131, 23.245260, 18.430458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.521811, 22.843817, 18.999908>,  <15.878656, 22.585676, 18.659151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.521811, 22.843817, 18.999908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.300121, 23.152884, 18.876091>,  <16.167107, 23.338324, 18.801800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.300121, 23.152884, 18.876091>,  <16.521811, 22.843817, 18.999908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300121, 23.152884, 18.876091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072504, 0.415286, 0.906797,
		0.829203, 0.480127, -0.286183,
		-0.554225, 0.772668, -0.309545,
		16.133854, 23.384684, 18.783228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.957870, 23.453289, 19.200018>,  <16.521811, 22.843817, 18.999908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.957870, 23.453289, 19.200018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.590067, 23.603008, 19.152008>,  <16.369385, 23.692839, 19.123201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.590067, 23.603008, 19.152008>,  <16.957870, 23.453289, 19.200018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.590067, 23.603008, 19.152008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026393, 0.363459, 0.931236,
		0.392182, 0.853112, -0.344082,
		-0.919509, 0.374296, -0.120026,
		16.314215, 23.715298, 19.115999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.989124, 24.147247, 19.448706>,  <16.957870, 23.453289, 19.200018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.989124, 24.147247, 19.448706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.594528, 24.081800, 19.445356>,  <16.357771, 24.042532, 19.443346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.594528, 24.081800, 19.445356>,  <16.989124, 24.147247, 19.448706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.594528, 24.081800, 19.445356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090198, 0.499741, 0.861466,
		-0.136765, 0.850582, -0.507746,
		-0.986489, -0.163616, -0.008373,
		16.298582, 24.032715, 19.442844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646006, 24.773207, 19.592186>,  <16.989124, 24.147247, 19.448706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.646006, 24.773207, 19.592186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.392155, 24.476143, 19.677700>,  <16.239843, 24.297905, 19.729008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.392155, 24.476143, 19.677700>,  <16.646006, 24.773207, 19.592186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.392155, 24.476143, 19.677700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183399, 0.413456, 0.891863,
		-0.750741, 0.526793, -0.398594,
		-0.634628, -0.742660, 0.213785,
		16.201767, 24.253345, 19.741835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.003206, 25.190516, 19.835291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.954627, 24.820986, 19.980511>,  <15.925480, 24.599268, 20.067642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.954627, 24.820986, 19.980511>,  <16.003206, 25.190516, 19.835291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.954627, 24.820986, 19.980511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226178, 0.381889, 0.896105,
		-0.966486, 0.026716, -0.255327,
		-0.121446, -0.923822, 0.363047,
		15.918193, 24.543839, 20.089424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.429857, 25.157158, 20.188801>,  <16.003206, 25.190516, 19.835291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.429857, 25.157158, 20.188801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.640149, 24.851933, 20.339184>,  <15.766324, 24.668798, 20.429415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.640149, 24.851933, 20.339184>,  <15.429857, 25.157158, 20.188801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.640149, 24.851933, 20.339184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272835, 0.267359, 0.924165,
		-0.805711, -0.588435, -0.067632,
		0.525729, -0.763062, 0.375960,
		15.797868, 24.623014, 20.451971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.953096, 24.815105, 20.581072>,  <15.429857, 25.157158, 20.188801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.953096, 24.815105, 20.581072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.323743, 24.711672, 20.690264>,  <15.546130, 24.649611, 20.755779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.323743, 24.711672, 20.690264>,  <14.953096, 24.815105, 20.581072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.323743, 24.711672, 20.690264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215963, 0.228299, 0.949337,
		-0.307806, -0.938623, 0.155700,
		0.926615, -0.258586, 0.272980,
		15.601727, 24.634096, 20.772158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.776060, 24.380583, 21.179131>,  <14.953096, 24.815105, 20.581072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.776060, 24.380583, 21.179131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.155029, 24.498814, 21.228159>,  <15.382411, 24.569752, 21.257576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.155029, 24.498814, 21.228159>,  <14.776060, 24.380583, 21.179131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.155029, 24.498814, 21.228159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162951, 0.116004, 0.979791,
		0.275385, -0.948249, 0.158070,
		0.947423, 0.295578, 0.122572,
		15.439257, 24.587486, 21.264931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.943537, 24.140104, 21.919441>,  <14.776060, 24.380583, 21.179131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.943537, 24.140104, 21.919441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.225787, 24.401043, 21.808783>,  <15.395138, 24.557606, 21.742388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.225787, 24.401043, 21.808783>,  <14.943537, 24.140104, 21.919441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.225787, 24.401043, 21.808783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104134, 0.290712, 0.951127,
		0.700890, -0.699949, 0.137203,
		0.705627, 0.652348, -0.276645,
		15.437475, 24.596746, 21.725788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.467403, 24.100233, 22.451241>,  <14.943537, 24.140104, 21.919441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.467403, 24.100233, 22.451241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.529027, 24.449699, 22.266644>,  <15.566001, 24.659378, 22.155886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.529027, 24.449699, 22.266644>,  <15.467403, 24.100233, 22.451241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.529027, 24.449699, 22.266644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034879, 0.471586, 0.881130,
		0.987446, -0.119649, 0.103125,
		0.154059, 0.873665, -0.461493,
		15.575245, 24.711800, 22.128195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.065691, 24.421515, 22.613930>,  <15.467403, 24.100233, 22.451241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.065691, 24.421515, 22.613930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.861170, 24.736635, 22.476562>,  <15.738457, 24.925707, 22.394142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.861170, 24.736635, 22.476562>,  <16.065691, 24.421515, 22.613930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.861170, 24.736635, 22.476562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267871, 0.525791, 0.807334,
		0.816586, 0.320802, -0.479869,
		-0.511305, 0.787801, -0.343420,
		15.707778, 24.972975, 22.373537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.398819, 24.930679, 22.837418>,  <16.065691, 24.421515, 22.613930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.398819, 24.930679, 22.837418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.037849, 25.088436, 22.768034>,  <15.821268, 25.183090, 22.726404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.037849, 25.088436, 22.768034>,  <16.398819, 24.930679, 22.837418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037849, 25.088436, 22.768034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097561, 0.579188, 0.809335,
		0.419661, 0.713439, -0.561150,
		-0.902423, 0.394393, -0.173458,
		15.767122, 25.206755, 22.715996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.609529, 25.606329, 23.022282>,  <16.398819, 24.930679, 22.837418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.609529, 25.606329, 23.022282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.213421, 25.552612, 23.036865>,  <15.975756, 25.520382, 23.045616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.213421, 25.552612, 23.036865>,  <16.609529, 25.606329, 23.022282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.213421, 25.552612, 23.036865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019496, 0.393316, 0.919197,
		-0.137782, 0.909543, -0.392107,
		-0.990271, -0.134293, 0.036459,
		15.916340, 25.512323, 23.047804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.298304, 26.212978, 23.299496>,  <16.609529, 25.606329, 23.022282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.298304, 26.212978, 23.299496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.037315, 25.916067, 23.360565>,  <15.880723, 25.737921, 23.397207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.037315, 25.916067, 23.360565>,  <16.298304, 26.212978, 23.299496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037315, 25.916067, 23.360565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006250, 0.206728, 0.978378,
		-0.757790, 0.637407, -0.139523,
		-0.652469, -0.742277, 0.152672,
		15.841575, 25.693384, 23.406366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.810211, 26.527586, 23.725815>,  <16.298304, 26.212978, 23.299496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.810211, 26.527586, 23.725815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.774462, 26.132885, 23.779966>,  <15.753012, 25.896065, 23.812458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.774462, 26.132885, 23.779966>,  <15.810211, 26.527586, 23.725815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.774462, 26.132885, 23.779966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076003, 0.142284, 0.986904,
		-0.993094, 0.077914, -0.087712,
		-0.089374, -0.986755, 0.135380,
		15.747649, 25.836859, 23.820580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.260756, 26.532833, 24.142897>,  <15.810211, 26.527586, 23.725815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.260756, 26.532833, 24.142897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.434744, 26.175568, 24.188601>,  <15.539137, 25.961208, 24.216022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.434744, 26.175568, 24.188601>,  <15.260756, 26.532833, 24.142897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.434744, 26.175568, 24.188601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111289, 0.179247, 0.977489,
		-0.893540, -0.412464, 0.177367,
		0.434972, -0.893165, 0.114262,
		15.565235, 25.907618, 24.222879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.777387, 26.253765, 24.652643>,  <15.260756, 26.532833, 24.142897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.777387, 26.253765, 24.652643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.121779, 26.050692, 24.640200>,  <15.328415, 25.928848, 24.632734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.121779, 26.050692, 24.640200>,  <14.777387, 26.253765, 24.652643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.121779, 26.050692, 24.640200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015808, -0.087840, 0.996009,
		-0.508391, -0.857054, -0.083654,
		0.860981, -0.507684, -0.031109,
		15.380074, 25.898386, 24.630867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.687307, 25.785625, 25.170563>,  <14.777387, 26.253765, 24.652643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.687307, 25.785625, 25.170563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.079377, 25.716234, 25.132267>,  <15.314619, 25.674601, 25.109289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.079377, 25.716234, 25.132267>,  <14.687307, 25.785625, 25.170563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.079377, 25.716234, 25.132267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060988, -0.195580, 0.978790,
		-0.188497, -0.965227, -0.181124,
		0.980178, -0.173453, -0.095734,
		15.373429, 25.664190, 25.103546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.862590, 25.202404, 25.582521>,  <14.687307, 25.785625, 25.170563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.862590, 25.202404, 25.582521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.185637, 25.433081, 25.533237>,  <15.379466, 25.571486, 25.503666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.185637, 25.433081, 25.533237>,  <14.862590, 25.202404, 25.582521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.185637, 25.433081, 25.533237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094715, 0.079372, 0.992335,
		0.582049, -0.813098, 0.009481,
		0.807619, 0.576690, -0.123212,
		15.427923, 25.606087, 25.496273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.392492, 24.937860, 26.022661>,  <14.862590, 25.202404, 25.582521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.392492, 24.937860, 26.022661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.538216, 25.300142, 25.935966>,  <15.625649, 25.517511, 25.883949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.538216, 25.300142, 25.935966>,  <15.392492, 24.937860, 26.022661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.538216, 25.300142, 25.935966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160696, 0.168103, 0.972583,
		0.917309, -0.389149, -0.084302,
		0.364308, 0.905706, -0.216737,
		15.647509, 25.571854, 25.870945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.068247, 24.952972, 26.336412>,  <15.392492, 24.937860, 26.022661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.068247, 24.952972, 26.336412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.959747, 25.335815, 26.295671>,  <15.894648, 25.565521, 26.271227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.959747, 25.335815, 26.295671>,  <16.068247, 24.952972, 26.336412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.959747, 25.335815, 26.295671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169261, 0.151605, 0.973841,
		0.947510, 0.246912, -0.203123,
		-0.271248, 0.957105, -0.101854,
		15.878373, 25.622948, 26.265116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605394, 25.445709, 26.636600>,  <16.068247, 24.952972, 26.336412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605394, 25.445709, 26.636600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.244595, 25.618364, 26.640215>,  <16.028114, 25.721958, 26.642384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.244595, 25.618364, 26.640215>,  <16.605394, 25.445709, 26.636600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.244595, 25.618364, 26.640215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126337, 0.243881, 0.961541,
		0.412836, 0.868452, -0.274513,
		-0.902001, 0.431640, 0.009035,
		15.973994, 25.747856, 26.642925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.757330, 26.108194, 26.983795>,  <16.605394, 25.445709, 26.636600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.757330, 26.108194, 26.983795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.359173, 26.123940, 27.018757>,  <16.120277, 26.133387, 27.039734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.359173, 26.123940, 27.018757>,  <16.757330, 26.108194, 26.983795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.359173, 26.123940, 27.018757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095307, 0.308422, 0.946463,
		0.010300, 0.950435, -0.310753,
		-0.995395, 0.039365, 0.087406,
		16.060555, 26.135750, 27.044979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.620485, 26.749878, 27.282713>,  <16.757330, 26.108194, 26.983795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.620485, 26.749878, 27.282713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.285831, 26.539927, 27.345385>,  <16.085039, 26.413956, 27.382988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.285831, 26.539927, 27.345385>,  <16.620485, 26.749878, 27.282713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.285831, 26.539927, 27.345385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089282, 0.412873, 0.906402,
		-0.540439, 0.744337, -0.392285,
		-0.836633, -0.524879, 0.156677,
		16.034842, 26.382463, 27.392387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.124466, 27.260054, 27.573799>,  <16.620485, 26.749878, 27.282713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.124466, 27.260054, 27.573799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.995572, 26.900164, 27.691549>,  <15.918236, 26.684229, 27.762199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.995572, 26.900164, 27.691549>,  <16.124466, 27.260054, 27.573799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.995572, 26.900164, 27.691549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083927, 0.282586, 0.955564,
		-0.942933, 0.332620, -0.015547,
		-0.322233, -0.899727, 0.294375,
		15.898902, 26.630245, 27.779861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.620510, 27.376701, 28.055428>,  <16.124466, 27.260054, 27.573799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.620510, 27.376701, 28.055428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.761821, 27.012846, 28.142834>,  <15.846607, 26.794533, 28.195278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.761821, 27.012846, 28.142834>,  <15.620510, 27.376701, 28.055428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.761821, 27.012846, 28.142834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025157, 0.224257, 0.974205,
		-0.935180, -0.349662, 0.056341,
		0.353277, -0.909640, 0.218517,
		15.867804, 26.739954, 28.208389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.259926, 27.348158, 28.611700>,  <15.620510, 27.376701, 28.055428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.259926, 27.348158, 28.611700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.525653, 27.049189, 28.608997>,  <15.685089, 26.869808, 28.607376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.525653, 27.049189, 28.608997>,  <15.259926, 27.348158, 28.611700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.525653, 27.049189, 28.608997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054917, 0.039793, 0.997698,
		-0.745431, -0.663158, 0.067481,
		0.664316, -0.747421, -0.006756,
		15.724948, 26.824963, 28.606970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.467449, 27.288137, 28.793840>,  <15.259926, 27.348158, 28.611700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.467449, 27.288137, 28.793840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.645531, 27.599545, 28.970793>,  <14.752379, 27.786388, 29.076965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.645531, 27.599545, 28.970793>,  <14.467449, 27.288137, 28.793840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.645531, 27.599545, 28.970793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699210, 0.610884, -0.371384,
		-0.559374, -0.143977, 0.816316,
		0.445203, 0.778519, 0.442383,
		14.779092, 27.833099, 29.103508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.488822, 27.097294, 28.096766>,  <14.467449, 27.288137, 28.793840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.488822, 27.097294, 28.096766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.155135, 27.214203, 28.283810>,  <13.954923, 27.284348, 28.396036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.155135, 27.214203, 28.283810>,  <14.488822, 27.097294, 28.096766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.155135, 27.214203, 28.283810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542012, -0.590703, -0.597741,
		0.101516, -0.752096, 0.651189,
		-0.834217, 0.292271, 0.467610,
		13.904870, 27.301884, 28.424093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.053420, 26.625416, 28.158403>,  <14.488822, 27.097294, 28.096766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.053420, 26.625416, 28.158403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.773924, 26.908453, 28.200500>,  <13.606226, 27.078276, 28.225758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.773924, 26.908453, 28.200500>,  <14.053420, 26.625416, 28.158403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.773924, 26.908453, 28.200500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508484, -0.387776, -0.768813,
		-0.503197, -0.590713, 0.630754,
		-0.698739, 0.707593, 0.105240,
		13.564301, 27.120731, 28.232073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.524645, 26.313482, 27.888201>,  <14.053420, 26.625416, 28.158403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.524645, 26.313482, 27.888201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.391450, 26.690655, 27.888882>,  <13.311533, 26.916958, 27.889290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.391450, 26.690655, 27.888882>,  <13.524645, 26.313482, 27.888201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.391450, 26.690655, 27.888882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431377, -0.150733, -0.889491,
		-0.838471, -0.296922, 0.456950,
		-0.332987, 0.942930, 0.001700,
		13.291553, 26.973534, 27.889391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.804389, 26.271313, 27.791679>,  <13.524645, 26.313482, 27.888201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.804389, 26.271313, 27.791679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.938401, 26.629219, 27.673597>,  <13.018808, 26.843964, 27.602749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.938401, 26.629219, 27.673597>,  <12.804389, 26.271313, 27.791679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.938401, 26.629219, 27.673597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416664, -0.140313, -0.898167,
		-0.845071, 0.423915, 0.325808,
		0.335031, 0.894767, -0.295204,
		13.038911, 26.897650, 27.585035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.346984, 26.470137, 27.272879>,  <12.804389, 26.271313, 27.791679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.346984, 26.470137, 27.272879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.636771, 26.738401, 27.209183>,  <12.810643, 26.899361, 27.170965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.636771, 26.738401, 27.209183>,  <12.346984, 26.470137, 27.272879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.636771, 26.738401, 27.209183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200775, -0.015693, -0.979512,
		-0.659420, 0.741597, 0.123283,
		0.724468, 0.670662, -0.159242,
		12.854112, 26.939600, 27.161409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.091202, 27.013538, 26.871140>,  <12.346984, 26.470137, 27.272879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.091202, 27.013538, 26.871140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.485469, 27.024628, 26.804579>,  <12.722030, 27.031281, 26.764643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.485469, 27.024628, 26.804579>,  <12.091202, 27.013538, 26.871140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.485469, 27.024628, 26.804579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168163, 0.083146, -0.982246,
		-0.013394, 0.996152, 0.086616,
		0.985668, 0.027721, -0.166402,
		12.781169, 27.032944, 26.754658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.211339, 27.411211, 26.268265>,  <12.091202, 27.013538, 26.871140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.211339, 27.411211, 26.268265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.558030, 27.215111, 26.305002>,  <12.766045, 27.097450, 26.327045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.558030, 27.215111, 26.305002>,  <12.211339, 27.411211, 26.268265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.558030, 27.215111, 26.305002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048551, -0.266191, -0.962697,
		0.496412, 0.829937, -0.254518,
		0.866728, -0.490251, 0.091846,
		12.818048, 27.068035, 26.332556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.425823, 27.449141, 25.645683>,  <12.211339, 27.411211, 26.268265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.425823, 27.449141, 25.645683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.659590, 27.162169, 25.797340>,  <12.799850, 26.989985, 25.888334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.659590, 27.162169, 25.797340>,  <12.425823, 27.449141, 25.645683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.659590, 27.162169, 25.797340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105007, -0.396449, -0.912032,
		0.804631, 0.572819, -0.156356,
		0.584416, -0.717431, 0.379145,
		12.834914, 26.946939, 25.911083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.054740, 27.513947, 25.237385>,  <12.425823, 27.449141, 25.645683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.054740, 27.513947, 25.237385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.025139, 27.150042, 25.400778>,  <13.007379, 26.931700, 25.498814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.025139, 27.150042, 25.400778>,  <13.054740, 27.513947, 25.237385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.025139, 27.150042, 25.400778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094282, -0.414153, -0.905311,
		0.992791, -0.028482, 0.116423,
		-0.074002, -0.909762, 0.408482,
		13.002938, 26.877113, 25.523323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.695371, 27.131155, 25.094854>,  <13.054740, 27.513947, 25.237385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.695371, 27.131155, 25.094854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.417775, 26.847080, 25.142204>,  <13.251218, 26.676636, 25.170614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.417775, 26.847080, 25.142204>,  <13.695371, 27.131155, 25.094854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.417775, 26.847080, 25.142204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284960, -0.421923, -0.860685,
		0.661193, -0.563574, 0.495185,
		-0.693990, -0.710187, 0.118377,
		13.209579, 26.634024, 25.177717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.070311, 26.582581, 24.805944>,  <13.695371, 27.131155, 25.094854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.070311, 26.582581, 24.805944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.681581, 26.488552, 24.812897>,  <13.448344, 26.432135, 24.817068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.681581, 26.488552, 24.812897>,  <14.070311, 26.582581, 24.805944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.681581, 26.488552, 24.812897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086511, -0.424308, -0.901376,
		0.219262, -0.874474, 0.432689,
		-0.971823, -0.235070, 0.017383,
		13.390035, 26.418032, 24.818111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.143167, 25.895891, 24.573648>,  <14.070311, 26.582581, 24.805944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.143167, 25.895891, 24.573648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.770915, 26.034113, 24.525446>,  <13.547565, 26.117046, 24.496525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.770915, 26.034113, 24.525446>,  <14.143167, 25.895891, 24.573648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.770915, 26.034113, 24.525446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076355, -0.505374, -0.859516,
		-0.357911, -0.790689, 0.496700,
		-0.930629, 0.345556, -0.120506,
		13.491727, 26.137779, 24.489294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.592736, 25.287550, 24.433769>,  <14.143167, 25.895891, 24.573648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.592736, 25.287550, 24.433769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.422771, 25.622820, 24.296999>,  <13.320791, 25.823982, 24.214937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.422771, 25.622820, 24.296999>,  <13.592736, 25.287550, 24.433769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.422771, 25.622820, 24.296999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300305, -0.486851, -0.820240,
		-0.853971, -0.245848, 0.458577,
		-0.424913, 0.838174, -0.341927,
		13.295297, 25.874271, 24.194422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.888676, 25.167982, 24.185205>,  <13.592736, 25.287550, 24.433769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.888676, 25.167982, 24.185205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.002805, 25.495565, 23.986048>,  <13.071282, 25.692116, 23.866554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.002805, 25.495565, 23.986048>,  <12.888676, 25.167982, 24.185205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.002805, 25.495565, 23.986048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418254, -0.361019, -0.833504,
		-0.862355, 0.446062, 0.239526,
		0.285322, 0.818959, -0.497893,
		13.088401, 25.741253, 23.836679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.538155, 25.134758, 23.478910>,  <12.888676, 25.167982, 24.185205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.538155, 25.134758, 23.478910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.764165, 25.458160, 23.413101>,  <12.899771, 25.652201, 23.373615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.764165, 25.458160, 23.413101>,  <12.538155, 25.134758, 23.478910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.764165, 25.458160, 23.413101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073906, -0.149006, -0.986071,
		-0.821757, 0.569314, -0.024439,
		0.565025, 0.808504, -0.164522,
		12.933673, 25.700712, 23.363745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.187269, 25.639437, 23.192345>,  <12.538155, 25.134758, 23.478910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.187269, 25.639437, 23.192345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.569597, 25.711493, 23.099430>,  <12.798994, 25.754726, 23.043682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.569597, 25.711493, 23.099430>,  <12.187269, 25.639437, 23.192345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.569597, 25.711493, 23.099430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193034, -0.211303, -0.958170,
		-0.221688, 0.960677, -0.167195,
		0.955820, 0.180141, -0.232287,
		12.856343, 25.765535, 23.029743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.191303, 26.067739, 22.522781>,  <12.187269, 25.639437, 23.192345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.191303, 26.067739, 22.522781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.553071, 25.904505, 22.572563>,  <12.770132, 25.806564, 22.602432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.553071, 25.904505, 22.572563>,  <12.191303, 26.067739, 22.522781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.553071, 25.904505, 22.572563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036861, -0.215872, -0.975726,
		0.425047, 0.887054, -0.180196,
		0.904420, -0.408087, 0.124453,
		12.824397, 25.782078, 22.609900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.489447, 26.250246, 21.847893>,  <12.191303, 26.067739, 22.522781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.489447, 26.250246, 21.847893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.702440, 25.949429, 22.003273>,  <12.830236, 25.768938, 22.096500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.702440, 25.949429, 22.003273>,  <12.489447, 26.250246, 21.847893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.702440, 25.949429, 22.003273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112860, -0.391744, -0.913126,
		0.838882, 0.530066, -0.123722,
		0.532485, -0.752042, 0.388450,
		12.862185, 25.723816, 22.119808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.958209, 26.094730, 21.260267>,  <12.489447, 26.250246, 21.847893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.958209, 26.094730, 21.260267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.931635, 25.774519, 21.498508>,  <12.915690, 25.582392, 21.641453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.931635, 25.774519, 21.498508>,  <12.958209, 26.094730, 21.260267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.931635, 25.774519, 21.498508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117792, -0.586455, -0.801371,
		0.990813, -0.123397, -0.055335,
		-0.066435, -0.800527, 0.595603,
		12.911704, 25.534361, 21.677189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.361586, 25.587831, 20.956669>,  <12.958209, 26.094730, 21.260267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.361586, 25.587831, 20.956669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.111319, 25.380735, 21.190073>,  <12.961158, 25.256477, 21.330116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.111319, 25.380735, 21.190073>,  <13.361586, 25.587831, 20.956669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.111319, 25.380735, 21.190073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123912, -0.672550, -0.729604,
		0.770185, -0.528794, 0.356639,
		-0.625668, -0.517739, 0.583512,
		12.923618, 25.225414, 21.365128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.833239, 19.772467, 8.500310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.865421, 19.960178, 8.852060>,  <20.884731, 20.072805, 9.063110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.865421, 19.960178, 8.852060>,  <20.833239, 19.772467, 8.500310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865421, 19.960178, 8.852060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783166, -0.575506, 0.235465,
		0.616585, 0.669753, -0.413829,
		0.080458, 0.469281, 0.879376,
		20.889559, 20.100962, 9.115873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.547998, 19.612453, 8.612141>,  <20.833239, 19.772467, 8.500310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.547998, 19.612453, 8.612141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.412706, 19.726616, 8.970837>,  <21.331532, 19.795113, 9.186054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.412706, 19.726616, 8.970837>,  <21.547998, 19.612453, 8.612141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.412706, 19.726616, 8.970837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656470, -0.611200, 0.442133,
		0.674275, 0.738226, 0.019366,
		-0.338231, 0.285406, 0.896740,
		21.311237, 19.812239, 9.239859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.159128, 19.647448, 9.154566>,  <21.547998, 19.612453, 8.612141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.159128, 19.647448, 9.154566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.810768, 19.624300, 9.349782>,  <21.601751, 19.610411, 9.466911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.810768, 19.624300, 9.349782>,  <22.159128, 19.647448, 9.154566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.810768, 19.624300, 9.349782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415693, -0.616473, 0.668700,
		0.262166, 0.785246, 0.560943,
		-0.870901, -0.057870, 0.488040,
		21.549498, 19.606939, 9.496194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.167980, 19.905203, 9.882545>,  <22.159128, 19.647448, 9.154566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.167980, 19.905203, 9.882545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.939135, 19.607643, 9.744383>,  <21.801828, 19.429108, 9.661486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.939135, 19.607643, 9.744383>,  <22.167980, 19.905203, 9.882545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.939135, 19.607643, 9.744383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369281, -0.609667, 0.701383,
		-0.732338, 0.273719, 0.623505,
		-0.572112, -0.743898, -0.345403,
		21.767502, 19.384474, 9.640762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.684566, 19.614256, 10.341403>,  <22.167980, 19.905203, 9.882545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.684566, 19.614256, 10.341403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.747770, 19.306988, 10.093226>,  <21.785692, 19.122627, 9.944321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.747770, 19.306988, 10.093226>,  <21.684566, 19.614256, 10.341403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747770, 19.306988, 10.093226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057621, -0.620091, 0.782411,
		-0.985755, -0.159380, -0.053719,
		0.158011, -0.768170, -0.620441,
		21.795174, 19.076536, 9.907094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.492010, 19.212128, 10.839715>,  <21.684566, 19.614256, 10.341403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.492010, 19.212128, 10.839715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.613152, 18.986061, 10.532764>,  <21.685837, 18.850422, 10.348594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.613152, 18.986061, 10.532764>,  <21.492010, 19.212128, 10.839715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.613152, 18.986061, 10.532764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088602, -0.818400, 0.567778,
		-0.948910, -0.103963, -0.297930,
		0.302854, -0.565167, -0.767376,
		21.704008, 18.816511, 10.302551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.998449, 18.827341, 10.651414>,  <21.492010, 19.212128, 10.839715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.998449, 18.827341, 10.651414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.373114, 18.690609, 10.620917>,  <21.597912, 18.608570, 10.602619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.373114, 18.690609, 10.620917>,  <20.998449, 18.827341, 10.651414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.373114, 18.690609, 10.620917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193836, -0.687273, 0.700060,
		-0.291702, -0.640942, -0.710002,
		0.936663, -0.341833, -0.076242,
		21.654112, 18.588058, 10.598044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.956812, 18.157742, 10.759896>,  <20.998449, 18.827341, 10.651414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.956812, 18.157742, 10.759896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.345549, 18.212250, 10.836794>,  <21.578791, 18.244955, 10.882933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.345549, 18.212250, 10.836794>,  <20.956812, 18.157742, 10.759896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.345549, 18.212250, 10.836794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078407, -0.582344, 0.809153,
		0.222214, -0.801440, -0.555260,
		0.971840, 0.136269, 0.192243,
		21.637100, 18.253130, 10.894466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.321178, 17.549349, 10.831194>,  <20.956812, 18.157742, 10.759896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.321178, 17.549349, 10.831194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.489513, 17.834818, 11.055182>,  <21.590513, 18.006100, 11.189574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.489513, 17.834818, 11.055182>,  <21.321178, 17.549349, 10.831194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.489513, 17.834818, 11.055182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078826, -0.586189, 0.806330,
		0.903706, -0.383473, -0.190433,
		0.420836, 0.713674, 0.559970,
		21.615765, 18.048920, 11.223172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.934097, 17.291058, 11.259842>,  <21.321178, 17.549349, 10.831194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.934097, 17.291058, 11.259842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.748552, 17.608126, 11.418086>,  <21.637226, 17.798367, 11.513033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.748552, 17.608126, 11.418086>,  <21.934097, 17.291058, 11.259842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.748552, 17.608126, 11.418086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052661, -0.470441, 0.880858,
		0.884341, 0.387763, 0.259963,
		-0.463862, 0.792669, 0.395611,
		21.609394, 17.845926, 11.536769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.220774, 17.220293, 11.833084>,  <21.934097, 17.291058, 11.259842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.220774, 17.220293, 11.833084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.933773, 17.488010, 11.910277>,  <21.761574, 17.648640, 11.956594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.933773, 17.488010, 11.910277>,  <22.220774, 17.220293, 11.833084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.933773, 17.488010, 11.910277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103739, -0.376637, 0.920534,
		0.688791, 0.640463, 0.339669,
		-0.717499, 0.669292, 0.192984,
		21.718523, 17.688799, 11.968172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.372719, 17.461464, 12.496634>,  <22.220774, 17.220293, 11.833084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.372719, 17.461464, 12.496634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.984182, 17.538736, 12.441234>,  <21.751060, 17.585100, 12.407994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.984182, 17.538736, 12.441234>,  <22.372719, 17.461464, 12.496634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.984182, 17.538736, 12.441234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205143, -0.386977, 0.898980,
		0.120068, 0.901627, 0.415515,
		-0.971339, 0.193179, -0.138499,
		21.692781, 17.596689, 12.399684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.098621, 17.790411, 13.093677>,  <22.372719, 17.461464, 12.496634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.098621, 17.790411, 13.093677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.763197, 17.633339, 12.942616>,  <21.561943, 17.539097, 12.851978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.763197, 17.633339, 12.942616>,  <22.098621, 17.790411, 13.093677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.763197, 17.633339, 12.942616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336439, -0.171980, 0.925868,
		-0.428517, 0.903453, 0.012103,
		-0.838559, -0.392678, -0.377653,
		21.511629, 17.515535, 12.829319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.527040, 18.118382, 13.517122>,  <22.098621, 17.790411, 13.093677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.527040, 18.118382, 13.517122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.378010, 17.797590, 13.330355>,  <21.288591, 17.605116, 13.218294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.378010, 17.797590, 13.330355>,  <21.527040, 18.118382, 13.517122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.378010, 17.797590, 13.330355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312236, -0.365476, 0.876890,
		-0.873896, 0.472500, -0.114239,
		-0.372578, -0.801980, -0.466920,
		21.266235, 17.556995, 13.190279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.855888, 17.980497, 13.817062>,  <21.527040, 18.118382, 13.517122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.855888, 17.980497, 13.817062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.906553, 17.634655, 13.622573>,  <20.936953, 17.427151, 13.505879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.906553, 17.634655, 13.622573>,  <20.855888, 17.980497, 13.817062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.906553, 17.634655, 13.622573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455400, -0.486148, 0.745836,
		-0.881230, 0.126957, -0.455318,
		0.126663, -0.864605, -0.486225,
		20.944551, 17.375273, 13.476706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.290260, 17.560989, 13.994899>,  <20.855888, 17.980497, 13.817062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.290260, 17.560989, 13.994899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.561855, 17.287125, 13.888906>,  <20.724812, 17.122807, 13.825310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.561855, 17.287125, 13.888906>,  <20.290260, 17.560989, 13.994899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.561855, 17.287125, 13.888906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379731, -0.636432, 0.671386,
		-0.628307, -0.355248, -0.692119,
		0.678995, -0.684656, -0.264976,
		20.765553, 17.081726, 13.809410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.931980, 16.846046, 14.003061>,  <20.290260, 17.560989, 13.994899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.931980, 16.846046, 14.003061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.324095, 16.783585, 14.051488>,  <20.559362, 16.746107, 14.080544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.324095, 16.783585, 14.051488>,  <19.931980, 16.846046, 14.003061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.324095, 16.783585, 14.051488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197387, -0.746157, 0.635836,
		-0.008954, -0.647198, -0.762270,
		0.980285, -0.156155, 0.121067,
		20.618179, 16.736738, 14.087808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.078043, 16.163900, 13.882789>,  <19.931980, 16.846046, 14.003061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.078043, 16.163900, 13.882789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.412252, 16.269712, 14.075423>,  <20.612778, 16.333199, 14.191004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.412252, 16.269712, 14.075423>,  <20.078043, 16.163900, 13.882789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.412252, 16.269712, 14.075423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161762, -0.719210, 0.675700,
		0.525103, -0.642466, -0.558126,
		0.835524, 0.264529, 0.481585,
		20.662910, 16.349072, 14.219899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.271725, 15.509356, 14.016414>,  <20.078043, 16.163900, 13.882789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.271725, 15.509356, 14.016414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.464617, 15.760400, 14.260892>,  <20.580353, 15.911026, 14.407578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.464617, 15.760400, 14.260892>,  <20.271725, 15.509356, 14.016414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.464617, 15.760400, 14.260892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075618, -0.665252, 0.742780,
		0.872774, -0.404410, -0.273347,
		0.482232, 0.627609, 0.611195,
		20.609287, 15.948683, 14.444250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.575516, 15.132242, 14.440166>,  <20.271725, 15.509356, 14.016414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.575516, 15.132242, 14.440166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.565689, 15.470741, 14.653055>,  <20.559793, 15.673841, 14.780788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.565689, 15.470741, 14.653055>,  <20.575516, 15.132242, 14.440166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.565689, 15.470741, 14.653055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217532, -0.524151, 0.823375,
		0.975744, -0.095548, 0.196962,
		-0.024566, 0.846248, 0.532222,
		20.558319, 15.724616, 14.812722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.087265, 15.059831, 14.986446>,  <20.575516, 15.132242, 14.440166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.087265, 15.059831, 14.986446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.827459, 15.332110, 15.121965>,  <20.671576, 15.495478, 15.203277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.827459, 15.332110, 15.121965>,  <21.087265, 15.059831, 14.986446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827459, 15.332110, 15.121965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035984, -0.472599, 0.880543,
		0.759499, 0.559733, 0.331453,
		-0.649513, 0.680698, 0.338797,
		20.632605, 15.536320, 15.223604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.281916, 15.192849, 15.701341>,  <21.087265, 15.059831, 14.986446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.281916, 15.192849, 15.701341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.908546, 15.332624, 15.668810>,  <20.684525, 15.416490, 15.649292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.908546, 15.332624, 15.668810>,  <21.281916, 15.192849, 15.701341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.908546, 15.332624, 15.668810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213176, -0.357855, 0.909118,
		0.288577, 0.865929, 0.408522,
		-0.933423, 0.349438, -0.081326,
		20.628519, 15.437456, 15.644412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.166481, 15.366083, 16.295429>,  <21.281916, 15.192849, 15.701341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.166481, 15.366083, 16.295429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.787397, 15.357543, 16.168062>,  <20.559946, 15.352419, 16.091642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.787397, 15.357543, 16.168062>,  <21.166481, 15.366083, 16.295429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.787397, 15.357543, 16.168062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310913, -0.163218, 0.936319,
		-0.071963, 0.986359, 0.148046,
		-0.947710, -0.021351, -0.318418,
		20.503084, 15.351138, 16.072536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.731741, 15.807245, 16.656519>,  <21.166481, 15.366083, 16.295429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.731741, 15.807245, 16.656519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.474302, 15.534863, 16.516756>,  <20.319839, 15.371434, 16.432898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.474302, 15.534863, 16.516756>,  <20.731741, 15.807245, 16.656519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.474302, 15.534863, 16.516756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332702, -0.162220, 0.928975,
		-0.689270, 0.714133, -0.122151,
		-0.643596, -0.680954, -0.349407,
		20.281223, 15.330577, 16.411934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.266264, 15.986788, 17.014475>,  <20.731741, 15.807245, 16.656519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.266264, 15.986788, 17.014475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.151508, 15.629260, 16.876617>,  <20.082655, 15.414743, 16.793903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.151508, 15.629260, 16.876617>,  <20.266264, 15.986788, 17.014475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.151508, 15.629260, 16.876617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356463, -0.234327, 0.904447,
		-0.889173, 0.382330, -0.251388,
		-0.286890, -0.893820, -0.344644,
		20.065441, 15.361114, 16.773224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.577427, 15.973535, 17.155493>,  <20.266264, 15.986788, 17.014475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.577427, 15.973535, 17.155493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.721388, 15.600340, 17.156326>,  <19.807764, 15.376423, 17.156826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.721388, 15.600340, 17.156326>,  <19.577427, 15.973535, 17.155493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.721388, 15.600340, 17.156326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391435, -0.148971, 0.908067,
		-0.846905, -0.327631, -0.418819,
		0.359903, -0.932988, 0.002082,
		19.829359, 15.320444, 17.156950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.035385, 15.471246, 17.451441>,  <19.577427, 15.973535, 17.155493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.035385, 15.471246, 17.451441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.410074, 15.341031, 17.502941>,  <19.634888, 15.262902, 17.533842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.410074, 15.341031, 17.502941>,  <19.035385, 15.471246, 17.451441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.410074, 15.341031, 17.502941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217810, -0.254032, 0.942352,
		-0.274077, -0.910761, -0.308864,
		0.936718, -0.325551, 0.128748,
		19.691092, 15.243370, 17.541567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.038652, 15.251005, 18.047020>,  <19.035385, 15.471246, 17.451441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.038652, 15.251005, 18.047020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.432434, 15.184653, 18.023911>,  <19.668703, 15.144842, 18.010046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.432434, 15.184653, 18.023911>,  <19.038652, 15.251005, 18.047020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.432434, 15.184653, 18.023911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021606, -0.212051, 0.977020,
		-0.174320, -0.963077, -0.205170,
		0.984452, -0.165881, -0.057773,
		19.727770, 15.134890, 18.006578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232258, 14.706409, 18.496206>,  <19.038652, 15.251005, 18.047020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.232258, 14.706409, 18.496206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.573103, 14.910615, 18.450115>,  <19.777611, 15.033138, 18.422461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.573103, 14.910615, 18.450115>,  <19.232258, 14.706409, 18.496206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.573103, 14.910615, 18.450115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200040, -0.114255, 0.973103,
		0.483619, -0.852244, -0.199481,
		0.852113, 0.510515, -0.115227,
		19.828737, 15.063769, 18.415546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.729204, 14.338861, 18.897966>,  <19.232258, 14.706409, 18.496206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.729204, 14.338861, 18.897966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.866695, 14.712668, 18.861025>,  <19.949190, 14.936953, 18.838860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.866695, 14.712668, 18.861025>,  <19.729204, 14.338861, 18.897966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.866695, 14.712668, 18.861025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315730, -0.022387, 0.948585,
		0.884402, -0.355212, -0.302750,
		0.343726, 0.934518, -0.092352,
		19.969812, 14.993024, 18.833319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.436457, 14.367933, 19.025963>,  <19.729204, 14.338861, 18.897966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.436457, 14.367933, 19.025963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.293297, 14.731435, 19.111820>,  <20.207401, 14.949536, 19.163336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.293297, 14.731435, 19.111820>,  <20.436457, 14.367933, 19.025963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.293297, 14.731435, 19.111820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443143, -0.037034, 0.895685,
		0.821908, 0.415684, -0.389454,
		-0.357899, 0.908755, 0.214646,
		20.185926, 15.004062, 19.176214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.055141, 14.733632, 19.297062>,  <20.436457, 14.367933, 19.025963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.055141, 14.733632, 19.297062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.702105, 14.877467, 19.418209>,  <20.490282, 14.963768, 19.490898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.702105, 14.877467, 19.418209>,  <21.055141, 14.733632, 19.297062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.702105, 14.877467, 19.418209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214575, -0.265106, 0.940041,
		0.418319, 0.894660, 0.156822,
		-0.882591, 0.359587, 0.302870,
		20.437326, 14.985343, 19.509069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.663946, 14.906975, 19.022034>,  <21.055141, 14.733632, 19.297062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.663946, 14.906975, 19.022034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.845781, 14.550939, 19.008850>,  <21.954884, 14.337317, 19.000940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.845781, 14.550939, 19.008850>,  <21.663946, 14.906975, 19.022034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.845781, 14.550939, 19.008850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670691, 0.366415, -0.644914,
		0.586108, 0.271067, 0.763544,
		0.454589, -0.890091, -0.032957,
		21.982159, 14.283911, 18.998962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.868664, 15.581104, 18.928301>,  <21.663946, 14.906975, 19.022034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.868664, 15.581104, 18.928301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.613806, 15.885345, 18.878447>,  <21.460892, 16.067888, 18.848534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.613806, 15.885345, 18.878447>,  <21.868664, 15.581104, 18.928301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.613806, 15.885345, 18.878447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691773, 0.493031, -0.527608,
		-0.339851, -0.422380, -0.840295,
		-0.637143, 0.760602, -0.124634,
		21.422663, 16.113525, 18.841057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.225861, 16.219328, 18.605888>,  <21.868664, 15.581104, 18.928301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.225861, 16.219328, 18.605888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.930271, 16.485817, 18.565746>,  <21.752918, 16.645710, 18.541660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.930271, 16.485817, 18.565746>,  <22.225861, 16.219328, 18.605888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.930271, 16.485817, 18.565746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638127, 0.644321, -0.421479,
		-0.216136, -0.375501, -0.901268,
		-0.738971, 0.666221, -0.100356,
		21.708580, 16.685682, 18.535639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.117496, 16.438705, 17.914320>,  <22.225861, 16.219328, 18.605888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.117496, 16.438705, 17.914320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.987373, 16.749849, 18.129395>,  <21.909300, 16.936537, 18.258438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.987373, 16.749849, 18.129395>,  <22.117496, 16.438705, 17.914320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.987373, 16.749849, 18.129395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547074, 0.618609, -0.563944,
		-0.771287, 0.110697, -0.626787,
		-0.325309, 0.777862, 0.537685,
		21.889780, 16.983208, 18.290701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.731083, 16.876131, 17.481112>,  <22.117496, 16.438705, 17.914320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.731083, 16.876131, 17.481112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.940039, 17.054253, 17.771990>,  <22.065413, 17.161125, 17.946518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.940039, 17.054253, 17.771990>,  <21.731083, 16.876131, 17.481112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.940039, 17.054253, 17.771990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310890, 0.694646, -0.648702,
		-0.794015, 0.564952, 0.224434,
		0.522387, 0.445304, 0.727197,
		22.096754, 17.187843, 17.990149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.606379, 17.621763, 17.523357>,  <21.731083, 16.876131, 17.481112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.606379, 17.621763, 17.523357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.990068, 17.560726, 17.618521>,  <22.220284, 17.524105, 17.675619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.990068, 17.560726, 17.618521>,  <21.606379, 17.621763, 17.523357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.990068, 17.560726, 17.618521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280257, 0.622566, -0.730663,
		-0.036621, 0.767546, 0.639946,
		0.959226, -0.152592, 0.237909,
		22.277836, 17.514948, 17.689894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.980030, 18.206148, 17.380442>,  <21.606379, 17.621763, 17.523357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.980030, 18.206148, 17.380442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.257265, 17.918087, 17.367748>,  <22.423607, 17.745251, 17.360132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.257265, 17.918087, 17.367748>,  <21.980030, 18.206148, 17.380442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.257265, 17.918087, 17.367748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483151, 0.496762, -0.720967,
		0.534971, 0.484361, 0.692243,
		0.693088, -0.720154, -0.031733,
		22.465191, 17.702042, 17.358229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.668528, 18.543688, 17.327772>,  <21.980030, 18.206148, 17.380442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.668528, 18.543688, 17.327772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.765438, 18.164631, 17.244564>,  <22.823584, 17.937197, 17.194639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.765438, 18.164631, 17.244564>,  <22.668528, 18.543688, 17.327772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.765438, 18.164631, 17.244564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685658, 0.318932, -0.654335,
		0.686422, 0.015898, 0.727030,
		0.242276, -0.947644, -0.208021,
		22.838121, 17.880337, 17.182158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.434404, 18.613325, 17.296799>,  <22.668528, 18.543688, 17.327772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.434404, 18.613325, 17.296799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.341591, 18.283363, 17.090616>,  <23.285902, 18.085386, 16.966908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.341591, 18.283363, 17.090616>,  <23.434404, 18.613325, 17.296799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.341591, 18.283363, 17.090616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696915, 0.228698, -0.679711,
		0.678580, -0.516944, 0.521822,
		-0.232033, -0.824904, -0.515456,
		23.271980, 18.035892, 16.935980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.117821, 18.387037, 16.979954>,  <23.434404, 18.613325, 17.296799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.117821, 18.387037, 16.979954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.820364, 18.218264, 16.772507>,  <23.641890, 18.116999, 16.648039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.820364, 18.218264, 16.772507>,  <24.117821, 18.387037, 16.979954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.820364, 18.218264, 16.772507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362596, 0.397189, -0.843069,
		0.561712, -0.814990, -0.142374,
		-0.743642, -0.421938, -0.518618,
		23.597271, 18.091682, 16.616920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543819, 18.011436, 16.488939>,  <24.117821, 18.387037, 16.979954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543819, 18.011436, 16.488939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.168016, 18.038139, 16.354553>,  <23.942535, 18.054161, 16.273922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.168016, 18.038139, 16.354553>,  <24.543819, 18.011436, 16.488939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.168016, 18.038139, 16.354553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342530, 0.185060, -0.921100,
		0.000684, -0.980457, -0.196732,
		-0.939506, 0.066756, -0.335963,
		23.886164, 18.058167, 16.253765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.569214, 17.636370, 15.898781>,  <24.543819, 18.011436, 16.488939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.569214, 17.636370, 15.898781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.260292, 17.888369, 15.866177>,  <24.074938, 18.039568, 15.846614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.260292, 17.888369, 15.866177>,  <24.569214, 17.636370, 15.898781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.260292, 17.888369, 15.866177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140288, 0.043999, -0.989133,
		-0.619567, -0.775348, -0.122362,
		-0.772306, 0.630000, -0.081511,
		24.028601, 18.077368, 15.841723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.209124, 17.390659, 15.307830>,  <24.569214, 17.636370, 15.898781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.209124, 17.390659, 15.307830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.111988, 17.774212, 15.366592>,  <24.053707, 18.004343, 15.401850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.111988, 17.774212, 15.366592>,  <24.209124, 17.390659, 15.307830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.111988, 17.774212, 15.366592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296732, 0.217604, -0.929838,
		-0.923569, -0.182207, -0.337373,
		-0.242837, 0.958879, 0.146905,
		24.039137, 18.061876, 15.410664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.775105, 17.613546, 14.746192>,  <24.209124, 17.390659, 15.307830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.775105, 17.613546, 14.746192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.895338, 17.966721, 14.890455>,  <23.967478, 18.178625, 14.977014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.895338, 17.966721, 14.890455>,  <23.775105, 17.613546, 14.746192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.895338, 17.966721, 14.890455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326577, 0.260007, -0.908705,
		-0.896101, 0.390924, -0.210193,
		0.300583, 0.882935, 0.360659,
		23.985514, 18.231602, 14.998653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.790075, 18.029015, 14.057109>,  <23.775105, 17.613546, 14.746192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.790075, 18.029015, 14.057109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.967400, 18.271751, 14.320993>,  <24.073793, 18.417393, 14.479324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.967400, 18.271751, 14.320993>,  <23.790075, 18.029015, 14.057109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.967400, 18.271751, 14.320993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532389, 0.413852, -0.738436,
		-0.721137, 0.678580, -0.139611,
		0.443309, 0.606841, 0.659712,
		24.100393, 18.453804, 14.518908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.701405, 18.816261, 13.943162>,  <23.790075, 18.029015, 14.057109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.701405, 18.816261, 13.943162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.043562, 18.753227, 14.140531>,  <24.248857, 18.715406, 14.258952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.043562, 18.753227, 14.140531>,  <23.701405, 18.816261, 13.943162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.043562, 18.753227, 14.140531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509789, 0.424821, -0.748092,
		-0.091728, 0.891456, 0.443725,
		0.855395, -0.157585, 0.493422,
		24.300180, 18.705952, 14.288557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.954678, 19.397387, 13.917335>,  <23.701405, 18.816261, 13.943162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.954678, 19.397387, 13.917335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.266211, 19.162136, 14.004538>,  <24.453131, 19.020987, 14.056859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.266211, 19.162136, 14.004538>,  <23.954678, 19.397387, 13.917335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.266211, 19.162136, 14.004538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566032, 0.509277, -0.648263,
		0.270235, 0.628287, 0.729540,
		0.778833, -0.588126, 0.218006,
		24.499861, 18.985699, 14.069940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.517458, 19.890903, 13.991365>,  <23.954678, 19.397387, 13.917335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.517458, 19.890903, 13.991365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.709070, 19.546795, 13.921554>,  <24.824038, 19.340330, 13.879666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.709070, 19.546795, 13.921554>,  <24.517458, 19.890903, 13.991365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.709070, 19.546795, 13.921554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650886, 0.481514, -0.586935,
		0.588962, 0.167563, 0.790599,
		0.479033, -0.860272, -0.174529,
		24.852779, 19.288713, 13.869195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235792, 19.976477, 14.135024>,  <24.517458, 19.890903, 13.991365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235792, 19.976477, 14.135024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.194315, 19.669960, 13.881396>,  <25.169428, 19.486050, 13.729219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.194315, 19.669960, 13.881396>,  <25.235792, 19.976477, 14.135024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194315, 19.669960, 13.881396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546363, 0.488819, -0.680106,
		0.831105, -0.416955, 0.367986,
		-0.103695, -0.766293, -0.634068,
		25.163206, 19.440073, 13.691175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008133, 19.746336, 13.922786>,  <25.235792, 19.976477, 14.135024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008133, 19.746336, 13.922786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.753551, 19.600359, 13.650978>,  <25.600803, 19.512774, 13.487893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.753551, 19.600359, 13.650978>,  <26.008133, 19.746336, 13.922786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753551, 19.600359, 13.650978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507078, 0.465877, -0.725143,
		0.581208, -0.806087, -0.111453,
		-0.636451, -0.364944, -0.679520,
		25.562616, 19.490877, 13.447123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.048992, 23.273170, 17.656746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.659353, 23.182758, 17.659489>,  <16.425570, 23.128511, 17.661135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.659353, 23.182758, 17.659489>,  <17.048992, 23.273170, 17.656746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659353, 23.182758, 17.659489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152262, -0.678003, -0.719116,
		0.167189, -0.699445, 0.694856,
		-0.974097, -0.226028, 0.006856,
		16.367125, 23.114950, 17.661545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.972816, 22.598549, 17.555462>,  <17.048992, 23.273170, 17.656746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.972816, 22.598549, 17.555462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.587019, 22.671223, 17.478788>,  <16.355541, 22.714827, 17.432785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.587019, 22.671223, 17.478788>,  <16.972816, 22.598549, 17.555462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.587019, 22.671223, 17.478788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088009, -0.463201, -0.881873,
		-0.249012, -0.867430, 0.430764,
		-0.964494, 0.181686, -0.191684,
		16.297670, 22.725729, 17.421284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.472994, 21.983440, 17.313238>,  <16.972816, 22.598549, 17.555462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.472994, 21.983440, 17.313238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.304733, 22.315475, 17.166809>,  <16.203777, 22.514696, 17.078951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.304733, 22.315475, 17.166809>,  <16.472994, 21.983440, 17.313238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.304733, 22.315475, 17.166809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186306, -0.473951, -0.860616,
		-0.887887, -0.293816, 0.354018,
		-0.420650, 0.830086, -0.366075,
		16.178537, 22.564501, 17.056986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.820197, 21.838182, 17.075840>,  <16.472994, 21.983440, 17.313238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.820197, 21.838182, 17.075840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874692, 22.170816, 16.860470>,  <15.907389, 22.370398, 16.731247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874692, 22.170816, 16.860470>,  <15.820197, 21.838182, 17.075840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.874692, 22.170816, 16.860470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268792, -0.492080, -0.828015,
		-0.953515, 0.257531, 0.156484,
		0.136237, 0.831586, -0.538427,
		15.915563, 22.420292, 16.698942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.311110, 21.763762, 16.780045>,  <15.820197, 21.838182, 17.075840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.311110, 21.763762, 16.780045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.532401, 22.019234, 16.566120>,  <15.665176, 22.172518, 16.437765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.532401, 22.019234, 16.566120>,  <15.311110, 21.763762, 16.780045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.532401, 22.019234, 16.566120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194836, -0.524993, -0.828505,
		-0.809923, 0.562554, -0.166004,
		0.553230, 0.638682, -0.534810,
		15.698370, 22.210838, 16.405678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.966195, 21.888762, 16.110924>,  <15.311110, 21.763762, 16.780045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.966195, 21.888762, 16.110924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.349745, 21.973701, 16.035593>,  <15.579875, 22.024666, 15.990395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.349745, 21.973701, 16.035593>,  <14.966195, 21.888762, 16.110924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.349745, 21.973701, 16.035593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078800, -0.438270, -0.895382,
		-0.272672, 0.873400, -0.403513,
		0.958875, 0.212348, -0.188328,
		15.637407, 22.037407, 15.979095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.019030, 22.112255, 15.436687>,  <14.966195, 21.888762, 16.110924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.019030, 22.112255, 15.436687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.397835, 22.013651, 15.519050>,  <15.625118, 21.954489, 15.568467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.397835, 22.013651, 15.519050>,  <15.019030, 22.112255, 15.436687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.397835, 22.013651, 15.519050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006271, -0.655130, -0.755490,
		0.321132, 0.714168, -0.621963,
		0.947014, -0.246513, 0.205904,
		15.681939, 21.939697, 15.580821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.339653, 22.084116, 14.686148>,  <15.019030, 22.112255, 15.436687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.339653, 22.084116, 14.686148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516504, 21.866823, 14.971642>,  <15.622615, 21.736446, 15.142940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516504, 21.866823, 14.971642>,  <15.339653, 22.084116, 14.686148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.516504, 21.866823, 14.971642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130102, -0.748481, -0.650269,
		0.887467, 0.380361, -0.260248,
		0.442127, -0.543234, 0.713737,
		15.649142, 21.703854, 15.185763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.942674, 21.710339, 14.235927>,  <15.339653, 22.084116, 14.686148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.942674, 21.710339, 14.235927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.903547, 21.539373, 14.595426>,  <15.880072, 21.436794, 14.811125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.903547, 21.539373, 14.595426>,  <15.942674, 21.710339, 14.235927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.903547, 21.539373, 14.595426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113627, -0.901970, -0.416580,
		0.988697, 0.061374, 0.136794,
		-0.097817, -0.427414, 0.898749,
		15.874202, 21.411150, 14.865050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.558048, 21.303656, 14.394382>,  <15.942674, 21.710339, 14.235927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.558048, 21.303656, 14.394382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248285, 21.152884, 14.597641>,  <16.062428, 21.062420, 14.719596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248285, 21.152884, 14.597641>,  <16.558048, 21.303656, 14.394382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.248285, 21.152884, 14.597641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146471, -0.888148, -0.435591,
		0.615497, -0.262897, 0.743000,
		-0.774410, -0.376932, 0.508146,
		16.015963, 21.039804, 14.750085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.685280, 20.593204, 14.365357>,  <16.558048, 21.303656, 14.394382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.685280, 20.593204, 14.365357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305864, 20.616831, 14.489800>,  <16.078215, 20.631006, 14.564466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305864, 20.616831, 14.489800>,  <16.685280, 20.593204, 14.365357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.305864, 20.616831, 14.489800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231808, -0.798832, -0.555098,
		0.215737, -0.598648, 0.771413,
		-0.948537, 0.059065, 0.311109,
		16.021303, 20.634550, 14.583133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.391745, 19.804672, 14.510873>,  <16.685280, 20.593204, 14.365357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.391745, 19.804672, 14.510873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.098181, 20.063908, 14.429526>,  <15.922042, 20.219448, 14.380718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.098181, 20.063908, 14.429526>,  <16.391745, 19.804672, 14.510873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.098181, 20.063908, 14.429526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342742, -0.611829, -0.712877,
		-0.586426, -0.453491, 0.671156,
		-0.733916, 0.648083, -0.203362,
		15.878007, 20.258333, 14.368516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059982, 20.025951, 14.689309>,  <16.391745, 19.804672, 14.510873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059982, 20.025951, 14.689309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.126892, 19.632542, 14.661902>,  <17.167038, 19.396496, 14.645458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.126892, 19.632542, 14.661902>,  <17.059982, 20.025951, 14.689309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.126892, 19.632542, 14.661902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635477, 0.054424, 0.770200,
		-0.753783, -0.172376, 0.634112,
		0.167275, -0.983527, -0.068517,
		17.177074, 19.337484, 14.641347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932604, 19.522860, 15.328600>,  <17.059982, 20.025951, 14.689309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.932604, 19.522860, 15.328600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213066, 19.347406, 15.103752>,  <17.381344, 19.242134, 14.968843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213066, 19.347406, 15.103752>,  <16.932604, 19.522860, 15.328600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213066, 19.347406, 15.103752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570783, -0.127166, 0.811194,
		-0.427300, -0.889623, 0.161201,
		0.701158, -0.438634, -0.562119,
		17.423414, 19.215816, 14.935117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.054222, 18.829380, 15.271622>,  <16.932604, 19.522860, 15.328600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.054222, 18.829380, 15.271622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.369701, 18.675457, 15.463406>,  <17.558989, 18.583103, 15.578476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.369701, 18.675457, 15.463406>,  <17.054222, 18.829380, 15.271622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.369701, 18.675457, 15.463406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539016, -0.057755, 0.840313,
		-0.295668, -0.921188, -0.252969,
		0.788696, -0.384808, 0.479458,
		17.606310, 18.560015, 15.607244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834919, 18.253752, 15.565142>,  <17.054222, 18.829380, 15.271622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834919, 18.253752, 15.565142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155886, 18.367983, 15.774741>,  <17.348465, 18.436522, 15.900501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155886, 18.367983, 15.774741>,  <16.834919, 18.253752, 15.565142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.155886, 18.367983, 15.774741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540742, -0.023498, 0.840860,
		0.252444, -0.958067, 0.135569,
		0.802415, 0.285578, 0.523999,
		17.396610, 18.453657, 15.931941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.758484, 17.905104, 16.226713>,  <16.834919, 18.253752, 15.565142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.758484, 17.905104, 16.226713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.005308, 18.214705, 16.283503>,  <17.153402, 18.400465, 16.317575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.005308, 18.214705, 16.283503>,  <16.758484, 17.905104, 16.226713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.005308, 18.214705, 16.283503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441821, 0.191477, 0.876430,
		0.651174, -0.603538, 0.460124,
		0.617063, 0.774001, 0.141971,
		17.190428, 18.446905, 16.326094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.065834, 17.836828, 16.899500>,  <16.758484, 17.905104, 16.226713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.065834, 17.836828, 16.899500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.114407, 18.230040, 16.844492>,  <17.143549, 18.465967, 16.811487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.114407, 18.230040, 16.844492>,  <17.065834, 17.836828, 16.899500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.114407, 18.230040, 16.844492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357702, 0.172573, 0.917751,
		0.925907, -0.062252, 0.372587,
		0.121430, 0.983028, -0.137519,
		17.150835, 18.524948, 16.803236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.175117, 18.161551, 17.564667>,  <17.065834, 17.836828, 16.899500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.175117, 18.161551, 17.564667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083393, 18.491995, 17.358770>,  <17.028358, 18.690262, 17.235233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083393, 18.491995, 17.358770>,  <17.175117, 18.161551, 17.564667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.083393, 18.491995, 17.358770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416366, 0.394753, 0.819029,
		0.879804, 0.402133, 0.253444,
		-0.229311, 0.826111, -0.514740,
		17.014599, 18.739828, 17.204348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.536430, 18.733103, 17.912079>,  <17.175117, 18.161551, 17.564667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.536430, 18.733103, 17.912079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.208260, 18.864389, 17.724813>,  <17.011358, 18.943161, 17.612455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.208260, 18.864389, 17.724813>,  <17.536430, 18.733103, 17.912079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.208260, 18.864389, 17.724813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328756, 0.399118, 0.855935,
		0.467784, 0.856142, -0.219544,
		-0.820425, 0.328216, -0.468163,
		16.962132, 18.962854, 17.584364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.368488, 19.240183, 18.344967>,  <17.536430, 18.733103, 17.912079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.368488, 19.240183, 18.344967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.043449, 19.205040, 18.114500>,  <16.848427, 19.183954, 17.976219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.043449, 19.205040, 18.114500>,  <17.368488, 19.240183, 18.344967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043449, 19.205040, 18.114500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559104, 0.396693, 0.728037,
		0.164597, 0.913737, -0.371473,
		-0.812595, -0.087859, -0.576168,
		16.799671, 19.178682, 17.941650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047218, 19.948143, 18.206036>,  <17.368488, 19.240183, 18.344967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.047218, 19.948143, 18.206036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778746, 19.653694, 18.171061>,  <16.617662, 19.477026, 18.150076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778746, 19.653694, 18.171061>,  <17.047218, 19.948143, 18.206036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.778746, 19.653694, 18.171061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554956, 0.420756, 0.717626,
		-0.491469, 0.530181, -0.690917,
		-0.671180, -0.736120, -0.087439,
		16.577393, 19.432858, 18.144829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.392178, 20.301085, 18.198452>,  <17.047218, 19.948143, 18.206036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.392178, 20.301085, 18.198452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274336, 19.926239, 18.273314>,  <16.203630, 19.701332, 18.318230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274336, 19.926239, 18.273314>,  <16.392178, 20.301085, 18.198452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.274336, 19.926239, 18.273314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706388, 0.345453, 0.617802,
		-0.643603, 0.049804, -0.763737,
		-0.294604, -0.937114, 0.187154,
		16.185955, 19.645105, 18.329460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635767, 20.343048, 18.091232>,  <16.392178, 20.301085, 18.198452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.635767, 20.343048, 18.091232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.730329, 20.037062, 18.330879>,  <15.787066, 19.853470, 18.474667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.730329, 20.037062, 18.330879>,  <15.635767, 20.343048, 18.091232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.730329, 20.037062, 18.330879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784642, 0.213387, 0.582067,
		-0.573105, -0.607696, -0.549778,
		0.236404, -0.764965, 0.599118,
		15.801250, 19.807571, 18.510614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.043206, 19.935215, 18.250151>,  <15.635767, 20.343048, 18.091232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.043206, 19.935215, 18.250151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.289183, 19.835932, 18.549547>,  <15.436769, 19.776361, 18.729185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.289183, 19.835932, 18.549547>,  <15.043206, 19.935215, 18.250151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.289183, 19.835932, 18.549547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698108, 0.270070, 0.663104,
		-0.366734, -0.930298, -0.007199,
		0.614940, -0.248209, 0.748493,
		15.473665, 19.761469, 18.774096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.633550, 19.598257, 18.677782>,  <15.043206, 19.935215, 18.250151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.633550, 19.598257, 18.677782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.936171, 19.735746, 18.900307>,  <15.117743, 19.818241, 19.033821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.936171, 19.735746, 18.900307>,  <14.633550, 19.598257, 18.677782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.936171, 19.735746, 18.900307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638997, 0.207794, 0.740611,
		0.138967, -0.915793, 0.376845,
		0.756553, 0.343723, 0.556312,
		15.163136, 19.838863, 19.067200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.436611, 19.421232, 19.365341>,  <14.633550, 19.598257, 18.677782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.436611, 19.421232, 19.365341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711623, 19.702820, 19.436590>,  <14.876631, 19.871773, 19.479340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711623, 19.702820, 19.436590>,  <14.436611, 19.421232, 19.365341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.711623, 19.702820, 19.436590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463779, 0.236948, 0.853677,
		0.558758, -0.669538, 0.489396,
		0.687531, 0.703970, 0.178121,
		14.917882, 19.914011, 19.490026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.550122, 19.374420, 20.078186>,  <14.436611, 19.421232, 19.365341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.550122, 19.374420, 20.078186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.670760, 19.740398, 19.970919>,  <14.743143, 19.959986, 19.906559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.670760, 19.740398, 19.970919>,  <14.550122, 19.374420, 20.078186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.670760, 19.740398, 19.970919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394980, 0.375893, 0.838269,
		0.867774, -0.146897, 0.474753,
		0.301596, 0.914946, -0.268168,
		14.761239, 20.014883, 19.890469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.620512, 18.900429, 20.692543>,  <14.550122, 19.374420, 20.078186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.620512, 18.900429, 20.692543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.282948, 18.703859, 20.778629>,  <14.080410, 18.585917, 20.830280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.282948, 18.703859, 20.778629>,  <14.620512, 18.900429, 20.692543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.282948, 18.703859, 20.778629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074701, -0.289610, -0.954225,
		0.531259, -0.821357, 0.207695,
		-0.843910, -0.491426, 0.215214,
		14.029776, 18.556431, 20.843193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.668327, 18.406754, 20.288937>,  <14.620512, 18.900429, 20.692543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.668327, 18.406754, 20.288937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.279643, 18.381020, 20.379833>,  <14.046432, 18.365580, 20.434372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.279643, 18.381020, 20.379833>,  <14.668327, 18.406754, 20.288937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.279643, 18.381020, 20.379833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199644, -0.290291, -0.935881,
		0.126177, -0.954773, 0.269235,
		-0.971711, -0.064335, 0.227243,
		13.988130, 18.361719, 20.448006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.483320, 17.783983, 20.167700>,  <14.668327, 18.406754, 20.288937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.483320, 17.783983, 20.167700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.149916, 18.001398, 20.128052>,  <13.949873, 18.131847, 20.104263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.149916, 18.001398, 20.128052>,  <14.483320, 17.783983, 20.167700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.149916, 18.001398, 20.128052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190400, -0.450995, -0.871981,
		-0.518660, -0.707932, 0.479399,
		-0.833511, 0.543539, -0.099123,
		13.899862, 18.164459, 20.098316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.992195, 17.304060, 19.890448>,  <14.483320, 17.783983, 20.167700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.992195, 17.304060, 19.890448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.776970, 17.638920, 19.851112>,  <13.647835, 17.839836, 19.827511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.776970, 17.638920, 19.851112>,  <13.992195, 17.304060, 19.890448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.776970, 17.638920, 19.851112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484843, -0.402816, -0.776316,
		-0.689505, -0.370027, 0.622626,
		-0.538062, 0.837150, -0.098338,
		13.615551, 17.890064, 19.821611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.243061, 17.111311, 19.854753>,  <13.992195, 17.304060, 19.890448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.243061, 17.111311, 19.854753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304550, 17.468491, 19.685514>,  <13.341443, 17.682798, 19.583971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304550, 17.468491, 19.685514>,  <13.243061, 17.111311, 19.854753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.304550, 17.468491, 19.685514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532158, -0.285969, -0.796888,
		-0.832573, 0.347654, 0.431230,
		0.153722, 0.892950, -0.423096,
		13.350667, 17.736376, 19.558586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.549644, 17.291323, 19.572489>,  <13.243061, 17.111311, 19.854753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.549644, 17.291323, 19.572489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.805294, 17.537159, 19.387535>,  <12.958684, 17.684660, 19.276562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.805294, 17.537159, 19.387535>,  <12.549644, 17.291323, 19.572489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.805294, 17.537159, 19.387535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358066, -0.294297, -0.886103,
		-0.680669, 0.731893, 0.031972,
		0.639123, 0.614591, -0.462385,
		12.997031, 17.721537, 19.248819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.121137, 17.626511, 19.148430>,  <12.549644, 17.291323, 19.572489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.121137, 17.626511, 19.148430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.487769, 17.672153, 18.995142>,  <12.707748, 17.699539, 18.903170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.487769, 17.672153, 18.995142>,  <12.121137, 17.626511, 19.148430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.487769, 17.672153, 18.995142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355160, -0.207938, -0.911385,
		-0.183679, 0.971464, -0.150067,
		0.916582, 0.114105, -0.383219,
		12.762744, 17.706385, 18.880177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.111915, 18.060078, 18.560486>,  <12.121137, 17.626511, 19.148430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.111915, 18.060078, 18.560486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.450516, 17.863615, 18.478321>,  <12.653677, 17.745737, 18.429022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.450516, 17.863615, 18.478321>,  <12.111915, 18.060078, 18.560486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.450516, 17.863615, 18.478321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340436, -0.202746, -0.918149,
		0.409310, 0.847147, -0.338833,
		0.846504, -0.491158, -0.205413,
		12.704467, 17.716267, 18.416697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.386692, 18.329245, 17.947157>,  <12.111915, 18.060078, 18.560486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.386692, 18.329245, 17.947157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.525414, 17.958712, 18.005987>,  <12.608646, 17.736391, 18.041286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.525414, 17.958712, 18.005987>,  <12.386692, 18.329245, 17.947157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.525414, 17.958712, 18.005987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375009, -0.280675, -0.883510,
		0.859707, 0.251249, -0.444723,
		0.346804, -0.926334, 0.147077,
		12.629455, 17.680811, 18.050110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.660691, 18.103725, 17.291542>,  <12.386692, 18.329245, 17.947157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.660691, 18.103725, 17.291542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.676014, 17.748686, 17.475149>,  <12.685207, 17.535662, 17.585314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.676014, 17.748686, 17.475149>,  <12.660691, 18.103725, 17.291542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.676014, 17.748686, 17.475149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092881, -0.460530, -0.882771,
		0.994940, -0.008819, -0.100082,
		0.038306, -0.887600, 0.459019,
		12.687506, 17.482407, 17.612854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.292144, 17.724430, 16.661121>,  <12.660691, 18.103725, 17.291542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.292144, 17.724430, 16.661121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.682553, 17.805586, 16.692652>,  <12.916799, 17.854280, 16.711569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.682553, 17.805586, 16.692652>,  <12.292144, 17.724430, 16.661121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.682553, 17.805586, 16.692652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183434, 0.571755, 0.799655,
		0.117174, -0.794941, 0.595263,
		0.976024, 0.202890, 0.078824,
		12.975361, 17.866453, 16.716299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.567579, 17.456501, 16.502901>,  <12.292144, 17.724430, 16.661121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.567579, 17.456501, 16.502901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.797240, 17.495426, 16.177723>,  <11.935037, 17.518782, 15.982616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.797240, 17.495426, 16.177723>,  <11.567579, 17.456501, 16.502901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.797240, 17.495426, 16.177723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715609, 0.542075, -0.440520,
		0.397808, 0.834676, 0.380872,
		0.574153, 0.097313, -0.812944,
		11.969486, 17.524620, 15.933840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.809664, 20.022041, 26.314453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.094255, 19.741856, 26.336891>,  <14.265011, 19.573744, 26.350353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.094255, 19.741856, 26.336891>,  <13.809664, 20.022041, 26.314453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.094255, 19.741856, 26.336891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043222, -0.123296, -0.991428,
		0.701377, 0.702956, -0.117997,
		0.711479, -0.700465, 0.056094,
		14.307699, 19.531715, 26.353720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.104404, 20.137030, 25.732979>,  <13.809664, 20.022041, 26.314453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.104404, 20.137030, 25.732979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.294891, 19.794189, 25.811562>,  <14.409184, 19.588486, 25.858711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.294891, 19.794189, 25.811562>,  <14.104404, 20.137030, 25.732979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.294891, 19.794189, 25.811562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011243, -0.229332, -0.973283,
		0.879256, 0.461286, -0.118848,
		0.476218, -0.857101, 0.196456,
		14.437757, 19.537060, 25.870499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.715349, 20.068375, 25.290789>,  <14.104404, 20.137030, 25.732979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.715349, 20.068375, 25.290789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.608393, 19.701843, 25.410017>,  <14.544219, 19.481924, 25.481554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.608393, 19.701843, 25.410017>,  <14.715349, 20.068375, 25.290789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.608393, 19.701843, 25.410017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070963, -0.289768, -0.954463,
		0.960971, -0.276367, 0.012456,
		-0.267391, -0.916327, 0.298070,
		14.528175, 19.426945, 25.499437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.978663, 19.686949, 24.776308>,  <14.715349, 20.068375, 25.290789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.978663, 19.686949, 24.776308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.720142, 19.443586, 24.960541>,  <14.565030, 19.297569, 25.071079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.720142, 19.443586, 24.960541>,  <14.978663, 19.686949, 24.776308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.720142, 19.443586, 24.960541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198727, -0.448554, -0.871382,
		0.736750, -0.654706, 0.168995,
		-0.646302, -0.608407, 0.460580,
		14.526252, 19.261065, 25.098715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.232160, 19.059954, 24.700069>,  <14.978663, 19.686949, 24.776308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.232160, 19.059954, 24.700069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.841361, 19.013268, 24.771461>,  <14.606882, 18.985256, 24.814297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.841361, 19.013268, 24.771461>,  <15.232160, 19.059954, 24.700069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.841361, 19.013268, 24.771461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126493, -0.356640, -0.925639,
		0.171691, -0.926922, 0.333672,
		-0.976996, -0.116717, 0.178481,
		14.548262, 18.978252, 24.825006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.194411, 18.457630, 24.535654>,  <15.232160, 19.059954, 24.700069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.194411, 18.457630, 24.535654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.820951, 18.600464, 24.524408>,  <14.596876, 18.686165, 24.517660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.820951, 18.600464, 24.524408>,  <15.194411, 18.457630, 24.535654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.820951, 18.600464, 24.524408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124132, -0.396188, -0.909740,
		-0.335989, -0.845889, 0.414226,
		-0.933650, 0.357082, -0.028113,
		14.540857, 18.707590, 24.515974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.780602, 18.001320, 24.184721>,  <15.194411, 18.457630, 24.535654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.780602, 18.001320, 24.184721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.527154, 18.310390, 24.169245>,  <14.375085, 18.495832, 24.159960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.527154, 18.310390, 24.169245>,  <14.780602, 18.001320, 24.184721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.527154, 18.310390, 24.169245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292143, -0.285275, -0.912836,
		-0.716363, -0.567090, 0.406488,
		-0.633622, 0.772675, -0.038689,
		14.337068, 18.542192, 24.157639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.126994, 17.718500, 23.914860>,  <14.780602, 18.001320, 24.184721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.126994, 17.718500, 23.914860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.123370, 18.111197, 23.838856>,  <14.121196, 18.346815, 23.793253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.123370, 18.111197, 23.838856>,  <14.126994, 17.718500, 23.914860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.123370, 18.111197, 23.838856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452173, -0.173501, -0.874892,
		-0.891884, 0.077990, 0.445489,
		-0.009060, 0.981741, -0.190008,
		14.120652, 18.405718, 23.781853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.419769, 17.787806, 23.535065>,  <14.126994, 17.718500, 23.914860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.419769, 17.787806, 23.535065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.671267, 18.091284, 23.466875>,  <13.822165, 18.273371, 23.425961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.671267, 18.091284, 23.466875>,  <13.419769, 17.787806, 23.535065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.671267, 18.091284, 23.466875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407549, 0.134803, -0.903179,
		-0.662258, 0.637344, 0.393962,
		0.628743, 0.758696, -0.170475,
		13.859889, 18.318893, 23.415733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.040461, 18.184555, 23.015779>,  <13.419769, 17.787806, 23.535065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.040461, 18.184555, 23.015779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.408545, 18.339737, 22.994982>,  <13.629395, 18.432846, 22.982504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.408545, 18.339737, 22.994982>,  <13.040461, 18.184555, 23.015779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.408545, 18.339737, 22.994982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177816, 0.295993, -0.938493,
		-0.348702, 0.872857, 0.341360,
		0.920211, 0.387954, -0.051994,
		13.684608, 18.456123, 22.979383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.965586, 18.837393, 22.702415>,  <13.040461, 18.184555, 23.015779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.965586, 18.837393, 22.702415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.343769, 18.727808, 22.631927>,  <13.570679, 18.662058, 22.589634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.343769, 18.727808, 22.631927>,  <12.965586, 18.837393, 22.702415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.343769, 18.727808, 22.631927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100346, 0.269715, -0.957697,
		0.309901, 0.923146, 0.227513,
		0.945459, -0.273961, -0.176219,
		13.627407, 18.645620, 22.579062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.215857, 19.293081, 22.223011>,  <12.965586, 18.837393, 22.702415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.215857, 19.293081, 22.223011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.480162, 18.995745, 22.181372>,  <13.638744, 18.817343, 22.156387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.480162, 18.995745, 22.181372>,  <13.215857, 19.293081, 22.223011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.480162, 18.995745, 22.181372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057390, 0.088249, -0.994444,
		0.748398, 0.663065, 0.015651,
		0.660762, -0.743341, -0.104099,
		13.678391, 18.772741, 22.150143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.726117, 19.499191, 21.724869>,  <13.215857, 19.293081, 22.223011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.726117, 19.499191, 21.724869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.774183, 19.102449, 21.741756>,  <13.803023, 18.864405, 21.751890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.774183, 19.102449, 21.741756>,  <13.726117, 19.499191, 21.724869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.774183, 19.102449, 21.741756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135822, -0.025704, -0.990400,
		0.983419, 0.124747, 0.131627,
		0.120166, -0.991856, 0.042221,
		13.810233, 18.804893, 21.754423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.272575, 19.346474, 21.293585>,  <13.726117, 19.499191, 21.724869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.272575, 19.346474, 21.293585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.081656, 18.996065, 21.321207>,  <13.967105, 18.785820, 21.337780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.081656, 18.996065, 21.321207>,  <14.272575, 19.346474, 21.293585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.081656, 18.996065, 21.321207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109799, -0.137425, -0.984408,
		0.871855, -0.462274, 0.161779,
		-0.477298, -0.876024, 0.069057,
		13.938467, 18.733257, 21.341925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.825051, 19.640757, 20.718489>,  <14.272575, 19.346474, 21.293585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.825051, 19.640757, 20.718489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.746348, 19.962978, 20.494930>,  <14.699126, 20.156311, 20.360794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.746348, 19.962978, 20.494930>,  <14.825051, 19.640757, 20.718489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.746348, 19.962978, 20.494930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267716, 0.504236, 0.821020,
		0.943194, 0.311167, 0.116448,
		-0.196757, 0.805556, -0.558897,
		14.687321, 20.204645, 20.327261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.032025, 20.129601, 21.154512>,  <14.825051, 19.640757, 20.718489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.032025, 20.129601, 21.154512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.813097, 20.334948, 20.890121>,  <14.681740, 20.458157, 20.731487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.813097, 20.334948, 20.890121>,  <15.032025, 20.129601, 21.154512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.813097, 20.334948, 20.890121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297012, 0.619221, 0.726876,
		0.782448, 0.594153, -0.186436,
		-0.547321, 0.513369, -0.660978,
		14.648901, 20.488958, 20.691828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.075191, 20.928545, 21.189857>,  <15.032025, 20.129601, 21.154512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.075191, 20.928545, 21.189857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.719505, 20.870958, 21.016157>,  <14.506094, 20.836407, 20.911938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.719505, 20.870958, 21.016157>,  <15.075191, 20.928545, 21.189857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.719505, 20.870958, 21.016157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399823, 0.705886, 0.584694,
		0.222355, 0.693541, -0.685244,
		-0.889213, -0.143966, -0.434250,
		14.452742, 20.827768, 20.885881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.914268, 21.539145, 20.980797>,  <15.075191, 20.928545, 21.189857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.914268, 21.539145, 20.980797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.582942, 21.320717, 21.030924>,  <14.384147, 21.189661, 21.061001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.582942, 21.320717, 21.030924>,  <14.914268, 21.539145, 20.980797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.582942, 21.320717, 21.030924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361735, 0.692057, 0.624663,
		-0.427837, 0.472085, -0.770773,
		-0.828313, -0.546070, 0.125318,
		14.334448, 21.156897, 21.068520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.290637, 22.013092, 20.996632>,  <14.914268, 21.539145, 20.980797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.290637, 22.013092, 20.996632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.206243, 21.668844, 21.182026>,  <14.155606, 21.462296, 21.293262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.206243, 21.668844, 21.182026>,  <14.290637, 22.013092, 20.996632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.206243, 21.668844, 21.182026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416036, 0.508131, 0.754133,
		-0.884533, -0.033715, -0.465257,
		-0.210986, -0.860619, 0.463486,
		14.142947, 21.410658, 21.321072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.501984, 22.030155, 21.225210>,  <14.290637, 22.013092, 20.996632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.501984, 22.030155, 21.225210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.689293, 21.769201, 21.463577>,  <13.801679, 21.612629, 21.606598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.689293, 21.769201, 21.463577>,  <13.501984, 22.030155, 21.225210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.689293, 21.769201, 21.463577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333471, 0.494071, 0.802927,
		-0.818241, -0.574709, 0.013809,
		0.468272, -0.652383, 0.595918,
		13.829775, 21.573486, 21.642353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304276, 22.149288, 21.932003>,  <13.501984, 22.030155, 21.225210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.304276, 22.149288, 21.932003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.584889, 21.886950, 22.043510>,  <13.753258, 21.729546, 22.110415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.584889, 21.886950, 22.043510>,  <13.304276, 22.149288, 21.932003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.584889, 21.886950, 22.043510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064655, 0.448142, 0.891621,
		-0.709696, -0.607479, 0.356791,
		0.701534, -0.655849, 0.278768,
		13.795350, 21.690195, 22.127140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.115849, 21.864035, 22.619749>,  <13.304276, 22.149288, 21.932003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.115849, 21.864035, 22.619749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.510511, 21.831366, 22.563402>,  <13.747309, 21.811764, 22.529594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.510511, 21.831366, 22.563402>,  <13.115849, 21.864035, 22.619749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.510511, 21.831366, 22.563402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160635, 0.346587, 0.924161,
		-0.026657, -0.934455, 0.355082,
		0.986654, -0.081674, -0.140868,
		13.806507, 21.806864, 22.521141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.412435, 21.657965, 23.325630>,  <13.115849, 21.864035, 22.619749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.412435, 21.657965, 23.325630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.734945, 21.807970, 23.142639>,  <13.928452, 21.897972, 23.032845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.734945, 21.807970, 23.142639>,  <13.412435, 21.657965, 23.325630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.734945, 21.807970, 23.142639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326708, 0.362409, 0.872882,
		0.493135, -0.853244, 0.169682,
		0.806275, 0.375012, -0.457478,
		13.976828, 21.920473, 23.005396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.903049, 21.431669, 23.783207>,  <13.412435, 21.657965, 23.325630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.903049, 21.431669, 23.783207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.043454, 21.743719, 23.576056>,  <14.127697, 21.930948, 23.451765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.043454, 21.743719, 23.576056>,  <13.903049, 21.431669, 23.783207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.043454, 21.743719, 23.576056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393674, 0.378868, 0.837544,
		0.849595, -0.497863, -0.174128,
		0.351011, 0.780123, -0.517880,
		14.148758, 21.977757, 23.420691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.572327, 21.490316, 23.952255>,  <13.903049, 21.431669, 23.783207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.572327, 21.490316, 23.952255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.514609, 21.853834, 23.795654>,  <14.479979, 22.071945, 23.701693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.514609, 21.853834, 23.795654>,  <14.572327, 21.490316, 23.952255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.514609, 21.853834, 23.795654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438460, 0.413403, 0.798029,
		0.887092, -0.056508, -0.458121,
		-0.144294, 0.908793, -0.391503,
		14.471321, 22.126472, 23.678204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.218057, 21.837414, 23.992802>,  <14.572327, 21.490316, 23.952255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.218057, 21.837414, 23.992802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.978991, 22.154018, 23.941719>,  <14.835550, 22.343981, 23.911070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.978991, 22.154018, 23.941719>,  <15.218057, 21.837414, 23.992802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.978991, 22.154018, 23.941719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533588, 0.511572, 0.673482,
		0.598397, 0.334376, -0.728089,
		-0.597666, 0.791509, -0.127704,
		14.799691, 22.391472, 23.903408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.675833, 22.369497, 23.988426>,  <15.218057, 21.837414, 23.992802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.675833, 22.369497, 23.988426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.320102, 22.524120, 24.086136>,  <15.106664, 22.616894, 24.144762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.320102, 22.524120, 24.086136>,  <15.675833, 22.369497, 23.988426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.320102, 22.524120, 24.086136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434726, 0.549053, 0.713831,
		0.141817, 0.741022, -0.656334,
		-0.889326, 0.386558, 0.244276,
		15.053304, 22.640087, 24.159418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.771985, 22.956209, 24.118513>,  <15.675833, 22.369497, 23.988426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.771985, 22.956209, 24.118513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.432258, 22.957323, 24.329662>,  <15.228421, 22.957993, 24.456352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.432258, 22.957323, 24.329662>,  <15.771985, 22.956209, 24.118513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.432258, 22.957323, 24.329662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424702, 0.597497, 0.680165,
		-0.313509, 0.801866, -0.508648,
		-0.849317, 0.002786, 0.527875,
		15.177463, 22.958158, 24.488026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.836876, 23.690367, 24.167465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.160497, 23.503141, 24.309649>,  <10.354670, 23.390806, 24.394958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.160497, 23.503141, 24.309649>,  <9.836876, 23.690367, 24.167465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.160497, 23.503141, 24.309649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116532, -0.465036, -0.877589,
		0.576067, 0.751438, -0.321694,
		0.809053, -0.468063, 0.355458,
		10.403213, 23.362722, 24.416286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.216302, 23.632492, 23.527515>,  <9.836876, 23.690367, 24.167465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.216302, 23.632492, 23.527515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.345607, 23.355606, 23.785612>,  <10.423190, 23.189474, 23.940470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.345607, 23.355606, 23.785612>,  <10.216302, 23.632492, 23.527515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.345607, 23.355606, 23.785612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096685, -0.654125, -0.750182,
		0.941357, 0.304891, -0.144528,
		0.323263, -0.692215, 0.645244,
		10.442586, 23.147942, 23.979185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.887449, 23.349794, 23.248859>,  <10.216302, 23.632492, 23.527515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.887449, 23.349794, 23.248859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.730369, 23.082031, 23.501104>,  <10.636120, 22.921373, 23.652452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.730369, 23.082031, 23.501104>,  <10.887449, 23.349794, 23.248859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.730369, 23.082031, 23.501104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012374, -0.681792, -0.731441,
		0.919582, -0.295042, 0.259458,
		-0.392702, -0.669410, 0.630615,
		10.612558, 22.881208, 23.690289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.312054, 22.769157, 23.073727>,  <10.887449, 23.349794, 23.248859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.312054, 22.769157, 23.073727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.989353, 22.641153, 23.272419>,  <10.795732, 22.564350, 23.391634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.989353, 22.641153, 23.272419>,  <11.312054, 22.769157, 23.073727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.989353, 22.641153, 23.272419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070441, -0.782571, -0.618563,
		0.586676, -0.534018, 0.608799,
		-0.806752, -0.320012, 0.496733,
		10.747328, 22.545151, 23.421438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.493115, 22.087383, 23.229061>,  <11.312054, 22.769157, 23.073727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.493115, 22.087383, 23.229061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.094103, 22.091194, 23.256886>,  <10.854695, 22.093481, 23.273581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.094103, 22.091194, 23.256886>,  <11.493115, 22.087383, 23.229061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.094103, 22.091194, 23.256886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053312, -0.747497, -0.662123,
		0.045687, -0.664197, 0.746160,
		-0.997532, 0.009529, 0.069561,
		10.794844, 22.094053, 23.277754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.344081, 21.417122, 23.371735>,  <11.493115, 22.087383, 23.229061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.344081, 21.417122, 23.371735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.034676, 21.594517, 23.190630>,  <10.849032, 21.700954, 23.081966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.034676, 21.594517, 23.190630>,  <11.344081, 21.417122, 23.371735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.034676, 21.594517, 23.190630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016917, -0.728578, -0.684754,
		-0.633554, -0.522006, 0.571067,
		-0.773513, 0.443490, -0.452763,
		10.802622, 21.727564, 23.054802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.949481, 20.852739, 23.185583>,  <11.344081, 21.417122, 23.371735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.949481, 20.852739, 23.185583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.797729, 21.153612, 22.970070>,  <10.706676, 21.334137, 22.840761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.797729, 21.153612, 22.970070>,  <10.949481, 20.852739, 23.185583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.797729, 21.153612, 22.970070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058610, -0.600686, -0.797334,
		-0.923382, -0.270915, 0.271975,
		-0.379382, 0.752184, -0.538784,
		10.683914, 21.379267, 22.808435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.411897, 20.493433, 22.670961>,  <10.949481, 20.852739, 23.185583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.411897, 20.493433, 22.670961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.499627, 20.852783, 22.518742>,  <10.552265, 21.068394, 22.427410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.499627, 20.852783, 22.518742>,  <10.411897, 20.493433, 22.670961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.499627, 20.852783, 22.518742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061151, -0.401937, -0.913623,
		-0.973733, 0.177111, -0.143092,
		0.219326, 0.898376, -0.380549,
		10.565425, 21.122295, 22.404577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.948968, 20.626143, 22.066814>,  <10.411897, 20.493433, 22.670961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.948968, 20.626143, 22.066814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.266077, 20.864466, 22.015392>,  <10.456343, 21.007460, 21.984539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.266077, 20.864466, 22.015392>,  <9.948968, 20.626143, 22.066814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.266077, 20.864466, 22.015392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169021, -0.417534, -0.892803,
		-0.585615, 0.686061, -0.431713,
		0.792772, 0.595807, -0.128555,
		10.503909, 21.043207, 21.976826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.909153, 20.810465, 21.373909>,  <9.948968, 20.626143, 22.066814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.909153, 20.810465, 21.373909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.276305, 20.946877, 21.455095>,  <10.496596, 21.028723, 21.503807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.276305, 20.946877, 21.455095>,  <9.909153, 20.810465, 21.373909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.276305, 20.946877, 21.455095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309443, -0.294802, -0.904067,
		-0.248478, 0.892631, -0.376122,
		0.917880, 0.341029, 0.202966,
		10.551669, 21.049185, 21.515985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.066593, 21.046833, 20.783655>,  <9.909153, 20.810465, 21.373909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.066593, 21.046833, 20.783655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.409492, 20.979034, 20.978138>,  <10.615232, 20.938354, 21.094828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.409492, 20.979034, 20.978138>,  <10.066593, 21.046833, 20.783655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.409492, 20.979034, 20.978138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380120, -0.428630, -0.819625,
		0.347327, 0.887439, -0.303013,
		0.857247, -0.169497, 0.486208,
		10.666667, 20.928185, 21.124001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.572436, 21.405195, 20.439394>,  <10.066593, 21.046833, 20.783655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.572436, 21.405195, 20.439394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.750370, 21.109335, 20.641401>,  <10.857130, 20.931820, 20.762606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.750370, 21.109335, 20.641401>,  <10.572436, 21.405195, 20.439394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.750370, 21.109335, 20.641401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448379, -0.304205, -0.840486,
		0.775293, 0.600315, 0.196323,
		0.444834, -0.739650, 0.505016,
		10.883821, 20.887440, 20.792906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.126893, 21.269699, 20.111948>,  <10.572436, 21.405195, 20.439394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.126893, 21.269699, 20.111948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.111718, 20.926950, 20.317602>,  <11.102613, 20.721302, 20.440994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.111718, 20.926950, 20.317602>,  <11.126893, 21.269699, 20.111948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.111718, 20.926950, 20.317602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317557, -0.498172, -0.806835,
		0.947480, 0.132658, 0.291004,
		-0.037937, -0.856870, 0.514134,
		11.100337, 20.669889, 20.471842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.814309, 20.835320, 19.884464>,  <11.126893, 21.269699, 20.111948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.814309, 20.835320, 19.884464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.529239, 20.582083, 20.005322>,  <11.358196, 20.430141, 20.077837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.529239, 20.582083, 20.005322>,  <11.814309, 20.835320, 19.884464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.529239, 20.582083, 20.005322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105260, -0.522349, -0.846210,
		0.693552, -0.571269, 0.438905,
		-0.712675, -0.633090, 0.302145,
		11.315436, 20.392157, 20.095964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.016402, 21.380190, 19.424280>,  <11.814309, 20.835320, 19.884464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.016402, 21.380190, 19.424280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.169725, 21.658567, 19.181385>,  <12.261720, 21.825594, 19.035648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.169725, 21.658567, 19.181385>,  <12.016402, 21.380190, 19.424280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.169725, 21.658567, 19.181385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177829, 0.589544, 0.787918,
		0.906340, -0.410000, 0.102218,
		0.383308, 0.695944, -0.607237,
		12.284719, 21.867350, 18.999214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.696580, 21.543430, 19.672737>,  <12.016402, 21.380190, 19.424280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.696580, 21.543430, 19.672737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.598283, 21.861433, 19.450899>,  <12.539305, 22.052235, 19.317797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.598283, 21.861433, 19.450899>,  <12.696580, 21.543430, 19.672737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.598283, 21.861433, 19.450899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259702, 0.605221, 0.752504,
		0.933898, 0.040893, -0.355194,
		-0.245743, 0.795006, -0.554595,
		12.524560, 22.099936, 19.284521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.158794, 22.051826, 19.772682>,  <12.696580, 21.543430, 19.672737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.158794, 22.051826, 19.772682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.867606, 22.275354, 19.613796>,  <12.692893, 22.409472, 19.518465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.867606, 22.275354, 19.613796>,  <13.158794, 22.051826, 19.772682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.867606, 22.275354, 19.613796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120849, 0.674874, 0.727970,
		0.674874, 0.481937, -0.558821,
		-0.727970, 0.558821, -0.397214,
		12.649215, 22.443001, 19.494633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.430578, 22.733204, 19.655399>,  <13.158794, 22.051826, 19.772682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.430578, 22.733204, 19.655399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.035756, 22.776657, 19.702589>,  <12.798862, 22.802729, 19.730904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.035756, 22.776657, 19.702589>,  <13.430578, 22.733204, 19.655399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.035756, 22.776657, 19.702589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156405, 0.814698, 0.558395,
		-0.035454, 0.569620, -0.821143,
		-0.987056, 0.108634, 0.117976,
		12.739639, 22.809248, 19.737982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.509726, 23.406096, 19.796333>,  <13.430578, 22.733204, 19.655399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.509726, 23.406096, 19.796333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.127024, 23.309755, 19.861588>,  <12.897403, 23.251951, 19.900740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.127024, 23.309755, 19.861588>,  <13.509726, 23.406096, 19.796333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.127024, 23.309755, 19.861588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091782, 0.782086, 0.616375,
		-0.276039, 0.574746, -0.770369,
		-0.956754, -0.240849, 0.163135,
		12.839997, 23.237501, 19.910528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.947233, 23.933685, 19.544481>,  <13.509726, 23.406096, 19.796333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.947233, 23.933685, 19.544481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.770101, 23.736036, 19.843746>,  <12.663821, 23.617447, 20.023304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.770101, 23.736036, 19.843746>,  <12.947233, 23.933685, 19.544481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.770101, 23.736036, 19.843746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148580, 0.863343, 0.482248,
		-0.884208, 0.102393, -0.455733,
		-0.442832, -0.494121, 0.748161,
		12.637251, 23.587801, 20.068195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.539729, 24.384407, 19.740740>,  <12.947233, 23.933685, 19.544481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.539729, 24.384407, 19.740740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.553530, 24.119644, 20.040257>,  <12.561810, 23.960787, 20.219967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.553530, 24.119644, 20.040257>,  <12.539729, 24.384407, 19.740740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.553530, 24.119644, 20.040257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098087, 0.743379, 0.661639,
		-0.994580, -0.096274, -0.039277,
		0.034501, -0.661906, 0.748793,
		12.563880, 23.921072, 20.264894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.999695, 24.661348, 20.274639>,  <12.539729, 24.384407, 19.740740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.999695, 24.661348, 20.274639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.264467, 24.435377, 20.471699>,  <12.423330, 24.299795, 20.589935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.264467, 24.435377, 20.471699>,  <11.999695, 24.661348, 20.274639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.264467, 24.435377, 20.471699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022513, 0.671934, 0.740269,
		-0.749227, -0.478915, 0.457492,
		0.661930, -0.564929, 0.492650,
		12.463046, 24.265898, 20.619493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.756435, 24.709837, 20.900486>,  <11.999695, 24.661348, 20.274639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.756435, 24.709837, 20.900486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.129783, 24.586521, 20.974007>,  <12.353791, 24.512531, 21.018120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.129783, 24.586521, 20.974007>,  <11.756435, 24.709837, 20.900486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.129783, 24.586521, 20.974007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067109, 0.652959, 0.754414,
		-0.352594, -0.691811, 0.630139,
		0.933367, -0.308290, 0.183803,
		12.409793, 24.494034, 21.029148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.773350, 24.652378, 21.612368>,  <11.756435, 24.709837, 20.900486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.773350, 24.652378, 21.612368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.152864, 24.686462, 21.490683>,  <12.380572, 24.706913, 21.417671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.152864, 24.686462, 21.490683>,  <11.773350, 24.652378, 21.612368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.152864, 24.686462, 21.490683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187572, 0.622897, 0.759484,
		0.254210, -0.777649, 0.575012,
		0.948785, 0.085212, -0.304212,
		12.437499, 24.712027, 21.399420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.168173, 24.536274, 22.150808>,  <11.773350, 24.652378, 21.612368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.168173, 24.536274, 22.150808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.405097, 24.745289, 21.905493>,  <12.547252, 24.870697, 21.758303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.405097, 24.745289, 21.905493>,  <12.168173, 24.536274, 22.150808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.405097, 24.745289, 21.905493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364381, 0.505164, 0.782328,
		0.718606, -0.686852, 0.108812,
		0.592311, 0.522537, -0.613289,
		12.582790, 24.902050, 21.721506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.821686, 24.495844, 22.476219>,  <12.168173, 24.536274, 22.150808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.821686, 24.495844, 22.476219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.839657, 24.808760, 22.227703>,  <12.850439, 24.996510, 22.078592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.839657, 24.808760, 22.227703>,  <12.821686, 24.495844, 22.476219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.839657, 24.808760, 22.227703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442850, 0.541876, 0.714321,
		0.895470, -0.307231, -0.322092,
		0.044928, 0.782291, -0.621291,
		12.853135, 25.043447, 22.041315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.569553, 24.765116, 22.679453>,  <12.821686, 24.495844, 22.476219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.569553, 24.765116, 22.679453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.353728, 25.052406, 22.503714>,  <13.224234, 25.224781, 22.398270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.353728, 25.052406, 22.503714>,  <13.569553, 24.765116, 22.679453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.353728, 25.052406, 22.503714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359418, 0.668375, 0.651225,
		0.761375, 0.193467, -0.618772,
		-0.539562, 0.718224, -0.439348,
		13.191859, 25.267874, 22.371910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.993279, 25.272972, 22.687466>,  <13.569553, 24.765116, 22.679453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.993279, 25.272972, 22.687466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.628269, 25.435709, 22.670584>,  <13.409264, 25.533350, 22.660456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.628269, 25.435709, 22.670584>,  <13.993279, 25.272972, 22.687466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.628269, 25.435709, 22.670584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219421, 0.573987, 0.788919,
		0.345189, 0.710647, -0.613046,
		-0.912524, 0.406841, -0.042203,
		13.354512, 25.557762, 22.657923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.618205, 25.685093, 22.482191>,  <13.993279, 25.272972, 22.687466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.618205, 25.685093, 22.482191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.982314, 25.539104, 22.560368>,  <15.200780, 25.451511, 22.607273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.982314, 25.539104, 22.560368>,  <14.618205, 25.685093, 22.482191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.982314, 25.539104, 22.560368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142438, -0.167165, -0.975586,
		0.388733, 0.915888, -0.100180,
		0.910274, -0.364973, 0.195440,
		15.255396, 25.429613, 22.618999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.976198, 25.862207, 21.805407>,  <14.618205, 25.685093, 22.482191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.976198, 25.862207, 21.805407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.214396, 25.599051, 21.989826>,  <15.357314, 25.441156, 22.100477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.214396, 25.599051, 21.989826>,  <14.976198, 25.862207, 21.805407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.214396, 25.599051, 21.989826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158764, -0.466207, -0.870313,
		0.787516, 0.591464, -0.173174,
		0.595494, -0.657891, 0.461049,
		15.393044, 25.401684, 22.128141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.657495, 25.747581, 21.380768>,  <14.976198, 25.862207, 21.805407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.657495, 25.747581, 21.380768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.638386, 25.430906, 21.624390>,  <15.626920, 25.240900, 21.770563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.638386, 25.430906, 21.624390>,  <15.657495, 25.747581, 21.380768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.638386, 25.430906, 21.624390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209579, -0.604121, -0.768840,
		0.976624, 0.090913, 0.194783,
		-0.047775, -0.791690, 0.609052,
		15.624053, 25.193399, 21.807106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.356777, 25.536520, 21.570980>,  <15.657495, 25.747581, 21.380768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.356777, 25.536520, 21.570980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.091642, 25.237625, 21.590076>,  <15.932561, 25.058289, 21.601534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.091642, 25.237625, 21.590076>,  <16.356777, 25.536520, 21.570980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.091642, 25.237625, 21.590076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411234, -0.416586, -0.810766,
		0.625725, -0.517773, 0.583420,
		-0.662838, -0.747239, 0.047742,
		15.892791, 25.013453, 21.604399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.732626, 24.801859, 21.508266>,  <16.356777, 25.536520, 21.570980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.732626, 24.801859, 21.508266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.346609, 24.762535, 21.411079>,  <16.115000, 24.738941, 21.352766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.346609, 24.762535, 21.411079>,  <16.732626, 24.801859, 21.508266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.346609, 24.762535, 21.411079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259853, -0.480076, -0.837857,
		-0.034275, -0.871701, 0.488838,
		-0.965040, -0.098308, -0.242968,
		16.057096, 24.733044, 21.338188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.719006, 24.219837, 21.201633>,  <16.732626, 24.801859, 21.508266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.719006, 24.219837, 21.201633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.358698, 24.340460, 21.076620>,  <16.142513, 24.412834, 21.001612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.358698, 24.340460, 21.076620>,  <16.719006, 24.219837, 21.201633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.358698, 24.340460, 21.076620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117905, -0.522803, -0.844260,
		-0.417987, -0.797333, 0.435370,
		-0.900769, 0.301558, -0.312535,
		16.088467, 24.430927, 20.982861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.453962, 23.606110, 20.928825>,  <16.719006, 24.219837, 21.201633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.453962, 23.606110, 20.928825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.251801, 23.916500, 20.777866>,  <16.130503, 24.102734, 20.687290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.251801, 23.916500, 20.777866>,  <16.453962, 23.606110, 20.928825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.251801, 23.916500, 20.777866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066520, -0.471105, -0.879565,
		-0.860315, -0.419431, 0.289716,
		-0.505404, 0.775975, -0.377399,
		16.100180, 24.149292, 20.664646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874147, 23.323765, 20.566593>,  <16.453962, 23.606110, 20.928825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.874147, 23.323765, 20.566593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.867389, 23.698013, 20.425550>,  <15.863334, 23.922562, 20.340925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.867389, 23.698013, 20.425550>,  <15.874147, 23.323765, 20.566593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.867389, 23.698013, 20.425550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123109, -0.351920, -0.927899,
		-0.992249, 0.027730, 0.121129,
		-0.016897, 0.935619, -0.352606,
		15.862320, 23.978699, 20.319769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.408783, 23.324493, 20.005165>,  <15.874147, 23.323765, 20.566593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.408783, 23.324493, 20.005165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.648960, 23.637297, 19.938314>,  <15.793066, 23.824978, 19.898205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.648960, 23.637297, 19.938314>,  <15.408783, 23.324493, 20.005165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.648960, 23.637297, 19.938314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044770, -0.175792, -0.983409,
		-0.798413, 0.597963, -0.070543,
		0.600443, 0.782008, -0.167126,
		15.829093, 23.871899, 19.888176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040748, 23.693985, 19.575718>,  <15.408783, 23.324493, 20.005165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.040748, 23.693985, 19.575718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.421956, 23.800741, 19.518415>,  <15.650681, 23.864794, 19.484034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.421956, 23.800741, 19.518415>,  <15.040748, 23.693985, 19.575718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.421956, 23.800741, 19.518415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107573, -0.143910, -0.983727,
		-0.283162, 0.952922, -0.108439,
		0.953020, 0.266889, -0.143258,
		15.707862, 23.880808, 19.475437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.082713, 24.131227, 18.997564>,  <15.040748, 23.693985, 19.575718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.082713, 24.131227, 18.997564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.455321, 23.986704, 19.014174>,  <15.678886, 23.899990, 19.024139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.455321, 23.986704, 19.014174>,  <15.082713, 24.131227, 18.997564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.455321, 23.986704, 19.014174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001775, -0.109654, -0.993968,
		0.363685, 0.925975, -0.101503,
		0.931520, -0.361311, 0.041523,
		15.734777, 23.878311, 19.026630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.541919, 24.504326, 18.552073>,  <15.082713, 24.131227, 18.997564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.541919, 24.504326, 18.552073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.709785, 24.144213, 18.598318>,  <15.810506, 23.928144, 18.626066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.709785, 24.144213, 18.598318>,  <15.541919, 24.504326, 18.552073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.709785, 24.144213, 18.598318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134304, -0.064383, -0.988846,
		0.897687, 0.430514, 0.093892,
		0.419667, -0.900285, 0.115615,
		15.835686, 23.874126, 18.633003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.854466, 24.402817, 17.883850>,  <15.541919, 24.504326, 18.552073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.854466, 24.402817, 17.883850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.908398, 24.044199, 18.052626>,  <15.940756, 23.829029, 18.153891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.908398, 24.044199, 18.052626>,  <15.854466, 24.402817, 17.883850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.908398, 24.044199, 18.052626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174237, -0.397740, -0.900802,
		0.975430, 0.194970, 0.102585,
		0.134827, -0.896543, 0.421939,
		15.948846, 23.775236, 18.179207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.429621, 24.126068, 17.610476>,  <15.854466, 24.402817, 17.883850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.429621, 24.126068, 17.610476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.206974, 23.816345, 17.730896>,  <16.073387, 23.630512, 17.803148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.206974, 23.816345, 17.730896>,  <16.429621, 24.126068, 17.610476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.206974, 23.816345, 17.730896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073451, -0.406823, -0.910549,
		0.827517, -0.484713, 0.283318,
		-0.556615, -0.774305, 0.301051,
		16.039989, 23.584053, 17.821211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<16.085297, 11.308107, 17.738386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.895400, 11.660048, 17.729622>,  <15.781462, 11.871213, 17.724363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.895400, 11.660048, 17.729622>,  <16.085297, 11.308107, 17.738386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.895400, 11.660048, 17.729622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550223, -0.316132, -0.772862,
		-0.686931, -0.354853, 0.634196,
		-0.474742, 0.879852, -0.021912,
		15.752977, 11.924005, 17.723049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.280719, 11.202003, 17.744772>,  <16.085297, 11.308107, 17.738386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.280719, 11.202003, 17.744772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.442849, 11.495823, 17.527094>,  <15.540127, 11.672114, 17.396486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.442849, 11.495823, 17.527094>,  <15.280719, 11.202003, 17.744772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442849, 11.495823, 17.527094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478953, -0.336415, -0.810820,
		-0.778663, 0.589290, 0.215457,
		0.405325, 0.734549, -0.544196,
		15.564446, 11.716187, 17.363834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.795922, 10.629748, 17.370504>,  <15.280719, 11.202003, 17.744772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.795922, 10.629748, 17.370504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.445276, 10.665867, 17.181448>,  <15.234888, 10.687538, 17.068014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.445276, 10.665867, 17.181448>,  <15.795922, 10.629748, 17.370504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.445276, 10.665867, 17.181448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379044, 0.734669, -0.562661,
		0.296429, -0.672390, -0.678249,
		-0.876616, 0.090297, -0.472642,
		15.182291, 10.692956, 17.039656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.773474, 10.594700, 16.561724>,  <15.795922, 10.629748, 17.370504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.773474, 10.594700, 16.561724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.582916, 10.866055, 16.785450>,  <15.468581, 11.028869, 16.919685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.582916, 10.866055, 16.785450>,  <15.773474, 10.594700, 16.561724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.582916, 10.866055, 16.785450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495298, 0.732666, -0.466776,
		-0.726449, 0.054660, -0.685043,
		-0.476394, 0.678390, 0.559318,
		15.439998, 11.069572, 16.953245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.450951, 11.176462, 16.189196>,  <15.773474, 10.594700, 16.561724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.450951, 11.176462, 16.189196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.569987, 11.313118, 16.545784>,  <15.641409, 11.395111, 16.759737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.569987, 11.313118, 16.545784>,  <15.450951, 11.176462, 16.189196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.569987, 11.313118, 16.545784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583675, 0.673830, -0.453075,
		-0.755488, 0.655161, 0.001120,
		0.297592, 0.341639, 0.891472,
		15.659265, 11.415609, 16.813225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.178349, 11.770122, 16.379501>,  <15.450951, 11.176462, 16.189196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.178349, 11.770122, 16.379501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.550981, 11.763629, 16.524771>,  <15.774560, 11.759733, 16.611933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.550981, 11.763629, 16.524771>,  <15.178349, 11.770122, 16.379501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.550981, 11.763629, 16.524771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233237, 0.792977, -0.562840,
		-0.278851, 0.609036, 0.742508,
		0.931581, -0.016232, 0.363172,
		15.830455, 11.758759, 16.633722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103965, 12.525051, 16.617752>,  <15.178349, 11.770122, 16.379501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.103965, 12.525051, 16.617752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.068827, 12.782596, 16.313719>,  <15.047744, 12.937122, 16.131298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.068827, 12.782596, 16.313719>,  <15.103965, 12.525051, 16.617752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.068827, 12.782596, 16.313719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957345, -0.265426, -0.114196,
		-0.275272, 0.717629, 0.639714,
		-0.087846, 0.643861, -0.760082,
		15.042473, 12.975754, 16.085693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.558995, 13.001085, 16.649857>,  <15.103965, 12.525051, 16.617752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.558995, 13.001085, 16.649857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.637993, 12.960448, 16.259846>,  <14.685391, 12.936066, 16.025839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.637993, 12.960448, 16.259846>,  <14.558995, 13.001085, 16.649857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.637993, 12.960448, 16.259846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968117, -0.176561, -0.177697,
		-0.154099, 0.979033, -0.133224,
		0.197493, -0.101594, -0.975026,
		14.697241, 12.929970, 15.967338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.133219, 13.407242, 16.312784>,  <14.558995, 13.001085, 16.649857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.133219, 13.407242, 16.312784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.213665, 13.085532, 16.089108>,  <14.261932, 12.892507, 15.954902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.213665, 13.085532, 16.089108>,  <14.133219, 13.407242, 16.312784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.213665, 13.085532, 16.089108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979558, -0.162614, -0.118417,
		0.004307, 0.571577, -0.820537,
		0.201116, -0.804274, -0.559192,
		14.273999, 12.844250, 15.921350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.963284, 13.550146, 15.635618>,  <14.133219, 13.407242, 16.312784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.963284, 13.550146, 15.635618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.930846, 13.163276, 15.731944>,  <13.911384, 12.931153, 15.789740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.930846, 13.163276, 15.731944>,  <13.963284, 13.550146, 15.635618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.930846, 13.163276, 15.731944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977033, 0.029371, -0.211053,
		0.197053, -0.252400, -0.947346,
		-0.081094, -0.967177, 0.240816,
		13.906518, 12.873122, 15.804189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.587082, 13.266094, 15.173062>,  <13.963284, 13.550146, 15.635618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.587082, 13.266094, 15.173062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.571753, 12.999980, 15.471304>,  <13.562555, 12.840311, 15.650249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.571753, 12.999980, 15.471304>,  <13.587082, 13.266094, 15.173062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.571753, 12.999980, 15.471304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996302, -0.031979, -0.079744,
		0.076896, -0.745903, -0.661601,
		-0.038324, -0.665287, 0.745604,
		13.560255, 12.800394, 15.694985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.153454, 12.659554, 14.987056>,  <13.587082, 13.266094, 15.173062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.153454, 12.659554, 14.987056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.167751, 12.658091, 15.386798>,  <13.176330, 12.657213, 15.626643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.167751, 12.658091, 15.386798>,  <13.153454, 12.659554, 14.987056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.167751, 12.658091, 15.386798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996218, -0.079379, 0.035341,
		0.079198, -0.996838, -0.006486,
		0.035744, -0.003662, 0.999354,
		13.178474, 12.656994, 15.686604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.706673, 12.141107, 15.215646>,  <13.153454, 12.659554, 14.987056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.706673, 12.141107, 15.215646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.750731, 12.347311, 15.555555>,  <12.777165, 12.471034, 15.759501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.750731, 12.347311, 15.555555>,  <12.706673, 12.141107, 15.215646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.750731, 12.347311, 15.555555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992037, 0.109555, 0.062124,
		-0.061071, -0.849851, 0.523473,
		0.110145, 0.515511, 0.849774,
		12.783774, 12.501965, 15.810488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.270005, 11.871580, 15.835077>,  <12.706673, 12.141107, 15.215646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.270005, 11.871580, 15.835077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.336713, 12.258044, 15.913791>,  <12.376738, 12.489923, 15.961019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.336713, 12.258044, 15.913791>,  <12.270005, 11.871580, 15.835077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.336713, 12.258044, 15.913791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979298, 0.185527, -0.080965,
		-0.114734, -0.179207, 0.977098,
		0.166768, 0.966160, 0.196783,
		12.386744, 12.547893, 15.972826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.785075, 12.015748, 16.442274>,  <12.270005, 11.871580, 15.835077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.785075, 12.015748, 16.442274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.891756, 12.363050, 16.274939>,  <11.955765, 12.571430, 16.174538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.891756, 12.363050, 16.274939>,  <11.785075, 12.015748, 16.442274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.891756, 12.363050, 16.274939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960621, 0.274590, -0.042517,
		0.077956, 0.413203, 0.907296,
		0.266703, 0.868253, -0.418337,
		11.971766, 12.623526, 16.149437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.572032, 12.606992, 16.840282>,  <11.785075, 12.015748, 16.442274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.572032, 12.606992, 16.840282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.624206, 12.749846, 16.470322>,  <11.655510, 12.835559, 16.248346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.624206, 12.749846, 16.470322>,  <11.572032, 12.606992, 16.840282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.624206, 12.749846, 16.470322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880341, 0.470826, 0.057653,
		0.456057, 0.806707, 0.375813,
		0.130433, 0.357137, -0.924900,
		11.663336, 12.856987, 16.192852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.162519, 13.189224, 16.782322>,  <11.572032, 12.606992, 16.840282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.162519, 13.189224, 16.782322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.217357, 13.127836, 16.390882>,  <11.250259, 13.091003, 16.156019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.217357, 13.127836, 16.390882>,  <11.162519, 13.189224, 16.782322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.217357, 13.127836, 16.390882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844105, 0.498878, -0.196490,
		0.518355, 0.852976, -0.061152,
		0.137094, -0.153470, -0.978597,
		11.258485, 13.081796, 16.097303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.966969, 13.826258, 16.458324>,  <11.162519, 13.189224, 16.782322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.966969, 13.826258, 16.458324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.957870, 13.557354, 16.162338>,  <10.952410, 13.396012, 15.984746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.957870, 13.557354, 16.162338>,  <10.966969, 13.826258, 16.458324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.957870, 13.557354, 16.162338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801529, 0.454642, -0.388397,
		0.597523, 0.584269, -0.549178,
		-0.022751, -0.672258, -0.739967,
		10.951044, 13.355677, 15.940348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.697519, 14.219413, 15.908385>,  <10.966969, 13.826258, 16.458324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.697519, 14.219413, 15.908385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.630116, 13.845882, 15.782165>,  <10.589675, 13.621764, 15.706432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.630116, 13.845882, 15.782165>,  <10.697519, 14.219413, 15.908385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.630116, 13.845882, 15.782165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867685, 0.292418, -0.402013,
		0.467684, 0.206058, -0.859542,
		-0.168508, -0.933826, -0.315552,
		10.579564, 13.565735, 15.687499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.619925, 14.223903, 15.135791>,  <10.697519, 14.219413, 15.908385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.619925, 14.223903, 15.135791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.443829, 13.904075, 15.299193>,  <10.338171, 13.712178, 15.397235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.443829, 13.904075, 15.299193>,  <10.619925, 14.223903, 15.135791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.443829, 13.904075, 15.299193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819572, 0.172021, -0.546544,
		0.366729, -0.575410, -0.731036,
		-0.440240, -0.799570, 0.408505,
		10.311756, 13.664204, 15.421745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.250169, 14.039872, 14.610369>,  <10.619925, 14.223903, 15.135791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.250169, 14.039872, 14.610369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.090082, 13.824205, 14.906781>,  <9.994030, 13.694805, 15.084629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.090082, 13.824205, 14.906781>,  <10.250169, 14.039872, 14.610369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.090082, 13.824205, 14.906781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851592, -0.079921, -0.518077,
		0.338553, -0.838399, -0.427164,
		-0.400216, -0.539166, 0.741031,
		9.970017, 13.662456, 15.129090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.806549, 13.384082, 14.320995>,  <10.250169, 14.039872, 14.610369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.806549, 13.384082, 14.320995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.679071, 13.473315, 14.689487>,  <9.602585, 13.526855, 14.910583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.679071, 13.473315, 14.689487>,  <9.806549, 13.384082, 14.320995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.679071, 13.473315, 14.689487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943952, 0.013438, -0.329809,
		-0.085954, -0.974707, 0.206296,
		-0.318695, 0.223082, 0.921232,
		9.583463, 13.540240, 14.965857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.281599, 12.905318, 14.420235>,  <9.806549, 13.384082, 14.320995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.281599, 12.905318, 14.420235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.209669, 13.194184, 14.687409>,  <9.166512, 13.367504, 14.847714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.209669, 13.194184, 14.687409>,  <9.281599, 12.905318, 14.420235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.209669, 13.194184, 14.687409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919649, 0.117587, -0.374725,
		-0.349155, -0.681652, 0.642994,
		-0.179825, 0.722166, 0.667937,
		9.155722, 13.410834, 14.887791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.593628, 12.743022, 14.798570>,  <9.281599, 12.905318, 14.420235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.593628, 12.743022, 14.798570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.655694, 13.136282, 14.837226>,  <8.692934, 13.372238, 14.860420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.655694, 13.136282, 14.837226>,  <8.593628, 12.743022, 14.798570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.655694, 13.136282, 14.837226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921593, 0.179291, -0.344269,
		-0.355795, -0.035646, 0.933884,
		0.155165, 0.983150, 0.096642,
		8.702244, 13.431227, 14.866219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.948345, 13.013855, 15.049574>,  <8.593628, 12.743022, 14.798570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.948345, 13.013855, 15.049574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.095600, 13.359303, 14.911798>,  <8.183953, 13.566571, 14.829133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.095600, 13.359303, 14.911798>,  <7.948345, 13.013855, 15.049574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.095600, 13.359303, 14.911798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918516, 0.280338, -0.278818,
		-0.144233, 0.419015, 0.896450,
		0.368138, 0.863618, -0.344438,
		8.206041, 13.618388, 14.808467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.432489, 13.419194, 14.999351>,  <7.948345, 13.013855, 15.049574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.432489, 13.419194, 14.999351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.652699, 13.713484, 14.841548>,  <7.784824, 13.890058, 14.746866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.652699, 13.713484, 14.841548>,  <7.432489, 13.419194, 14.999351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.652699, 13.713484, 14.841548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833151, 0.454349, -0.315319,
		-0.052744, 0.502274, 0.863098,
		0.550524, 0.735723, -0.394506,
		7.817856, 13.934200, 14.723196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.179537, 14.102130, 15.181253>,  <7.432489, 13.419194, 14.999351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.179537, 14.102130, 15.181253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.379578, 14.171933, 14.841972>,  <7.499602, 14.213816, 14.638404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.379578, 14.171933, 14.841972>,  <7.179537, 14.102130, 15.181253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.379578, 14.171933, 14.841972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762932, 0.552168, -0.336222,
		0.409676, 0.815265, 0.409278,
		0.500100, 0.174509, -0.848202,
		7.529608, 14.224286, 14.587512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.117060, 14.862953, 15.063477>,  <7.179537, 14.102130, 15.181253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.117060, 14.862953, 15.063477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.208128, 14.691670, 14.713664>,  <7.262770, 14.588901, 14.503777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.208128, 14.691670, 14.713664>,  <7.117060, 14.862953, 15.063477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.208128, 14.691670, 14.713664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901708, 0.246286, -0.355338,
		0.367543, 0.869473, -0.330045,
		0.227671, -0.428206, -0.874532,
		7.276430, 14.563209, 14.451304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.904137, 15.298801, 14.514350>,  <7.117060, 14.862953, 15.063477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.904137, 15.298801, 14.514350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.922807, 14.944235, 14.330138>,  <6.934009, 14.731495, 14.219611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.922807, 14.944235, 14.330138>,  <6.904137, 15.298801, 14.514350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.922807, 14.944235, 14.330138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847856, 0.208614, -0.487464,
		0.528169, 0.413216, -0.741816,
		0.046675, -0.886416, -0.460530,
		6.936809, 14.678310, 14.191979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.744397, 15.429696, 13.772599>,  <6.904137, 15.298801, 14.514350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.744397, 15.429696, 13.772599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.685536, 15.042872, 13.855684>,  <6.650219, 14.810779, 13.905535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.685536, 15.042872, 13.855684>,  <6.744397, 15.429696, 13.772599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.685536, 15.042872, 13.855684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855691, 0.019133, -0.517133,
		0.496124, -0.253835, -0.830319,
		-0.147153, -0.967058, 0.207712,
		6.641390, 14.752755, 13.917998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.653483, 15.171258, 13.122213>,  <6.744397, 15.429696, 13.772599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.653483, 15.171258, 13.122213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.462362, 14.939122, 13.386003>,  <6.347689, 14.799841, 13.544277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.462362, 14.939122, 13.386003>,  <6.653483, 15.171258, 13.122213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.462362, 14.939122, 13.386003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849573, 0.114318, -0.514934,
		0.223448, -0.806309, -0.547665,
		-0.477803, -0.580342, 0.659474,
		6.319021, 14.765020, 13.583846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.642740, 15.678798, 12.543718>,  <6.653483, 15.171258, 13.122213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.642740, 15.678798, 12.543718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.801939, 15.835150, 12.875697>,  <6.897458, 15.928961, 13.074884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.801939, 15.835150, 12.875697>,  <6.642740, 15.678798, 12.543718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.801939, 15.835150, 12.875697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916575, -0.131376, -0.377665,
		-0.038586, 0.911018, -0.410558,
		0.397997, 0.390879, 0.829947,
		6.921338, 15.952414, 13.124681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.075324, 16.133833, 12.335186>,  <6.642740, 15.678798, 12.543718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.075324, 16.133833, 12.335186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.207342, 16.073017, 12.707842>,  <7.286553, 16.036528, 12.931436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.207342, 16.073017, 12.707842>,  <7.075324, 16.133833, 12.335186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.207342, 16.073017, 12.707842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925227, -0.143570, -0.351203,
		0.187152, 0.977891, 0.093287,
		0.330045, -0.152040, 0.931641,
		7.306355, 16.027405, 12.987334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.567255, 16.553680, 12.382465>,  <7.075324, 16.133833, 12.335186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.567255, 16.553680, 12.382465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.646287, 16.263248, 12.645911>,  <7.693706, 16.088989, 12.803979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.646287, 16.263248, 12.645911>,  <7.567255, 16.553680, 12.382465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.646287, 16.263248, 12.645911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967216, 0.035045, -0.251524,
		0.159545, 0.686718, 0.709199,
		0.197580, -0.726078, 0.658614,
		7.705561, 16.045425, 12.843495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.109767, 16.769663, 12.874374>,  <7.567255, 16.553680, 12.382465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.109767, 16.769663, 12.874374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.108853, 16.370312, 12.897133>,  <8.108305, 16.130701, 12.910788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.108853, 16.370312, 12.897133>,  <8.109767, 16.769663, 12.874374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.108853, 16.370312, 12.897133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963544, -0.017418, -0.266982,
		0.267540, 0.054212, 0.962021,
		-0.002283, -0.998378, 0.056896,
		8.108169, 16.070799, 12.914202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.800359, 16.538248, 13.179163>,  <8.109767, 16.769663, 12.874374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.800359, 16.538248, 13.179163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.639550, 16.208609, 13.019543>,  <8.543065, 16.010824, 12.923771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.639550, 16.208609, 13.019543>,  <8.800359, 16.538248, 13.179163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.639550, 16.208609, 13.019543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893433, -0.257682, -0.367936,
		0.200387, -0.504443, 0.839870,
		-0.402022, -0.824098, -0.399050,
		8.518944, 15.961379, 12.899828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.174368, 16.082453, 13.484095>,  <8.800359, 16.538248, 13.179163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.174368, 16.082453, 13.484095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.027739, 15.913714, 13.152391>,  <8.939761, 15.812471, 12.953369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.027739, 15.913714, 13.152391>,  <9.174368, 16.082453, 13.484095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.027739, 15.913714, 13.152391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863103, -0.486978, -0.133807,
		-0.347385, -0.764786, 0.542610,
		-0.366573, -0.421846, -0.829259,
		8.917767, 15.787161, 12.903614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.314919, 15.406280, 13.583880>,  <9.174368, 16.082453, 13.484095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.314919, 15.406280, 13.583880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.273504, 15.478317, 13.192606>,  <9.248655, 15.521540, 12.957842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.273504, 15.478317, 13.192606>,  <9.314919, 15.406280, 13.583880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.273504, 15.478317, 13.192606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790561, -0.581897, -0.190811,
		-0.603567, -0.793072, -0.082126,
		-0.103538, 0.180093, -0.978185,
		9.242443, 15.532345, 12.899151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.483391, 14.864803, 13.354205>,  <9.314919, 15.406280, 13.583880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.483391, 14.864803, 13.354205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.515543, 15.093491, 13.027604>,  <9.534835, 15.230703, 12.831643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.515543, 15.093491, 13.027604>,  <9.483391, 14.864803, 13.354205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.515543, 15.093491, 13.027604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796028, -0.529824, -0.292619,
		-0.599898, -0.626438, -0.497692,
		0.080382, 0.571719, -0.816503,
		9.539658, 15.265006, 12.782653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.533377, 14.345213, 12.952214>,  <9.483391, 14.864803, 13.354205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.533377, 14.345213, 12.952214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.663458, 14.662780, 12.746714>,  <9.741507, 14.853320, 12.623413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.663458, 14.662780, 12.746714>,  <9.533377, 14.345213, 12.952214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.663458, 14.662780, 12.746714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775166, -0.534974, -0.336036,
		-0.541628, -0.288962, -0.789392,
		0.325202, 0.793917, -0.513751,
		9.761019, 14.900955, 12.592588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.688786, 14.012670, 12.396272>,  <9.533377, 14.345213, 12.952214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.688786, 14.012670, 12.396272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.864132, 14.371403, 12.372522>,  <9.969340, 14.586642, 12.358273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.864132, 14.371403, 12.372522>,  <9.688786, 14.012670, 12.396272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.864132, 14.371403, 12.372522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847302, -0.434387, -0.305593,
		-0.299856, 0.083655, -0.950310,
		0.438367, 0.896833, -0.059372,
		9.995642, 14.640452, 12.354711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.183290, 13.867094, 11.840858>,  <9.688786, 14.012670, 12.396272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.183290, 13.867094, 11.840858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.318379, 14.211469, 11.993031>,  <10.399433, 14.418094, 12.084334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.318379, 14.211469, 11.993031>,  <10.183290, 13.867094, 11.840858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.318379, 14.211469, 11.993031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936322, -0.348576, -0.042366,
		0.096135, 0.370516, -0.923838,
		0.337725, 0.860937, 0.380433,
		10.419697, 14.469749, 12.107161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.838490, 14.077202, 11.435354>,  <10.183290, 13.867094, 11.840858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.838490, 14.077202, 11.435354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.849790, 14.259440, 11.791249>,  <10.856569, 14.368783, 12.004786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.849790, 14.259440, 11.791249>,  <10.838490, 14.077202, 11.435354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.849790, 14.259440, 11.791249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977261, -0.199713, 0.071238,
		0.210148, 0.867495, -0.450877,
		0.028248, 0.455595, 0.889739,
		10.858264, 14.396119, 12.058171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.517673, 14.510002, 11.428305>,  <10.838490, 14.077202, 11.435354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.517673, 14.510002, 11.428305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.417826, 14.500464, 11.815525>,  <11.357918, 14.494741, 12.047857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.417826, 14.500464, 11.815525>,  <11.517673, 14.510002, 11.428305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.417826, 14.500464, 11.815525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952683, -0.185122, 0.241093,
		0.173458, 0.982426, 0.068926,
		-0.249616, -0.023845, 0.968051,
		11.342941, 14.493311, 12.105941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.018661, 14.903508, 11.731987>,  <11.517673, 14.510002, 11.428305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.018661, 14.903508, 11.731987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.872108, 14.644609, 11.999371>,  <11.784178, 14.489270, 12.159801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.872108, 14.644609, 11.999371>,  <12.018661, 14.903508, 11.731987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.872108, 14.644609, 11.999371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925525, -0.179574, 0.333401,
		-0.095755, 0.740827, 0.664835,
		-0.366380, -0.647247, 0.668459,
		11.762195, 14.450436, 12.199908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.412254, 15.003452, 12.274417>,  <12.018661, 14.903508, 11.731987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.412254, 15.003452, 12.274417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.274526, 14.643897, 12.382820>,  <12.191889, 14.428164, 12.447862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.274526, 14.643897, 12.382820>,  <12.412254, 15.003452, 12.274417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.274526, 14.643897, 12.382820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892442, -0.223734, 0.391779,
		-0.291531, 0.376756, 0.879241,
		-0.344321, -0.898887, 0.271007,
		12.171229, 14.374231, 12.464123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.834708, 14.838013, 12.813011>,  <12.412254, 15.003452, 12.274417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.834708, 14.838013, 12.813011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.669781, 14.489410, 12.706827>,  <12.570824, 14.280249, 12.643117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.669781, 14.489410, 12.706827>,  <12.834708, 14.838013, 12.813011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.669781, 14.489410, 12.706827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792298, -0.486858, 0.367740,
		-0.449729, -0.058696, 0.891234,
		-0.412320, -0.871507, -0.265459,
		12.546084, 14.227959, 12.627190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.925218, 14.403061, 13.462575>,  <12.834708, 14.838013, 12.813011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.925218, 14.403061, 13.462575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.898416, 14.178656, 13.132539>,  <12.882334, 14.044013, 12.934517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.898416, 14.178656, 13.132539>,  <12.925218, 14.403061, 13.462575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.898416, 14.178656, 13.132539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793722, -0.531054, 0.296627,
		-0.604579, -0.635017, 0.480872,
		-0.067006, -0.561013, -0.825091,
		12.878314, 14.010352, 12.885012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.923720, 13.756789, 13.667202>,  <12.925218, 14.403061, 13.462575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.923720, 13.756789, 13.667202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.061363, 13.718674, 13.293569>,  <13.143950, 13.695805, 13.069388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.061363, 13.718674, 13.293569>,  <12.923720, 13.756789, 13.667202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.061363, 13.718674, 13.293569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669803, -0.672259, 0.315328,
		-0.657992, -0.734158, -0.167506,
		0.344109, -0.095287, -0.934082,
		13.164596, 13.690087, 13.013344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.944895, 13.043004, 13.579847>,  <12.923720, 13.756789, 13.667202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.944895, 13.043004, 13.579847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.192248, 13.200105, 13.307569>,  <13.340660, 13.294365, 13.144201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.192248, 13.200105, 13.307569>,  <12.944895, 13.043004, 13.579847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.192248, 13.200105, 13.307569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752230, -0.546546, 0.368019,
		-0.227492, -0.739616, -0.633416,
		0.618384, 0.392753, -0.680696,
		13.377764, 13.317930, 13.103360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.312121, 12.483253, 13.452843>,  <12.944895, 13.043004, 13.579847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.312121, 12.483253, 13.452843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.527932, 12.776012, 13.286357>,  <13.657418, 12.951669, 13.186465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.527932, 12.776012, 13.286357>,  <13.312121, 12.483253, 13.452843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.527932, 12.776012, 13.286357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839758, -0.503562, 0.203054,
		-0.060974, -0.459072, -0.886304,
		0.539526, 0.731900, -0.416214,
		13.689790, 12.995583, 13.161492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.849563, 12.176315, 12.995160>,  <13.312121, 12.483253, 13.452843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.849563, 12.176315, 12.995160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.979879, 12.539284, 13.101329>,  <14.058069, 12.757065, 13.165030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.979879, 12.539284, 13.101329>,  <13.849563, 12.176315, 12.995160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.979879, 12.539284, 13.101329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847859, -0.404632, 0.342648,
		0.418324, 0.113408, -0.901190,
		0.325791, 0.907420, 0.265421,
		14.077617, 12.811510, 13.180955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<15.691308, 23.669712, 24.371132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.443031, 23.464464, 24.608265>,  <15.294065, 23.341314, 24.750544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.443031, 23.464464, 24.608265>,  <15.691308, 23.669712, 24.371132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.443031, 23.464464, 24.608265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395973, 0.447448, 0.801870,
		-0.676717, 0.732460, -0.074546,
		-0.620692, -0.513121, 0.592830,
		15.256824, 23.310528, 24.786114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.283306, 24.167675, 24.853527>,  <15.691308, 23.669712, 24.371132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.283306, 24.167675, 24.853527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.282737, 23.803850, 25.019754>,  <15.282395, 23.585556, 25.119492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.282737, 23.803850, 25.019754>,  <15.283306, 24.167675, 24.853527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.282737, 23.803850, 25.019754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384250, 0.383168, 0.839961,
		-0.923228, 0.160876, 0.348954,
		-0.001422, -0.909561, 0.415568,
		15.282310, 23.530981, 25.144424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.158493, 24.300360, 25.505890>,  <15.283306, 24.167675, 24.853527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.158493, 24.300360, 25.505890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.281866, 23.924561, 25.565510>,  <15.355890, 23.699081, 25.601282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.281866, 23.924561, 25.565510>,  <15.158493, 24.300360, 25.505890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.281866, 23.924561, 25.565510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525461, 0.298886, 0.796592,
		-0.792944, -0.167374, 0.585855,
		0.308432, -0.939496, 0.149051,
		15.374395, 23.642712, 25.610226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.927678, 24.100258, 26.123625>,  <15.158493, 24.300360, 25.505890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.927678, 24.100258, 26.123625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.238955, 23.855516, 26.066980>,  <15.425720, 23.708672, 26.032993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.238955, 23.855516, 26.066980>,  <14.927678, 24.100258, 26.123625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.238955, 23.855516, 26.066980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246171, 0.089735, 0.965063,
		-0.577769, -0.785865, 0.220452,
		0.778192, -0.611852, -0.141611,
		15.472412, 23.671961, 26.024496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.892345, 23.658728, 26.636177>,  <14.927678, 24.100258, 26.123625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.892345, 23.658728, 26.636177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.273067, 23.641462, 26.514717>,  <15.501501, 23.631104, 26.441841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.273067, 23.641462, 26.514717>,  <14.892345, 23.658728, 26.636177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.273067, 23.641462, 26.514717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306223, 0.078479, 0.948720,
		-0.017120, -0.995981, 0.087914,
		0.951806, -0.043164, -0.303649,
		15.558609, 23.628513, 26.423622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.239498, 23.066206, 27.049173>,  <14.892345, 23.658728, 26.636177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.239498, 23.066206, 27.049173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.527103, 23.302210, 26.902254>,  <15.699667, 23.443811, 26.814102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.527103, 23.302210, 26.902254>,  <15.239498, 23.066206, 27.049173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.527103, 23.302210, 26.902254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457953, -0.004675, 0.888964,
		0.522780, -0.807383, -0.273558,
		0.719013, 0.590009, -0.367300,
		15.742807, 23.479212, 26.792065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.840267, 22.736477, 27.082266>,  <15.239498, 23.066206, 27.049173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.840267, 22.736477, 27.082266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.949599, 23.121206, 27.076797>,  <16.015198, 23.352043, 27.073517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.949599, 23.121206, 27.076797>,  <15.840267, 22.736477, 27.082266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.949599, 23.121206, 27.076797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667563, -0.179439, 0.722607,
		0.692568, -0.206635, -0.691124,
		0.273330, 0.961823, -0.013668,
		16.031599, 23.409754, 27.072697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.454062, 22.705505, 27.317734>,  <15.840267, 22.736477, 27.082266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.454062, 22.705505, 27.317734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.365192, 23.092970, 27.362154>,  <16.311871, 23.325449, 27.388805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.365192, 23.092970, 27.362154>,  <16.454062, 22.705505, 27.317734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.365192, 23.092970, 27.362154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647829, 0.061541, 0.759296,
		0.728667, 0.240637, -0.641200,
		-0.222175, 0.968662, 0.111048,
		16.298540, 23.383568, 27.395468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.018291, 22.866816, 27.570951>,  <16.454062, 22.705505, 27.317734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.018291, 22.866816, 27.570951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.798870, 23.193422, 27.642935>,  <16.667217, 23.389387, 27.686125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.798870, 23.193422, 27.642935>,  <17.018291, 22.866816, 27.570951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798870, 23.193422, 27.642935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550084, 0.190347, 0.813127,
		0.629678, 0.545038, -0.553569,
		-0.548556, 0.816518, 0.179960,
		16.634304, 23.438377, 27.696922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548117, 23.289165, 27.794704>,  <17.018291, 22.866816, 27.570951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548117, 23.289165, 27.794704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.202400, 23.450279, 27.915213>,  <16.994970, 23.546947, 27.987516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.202400, 23.450279, 27.915213>,  <17.548117, 23.289165, 27.794704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.202400, 23.450279, 27.915213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380268, 0.131193, 0.915524,
		0.329236, 0.905843, -0.266556,
		-0.864292, 0.402786, 0.301269,
		16.943113, 23.571115, 28.005594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.720041, 23.799238, 28.220869>,  <17.548117, 23.289165, 27.794704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.720041, 23.799238, 28.220869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.339621, 23.730642, 28.323706>,  <17.111368, 23.689486, 28.385406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.339621, 23.730642, 28.323706>,  <17.720041, 23.799238, 28.220869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.339621, 23.730642, 28.323706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239781, 0.115333, 0.963952,
		-0.194959, 0.978412, -0.068568,
		-0.951050, -0.171490, 0.257089,
		17.054306, 23.679195, 28.400833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.523958, 24.362070, 28.634699>,  <17.720041, 23.799238, 28.220869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.523958, 24.362070, 28.634699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.286901, 24.050358, 28.716179>,  <17.144667, 23.863331, 28.765068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.286901, 24.050358, 28.716179>,  <17.523958, 24.362070, 28.634699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.286901, 24.050358, 28.716179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241201, 0.069592, 0.967977,
		-0.768503, 0.622797, 0.146721,
		-0.592643, -0.779282, 0.203702,
		17.109108, 23.816574, 28.777288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.711634, 25.148909, 28.487551>,  <17.523958, 24.362070, 28.634699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.711634, 25.148909, 28.487551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.633434, 24.894258, 28.785942>,  <17.586515, 24.741468, 28.964977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.633434, 24.894258, 28.785942>,  <17.711634, 25.148909, 28.487551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.633434, 24.894258, 28.785942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273209, 0.695190, 0.664882,
		-0.941879, 0.333792, 0.038023,
		-0.195499, -0.636627, 0.745980,
		17.574785, 24.703270, 29.009737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.992687, 25.351946, 28.788124>,  <17.711634, 25.148909, 28.487551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.992687, 25.351946, 28.788124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.272041, 25.165741, 29.005585>,  <17.439653, 25.054018, 29.136061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.272041, 25.165741, 29.005585>,  <16.992687, 25.351946, 28.788124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.272041, 25.165741, 29.005585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198440, 0.855745, 0.477830,
		-0.687663, -0.225828, 0.690016,
		0.698385, -0.465513, 0.543651,
		17.481556, 25.026087, 29.168680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265793, 25.520021, 28.378830>,  <16.992687, 25.351946, 28.788124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.265793, 25.520021, 28.378830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.149323, 25.899130, 28.326754>,  <16.079441, 26.126595, 28.295507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.149323, 25.899130, 28.326754>,  <16.265793, 25.520021, 28.378830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.149323, 25.899130, 28.326754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410521, -0.246706, -0.877843,
		-0.864112, -0.202161, 0.460914,
		-0.291176, 0.947770, -0.130190,
		16.061970, 26.183460, 28.287697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.492990, 25.475863, 28.201805>,  <16.265793, 25.520021, 28.378830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.492990, 25.475863, 28.201805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.640691, 25.815712, 28.051182>,  <15.729311, 26.019621, 27.960808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.640691, 25.815712, 28.051182>,  <15.492990, 25.475863, 28.201805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.640691, 25.815712, 28.051182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147800, -0.346349, -0.926390,
		-0.917502, 0.397725, -0.002315,
		0.369251, 0.849622, -0.376560,
		15.751466, 26.070599, 27.938213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.958276, 25.747356, 27.708710>,  <15.492990, 25.475863, 28.201805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.958276, 25.747356, 27.708710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.302662, 25.922003, 27.604322>,  <15.509294, 26.026791, 27.541691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.302662, 25.922003, 27.604322>,  <14.958276, 25.747356, 27.708710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.302662, 25.922003, 27.604322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077201, -0.394938, -0.915458,
		-0.502771, 0.808325, -0.306321,
		0.860965, 0.436618, -0.260966,
		15.560951, 26.052988, 27.526033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.788763, 26.265564, 27.144791>,  <14.958276, 25.747356, 27.708710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.788763, 26.265564, 27.144791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.179973, 26.186710, 27.117634>,  <15.414699, 26.139399, 27.101339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.179973, 26.186710, 27.117634>,  <14.788763, 26.265564, 27.144791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.179973, 26.186710, 27.117634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088102, -0.095615, -0.991512,
		0.188967, 0.975703, -0.110881,
		0.978023, -0.197132, -0.067894,
		15.473379, 26.127571, 27.097265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.052492, 26.719181, 26.675426>,  <14.788763, 26.265564, 27.144791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.052492, 26.719181, 26.675426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.330603, 26.431952, 26.663013>,  <15.497469, 26.259615, 26.655565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.330603, 26.431952, 26.663013>,  <15.052492, 26.719181, 26.675426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.330603, 26.431952, 26.663013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032201, 0.012012, -0.999409,
		0.718020, 0.695866, -0.014771,
		0.695277, -0.718071, -0.031033,
		15.539186, 26.216530, 26.653704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.377918, 26.808947, 26.036503>,  <15.052492, 26.719181, 26.675426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.377918, 26.808947, 26.036503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.539277, 26.450220, 26.109159>,  <15.636092, 26.234985, 26.152754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.539277, 26.450220, 26.109159>,  <15.377918, 26.808947, 26.036503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.539277, 26.450220, 26.109159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165127, -0.123904, -0.978458,
		0.900002, 0.424701, 0.098105,
		0.403396, -0.896815, 0.181644,
		15.660296, 26.181175, 26.163652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.124956, 26.795567, 25.791195>,  <15.377918, 26.808947, 26.036503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.124956, 26.795567, 25.791195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.964363, 26.429226, 25.789003>,  <15.868008, 26.209421, 25.787689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.964363, 26.429226, 25.789003>,  <16.124956, 26.795567, 25.791195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.964363, 26.429226, 25.789003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183682, -0.074657, -0.980147,
		0.897259, -0.394517, 0.198199,
		-0.401481, -0.915851, -0.005479,
		15.843919, 26.154470, 25.787359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.566423, 26.304279, 25.406328>,  <16.124956, 26.795567, 25.791195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.566423, 26.304279, 25.406328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.230873, 26.088306, 25.433926>,  <16.029543, 25.958723, 25.450485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.230873, 26.088306, 25.433926>,  <16.566423, 26.304279, 25.406328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.230873, 26.088306, 25.433926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001222, -0.128623, -0.991693,
		0.544319, -0.831824, 0.108558,
		-0.838877, -0.539930, 0.068995,
		15.979210, 25.926327, 25.454624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646225, 25.801025, 25.009010>,  <16.566423, 26.304279, 25.406328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.646225, 25.801025, 25.009010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.247374, 25.785807, 25.035215>,  <16.008062, 25.776676, 25.050938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.247374, 25.785807, 25.035215>,  <16.646225, 25.801025, 25.009010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.247374, 25.785807, 25.035215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061056, -0.108397, -0.992231,
		0.044852, -0.993379, 0.105762,
		-0.997126, -0.038046, 0.065513,
		15.948236, 25.774393, 25.054869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.504416, 25.168253, 24.671532>,  <16.646225, 25.801025, 25.009010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.504416, 25.168253, 24.671532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.150412, 25.354214, 24.681541>,  <15.938009, 25.465790, 24.687548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.150412, 25.354214, 24.681541>,  <16.504416, 25.168253, 24.671532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150412, 25.354214, 24.681541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212789, -0.356102, -0.909897,
		-0.414101, -0.810591, 0.414079,
		-0.885009, 0.464901, 0.025023,
		15.884909, 25.493683, 24.689049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064558, 24.707632, 24.439648>,  <16.504416, 25.168253, 24.671532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.064558, 24.707632, 24.439648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.918966, 25.072878, 24.366173>,  <15.831611, 25.292025, 24.322088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.918966, 25.072878, 24.366173>,  <16.064558, 24.707632, 24.439648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.918966, 25.072878, 24.366173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013292, -0.202286, -0.979236,
		-0.931311, -0.353982, 0.085765,
		-0.363981, 0.913114, -0.183686,
		15.809772, 25.346811, 24.311068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495790, 24.540272, 23.922443>,  <16.064558, 24.707632, 24.439648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.495790, 24.540272, 23.922443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.592957, 24.926685, 23.887178>,  <15.651256, 25.158533, 23.866020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.592957, 24.926685, 23.887178>,  <15.495790, 24.540272, 23.922443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.592957, 24.926685, 23.887178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271122, -0.019649, -0.962344,
		-0.931389, 0.257669, 0.257140,
		0.242914, 0.966033, -0.088160,
		15.665831, 25.216496, 23.860731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.897712, 24.831518, 23.632322>,  <15.495790, 24.540272, 23.922443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.897712, 24.831518, 23.632322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.184637, 25.102318, 23.566435>,  <15.356792, 25.264797, 23.526903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.184637, 25.102318, 23.566435>,  <14.897712, 24.831518, 23.632322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.184637, 25.102318, 23.566435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279442, 0.062971, -0.958095,
		-0.638258, 0.733284, 0.234352,
		0.717314, 0.677000, -0.164719,
		15.399831, 25.305418, 23.517019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.635294, 25.407198, 23.211918>,  <14.897712, 24.831518, 23.632322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.635294, 25.407198, 23.211918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.026735, 25.394611, 23.130583>,  <15.261600, 25.387058, 23.081781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.026735, 25.394611, 23.130583>,  <14.635294, 25.407198, 23.211918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.026735, 25.394611, 23.130583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193879, 0.189926, -0.962465,
		0.068906, 0.981294, 0.179761,
		0.978602, -0.031468, -0.203340,
		15.320316, 25.385170, 23.069580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.154865, 25.894733, 22.995388>,  <14.635294, 25.407198, 23.211918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.154865, 25.894733, 22.995388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.755304, 25.891476, 22.976931>,  <13.515568, 25.889521, 22.965857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.755304, 25.891476, 22.976931>,  <14.154865, 25.894733, 22.995388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.755304, 25.891476, 22.976931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042539, 0.570498, 0.820197,
		0.019645, 0.821259, -0.570218,
		-0.998902, -0.008144, -0.046143,
		13.455634, 25.889032, 22.963087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.876577, 26.567677, 23.064735>,  <14.154865, 25.894733, 22.995388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.876577, 26.567677, 23.064735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.590222, 26.306490, 23.163639>,  <13.418409, 26.149778, 23.222982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.590222, 26.306490, 23.163639>,  <13.876577, 26.567677, 23.064735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.590222, 26.306490, 23.163639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157030, 0.495630, 0.854220,
		-0.680328, 0.572699, -0.457352,
		-0.715888, -0.652968, 0.247260,
		13.375456, 26.110600, 23.237818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.281107, 26.931448, 23.378057>,  <13.876577, 26.567677, 23.064735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.281107, 26.931448, 23.378057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.216279, 26.556263, 23.500669>,  <13.177382, 26.331152, 23.574238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.216279, 26.556263, 23.500669>,  <13.281107, 26.931448, 23.378057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.216279, 26.556263, 23.500669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142184, 0.329595, 0.933355,
		-0.976482, 0.107684, -0.186780,
		-0.162069, -0.937962, 0.306532,
		13.167659, 26.274874, 23.592628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.688908, 26.956730, 23.852846>,  <13.281107, 26.931448, 23.378057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.688908, 26.956730, 23.852846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.882271, 26.616474, 23.935530>,  <12.998289, 26.412321, 23.985140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.882271, 26.616474, 23.935530>,  <12.688908, 26.956730, 23.852846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.882271, 26.616474, 23.935530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121439, 0.168684, 0.978161,
		-0.866931, -0.497953, -0.021758,
		0.483408, -0.850640, 0.206708,
		13.027293, 26.361282, 23.997541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.277416, 26.540407, 24.288956>,  <12.688908, 26.956730, 23.852846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.277416, 26.540407, 24.288956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.652381, 26.420679, 24.360136>,  <12.877359, 26.348843, 24.402845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.652381, 26.420679, 24.360136>,  <12.277416, 26.540407, 24.288956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.652381, 26.420679, 24.360136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180092, 0.020660, 0.983433,
		-0.298041, -0.953928, -0.034539,
		0.937411, -0.299323, 0.177952,
		12.933604, 26.330883, 24.413523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.177395, 25.992699, 24.763563>,  <12.277416, 26.540407, 24.288956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.177395, 25.992699, 24.763563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.550055, 26.129169, 24.813568>,  <12.773650, 26.211052, 24.843571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.550055, 26.129169, 24.813568>,  <12.177395, 25.992699, 24.763563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.550055, 26.129169, 24.813568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141601, 0.024059, 0.989631,
		0.334632, -0.939691, 0.070726,
		0.931649, 0.341177, 0.125010,
		12.829550, 26.231522, 24.851070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.361926, 25.683411, 25.435331>,  <12.177395, 25.992699, 24.763563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.361926, 25.683411, 25.435331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.626488, 25.970903, 25.349567>,  <12.785225, 26.143398, 25.298109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.626488, 25.970903, 25.349567>,  <12.361926, 25.683411, 25.435331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.626488, 25.970903, 25.349567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151011, 0.152401, 0.976714,
		0.734670, -0.678381, -0.007738,
		0.661404, 0.718730, -0.214407,
		12.824909, 26.186523, 25.285246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.181793, 25.102381, 25.881281>,  <12.361926, 25.683411, 25.435331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.181793, 25.102381, 25.881281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.962061, 24.949911, 26.178720>,  <11.830221, 24.858429, 26.357185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.962061, 24.949911, 26.178720>,  <12.181793, 25.102381, 25.881281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.962061, 24.949911, 26.178720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577658, -0.469773, -0.667551,
		0.603778, -0.796252, 0.037871,
		-0.549330, -0.381176, 0.743600,
		11.797262, 24.835558, 26.401800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.260679, 24.454290, 25.695353>,  <12.181793, 25.102381, 25.881281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.260679, 24.454290, 25.695353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.926959, 24.503151, 25.910395>,  <11.726727, 24.532467, 26.039421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.926959, 24.503151, 25.910395>,  <12.260679, 24.454290, 25.695353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.926959, 24.503151, 25.910395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499747, -0.579329, -0.643919,
		0.232797, -0.805890, 0.544378,
		-0.834302, 0.122149, 0.537607,
		11.676668, 24.539795, 26.071676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.058545, 23.837704, 25.755697>,  <12.260679, 24.454290, 25.695353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.058545, 23.837704, 25.755697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.724792, 24.046572, 25.826284>,  <11.524540, 24.171892, 25.868637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.724792, 24.046572, 25.826284>,  <12.058545, 23.837704, 25.755697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.724792, 24.046572, 25.826284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511955, -0.615576, -0.599140,
		-0.204223, -0.590257, 0.780955,
		-0.834383, 0.522172, 0.176470,
		11.474477, 24.203224, 25.879225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.506528, 23.254107, 26.113857>,  <12.058545, 23.837704, 25.755697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.506528, 23.254107, 26.113857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.358621, 23.581753, 25.938440>,  <11.269876, 23.778341, 25.833189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.358621, 23.581753, 25.938440>,  <11.506528, 23.254107, 26.113857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.358621, 23.581753, 25.938440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593749, -0.571367, -0.566570,
		-0.714656, 0.050886, 0.697622,
		-0.369767, 0.819115, -0.438544,
		11.247690, 23.827488, 25.806877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.749231, 23.153032, 26.057600>,  <11.506528, 23.254107, 26.113857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.749231, 23.153032, 26.057600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.829854, 23.446281, 25.797783>,  <10.878227, 23.622231, 25.641893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.829854, 23.446281, 25.797783>,  <10.749231, 23.153032, 26.057600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.829854, 23.446281, 25.797783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607605, -0.426550, -0.669979,
		-0.768239, 0.529703, 0.359475,
		0.201556, 0.733123, -0.649543,
		10.890321, 23.666218, 25.602921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.119436, 23.512407, 25.808426>,  <10.749231, 23.153032, 26.057600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.119436, 23.512407, 25.808426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.412632, 23.548246, 25.538700>,  <10.588550, 23.569750, 25.376865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.412632, 23.548246, 25.538700>,  <10.119436, 23.512407, 25.808426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.412632, 23.548246, 25.538700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530694, -0.544812, -0.649264,
		-0.425547, 0.833758, -0.351793,
		0.732990, 0.089598, -0.674313,
		10.632529, 23.575127, 25.336407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.755836, 23.345123, 25.203331>,  <10.119436, 23.512407, 25.808426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.755836, 23.345123, 25.203331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.122052, 23.359734, 25.043104>,  <10.341782, 23.368500, 24.946968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.122052, 23.359734, 25.043104>,  <9.755836, 23.345123, 25.203331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.122052, 23.359734, 25.043104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290198, -0.629596, -0.720690,
		-0.278519, 0.776064, -0.565820,
		0.915539, 0.036526, -0.400566,
		10.396714, 23.370691, 24.922934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<16.662113, 17.369671, 29.849295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.581091, 17.149872, 29.525066>,  <16.532478, 17.017992, 29.330528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.581091, 17.149872, 29.525066>,  <16.662113, 17.369671, 29.849295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581091, 17.149872, 29.525066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301658, 0.752467, -0.585488,
		0.931651, -0.363109, 0.013344,
		-0.202555, -0.549496, -0.810572,
		16.520325, 16.985023, 29.281895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.278975, 17.052856, 29.481646>,  <16.662113, 17.369671, 29.849295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.278975, 17.052856, 29.481646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.964846, 17.151564, 29.254534>,  <16.776367, 17.210787, 29.118267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.964846, 17.151564, 29.254534>,  <17.278975, 17.052856, 29.481646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.964846, 17.151564, 29.254534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565645, 0.658763, -0.496062,
		0.251620, -0.710730, -0.656924,
		-0.785324, 0.246766, -0.567779,
		16.729248, 17.225594, 29.084200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.455639, 17.144913, 28.804752>,  <17.278975, 17.052856, 29.481646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.455639, 17.144913, 28.804752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.129358, 17.375032, 28.828951>,  <16.933590, 17.513103, 28.843470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.129358, 17.375032, 28.828951>,  <17.455639, 17.144913, 28.804752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.129358, 17.375032, 28.828951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499089, 0.752782, -0.429219,
		-0.292471, -0.319921, -0.901172,
		-0.815703, 0.575299, 0.060498,
		16.884647, 17.547623, 28.847101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.329487, 17.527826, 28.190498>,  <17.455639, 17.144913, 28.804752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.329487, 17.527826, 28.190498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.144680, 17.756567, 28.461651>,  <17.033796, 17.893812, 28.624342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.144680, 17.756567, 28.461651>,  <17.329487, 17.527826, 28.190498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.144680, 17.756567, 28.461651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449074, 0.809968, -0.377205,
		-0.764769, 0.130144, -0.631024,
		-0.462018, 0.571851, 0.677883,
		17.006075, 17.928122, 28.665016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962643, 18.075092, 27.793015>,  <17.329487, 17.527826, 28.190498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.962643, 18.075092, 27.793015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.042561, 18.171690, 28.172859>,  <17.090511, 18.229649, 28.400766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.042561, 18.171690, 28.172859>,  <16.962643, 18.075092, 27.793015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.042561, 18.171690, 28.172859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270312, 0.917958, -0.290319,
		-0.941814, 0.314695, 0.118122,
		0.199793, 0.241496, 0.949612,
		17.102499, 18.244139, 28.457743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.535252, 18.651665, 28.068937>,  <16.962643, 18.075092, 27.793015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.535252, 18.651665, 28.068937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.890741, 18.657211, 28.252230>,  <17.104036, 18.660540, 28.362206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.890741, 18.657211, 28.252230>,  <16.535252, 18.651665, 28.068937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.890741, 18.657211, 28.252230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204941, 0.882086, -0.424174,
		-0.410081, 0.470884, 0.781090,
		0.888725, 0.013868, 0.458230,
		17.157358, 18.661371, 28.389698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.561634, 19.310425, 28.242622>,  <16.535252, 18.651665, 28.068937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.561634, 19.310425, 28.242622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.935919, 19.169514, 28.249994>,  <17.160490, 19.084967, 28.254417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.935919, 19.169514, 28.249994>,  <16.561634, 19.310425, 28.242622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.935919, 19.169514, 28.249994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323353, 0.835654, -0.443989,
		0.141009, 0.421405, 0.895843,
		0.935713, -0.352280, 0.018428,
		17.216633, 19.063829, 28.255524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.103964, 19.686323, 27.719444>,  <16.561634, 19.310425, 28.242622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.103964, 19.686323, 27.719444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.751286, 19.826252, 27.846087>,  <15.539679, 19.910210, 27.922071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.751286, 19.826252, 27.846087>,  <16.103964, 19.686323, 27.719444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.751286, 19.826252, 27.846087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463468, -0.516441, -0.720059,
		-0.088383, -0.781610, 0.617474,
		-0.881695, 0.349821, 0.316607,
		15.486777, 19.931198, 27.941069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561714, 19.148613, 27.862215>,  <16.103964, 19.686323, 27.719444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561714, 19.148613, 27.862215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.350703, 19.484533, 27.810913>,  <15.224096, 19.686085, 27.780132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.350703, 19.484533, 27.810913>,  <15.561714, 19.148613, 27.862215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.350703, 19.484533, 27.810913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545841, -0.450743, -0.706320,
		-0.650979, -0.302596, 0.696177,
		-0.527527, 0.839801, -0.128255,
		15.192445, 19.736473, 27.772436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.844066, 18.972008, 27.975901>,  <15.561714, 19.148613, 27.862215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.844066, 18.972008, 27.975901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.866220, 19.295483, 27.741650>,  <14.879512, 19.489567, 27.601099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.866220, 19.295483, 27.741650>,  <14.844066, 18.972008, 27.975901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.866220, 19.295483, 27.741650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465331, -0.498029, -0.731734,
		-0.883402, 0.313037, 0.348724,
		0.055385, 0.808687, -0.585626,
		14.882835, 19.538090, 27.565962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.209536, 18.904131, 27.587795>,  <14.844066, 18.972008, 27.975901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.209536, 18.904131, 27.587795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.407962, 19.176128, 27.371822>,  <14.527018, 19.339327, 27.242239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.407962, 19.176128, 27.371822>,  <14.209536, 18.904131, 27.587795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.407962, 19.176128, 27.371822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400658, -0.372414, -0.837127,
		-0.770319, 0.631598, 0.087703,
		0.496066, 0.679994, -0.539933,
		14.556782, 19.380127, 27.209843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.773499, 19.057203, 27.061228>,  <14.209536, 18.904131, 27.587795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.773499, 19.057203, 27.061228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.130979, 19.175278, 26.926075>,  <14.345467, 19.246122, 26.844982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.130979, 19.175278, 26.926075>,  <13.773499, 19.057203, 27.061228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.130979, 19.175278, 26.926075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253243, -0.289776, -0.922983,
		-0.370362, 0.910437, -0.184219,
		0.893700, 0.295186, -0.337884,
		14.399089, 19.263834, 26.824709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.122657, 18.734638, 26.968510>,  <13.773499, 19.057203, 27.061228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.122657, 18.734638, 26.968510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.760883, 18.649881, 27.116617>,  <12.543819, 18.599028, 27.205482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.760883, 18.649881, 27.116617>,  <13.122657, 18.734638, 26.968510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.760883, 18.649881, 27.116617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110522, 0.721916, 0.683097,
		-0.412047, 0.658739, -0.629507,
		-0.904435, -0.211894, 0.370269,
		12.489552, 18.586313, 27.227697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.832605, 19.448593, 27.101368>,  <13.122657, 18.734638, 26.968510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.832605, 19.448593, 27.101368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.611501, 19.176086, 27.293339>,  <12.478838, 19.012583, 27.408522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.611501, 19.176086, 27.293339>,  <12.832605, 19.448593, 27.101368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.611501, 19.176086, 27.293339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257534, 0.687370, 0.679116,
		-0.792546, 0.251792, -0.555402,
		-0.552763, -0.681266, 0.479928,
		12.445672, 18.971706, 27.437317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.238466, 19.770840, 27.153633>,  <12.832605, 19.448593, 27.101368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.238466, 19.770840, 27.153633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.246406, 19.492426, 27.440727>,  <12.251169, 19.325378, 27.612984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.246406, 19.492426, 27.440727>,  <12.238466, 19.770840, 27.153633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.246406, 19.492426, 27.440727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237664, 0.694013, 0.679604,
		-0.971144, -0.184069, -0.151648,
		0.019848, -0.696035, 0.717733,
		12.252360, 19.283615, 27.656048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.668730, 19.877874, 27.505943>,  <12.238466, 19.770840, 27.153633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.668730, 19.877874, 27.505943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.924738, 19.721916, 27.770777>,  <12.078343, 19.628342, 27.929676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.924738, 19.721916, 27.770777>,  <11.668730, 19.877874, 27.505943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.924738, 19.721916, 27.770777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222447, 0.730760, 0.645374,
		-0.735452, -0.560332, 0.380970,
		0.640021, -0.389896, 0.662083,
		12.116744, 19.604948, 27.969402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.381106, 20.039148, 28.030878>,  <11.668730, 19.877874, 27.505943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.381106, 20.039148, 28.030878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.725368, 19.911448, 28.189550>,  <11.931924, 19.834827, 28.284754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.725368, 19.911448, 28.189550>,  <11.381106, 20.039148, 28.030878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.725368, 19.911448, 28.189550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016223, 0.761452, 0.648018,
		-0.508934, -0.564154, 0.650167,
		0.860653, -0.319251, 0.396681,
		11.983563, 19.815672, 28.308556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.234323, 20.071590, 28.689053>,  <11.381106, 20.039148, 28.030878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.234323, 20.071590, 28.689053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.632665, 20.091894, 28.658859>,  <11.871670, 20.104076, 28.640743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.632665, 20.091894, 28.658859>,  <11.234323, 20.071590, 28.689053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.632665, 20.091894, 28.658859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009584, 0.766650, 0.641994,
		0.090454, -0.640056, 0.762985,
		0.995855, 0.050758, -0.075481,
		11.931421, 20.107122, 28.636215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.549597, 20.338043, 29.411016>,  <11.234323, 20.071590, 28.689053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.549597, 20.338043, 29.411016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.873693, 20.364265, 29.178049>,  <12.068151, 20.379999, 29.038269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.873693, 20.364265, 29.178049>,  <11.549597, 20.338043, 29.411016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.873693, 20.364265, 29.178049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232841, 0.875937, 0.422515,
		0.537858, -0.477950, 0.694458,
		0.810243, 0.065555, -0.582416,
		12.116766, 20.383932, 29.003325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.133216, 20.532858, 29.840912>,  <11.549597, 20.338043, 29.411016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.133216, 20.532858, 29.840912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.196123, 20.658543, 29.466417>,  <12.233868, 20.733953, 29.241720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.196123, 20.658543, 29.466417>,  <12.133216, 20.532858, 29.840912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.196123, 20.658543, 29.466417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413219, 0.840116, 0.351363,
		0.896949, -0.442128, 0.002285,
		0.157268, 0.314211, -0.936236,
		12.243303, 20.752806, 29.185547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.761879, 20.847776, 29.923119>,  <12.133216, 20.532858, 29.840912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.761879, 20.847776, 29.923119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.558622, 20.986820, 29.607914>,  <12.436668, 21.070246, 29.418791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.558622, 20.986820, 29.607914>,  <12.761879, 20.847776, 29.923119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.558622, 20.986820, 29.607914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254296, 0.934700, 0.248335,
		0.822876, -0.074198, -0.563356,
		-0.508143, 0.347608, -0.788010,
		12.406179, 21.091103, 29.371511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.126893, 21.404999, 29.727955>,  <12.761879, 20.847776, 29.923119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.126893, 21.404999, 29.727955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.778909, 21.480768, 29.545839>,  <12.570118, 21.526230, 29.436569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.778909, 21.480768, 29.545839>,  <13.126893, 21.404999, 29.727955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.778909, 21.480768, 29.545839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245872, 0.966948, -0.067513,
		0.427453, -0.170676, -0.887780,
		-0.869960, 0.189422, -0.455289,
		12.517920, 21.537596, 29.409252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.305511, 21.878870, 29.235283>,  <13.126893, 21.404999, 29.727955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.305511, 21.878870, 29.235283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.913109, 21.932577, 29.291288>,  <12.677668, 21.964802, 29.324892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.913109, 21.932577, 29.291288>,  <13.305511, 21.878870, 29.235283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.913109, 21.932577, 29.291288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130202, 0.990765, -0.037854,
		-0.143803, -0.018905, -0.989426,
		-0.981004, 0.134269, 0.140013,
		12.618808, 21.972858, 29.333292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.093421, 22.383713, 28.770487>,  <13.305511, 21.878870, 29.235283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.093421, 22.383713, 28.770487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.793206, 22.386982, 29.034798>,  <12.613077, 22.388943, 29.193384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.793206, 22.386982, 29.034798>,  <13.093421, 22.383713, 28.770487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.793206, 22.386982, 29.034798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047920, 0.997964, 0.042088,
		-0.659088, 0.063253, -0.749402,
		-0.750538, 0.008171, 0.660777,
		12.568045, 22.389433, 29.233030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.774269, 22.998842, 28.613228>,  <13.093421, 22.383713, 28.770487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.774269, 22.998842, 28.613228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.688868, 22.918409, 28.995638>,  <12.637627, 22.870150, 29.225084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.688868, 22.918409, 28.995638>,  <12.774269, 22.998842, 28.613228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.688868, 22.918409, 28.995638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085293, 0.971014, 0.223284,
		-0.973212, 0.129214, -0.190163,
		-0.213503, -0.201083, 0.956024,
		12.624817, 22.858084, 29.282446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.222012, 23.442715, 28.740501>,  <12.774269, 22.998842, 28.613228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.222012, 23.442715, 28.740501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.395269, 23.336121, 29.084913>,  <12.499224, 23.272163, 29.291561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.395269, 23.336121, 29.084913>,  <12.222012, 23.442715, 28.740501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.395269, 23.336121, 29.084913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097478, 0.963541, 0.249174,
		-0.896038, -0.023997, 0.443328,
		0.433144, -0.266484, 0.861030,
		12.525212, 23.256176, 29.343222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.232992, 24.175732, 29.054384>,  <12.222012, 23.442715, 28.740501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.232992, 24.175732, 29.054384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.228340, 24.575556, 29.065289>,  <12.225549, 24.815451, 29.071831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.228340, 24.575556, 29.065289>,  <12.232992, 24.175732, 29.054384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.228340, 24.575556, 29.065289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397674, 0.020389, -0.917300,
		-0.917453, -0.021508, 0.397262,
		-0.011630, 0.999561, 0.027259,
		12.224851, 24.875423, 29.073467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.565460, 24.454731, 28.752617>,  <12.232992, 24.175732, 29.054384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.565460, 24.454731, 28.752617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.820493, 24.762871, 28.755610>,  <11.973512, 24.947754, 28.757404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.820493, 24.762871, 28.755610>,  <11.565460, 24.454731, 28.752617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.820493, 24.762871, 28.755610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173768, 0.153266, -0.972787,
		-0.750530, 0.618930, 0.231581,
		0.637581, 0.770347, 0.007480,
		12.011767, 24.993975, 28.757854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.275771, 25.058144, 28.453665>,  <11.565460, 24.454731, 28.752617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.275771, 25.058144, 28.453665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.665571, 25.136822, 28.410469>,  <11.899451, 25.184029, 28.384552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.665571, 25.136822, 28.410469>,  <11.275771, 25.058144, 28.453665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.665571, 25.136822, 28.410469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153472, 0.233169, -0.960249,
		-0.163696, 0.952336, 0.257410,
		0.974500, 0.196694, -0.107988,
		11.957921, 25.195829, 28.378073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.368421, 25.792713, 28.205414>,  <11.275771, 25.058144, 28.453665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.368421, 25.792713, 28.205414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.675389, 25.562353, 28.092701>,  <11.859571, 25.424137, 28.025074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.675389, 25.562353, 28.092701>,  <11.368421, 25.792713, 28.205414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.675389, 25.562353, 28.092701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241468, 0.147523, -0.959130,
		0.593933, 0.804099, -0.025850,
		0.767422, -0.575901, -0.281783,
		11.905616, 25.389584, 28.008165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.438370, 25.924767, 27.569891>,  <11.368421, 25.792713, 28.205414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.438370, 25.924767, 27.569891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.706763, 25.628300, 27.561419>,  <11.867800, 25.450418, 27.556335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.706763, 25.628300, 27.561419>,  <11.438370, 25.924767, 27.569891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.706763, 25.628300, 27.561419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166078, -0.122388, -0.978488,
		0.722633, 0.660068, -0.205212,
		0.670984, -0.741169, -0.021181,
		11.908058, 25.405949, 27.555063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.804337, 25.934164, 26.943214>,  <11.438370, 25.924767, 27.569891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.804337, 25.934164, 26.943214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.884171, 25.556744, 27.048950>,  <11.932073, 25.330292, 27.112391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.884171, 25.556744, 27.048950>,  <11.804337, 25.934164, 26.943214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.884171, 25.556744, 27.048950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314973, -0.317226, -0.894516,
		0.927877, 0.095276, -0.360507,
		0.199588, -0.943552, 0.264338,
		11.944048, 25.273678, 27.128252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.224050, 25.631395, 26.373825>,  <11.804337, 25.934164, 26.943214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.224050, 25.631395, 26.373825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.044951, 25.346495, 26.590055>,  <11.937492, 25.175554, 26.719793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.044951, 25.346495, 26.590055>,  <12.224050, 25.631395, 26.373825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.044951, 25.346495, 26.590055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385538, -0.391701, -0.835423,
		0.806775, -0.582469, -0.099218,
		-0.447744, -0.712250, 0.540578,
		11.910628, 25.132820, 26.752230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.929557, 25.609602, 25.987762>,  <12.224050, 25.631395, 26.373825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.929557, 25.609602, 25.987762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.969231, 25.983469, 25.851198>,  <12.993034, 26.207788, 25.769260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.969231, 25.983469, 25.851198>,  <12.929557, 25.609602, 25.987762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.969231, 25.983469, 25.851198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158183, 0.323930, 0.932763,
		0.982416, -0.146520, -0.115719,
		0.099184, 0.934666, -0.341411,
		12.998985, 26.263868, 25.748775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.361048, 25.877432, 26.457893>,  <12.929557, 25.609602, 25.987762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.361048, 25.877432, 26.457893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.212909, 26.200708, 26.274734>,  <13.124025, 26.394674, 26.164839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.212909, 26.200708, 26.274734>,  <13.361048, 25.877432, 26.457893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.212909, 26.200708, 26.274734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246803, 0.560846, 0.790278,
		0.895506, 0.179667, -0.407172,
		-0.370348, 0.808190, -0.457899,
		13.101805, 26.443165, 26.137365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.914598, 26.495249, 26.429085>,  <13.361048, 25.877432, 26.457893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.914598, 26.495249, 26.429085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.582870, 26.713863, 26.382559>,  <13.383834, 26.845032, 26.354643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.582870, 26.713863, 26.382559>,  <13.914598, 26.495249, 26.429085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.582870, 26.713863, 26.382559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221705, 0.512912, 0.829318,
		0.512912, 0.661981, -0.546537,
		-0.829318, 0.546537, -0.116314,
		13.334075, 26.877825, 26.347664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.095080, 27.156322, 26.679348>,  <13.914598, 26.495249, 26.429085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.095080, 27.156322, 26.679348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.695556, 27.139389, 26.688988>,  <13.455841, 27.129229, 26.694771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.695556, 27.139389, 26.688988>,  <14.095080, 27.156322, 26.679348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.695556, 27.139389, 26.688988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001392, 0.469682, 0.882834,
		-0.048692, 0.881820, -0.469066,
		-0.998813, -0.042334, 0.024097,
		13.395912, 27.126688, 26.696217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.943208, 27.708054, 26.957882>,  <14.095080, 27.156322, 26.679348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.943208, 27.708054, 26.957882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.603077, 27.505232, 27.014221>,  <13.398998, 27.383539, 27.048025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.603077, 27.505232, 27.014221>,  <13.943208, 27.708054, 26.957882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.603077, 27.505232, 27.014221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051376, 0.346348, 0.936698,
		-0.523741, 0.789263, -0.320560,
		-0.850327, -0.507057, 0.140847,
		13.347979, 27.353115, 27.056475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.467264, 28.119944, 27.318600>,  <13.943208, 27.708054, 26.957882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.467264, 28.119944, 27.318600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.333279, 27.750011, 27.390694>,  <13.252888, 27.528051, 27.433950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.333279, 27.750011, 27.390694>,  <13.467264, 28.119944, 27.318600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.333279, 27.750011, 27.390694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032949, 0.202668, 0.978693,
		-0.941655, 0.321888, -0.098358,
		-0.334963, -0.924832, 0.180237,
		13.232790, 27.472561, 27.444765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.039141, 28.237219, 27.876551>,  <13.467264, 28.119944, 27.318600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.039141, 28.237219, 27.876551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.105479, 27.842760, 27.877924>,  <13.145282, 27.606085, 27.878748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.105479, 27.842760, 27.877924>,  <13.039141, 28.237219, 27.876551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.105479, 27.842760, 27.877924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009914, 0.001812, 0.999949,
		-0.986102, -0.165871, -0.009476,
		0.165845, -0.986146, 0.003431,
		13.155232, 27.546917, 27.878954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.673211, 28.027264, 28.470716>,  <13.039141, 28.237219, 27.876551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.673211, 28.027264, 28.470716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.941507, 27.744152, 28.382032>,  <13.102485, 27.574286, 28.328821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.941507, 27.744152, 28.382032>,  <12.673211, 28.027264, 28.470716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.941507, 27.744152, 28.382032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308632, -0.005469, 0.951166,
		-0.674428, -0.706412, 0.214775,
		0.670741, -0.707779, -0.221710,
		13.142730, 27.531818, 28.315519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.806309, 27.698380, 29.103619>,  <12.673211, 28.027264, 28.470716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.806309, 27.698380, 29.103619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.127875, 27.562378, 28.908430>,  <13.320815, 27.480778, 28.791317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.127875, 27.562378, 28.908430>,  <12.806309, 27.698380, 29.103619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.127875, 27.562378, 28.908430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567213, 0.191577, 0.800979,
		-0.178850, -0.920704, 0.346866,
		0.803916, -0.340002, -0.487972,
		13.369050, 27.460377, 28.762039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<12.388365, 19.325794, 14.816096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.755450, 19.476574, 14.866234>,  <12.975701, 19.567041, 14.896317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.755450, 19.476574, 14.866234>,  <12.388365, 19.325794, 14.816096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.755450, 19.476574, 14.866234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171468, 0.091267, 0.980953,
		0.358331, -0.921726, 0.148392,
		0.917714, 0.376950, 0.125343,
		13.030765, 19.589659, 14.903836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.702971, 18.951521, 15.381287>,  <12.388365, 19.325794, 14.816096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.702971, 18.951521, 15.381287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.879716, 19.306890, 15.331546>,  <12.985764, 19.520111, 15.301702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.879716, 19.306890, 15.331546>,  <12.702971, 18.951521, 15.381287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.879716, 19.306890, 15.331546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095285, 0.184313, 0.978238,
		0.892008, -0.420399, 0.166094,
		0.441863, 0.888422, -0.124351,
		13.012275, 19.573418, 15.294241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.067322, 19.040274, 15.963085>,  <12.702971, 18.951521, 15.381287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.067322, 19.040274, 15.963085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.040392, 19.411602, 15.816832>,  <13.024234, 19.634399, 15.729079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.040392, 19.411602, 15.816832>,  <13.067322, 19.040274, 15.963085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.040392, 19.411602, 15.816832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181316, 0.348980, 0.919422,
		0.981118, 0.128196, 0.144824,
		-0.067326, 0.928320, -0.365634,
		13.020194, 19.690098, 15.707141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.427327, 19.385984, 16.370901>,  <13.067322, 19.040274, 15.963085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.427327, 19.385984, 16.370901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.211358, 19.680458, 16.207674>,  <13.081777, 19.857141, 16.109737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.211358, 19.680458, 16.207674>,  <13.427327, 19.385984, 16.370901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.211358, 19.680458, 16.207674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016516, 0.493977, 0.869318,
		0.841553, 0.462625, -0.278868,
		-0.539922, 0.736183, -0.408067,
		13.049381, 19.901314, 16.085255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.659484, 19.959002, 16.650270>,  <13.427327, 19.385984, 16.370901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.659484, 19.959002, 16.650270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.301913, 20.085821, 16.523542>,  <13.087371, 20.161913, 16.447506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.301913, 20.085821, 16.523542>,  <13.659484, 19.959002, 16.650270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.301913, 20.085821, 16.523542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086540, 0.571459, 0.816055,
		0.439778, 0.756911, -0.483406,
		-0.893927, 0.317049, -0.316818,
		13.033735, 20.180935, 16.428497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.731670, 20.681620, 16.640070>,  <13.659484, 19.959002, 16.650270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.731670, 20.681620, 16.640070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.337865, 20.611546, 16.642740>,  <13.101582, 20.569502, 16.644342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.337865, 20.611546, 16.642740>,  <13.731670, 20.681620, 16.640070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.337865, 20.611546, 16.642740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134441, 0.778885, 0.612588,
		-0.112517, 0.602203, -0.790374,
		-0.984513, -0.175185, 0.006677,
		13.042511, 20.558990, 16.644743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.399950, 21.334864, 16.503195>,  <13.731670, 20.681620, 16.640070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.399950, 21.334864, 16.503195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.139435, 21.095896, 16.690346>,  <12.983126, 20.952515, 16.802637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.139435, 21.095896, 16.690346>,  <13.399950, 21.334864, 16.503195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.139435, 21.095896, 16.690346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187683, 0.724245, 0.663509,
		-0.735253, 0.344323, -0.583818,
		-0.651289, -0.597420, 0.467880,
		12.944048, 20.916670, 16.830709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850883, 21.764786, 16.834921>,  <13.399950, 21.334864, 16.503195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850883, 21.764786, 16.834921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.822229, 21.423342, 17.041307>,  <12.805037, 21.218475, 17.165140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.822229, 21.423342, 17.041307>,  <12.850883, 21.764786, 16.834921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.822229, 21.423342, 17.041307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257603, 0.515579, 0.817202,
		-0.963592, -0.074374, -0.256826,
		-0.071636, -0.853608, 0.515966,
		12.800738, 21.167259, 17.196096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.255526, 21.944468, 17.061243>,  <12.850883, 21.764786, 16.834921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.255526, 21.944468, 17.061243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.369740, 21.632668, 17.284260>,  <12.438268, 21.445587, 17.418070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.369740, 21.632668, 17.284260>,  <12.255526, 21.944468, 17.061243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.369740, 21.632668, 17.284260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181674, 0.527187, 0.830102,
		-0.940991, -0.338314, 0.008916,
		0.285536, -0.779498, 0.557541,
		12.455400, 21.398819, 17.451523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.710517, 21.845257, 17.531223>,  <12.255526, 21.944468, 17.061243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.710517, 21.845257, 17.531223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.022099, 21.657179, 17.697184>,  <12.209049, 21.544333, 17.796759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.022099, 21.657179, 17.697184>,  <11.710517, 21.845257, 17.531223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.022099, 21.657179, 17.697184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180873, 0.465047, 0.866612,
		-0.600425, -0.750098, 0.277206,
		0.778957, -0.470197, 0.414899,
		12.255787, 21.516121, 17.821653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.450372, 21.563730, 18.165855>,  <11.710517, 21.845257, 17.531223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.450372, 21.563730, 18.165855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.848359, 21.602877, 18.174448>,  <12.087152, 21.626364, 18.179604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.848359, 21.602877, 18.174448>,  <11.450372, 21.563730, 18.165855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.848359, 21.602877, 18.174448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066081, 0.479763, 0.874906,
		0.075317, -0.871923, 0.483816,
		0.994968, 0.097866, 0.021483,
		12.146850, 21.632236, 18.180893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.581496, 21.391348, 18.830166>,  <11.450372, 21.563730, 18.165855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.581496, 21.391348, 18.830166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.916483, 21.577873, 18.716185>,  <12.117476, 21.689789, 18.647797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.916483, 21.577873, 18.716185>,  <11.581496, 21.391348, 18.830166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.916483, 21.577873, 18.716185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033478, 0.476671, 0.878444,
		0.545462, -0.745207, 0.383585,
		0.837466, 0.466316, -0.284954,
		12.167724, 21.717768, 18.630699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.066865, 20.993717, 19.038921>,  <11.581496, 21.391348, 18.830166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.066865, 20.993717, 19.038921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.070382, 20.698233, 19.308506>,  <11.072493, 20.520941, 19.470257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.070382, 20.698233, 19.308506>,  <11.066865, 20.993717, 19.038921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.070382, 20.698233, 19.308506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392829, -0.622355, -0.677022,
		0.919570, -0.258798, -0.295660,
		0.008794, -0.738713, 0.673963,
		11.073020, 20.476618, 19.510695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.508115, 20.466099, 18.803867>,  <11.066865, 20.993717, 19.038921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.508115, 20.466099, 18.803867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.214614, 20.336224, 19.042593>,  <11.038513, 20.258299, 19.185827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.214614, 20.336224, 19.042593>,  <11.508115, 20.466099, 18.803867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.214614, 20.336224, 19.042593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334595, -0.591826, -0.733341,
		0.591315, -0.737781, 0.325615,
		-0.733752, -0.324686, 0.596813,
		10.994488, 20.238817, 19.221638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.549804, 19.739819, 18.871450>,  <11.508115, 20.466099, 18.803867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.549804, 19.739819, 18.871450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.174775, 19.848526, 18.958263>,  <10.949759, 19.913752, 19.010351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.174775, 19.848526, 18.958263>,  <11.549804, 19.739819, 18.871450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.174775, 19.848526, 18.958263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346479, -0.675649, -0.650731,
		-0.030212, -0.685303, 0.727631,
		-0.937571, 0.271769, 0.217031,
		10.893504, 19.930058, 19.023373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.148311, 19.123957, 19.138990>,  <11.549804, 19.739819, 18.871450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.148311, 19.123957, 19.138990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.876264, 19.389246, 19.014042>,  <10.713036, 19.548420, 18.939072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.876264, 19.389246, 19.014042>,  <11.148311, 19.123957, 19.138990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.876264, 19.389246, 19.014042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395158, -0.690550, -0.605798,
		-0.617486, -0.288578, 0.731733,
		-0.680118, 0.663222, -0.312371,
		10.672229, 19.588213, 18.920330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.544775, 18.700781, 19.115730>,  <11.148311, 19.123957, 19.138990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.544775, 18.700781, 19.115730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.493376, 19.023996, 18.885752>,  <10.462536, 19.217926, 18.747765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.493376, 19.023996, 18.885752>,  <10.544775, 18.700781, 19.115730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.493376, 19.023996, 18.885752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345058, -0.579958, -0.737959,
		-0.929744, 0.103565, 0.353343,
		-0.128498, 0.808037, -0.574948,
		10.454826, 19.266407, 18.713268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.790875, 18.742273, 18.932928>,  <10.544775, 18.700781, 19.115730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.790875, 18.742273, 18.932928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.976297, 18.958559, 18.652145>,  <10.087550, 19.088331, 18.483675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.976297, 18.958559, 18.652145>,  <9.790875, 18.742273, 18.932928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.976297, 18.958559, 18.652145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378463, -0.595490, -0.708630,
		-0.801176, 0.594154, -0.071402,
		0.463554, 0.540715, -0.701958,
		10.115364, 19.120773, 18.441559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.318924, 18.961788, 18.412636>,  <9.790875, 18.742273, 18.932928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.318924, 18.961788, 18.412636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.665566, 18.991753, 18.215302>,  <9.873552, 19.009731, 18.096901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.665566, 18.991753, 18.215302>,  <9.318924, 18.961788, 18.412636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.665566, 18.991753, 18.215302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401730, -0.481697, -0.778833,
		-0.295983, 0.873130, -0.387347,
		0.866606, 0.074912, -0.493337,
		9.925549, 19.014227, 18.067301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.276743, 19.392298, 17.738806>,  <9.318924, 18.961788, 18.412636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.276743, 19.392298, 17.738806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.583578, 19.148382, 17.659075>,  <9.767679, 19.002033, 17.611237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.583578, 19.148382, 17.659075>,  <9.276743, 19.392298, 17.738806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.583578, 19.148382, 17.659075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375355, -0.174627, -0.910282,
		0.520272, 0.773086, -0.362842,
		0.767089, -0.609789, -0.199328,
		9.813704, 18.965445, 17.599276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.324742, 19.467993, 17.057974>,  <9.276743, 19.392298, 17.738806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.324742, 19.467993, 17.057974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.537537, 19.143492, 17.155020>,  <9.665213, 18.948792, 17.213247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.537537, 19.143492, 17.155020>,  <9.324742, 19.467993, 17.057974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.537537, 19.143492, 17.155020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308108, -0.452342, -0.836933,
		0.788709, 0.370484, -0.490592,
		0.531985, -0.811251, 0.242617,
		9.697132, 18.900116, 17.227804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.683969, 19.287251, 16.508238>,  <9.324742, 19.467993, 17.057974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.683969, 19.287251, 16.508238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.669983, 18.950182, 16.723154>,  <9.661592, 18.747940, 16.852104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.669983, 18.950182, 16.723154>,  <9.683969, 19.287251, 16.508238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.669983, 18.950182, 16.723154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239390, -0.514907, -0.823142,
		0.970294, -0.157403, -0.183724,
		-0.034964, -0.842671, 0.537292,
		9.659493, 18.697380, 16.884342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.048999, 18.848293, 16.101896>,  <9.683969, 19.287251, 16.508238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.048999, 18.848293, 16.101896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.819390, 18.619656, 16.336426>,  <9.681625, 18.482473, 16.477144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.819390, 18.619656, 16.336426>,  <10.048999, 18.848293, 16.101896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.819390, 18.619656, 16.336426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445238, -0.383064, -0.809336,
		0.687214, -0.725630, -0.034610,
		-0.574021, -0.571597, 0.586325,
		9.647184, 18.448177, 16.512323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.981873, 18.197016, 15.637167>,  <10.048999, 18.848293, 16.101896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.981873, 18.197016, 15.637167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.737730, 18.174419, 15.953211>,  <9.591245, 18.160862, 16.142838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.737730, 18.174419, 15.953211>,  <9.981873, 18.197016, 15.637167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.737730, 18.174419, 15.953211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598696, -0.620227, -0.506835,
		0.518680, -0.782385, 0.344738,
		-0.610356, -0.056492, 0.790110,
		9.554624, 18.157473, 16.190245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.930406, 17.514090, 15.952859>,  <9.981873, 18.197016, 15.637167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.930406, 17.514090, 15.952859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.573802, 17.685110, 16.012745>,  <9.359840, 17.787722, 16.048677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.573802, 17.685110, 16.012745>,  <9.930406, 17.514090, 15.952859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.573802, 17.685110, 16.012745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445388, -0.766918, -0.462024,
		-0.082718, -0.478580, 0.874139,
		-0.891508, 0.427549, 0.149716,
		9.306350, 17.813375, 16.057659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.487226, 16.911646, 16.274916>,  <9.930406, 17.514090, 15.952859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.487226, 16.911646, 16.274916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.260056, 17.188831, 16.097258>,  <9.123755, 17.355143, 15.990663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.260056, 17.188831, 16.097258>,  <9.487226, 16.911646, 16.274916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.260056, 17.188831, 16.097258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451498, -0.713464, -0.535834,
		-0.688199, -0.103777, 0.718061,
		-0.567919, 0.692964, -0.444150,
		9.089680, 17.396721, 15.964014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.039506, 16.527353, 16.710962>,  <9.487226, 16.911646, 16.274916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.039506, 16.527353, 16.710962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.021949, 16.162092, 16.873060>,  <10.011415, 15.942935, 16.970318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.021949, 16.162092, 16.873060>,  <10.039506, 16.527353, 16.710962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.021949, 16.162092, 16.873060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301336, 0.398843, 0.866095,
		-0.952507, -0.084098, -0.292673,
		-0.043893, -0.913155, 0.405243,
		10.008780, 15.888145, 16.994633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.380634, 16.282030, 17.045696>,  <10.039506, 16.527353, 16.710962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.380634, 16.282030, 17.045696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.713644, 16.146990, 17.221392>,  <9.913450, 16.065966, 17.326809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.713644, 16.146990, 17.221392>,  <9.380634, 16.282030, 17.045696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.713644, 16.146990, 17.221392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293946, 0.402851, 0.866779,
		-0.469574, -0.850726, 0.236146,
		0.832523, -0.337603, 0.439236,
		9.963401, 16.045710, 17.353163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.200545, 16.023636, 17.618591>,  <9.380634, 16.282030, 17.045696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.200545, 16.023636, 17.618591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.584188, 16.098499, 17.703522>,  <9.814374, 16.143417, 17.754480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.584188, 16.098499, 17.703522>,  <9.200545, 16.023636, 17.618591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.584188, 16.098499, 17.703522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238157, 0.128259, 0.962721,
		0.152967, -0.973917, 0.167591,
		0.959105, 0.187178, 0.212325,
		9.871921, 16.154648, 17.767220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.366481, 15.663569, 18.212276>,  <9.200545, 16.023636, 17.618591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.366481, 15.663569, 18.212276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.649780, 15.945781, 18.202375>,  <9.819760, 16.115108, 18.196434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.649780, 15.945781, 18.202375>,  <9.366481, 15.663569, 18.212276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.649780, 15.945781, 18.202375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112753, 0.147662, 0.982590,
		0.696900, -0.693127, 0.184132,
		0.708249, 0.705529, -0.024753,
		9.862255, 16.157440, 18.194950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.660005, 15.534687, 18.855776>,  <9.366481, 15.663569, 18.212276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.660005, 15.534687, 18.855776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.794405, 15.889971, 18.730436>,  <9.875045, 16.103142, 18.655233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.794405, 15.889971, 18.730436>,  <9.660005, 15.534687, 18.855776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.794405, 15.889971, 18.730436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115430, 0.291350, 0.949627,
		0.934762, -0.355244, -0.004632,
		0.336000, 0.888210, -0.313348,
		9.895205, 16.156433, 18.636433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.291896, 15.571256, 19.155870>,  <9.660005, 15.534687, 18.855776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.291896, 15.571256, 19.155870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.114262, 15.915779, 19.057131>,  <10.007681, 16.122494, 18.997887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.114262, 15.915779, 19.057131>,  <10.291896, 15.571256, 19.155870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.114262, 15.915779, 19.057131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015636, 0.282913, 0.959018,
		0.895848, 0.422027, -0.139105,
		-0.444086, 0.861309, -0.246848,
		9.981035, 16.174171, 18.983076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.855582, 16.012627, 19.279337>,  <10.291896, 15.571256, 19.155870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.855582, 16.012627, 19.279337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.507812, 16.210249, 19.280554>,  <10.299150, 16.328821, 19.281284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.507812, 16.210249, 19.280554>,  <10.855582, 16.012627, 19.279337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.507812, 16.210249, 19.280554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189154, 0.327170, 0.925840,
		0.456421, 0.805525, -0.377902,
		-0.869426, 0.494054, 0.003041,
		10.246984, 16.358465, 19.281466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.059343, 16.754168, 19.548809>,  <10.855582, 16.012627, 19.279337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.059343, 16.754168, 19.548809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.665482, 16.716820, 19.607788>,  <10.429165, 16.694412, 19.643175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.665482, 16.716820, 19.607788>,  <11.059343, 16.754168, 19.548809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.665482, 16.716820, 19.607788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098316, 0.401278, 0.910665,
		-0.144193, 0.911185, -0.385940,
		-0.984654, -0.093367, 0.147446,
		10.370086, 16.688810, 19.652021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.727565, 17.452368, 19.667744>,  <11.059343, 16.754168, 19.548809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.727565, 17.452368, 19.667744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.514641, 17.166477, 19.849209>,  <10.386887, 16.994944, 19.958088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.514641, 17.166477, 19.849209>,  <10.727565, 17.452368, 19.667744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.514641, 17.166477, 19.849209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183083, 0.426020, 0.885995,
		-0.826514, 0.554683, -0.095921,
		-0.532311, -0.714726, 0.453665,
		10.354947, 16.952059, 19.985308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.266064, 17.747694, 20.170649>,  <10.727565, 17.452368, 19.667744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.266064, 17.747694, 20.170649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.283244, 17.368881, 20.297951>,  <10.293552, 17.141594, 20.374332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.283244, 17.368881, 20.297951>,  <10.266064, 17.747694, 20.170649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.283244, 17.368881, 20.297951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043425, 0.316477, 0.947606,
		-0.998133, -0.054522, -0.027531,
		0.042952, -0.947032, 0.318254,
		10.296130, 17.084772, 20.393427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.082623, 17.897131, 20.888876>,  <10.266064, 17.747694, 20.170649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.082623, 17.897131, 20.888876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.193541, 17.512934, 20.879385>,  <10.260091, 17.282415, 20.873692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.193541, 17.512934, 20.879385>,  <10.082623, 17.897131, 20.888876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.193541, 17.512934, 20.879385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147143, 0.018051, 0.988951,
		-0.949451, -0.277720, 0.146336,
		0.277293, -0.960492, -0.023726,
		10.276729, 17.224787, 20.872267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.875340, 17.609032, 21.501459>,  <10.082623, 17.897131, 20.888876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.875340, 17.609032, 21.501459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.132112, 17.324085, 21.387993>,  <10.286175, 17.153118, 21.319914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.132112, 17.324085, 21.387993>,  <9.875340, 17.609032, 21.501459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.132112, 17.324085, 21.387993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176303, -0.222909, 0.958764,
		-0.746221, -0.665468, -0.017500,
		0.641928, -0.712365, -0.283664,
		10.324690, 17.110376, 21.302895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.691541, 16.967154, 21.935953>,  <9.875340, 17.609032, 21.501459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.691541, 16.967154, 21.935953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.062929, 16.936993, 21.790483>,  <10.285762, 16.918896, 21.703201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.062929, 16.936993, 21.790483>,  <9.691541, 16.967154, 21.935953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.062929, 16.936993, 21.790483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329645, -0.283799, 0.900440,
		-0.171105, -0.955914, -0.238644,
		0.928470, -0.075402, -0.363672,
		10.341470, 16.914371, 21.681381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.979524, 16.433140, 22.343412>,  <9.691541, 16.967154, 21.935953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.979524, 16.433140, 22.343412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.298807, 16.616945, 22.187613>,  <10.490377, 16.727228, 22.094133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.298807, 16.616945, 22.187613>,  <9.979524, 16.433140, 22.343412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.298807, 16.616945, 22.187613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365947, 0.143702, 0.919474,
		0.478485, -0.876468, -0.053454,
		0.798208, 0.459515, -0.389500,
		10.538270, 16.754799, 22.070763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.479416, 15.951600, 22.487368>,  <9.979524, 16.433140, 22.343412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.479416, 15.951600, 22.487368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.625023, 16.320009, 22.431931>,  <10.712387, 16.541056, 22.398668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.625023, 16.320009, 22.431931>,  <10.479416, 15.951600, 22.487368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.625023, 16.320009, 22.431931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302416, 0.023863, 0.952877,
		0.880929, -0.388777, -0.269846,
		0.364017, 0.921023, -0.138594,
		10.734228, 16.596315, 22.390352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.087938, 15.872357, 22.679068>,  <10.479416, 15.951600, 22.487368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.087938, 15.872357, 22.679068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.041805, 16.269499, 22.666792>,  <11.014126, 16.507784, 22.659426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.041805, 16.269499, 22.666792>,  <11.087938, 15.872357, 22.679068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.041805, 16.269499, 22.666792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390028, 0.073677, 0.917851,
		0.913552, 0.093887, -0.395737,
		-0.115332, 0.992853, -0.030689,
		11.007206, 16.567354, 22.657585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.788754, 16.053896, 22.932772>,  <11.087938, 15.872357, 22.679068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.788754, 16.053896, 22.932772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.527885, 16.354057, 22.975786>,  <11.371364, 16.534155, 23.001595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.527885, 16.354057, 22.975786>,  <11.788754, 16.053896, 22.932772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.527885, 16.354057, 22.975786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331007, 0.154271, 0.930932,
		0.681986, 0.642723, -0.349000,
		-0.652173, 0.750405, 0.107535,
		11.332233, 16.579178, 23.008047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.123830, 16.577610, 23.290789>,  <11.788754, 16.053896, 22.932772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.123830, 16.577610, 23.290789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.742372, 16.690926, 23.331396>,  <11.513496, 16.758915, 23.355761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.742372, 16.690926, 23.331396>,  <12.123830, 16.577610, 23.290789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.742372, 16.690926, 23.331396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184208, 0.282767, 0.941334,
		0.237963, 0.916401, -0.321844,
		-0.953646, 0.283289, 0.101521,
		11.456278, 16.775911, 23.361853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.094195, 17.256186, 23.620296>,  <12.123830, 16.577610, 23.290789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.094195, 17.256186, 23.620296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.737453, 17.088577, 23.688429>,  <11.523407, 16.988012, 23.729307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.737453, 17.088577, 23.688429>,  <12.094195, 17.256186, 23.620296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.737453, 17.088577, 23.688429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014442, 0.402755, 0.915194,
		-0.452088, 0.813762, -0.365251,
		-0.891856, -0.419023, 0.170329,
		11.469895, 16.962870, 23.739527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.834311, 17.747231, 23.944242>,  <12.094195, 17.256186, 23.620296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.834311, 17.747231, 23.944242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.598739, 17.446486, 24.062809>,  <11.457396, 17.266039, 24.133949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.598739, 17.446486, 24.062809>,  <11.834311, 17.747231, 23.944242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.598739, 17.446486, 24.062809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007303, 0.361802, 0.932226,
		-0.808150, 0.551182, -0.207586,
		-0.588932, -0.751863, 0.296415,
		11.422059, 17.220926, 24.151733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.261065, 18.021404, 24.342327>,  <11.834311, 17.747231, 23.944242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.261065, 18.021404, 24.342327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.295686, 17.634768, 24.438831>,  <11.316458, 17.402786, 24.496735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.295686, 17.634768, 24.438831>,  <11.261065, 18.021404, 24.342327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.295686, 17.634768, 24.438831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000795, 0.242104, 0.970250,
		-0.996247, -0.084168, 0.020186,
		0.086551, -0.966593, 0.241263,
		11.321651, 17.344790, 24.511209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.834865, 17.972763, 24.899500>,  <11.261065, 18.021404, 24.342327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.834865, 17.972763, 24.899500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.064153, 17.645006, 24.900997>,  <11.201726, 17.448353, 24.901896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.064153, 17.645006, 24.900997>,  <10.834865, 17.972763, 24.899500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.064153, 17.645006, 24.900997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165873, 0.120510, 0.978756,
		-0.802437, -0.560422, 0.204994,
		0.573220, -0.819393, 0.003743,
		11.236118, 17.399189, 24.902121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.591336, 17.650867, 25.501051>,  <10.834865, 17.972763, 24.899500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.591336, 17.650867, 25.501051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.965280, 17.536945, 25.416269>,  <11.189646, 17.468592, 25.365400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.965280, 17.536945, 25.416269>,  <10.591336, 17.650867, 25.501051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.965280, 17.536945, 25.416269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235142, 0.049437, 0.970703,
		-0.265985, -0.957309, 0.113186,
		0.934858, -0.284807, -0.211954,
		11.245737, 17.451504, 25.352682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.764306, 17.411379, 26.058475>,  <10.591336, 17.650867, 25.501051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.764306, 17.411379, 26.058475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.131297, 17.429529, 25.900400>,  <11.351492, 17.440418, 25.805555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.131297, 17.429529, 25.900400>,  <10.764306, 17.411379, 26.058475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.131297, 17.429529, 25.900400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382754, 0.169824, 0.908107,
		0.108314, -0.984429, 0.138445,
		0.917479, 0.045370, -0.395188,
		11.406541, 17.443142, 25.781843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.077212, 17.160975, 26.570871>,  <10.764306, 17.411379, 26.058475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.077212, 17.160975, 26.570871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.360086, 17.344011, 26.355280>,  <11.529811, 17.453835, 26.225925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.360086, 17.344011, 26.355280>,  <11.077212, 17.160975, 26.570871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.360086, 17.344011, 26.355280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402886, 0.365633, 0.839044,
		0.581009, -0.810506, 0.074212,
		0.707185, 0.457594, -0.538978,
		11.572242, 17.481289, 26.193586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.724191, 17.029785, 26.864456>,  <11.077212, 17.160975, 26.570871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.724191, 17.029785, 26.864456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.785628, 17.358236, 26.644581>,  <11.822491, 17.555307, 26.512655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.785628, 17.358236, 26.644581>,  <11.724191, 17.029785, 26.864456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.785628, 17.358236, 26.644581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368705, 0.468486, 0.802856,
		0.916769, -0.325986, -0.230798,
		0.153594, 0.821130, -0.549686,
		11.831707, 17.604576, 26.479675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.417394, 17.268093, 27.159723>,  <11.724191, 17.029785, 26.864456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.417394, 17.268093, 27.159723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.214666, 17.565186, 26.984686>,  <12.093030, 17.743441, 26.879663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.214666, 17.565186, 26.984686>,  <12.417394, 17.268093, 27.159723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.214666, 17.565186, 26.984686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285837, 0.623688, 0.727538,
		0.813286, 0.243649, -0.528395,
		-0.506818, 0.742731, -0.437593,
		12.062621, 17.788004, 26.853409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.003595, 17.825500, 26.941515>,  <12.417394, 17.268093, 27.159723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.003595, 17.825500, 26.941515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.633631, 17.973618, 26.975979>,  <12.411652, 18.062487, 26.996656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.633631, 17.973618, 26.975979>,  <13.003595, 17.825500, 26.941515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.633631, 17.973618, 26.975979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331766, 0.675448, 0.658561,
		0.185663, 0.637695, -0.747579,
		-0.924911, 0.370292, 0.086159,
		12.356157, 18.084705, 27.001827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
