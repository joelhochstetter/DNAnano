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
	<24.435263, 34.559910, 34.850895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312162, 34.939526, 34.878063>,  <24.238302, 35.167294, 34.894363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312162, 34.939526, 34.878063>,  <24.435263, 34.559910, 34.850895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.312162, 34.939526, 34.878063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506370, 0.102934, 0.856151,
		0.805531, 0.297871, -0.512243,
		-0.307749, 0.949040, 0.067916,
		24.219837, 35.224239, 34.898438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.947826, 35.139290, 34.964420>,  <24.435263, 34.559910, 34.850895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.947826, 35.139290, 34.964420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.603931, 35.271027, 35.120567>,  <24.397594, 35.350067, 35.214256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.603931, 35.271027, 35.120567>,  <24.947826, 35.139290, 34.964420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.603931, 35.271027, 35.120567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465696, 0.191661, 0.863940,
		0.209712, 0.924554, -0.318151,
		-0.859737, 0.329340, 0.390368,
		24.346010, 35.369827, 35.237679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217306, 35.566017, 34.426575>,  <24.947826, 35.139290, 34.964420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217306, 35.566017, 34.426575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508501, 35.839996, 34.414680>,  <25.683218, 36.004383, 34.407543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508501, 35.839996, 34.414680>,  <25.217306, 35.566017, 34.426575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508501, 35.839996, 34.414680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400404, -0.459968, -0.792531,
		-0.556517, 0.565048, -0.609106,
		0.727988, 0.684945, -0.029732,
		25.726898, 36.045479, 34.405762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348833, 36.138554, 33.833702>,  <25.217306, 35.566017, 34.426575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348833, 36.138554, 33.833702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662607, 35.958488, 34.004356>,  <25.850872, 35.850449, 34.106747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662607, 35.958488, 34.004356>,  <25.348833, 36.138554, 33.833702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662607, 35.958488, 34.004356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290916, -0.340451, -0.894126,
		0.547749, 0.825498, -0.136103,
		0.784435, -0.450162, 0.426633,
		25.897938, 35.823441, 34.132347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068707, 36.441158, 33.671227>,  <25.348833, 36.138554, 33.833702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068707, 36.441158, 33.671227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027981, 36.046490, 33.722012>,  <26.003546, 35.809689, 33.752483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027981, 36.046490, 33.722012>,  <26.068707, 36.441158, 33.671227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.027981, 36.046490, 33.722012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409718, -0.157892, -0.898444,
		0.906512, -0.039454, 0.420332,
		-0.101814, -0.986668, 0.126966,
		25.997437, 35.750488, 33.760101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502375, 36.990685, 33.809200>,  <26.068707, 36.441158, 33.671227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502375, 36.990685, 33.809200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477354, 36.636223, 33.992863>,  <26.462341, 36.423546, 34.103058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477354, 36.636223, 33.992863>,  <26.502375, 36.990685, 33.809200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.477354, 36.636223, 33.992863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095907, 0.463261, 0.881017,
		-0.993423, 0.011073, -0.113966,
		-0.062551, -0.886153, 0.459152,
		26.458590, 36.370377, 34.130608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863741, 37.386826, 33.294125>,  <26.502375, 36.990685, 33.809200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863741, 37.386826, 33.294125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033482, 37.744114, 33.234688>,  <27.135326, 37.958488, 33.199028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033482, 37.744114, 33.234688>,  <26.863741, 37.386826, 33.294125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033482, 37.744114, 33.234688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455546, 0.068775, -0.887552,
		-0.782563, 0.444321, 0.436089,
		0.424350, 0.893224, -0.148588,
		27.160786, 38.012081, 33.190113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269224, 37.752033, 33.121944>,  <26.863741, 37.386826, 33.294125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269224, 37.752033, 33.121944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593372, 37.914127, 32.952675>,  <26.787861, 38.011383, 32.851112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593372, 37.914127, 32.952675>,  <26.269224, 37.752033, 33.121944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593372, 37.914127, 32.952675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301476, -0.330919, -0.894206,
		-0.502405, 0.852217, -0.145997,
		0.810371, 0.405240, -0.423178,
		26.836483, 38.035698, 32.825722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988579, 38.315628, 32.656300>,  <26.269224, 37.752033, 33.121944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988579, 38.315628, 32.656300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.356524, 38.201073, 32.549091>,  <26.577290, 38.132339, 32.484768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.356524, 38.201073, 32.549091>,  <25.988579, 38.315628, 32.656300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.356524, 38.201073, 32.549091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333189, -0.209948, -0.919188,
		0.206973, 0.934828, -0.288544,
		0.919863, -0.286387, -0.268021,
		26.632483, 38.115158, 32.468685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981253, 38.569027, 32.036102>,  <25.988579, 38.315628, 32.656300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981253, 38.569027, 32.036102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276232, 38.298931, 32.030228>,  <26.453220, 38.136871, 32.026703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276232, 38.298931, 32.030228>,  <25.981253, 38.569027, 32.036102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276232, 38.298931, 32.030228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169803, -0.164306, -0.971684,
		0.653709, 0.719062, -0.235826,
		0.737449, -0.675243, -0.014691,
		26.497467, 38.096359, 32.025822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396393, 38.799843, 31.415297>,  <25.981253, 38.569027, 32.036102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396393, 38.799843, 31.415297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507235, 38.419502, 31.470581>,  <26.573740, 38.191299, 31.503752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507235, 38.419502, 31.470581>,  <26.396393, 38.799843, 31.415297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507235, 38.419502, 31.470581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068970, -0.163158, -0.984186,
		0.958361, 0.263190, -0.110792,
		0.277105, -0.950847, 0.138212,
		26.590366, 38.134247, 31.512045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876266, 38.658028, 30.825949>,  <26.396393, 38.799843, 31.415297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876266, 38.658028, 30.825949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719646, 38.324749, 30.982141>,  <26.625675, 38.124783, 31.075857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719646, 38.324749, 30.982141>,  <26.876266, 38.658028, 30.825949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719646, 38.324749, 30.982141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319871, -0.274649, -0.906780,
		0.862771, -0.479952, -0.158976,
		-0.391548, -0.833195, 0.390482,
		26.602182, 38.074791, 31.099285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830923, 38.188839, 30.164429>,  <26.876266, 38.658028, 30.825949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830923, 38.188839, 30.164429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646666, 37.844296, 30.078766>,  <26.536112, 37.637569, 30.027369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646666, 37.844296, 30.078766>,  <26.830923, 38.188839, 30.164429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646666, 37.844296, 30.078766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044021, -0.218812, 0.974774,
		-0.886494, 0.458449, 0.062875,
		-0.460642, -0.861363, -0.214157,
		26.508472, 37.585888, 30.014519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280176, 38.188217, 30.576977>,  <26.830923, 38.188839, 30.164429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280176, 38.188217, 30.576977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430485, 37.836945, 30.458586>,  <26.520670, 37.626183, 30.387550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430485, 37.836945, 30.458586>,  <26.280176, 38.188217, 30.576977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430485, 37.836945, 30.458586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217315, -0.226976, 0.949345,
		-0.900873, -0.421055, 0.105550,
		0.375769, -0.878177, -0.295978,
		26.543215, 37.573490, 30.369793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872305, 37.556625, 30.869062>,  <26.280176, 38.188217, 30.576977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872305, 37.556625, 30.869062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268869, 37.532658, 30.822571>,  <26.506809, 37.518276, 30.794676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268869, 37.532658, 30.822571>,  <25.872305, 37.556625, 30.869062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268869, 37.532658, 30.822571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101270, -0.210535, 0.972327,
		-0.082726, -0.975749, -0.202659,
		0.991414, -0.059914, -0.116231,
		26.566294, 37.514683, 30.787701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111687, 36.991039, 31.233429>,  <25.872305, 37.556625, 30.869062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111687, 36.991039, 31.233429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397337, 37.270451, 31.215208>,  <26.568727, 37.438099, 31.204275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397337, 37.270451, 31.215208>,  <26.111687, 36.991039, 31.233429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397337, 37.270451, 31.215208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262241, -0.206624, 0.942622,
		0.649040, -0.685097, -0.330739,
		0.714126, 0.698533, -0.045553,
		26.611574, 37.480011, 31.201542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725220, 36.830463, 31.671247>,  <26.111687, 36.991039, 31.233429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725220, 36.830463, 31.671247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707043, 37.228329, 31.634199>,  <26.696136, 37.467049, 31.611971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707043, 37.228329, 31.634199>,  <26.725220, 36.830463, 31.671247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707043, 37.228329, 31.634199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265636, 0.101410, 0.958725,
		0.963002, 0.018965, -0.268827,
		-0.045444, 0.994664, -0.092620,
		26.693409, 37.526730, 31.606413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368740, 37.083500, 31.982487>,  <26.725220, 36.830463, 31.671247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368740, 37.083500, 31.982487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122335, 37.398499, 31.990236>,  <26.974493, 37.587498, 31.994886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122335, 37.398499, 31.990236>,  <27.368740, 37.083500, 31.982487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122335, 37.398499, 31.990236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409910, 0.299452, 0.861570,
		0.672685, 0.538677, -0.507269,
		-0.616011, 0.787499, 0.019372,
		26.937532, 37.634747, 31.996048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780008, 37.682659, 32.005112>,  <27.368740, 37.083500, 31.982487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780008, 37.682659, 32.005112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424381, 37.824944, 32.120369>,  <27.211006, 37.910316, 32.189526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424381, 37.824944, 32.120369>,  <27.780008, 37.682659, 32.005112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424381, 37.824944, 32.120369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429425, 0.429973, 0.794177,
		0.158606, 0.829813, -0.535027,
		-0.889066, 0.355715, 0.288147,
		27.157661, 37.931660, 32.206814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906321, 38.357922, 32.197876>,  <27.780008, 37.682659, 32.005112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906321, 38.357922, 32.197876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569036, 38.284180, 32.399868>,  <27.366665, 38.239933, 32.521065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569036, 38.284180, 32.399868>,  <27.906321, 38.357922, 32.197876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569036, 38.284180, 32.399868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421510, 0.356286, 0.833901,
		-0.333652, 0.916010, -0.222717,
		-0.843212, -0.184355, 0.504982,
		27.316072, 38.228874, 32.551361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647438, 38.956333, 32.521523>,  <27.906321, 38.357922, 32.197876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647438, 38.956333, 32.521523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547892, 38.630875, 32.731682>,  <27.488163, 38.435600, 32.857777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547892, 38.630875, 32.731682>,  <27.647438, 38.956333, 32.521523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547892, 38.630875, 32.731682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462468, 0.376799, 0.802587,
		-0.850993, 0.442714, 0.282515,
		-0.248865, -0.813650, 0.525395,
		27.473232, 38.386780, 32.889301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320957, 39.204590, 33.180435>,  <27.647438, 38.956333, 32.521523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320957, 39.204590, 33.180435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528780, 38.862816, 33.181301>,  <27.653473, 38.657753, 33.181820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528780, 38.862816, 33.181301>,  <27.320957, 39.204590, 33.180435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528780, 38.862816, 33.181301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616711, 0.376753, 0.691176,
		-0.591378, -0.357773, 0.722683,
		0.519557, -0.854433, 0.002161,
		27.684647, 38.606487, 33.181950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452618, 38.956974, 33.878201>,  <27.320957, 39.204590, 33.180435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452618, 38.956974, 33.878201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752592, 38.897957, 33.620262>,  <27.932577, 38.862545, 33.465500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752592, 38.897957, 33.620262>,  <27.452618, 38.956974, 33.878201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752592, 38.897957, 33.620262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661508, 0.168868, 0.730679,
		0.001084, -0.974532, 0.224244,
		0.749938, -0.147547, -0.644844,
		27.977573, 38.853695, 33.426807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791311, 38.346058, 33.985374>,  <27.452618, 38.956974, 33.878201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791311, 38.346058, 33.985374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019014, 38.643127, 33.844303>,  <28.155636, 38.821369, 33.759659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019014, 38.643127, 33.844303>,  <27.791311, 38.346058, 33.985374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019014, 38.643127, 33.844303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393823, 0.130237, 0.909913,
		0.721700, -0.656868, -0.218343,
		0.569256, 0.742673, -0.352682,
		28.189791, 38.865929, 33.738499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566751, 38.170753, 34.085358>,  <27.791311, 38.346058, 33.985374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566751, 38.170753, 34.085358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444901, 38.551720, 34.089642>,  <28.371790, 38.780300, 34.092213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444901, 38.551720, 34.089642>,  <28.566751, 38.170753, 34.085358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444901, 38.551720, 34.089642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382073, 0.111892, 0.917333,
		0.872481, 0.283536, -0.397976,
		-0.304627, 0.952412, 0.010707,
		28.353512, 38.837444, 34.092854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855080, 37.577240, 33.703682>,  <28.566751, 38.170753, 34.085358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855080, 37.577240, 33.703682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041229, 37.618515, 34.055313>,  <29.152920, 37.643280, 34.266293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041229, 37.618515, 34.055313>,  <28.855080, 37.577240, 33.703682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041229, 37.618515, 34.055313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845925, -0.344107, -0.407432,
		0.260456, 0.933243, -0.247427,
		0.465375, 0.103186, 0.879078,
		29.180841, 37.649471, 34.319038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653934, 37.731556, 33.508907>,  <28.855080, 37.577240, 33.703682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653934, 37.731556, 33.508907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681517, 37.596802, 33.884514>,  <29.698065, 37.515949, 34.109879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681517, 37.596802, 33.884514>,  <29.653934, 37.731556, 33.508907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681517, 37.596802, 33.884514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922883, -0.335913, -0.188281,
		0.378858, 0.879586, 0.287741,
		0.068953, -0.336883, 0.939018,
		29.702202, 37.495735, 34.166218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282654, 38.033566, 33.620228>,  <29.653934, 37.731556, 33.508907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282654, 38.033566, 33.620228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219334, 37.743542, 33.888325>,  <30.181341, 37.569527, 34.049183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219334, 37.743542, 33.888325>,  <30.282654, 38.033566, 33.620228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219334, 37.743542, 33.888325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895240, -0.391739, -0.212333,
		0.416516, 0.566419, 0.711114,
		-0.158302, -0.725058, 0.670247,
		30.171843, 37.526024, 34.089397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903460, 37.911442, 34.012096>,  <30.282654, 38.033566, 33.620228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903460, 37.911442, 34.012096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701008, 37.566471, 34.014896>,  <30.579536, 37.359489, 34.016575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701008, 37.566471, 34.014896>,  <30.903460, 37.911442, 34.012096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701008, 37.566471, 34.014896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753735, -0.446258, -0.482429,
		0.419184, -0.238896, 0.875907,
		-0.506131, -0.862428, 0.007000,
		30.549168, 37.307743, 34.016994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407064, 37.391804, 34.290348>,  <30.903460, 37.911442, 34.012096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407064, 37.391804, 34.290348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106030, 37.197464, 34.112553>,  <30.925409, 37.080860, 34.005875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106030, 37.197464, 34.112553>,  <31.407064, 37.391804, 34.290348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106030, 37.197464, 34.112553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647286, -0.669823, -0.363810,
		-0.120970, -0.561507, 0.818582,
		-0.752587, -0.485846, -0.444484,
		30.880253, 37.051712, 33.979206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662811, 36.687443, 34.225067>,  <31.407064, 37.391804, 34.290348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662811, 36.687443, 34.225067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319689, 36.662239, 34.021027>,  <31.113815, 36.647118, 33.898602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319689, 36.662239, 34.021027>,  <31.662811, 36.687443, 34.225067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319689, 36.662239, 34.021027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394394, -0.717093, -0.574658,
		-0.329579, -0.694124, 0.639976,
		-0.857806, -0.063007, -0.510098,
		31.062347, 36.643337, 33.867996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473513, 35.936081, 34.084938>,  <31.662811, 36.687443, 34.225067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473513, 35.936081, 34.084938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316193, 36.146500, 33.783318>,  <31.221802, 36.272751, 33.602345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316193, 36.146500, 33.783318>,  <31.473513, 35.936081, 34.084938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316193, 36.146500, 33.783318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432279, -0.618037, -0.656632,
		-0.811450, -0.584211, 0.015673,
		-0.393299, 0.526049, -0.754048,
		31.198202, 36.304314, 33.557102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265608, 35.436798, 33.599609>,  <31.473513, 35.936081, 34.084938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265608, 35.436798, 33.599609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305098, 35.771397, 33.384007>,  <31.328791, 35.972157, 33.254646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305098, 35.771397, 33.384007>,  <31.265608, 35.436798, 33.599609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305098, 35.771397, 33.384007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478971, -0.514724, -0.711088,
		-0.872262, -0.187965, -0.451474,
		0.098725, 0.836498, -0.539004,
		31.334715, 36.022346, 33.222305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022934, 35.278011, 32.847237>,  <31.265608, 35.436798, 33.599609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022934, 35.278011, 32.847237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251968, 35.605377, 32.827908>,  <31.389389, 35.801796, 32.816311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251968, 35.605377, 32.827908>,  <31.022934, 35.278011, 32.847237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251968, 35.605377, 32.827908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530579, -0.414856, -0.739175,
		-0.625003, 0.397602, -0.671777,
		0.572588, 0.818417, -0.048327,
		31.423744, 35.850903, 32.813408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494932, 35.212017, 32.307182>,  <31.022934, 35.278011, 32.847237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494932, 35.212017, 32.307182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658899, 35.558723, 32.420803>,  <31.757278, 35.766747, 32.488976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658899, 35.558723, 32.420803>,  <31.494932, 35.212017, 32.307182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658899, 35.558723, 32.420803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649539, -0.058759, -0.758054,
		-0.640365, 0.495240, -0.587085,
		0.409916, 0.866767, 0.284050,
		31.781874, 35.818752, 32.506020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467436, 35.542992, 31.724430>,  <31.494932, 35.212017, 32.307182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467436, 35.542992, 31.724430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756729, 35.686691, 31.960352>,  <31.930305, 35.772911, 32.101906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756729, 35.686691, 31.960352>,  <31.467436, 35.542992, 31.724430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756729, 35.686691, 31.960352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675919, -0.193044, -0.711244,
		-0.141655, 0.913057, -0.382439,
		0.723234, 0.359249, 0.589807,
		31.973700, 35.794468, 32.137295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193565, 35.397530, 31.894020>,  <31.467436, 35.542992, 31.724430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193565, 35.397530, 31.894020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126621, 35.771759, 31.769644>,  <32.086456, 35.996300, 31.695019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126621, 35.771759, 31.769644>,  <32.193565, 35.397530, 31.894020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126621, 35.771759, 31.769644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330175, 0.243989, 0.911841,
		0.928965, 0.255269, 0.268070,
		-0.167359, 0.935578, -0.310941,
		32.076412, 36.052433, 31.676361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561840, 35.900402, 32.373310>,  <32.193565, 35.397530, 31.894020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561840, 35.900402, 32.373310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267628, 36.113594, 32.206009>,  <32.091103, 36.241508, 32.105629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267628, 36.113594, 32.206009>,  <32.561840, 35.900402, 32.373310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267628, 36.113594, 32.206009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369758, 0.201500, 0.907015,
		0.567697, 0.821786, 0.048865,
		-0.735526, 0.532978, -0.418253,
		32.046970, 36.273487, 32.080532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381935, 36.393406, 32.758221>,  <32.561840, 35.900402, 32.373310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381935, 36.393406, 32.758221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042889, 36.345325, 32.551495>,  <31.839460, 36.316479, 32.427460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042889, 36.345325, 32.551495>,  <32.381935, 36.393406, 32.758221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042889, 36.345325, 32.551495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530146, 0.232353, 0.815449,
		0.022066, 0.965176, -0.260670,
		-0.847619, -0.120199, -0.516812,
		31.788603, 36.309265, 32.396450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980289, 37.071972, 32.649044>,  <32.381935, 36.393406, 32.758221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980289, 37.071972, 32.649044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786098, 36.723862, 32.682358>,  <31.669584, 36.514996, 32.702347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786098, 36.723862, 32.682358>,  <31.980289, 37.071972, 32.649044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786098, 36.723862, 32.682358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362531, 0.287084, 0.886653,
		-0.795540, 0.400257, -0.454874,
		-0.485476, -0.870274, 0.083282,
		31.640455, 36.462780, 32.707344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290705, 37.173168, 32.596851>,  <31.980289, 37.071972, 32.649044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290705, 37.173168, 32.596851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313499, 36.823986, 32.790634>,  <31.327177, 36.614475, 32.906906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313499, 36.823986, 32.790634>,  <31.290705, 37.173168, 32.596851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313499, 36.823986, 32.790634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703303, 0.309307, 0.640074,
		-0.708602, -0.377199, -0.596325,
		0.056988, -0.872955, 0.484461,
		31.330595, 36.562099, 32.935974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653725, 37.060516, 32.620281>,  <31.290705, 37.173168, 32.596851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653725, 37.060516, 32.620281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854961, 36.854988, 32.898243>,  <30.975704, 36.731670, 33.065018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854961, 36.854988, 32.898243>,  <30.653725, 37.060516, 32.620281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854961, 36.854988, 32.898243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664346, 0.284349, 0.691224,
		-0.552757, -0.809405, -0.198299,
		0.503094, -0.513818, 0.694901,
		31.005890, 36.700844, 33.106712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240656, 36.530548, 32.902267>,  <30.653725, 37.060516, 32.620281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240656, 36.530548, 32.902267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510908, 36.633003, 33.178791>,  <30.673059, 36.694477, 33.344707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510908, 36.633003, 33.178791>,  <30.240656, 36.530548, 32.902267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510908, 36.633003, 33.178791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725052, 0.061065, 0.685982,
		0.133494, -0.964709, 0.226973,
		0.675633, 0.256141, 0.691312,
		30.713598, 36.709846, 33.386185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003702, 36.238094, 33.616951>,  <30.240656, 36.530548, 32.902267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003702, 36.238094, 33.616951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302444, 36.464191, 33.757069>,  <30.481689, 36.599850, 33.841137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302444, 36.464191, 33.757069>,  <30.003702, 36.238094, 33.616951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302444, 36.464191, 33.757069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605230, 0.359552, 0.710225,
		0.275498, -0.742446, 0.610635,
		0.746858, 0.565240, 0.350294,
		30.526501, 36.633766, 33.862156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964630, 36.162365, 34.354904>,  <30.003702, 36.238094, 33.616951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964630, 36.162365, 34.354904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132624, 36.505928, 34.237671>,  <30.233419, 36.712067, 34.167332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132624, 36.505928, 34.237671>,  <29.964630, 36.162365, 34.354904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132624, 36.505928, 34.237671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582863, 0.502818, 0.638315,
		0.695618, -0.097255, 0.711798,
		0.419984, 0.858904, -0.293083,
		30.258619, 36.763599, 34.149746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799778, 36.553177, 34.864784>,  <29.964630, 36.162365, 34.354904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799778, 36.553177, 34.864784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945360, 36.838341, 34.625019>,  <30.032709, 37.009438, 34.481159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945360, 36.838341, 34.625019>,  <29.799778, 36.553177, 34.864784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945360, 36.838341, 34.625019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604348, 0.670440, 0.430434,
		0.708732, 0.205598, 0.674854,
		0.363953, 0.712909, -0.599415,
		30.054546, 37.052212, 34.445194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121271, 37.135220, 35.366592>,  <29.799778, 36.553177, 34.864784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121271, 37.135220, 35.366592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987455, 37.252087, 35.008213>,  <29.907166, 37.322208, 34.793186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987455, 37.252087, 35.008213>,  <30.121271, 37.135220, 35.366592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987455, 37.252087, 35.008213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770147, 0.463147, 0.438599,
		0.543100, 0.836739, 0.070072,
		-0.334539, 0.292169, -0.895947,
		29.887094, 37.339737, 34.739429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954725, 37.845463, 35.397984>,  <30.121271, 37.135220, 35.366592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954725, 37.845463, 35.397984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742403, 37.653622, 35.118492>,  <29.615009, 37.538517, 34.950798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742403, 37.653622, 35.118492>,  <29.954725, 37.845463, 35.397984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742403, 37.653622, 35.118492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847308, 0.317541, 0.425720,
		0.017701, 0.818017, -0.574922,
		-0.530808, -0.479600, -0.698733,
		29.583160, 37.509743, 34.908871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537500, 37.779198, 35.999496>,  <29.954725, 37.845463, 35.397984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537500, 37.779198, 35.999496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898552, 37.944504, 36.047615>,  <31.115183, 38.043686, 36.076488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898552, 37.944504, 36.047615>,  <30.537500, 37.779198, 35.999496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898552, 37.944504, 36.047615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379804, -0.896244, 0.229121,
		0.202506, -0.161121, -0.965936,
		0.902630, 0.413264, 0.120300,
		31.169340, 38.068481, 36.083706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998016, 37.300110, 36.014217>,  <30.537500, 37.779198, 35.999496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998016, 37.300110, 36.014217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263420, 37.576450, 36.129089>,  <31.422663, 37.742256, 36.198013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263420, 37.576450, 36.129089>,  <30.998016, 37.300110, 36.014217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263420, 37.576450, 36.129089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650314, -0.722342, 0.235188,
		0.369925, 0.030710, -0.928554,
		0.663511, 0.690854, 0.287184,
		31.462473, 37.783707, 36.215244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702791, 37.056110, 35.791237>,  <30.998016, 37.300110, 36.014217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702791, 37.056110, 35.791237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738148, 37.287548, 36.115559>,  <31.759361, 37.426411, 36.310154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738148, 37.287548, 36.115559>,  <31.702791, 37.056110, 35.791237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738148, 37.287548, 36.115559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753022, -0.571651, 0.325843,
		0.652031, 0.581756, -0.486225,
		0.088390, 0.578598, 0.810809,
		31.764666, 37.461128, 36.358803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174667, 36.470474, 35.912380>,  <31.702791, 37.056110, 35.791237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174667, 36.470474, 35.912380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000217, 36.148655, 35.751141>,  <30.895548, 35.955563, 35.654396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000217, 36.148655, 35.751141>,  <31.174667, 36.470474, 35.912380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000217, 36.148655, 35.751141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357867, -0.566067, 0.742630,
		-0.825668, 0.179621, 0.534797,
		-0.436123, -0.804553, -0.403103,
		30.869381, 35.907288, 35.630211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849556, 35.958202, 36.368130>,  <31.174667, 36.470474, 35.912380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849556, 35.958202, 36.368130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913782, 35.704304, 36.065788>,  <30.952318, 35.551964, 35.884384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913782, 35.704304, 36.065788>,  <30.849556, 35.958202, 36.368130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913782, 35.704304, 36.065788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395537, -0.660236, 0.638466,
		-0.904306, -0.401484, 0.145054,
		0.160564, -0.634743, -0.755858,
		30.961952, 35.513882, 35.839031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473511, 35.331253, 36.419922>,  <30.849556, 35.958202, 36.368130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473511, 35.331253, 36.419922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819160, 35.277027, 36.226048>,  <31.026550, 35.244492, 36.109722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819160, 35.277027, 36.226048>,  <30.473511, 35.331253, 36.419922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819160, 35.277027, 36.226048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242362, -0.731936, 0.636813,
		-0.441082, -0.667753, -0.599627,
		0.864122, -0.135560, -0.484681,
		31.078398, 35.236359, 36.080643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749676, 34.620266, 36.426891>,  <30.473511, 35.331253, 36.419922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749676, 34.620266, 36.426891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056839, 34.874802, 36.397533>,  <31.241137, 35.027523, 36.379917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056839, 34.874802, 36.397533>,  <30.749676, 34.620266, 36.426891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056839, 34.874802, 36.397533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523005, -0.556691, 0.645415,
		0.369847, -0.534005, -0.760298,
		0.767906, 0.636344, -0.073397,
		31.287210, 35.065704, 36.375515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347731, 34.199821, 36.624840>,  <30.749676, 34.620266, 36.426891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347731, 34.199821, 36.624840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489904, 34.571537, 36.665028>,  <31.575209, 34.794567, 36.689140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489904, 34.571537, 36.665028>,  <31.347731, 34.199821, 36.624840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489904, 34.571537, 36.665028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598974, -0.308965, 0.738763,
		0.717563, -0.202405, -0.666435,
		0.355435, 0.929286, 0.100466,
		31.596535, 34.850323, 36.695168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828312, 34.128357, 37.131931>,  <31.347731, 34.199821, 36.624840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828312, 34.128357, 37.131931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853472, 34.525154, 37.088120>,  <31.868568, 34.763233, 37.061832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853472, 34.525154, 37.088120>,  <31.828312, 34.128357, 37.131931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853472, 34.525154, 37.088120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666162, 0.039992, 0.744734,
		0.743150, -0.119810, -0.658312,
		0.062899, 0.991991, -0.109533,
		31.872341, 34.822750, 37.055260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490269, 34.434475, 37.189758>,  <31.828312, 34.128357, 37.131931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490269, 34.434475, 37.189758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280731, 34.762093, 37.283356>,  <32.155006, 34.958664, 37.339516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280731, 34.762093, 37.283356>,  <32.490269, 34.434475, 37.189758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280731, 34.762093, 37.283356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664278, 0.220842, 0.714117,
		0.533215, 0.529529, -0.659758,
		-0.523848, 0.819041, 0.233998,
		32.123577, 35.007805, 37.353554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885948, 35.096241, 37.193546>,  <32.490269, 34.434475, 37.189758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885948, 35.096241, 37.193546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595657, 35.106808, 37.468536>,  <32.421482, 35.113148, 37.633530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595657, 35.106808, 37.468536>,  <32.885948, 35.096241, 37.193546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595657, 35.106808, 37.468536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687934, 0.040124, 0.724663,
		-0.008439, 0.998845, -0.047294,
		-0.725724, 0.026419, 0.687479,
		32.377941, 35.114735, 37.674782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984264, 34.969296, 36.469143>,  <32.885948, 35.096241, 37.193546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984264, 34.969296, 36.469143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629272, 34.796169, 36.405842>,  <32.416279, 34.692291, 36.367859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629272, 34.796169, 36.405842>,  <32.984264, 34.969296, 36.469143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629272, 34.796169, 36.405842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421947, -0.625074, -0.656691,
		0.185308, -0.649576, 0.737368,
		-0.887481, -0.432820, -0.158256,
		32.363029, 34.666325, 36.358364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416412, 35.258556, 35.977375>,  <32.984264, 34.969296, 36.469143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416412, 35.258556, 35.977375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748596, 35.464035, 36.063587>,  <32.947906, 35.587322, 36.115314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748596, 35.464035, 36.063587>,  <32.416412, 35.258556, 35.977375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748596, 35.464035, 36.063587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548220, -0.822335, -0.152382,
		0.098956, 0.244703, -0.964535,
		0.830459, 0.513699, 0.215526,
		32.997734, 35.618145, 36.128246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759861, 35.297558, 35.320869>,  <32.416412, 35.258556, 35.977375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759861, 35.297558, 35.320869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978874, 35.278004, 35.655010>,  <33.110283, 35.266273, 35.855495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978874, 35.278004, 35.655010>,  <32.759861, 35.297558, 35.320869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978874, 35.278004, 35.655010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303446, -0.918741, -0.252656,
		0.779824, 0.391823, -0.488210,
		0.547535, -0.048881, 0.835354,
		33.143135, 35.263340, 35.905617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356323, 35.231567, 35.113487>,  <32.759861, 35.297558, 35.320869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356323, 35.231567, 35.113487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293175, 34.993561, 35.428707>,  <33.255287, 34.850758, 35.617840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293175, 34.993561, 35.428707>,  <33.356323, 35.231567, 35.113487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293175, 34.993561, 35.428707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292467, -0.790428, -0.538224,
		0.943154, 0.145510, 0.298810,
		-0.157871, -0.595021, 0.788053,
		33.245815, 34.815056, 35.665123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932308, 34.767349, 35.324062>,  <33.356323, 35.231567, 35.113487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932308, 34.767349, 35.324062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575508, 34.603970, 35.401516>,  <33.361427, 34.505939, 35.447987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575508, 34.603970, 35.401516>,  <33.932308, 34.767349, 35.324062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575508, 34.603970, 35.401516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187100, -0.723575, -0.664404,
		0.411486, -0.556422, 0.721854,
		-0.892005, -0.408452, 0.193634,
		33.307907, 34.481434, 35.459606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917671, 34.068157, 35.501968>,  <33.932308, 34.767349, 35.324062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917671, 34.068157, 35.501968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597786, 34.132603, 35.270626>,  <33.405853, 34.171268, 35.131821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597786, 34.132603, 35.270626>,  <33.917671, 34.068157, 35.501968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597786, 34.132603, 35.270626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405210, -0.565979, -0.717964,
		-0.443010, -0.808524, 0.387339,
		-0.799717, 0.161111, -0.578357,
		33.357872, 34.180935, 35.097118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678932, 33.407139, 35.160194>,  <33.917671, 34.068157, 35.501968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678932, 33.407139, 35.160194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541355, 33.696949, 34.921276>,  <33.458809, 33.870834, 34.777924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541355, 33.696949, 34.921276>,  <33.678932, 33.407139, 35.160194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541355, 33.696949, 34.921276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278963, -0.528541, -0.801763,
		-0.896595, -0.442384, -0.020329,
		-0.343942, 0.724528, -0.597297,
		33.438171, 33.914307, 34.742088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566711, 33.104851, 34.562866>,  <33.678932, 33.407139, 35.160194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566711, 33.104851, 34.562866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522591, 33.478363, 34.426701>,  <33.496117, 33.702473, 34.345001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522591, 33.478363, 34.426701>,  <33.566711, 33.104851, 34.562866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522591, 33.478363, 34.426701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031425, -0.339060, -0.940240,
		-0.993401, -0.114408, 0.008055,
		-0.110302, 0.933782, -0.340418,
		33.489502, 33.758499, 34.324574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205742, 32.953281, 33.989281>,  <33.566711, 33.104851, 34.562866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205742, 32.953281, 33.989281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326176, 33.331390, 33.938976>,  <33.398438, 33.558254, 33.908794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326176, 33.331390, 33.938976>,  <33.205742, 32.953281, 33.989281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326176, 33.331390, 33.938976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259514, -0.208126, -0.943046,
		-0.917606, 0.251298, -0.307974,
		0.301083, 0.945269, -0.125763,
		33.416500, 33.614971, 33.901249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077568, 33.102959, 33.359035>,  <33.205742, 32.953281, 33.989281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077568, 33.102959, 33.359035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339977, 33.394016, 33.439201>,  <33.497425, 33.568649, 33.487301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339977, 33.394016, 33.439201>,  <33.077568, 33.102959, 33.359035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339977, 33.394016, 33.439201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327478, -0.035180, -0.944203,
		-0.679990, 0.685056, -0.261366,
		0.656027, 0.727641, 0.200419,
		33.536785, 33.612309, 33.499329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127300, 33.533691, 32.773479>,  <33.077568, 33.102959, 33.359035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127300, 33.533691, 32.773479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469448, 33.643467, 32.949215>,  <33.674736, 33.709332, 33.054657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469448, 33.643467, 32.949215>,  <33.127300, 33.533691, 32.773479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469448, 33.643467, 32.949215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437291, 0.072111, -0.896424,
		-0.277693, 0.958898, -0.058326,
		0.855373, 0.274436, 0.439342,
		33.726059, 33.725800, 33.081017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365971, 34.084946, 32.388519>,  <33.127300, 33.533691, 32.773479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365971, 34.084946, 32.388519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674652, 33.928902, 32.589432>,  <33.859863, 33.835278, 32.709980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674652, 33.928902, 32.589432>,  <33.365971, 34.084946, 32.388519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674652, 33.928902, 32.589432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494347, -0.128922, -0.859651,
		0.400111, 0.911699, 0.093359,
		0.771707, -0.390108, 0.502279,
		33.906166, 33.811871, 32.740116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894657, 34.439953, 32.020996>,  <33.365971, 34.084946, 32.388519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894657, 34.439953, 32.020996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057014, 34.134914, 32.222473>,  <34.154427, 33.951893, 32.343361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057014, 34.134914, 32.222473>,  <33.894657, 34.439953, 32.020996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057014, 34.134914, 32.222473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616039, -0.178815, -0.767151,
		0.675092, 0.621673, 0.397207,
		0.405890, -0.762593, 0.503691,
		34.178783, 33.906136, 32.373581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544212, 34.564159, 32.041340>,  <33.894657, 34.439953, 32.020996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544212, 34.564159, 32.041340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537510, 34.166405, 32.083122>,  <34.533489, 33.927753, 32.108192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537510, 34.166405, 32.083122>,  <34.544212, 34.564159, 32.041340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537510, 34.166405, 32.083122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720092, -0.084480, -0.688717,
		0.693677, 0.063683, 0.717466,
		-0.016752, -0.994388, 0.104459,
		34.532486, 33.868088, 32.114460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227036, 34.449337, 32.158581>,  <34.544212, 34.564159, 32.041340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227036, 34.449337, 32.158581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034721, 34.117222, 32.045826>,  <34.919331, 33.917953, 31.978174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034721, 34.117222, 32.045826>,  <35.227036, 34.449337, 32.158581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034721, 34.117222, 32.045826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682675, -0.152706, -0.714588,
		0.550271, -0.536000, 0.640239,
		-0.480788, -0.830292, -0.281884,
		34.890484, 33.868134, 31.961260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794449, 33.924156, 32.069263>,  <35.227036, 34.449337, 32.158581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794449, 33.924156, 32.069263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483994, 33.774933, 31.865917>,  <35.297722, 33.685398, 31.743908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483994, 33.774933, 31.865917>,  <35.794449, 33.924156, 32.069263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483994, 33.774933, 31.865917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624638, -0.344619, -0.700760,
		0.086228, -0.861434, 0.500496,
		-0.776139, -0.373054, -0.508369,
		35.251152, 33.663017, 31.713406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722309, 33.181255, 32.031628>,  <35.794449, 33.924156, 32.069263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722309, 33.181255, 32.031628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579693, 33.348003, 31.697180>,  <35.494122, 33.448051, 31.496511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579693, 33.348003, 31.697180>,  <35.722309, 33.181255, 32.031628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579693, 33.348003, 31.697180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565714, -0.615896, -0.548307,
		-0.743536, -0.668498, -0.016238,
		-0.356542, 0.416872, -0.836119,
		35.472729, 33.473064, 31.446344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877205, 32.630234, 31.584784>,  <35.722309, 33.181255, 32.031628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877205, 32.630234, 31.584784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737442, 32.902222, 31.326929>,  <35.653584, 33.065414, 31.172216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737442, 32.902222, 31.326929>,  <35.877205, 32.630234, 31.584784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737442, 32.902222, 31.326929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486197, -0.456547, -0.745102,
		-0.800953, -0.573766, -0.171077,
		-0.349410, 0.679968, -0.644637,
		35.632618, 33.106213, 31.133537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637150, 32.248169, 30.897060>,  <35.877205, 32.630234, 31.584784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637150, 32.248169, 30.897060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686058, 32.631767, 30.794788>,  <35.715405, 32.861927, 30.733425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686058, 32.631767, 30.794788>,  <35.637150, 32.248169, 30.897060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686058, 32.631767, 30.794788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529512, -0.280918, -0.800439,
		-0.839444, -0.037515, -0.542149,
		0.122271, 0.958998, -0.255680,
		35.722740, 32.919468, 30.718084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443581, 32.282784, 30.236637>,  <35.637150, 32.248169, 30.897060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443581, 32.282784, 30.236637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659687, 32.615677, 30.286425>,  <35.789352, 32.815414, 30.316298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659687, 32.615677, 30.286425>,  <35.443581, 32.282784, 30.236637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659687, 32.615677, 30.286425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500322, -0.198762, -0.842717,
		-0.676601, 0.517567, -0.523771,
		0.540268, 0.832237, 0.124467,
		35.821766, 32.865349, 30.323765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713718, 32.413776, 29.557793>,  <35.443581, 32.282784, 30.236637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713718, 32.413776, 29.557793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944546, 32.669090, 29.761593>,  <36.083042, 32.822277, 29.883873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944546, 32.669090, 29.761593>,  <35.713718, 32.413776, 29.557793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944546, 32.669090, 29.761593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693864, -0.054128, -0.718069,
		-0.430755, 0.767895, -0.474118,
		0.577064, 0.638285, 0.509499,
		36.117664, 32.860577, 29.914442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873272, 32.950996, 29.103678>,  <35.713718, 32.413776, 29.557793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873272, 32.950996, 29.103678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151245, 32.952576, 29.391304>,  <36.318027, 32.953522, 29.563879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151245, 32.952576, 29.391304>,  <35.873272, 32.950996, 29.103678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151245, 32.952576, 29.391304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716648, -0.085902, -0.692125,
		0.059039, 0.996296, -0.062523,
		0.694932, 0.003945, 0.719065,
		36.359726, 32.953758, 29.607023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303528, 33.211330, 28.728676>,  <35.873272, 32.950996, 29.103678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303528, 33.211330, 28.728676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519875, 33.035259, 29.015371>,  <36.649681, 32.929619, 29.187387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519875, 33.035259, 29.015371>,  <36.303528, 33.211330, 28.728676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519875, 33.035259, 29.015371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734780, -0.167443, -0.657314,
		0.409346, 0.882161, 0.232868,
		0.540864, -0.440176, 0.716736,
		36.682133, 32.903206, 29.230392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967136, 33.363041, 28.560604>,  <36.303528, 33.211330, 28.728676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967136, 33.363041, 28.560604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015442, 33.057487, 28.814186>,  <37.044426, 32.874157, 28.966335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015442, 33.057487, 28.814186>,  <36.967136, 33.363041, 28.560604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015442, 33.057487, 28.814186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778742, -0.323142, -0.537717,
		0.615610, 0.558629, 0.555840,
		0.120768, -0.763880, 0.633957,
		37.051674, 32.828323, 29.004374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604221, 33.346989, 28.934847>,  <36.967136, 33.363041, 28.560604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604221, 33.346989, 28.934847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484604, 32.967037, 28.898409>,  <37.412834, 32.739067, 28.876547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484604, 32.967037, 28.898409>,  <37.604221, 33.346989, 28.934847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484604, 32.967037, 28.898409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844955, -0.219231, -0.487842,
		0.443421, -0.222858, 0.868166,
		-0.299048, -0.949880, -0.091094,
		37.394890, 32.682072, 28.871080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260532, 32.929550, 28.954845>,  <37.604221, 33.346989, 28.934847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260532, 32.929550, 28.954845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994598, 32.661873, 28.822079>,  <37.835037, 32.501266, 28.742418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994598, 32.661873, 28.822079>,  <38.260532, 32.929550, 28.954845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994598, 32.661873, 28.822079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691776, -0.383921, -0.611596,
		0.281848, -0.636223, 0.718179,
		-0.664836, -0.669197, -0.331917,
		37.795147, 32.461113, 28.722504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590115, 32.308132, 28.901606>,  <38.260532, 32.929550, 28.954845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590115, 32.308132, 28.901606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262241, 32.264732, 28.676628>,  <38.065517, 32.238693, 28.541641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262241, 32.264732, 28.676628>,  <38.590115, 32.308132, 28.901606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262241, 32.264732, 28.676628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568622, -0.272684, -0.776088,
		-0.069165, -0.955966, 0.285210,
		-0.819686, -0.108499, -0.562444,
		38.016335, 32.232182, 28.507895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589588, 31.597359, 28.571732>,  <38.590115, 32.308132, 28.901606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589588, 31.597359, 28.571732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335098, 31.806396, 28.344709>,  <38.182404, 31.931818, 28.208496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335098, 31.806396, 28.344709>,  <38.589588, 31.597359, 28.571732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335098, 31.806396, 28.344709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451874, -0.343849, -0.823151,
		-0.625327, -0.780169, -0.017382,
		-0.636220, 0.522593, -0.567556,
		38.144234, 31.963175, 28.174442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519642, 31.108109, 28.002333>,  <38.589588, 31.597359, 28.571732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519642, 31.108109, 28.002333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399364, 31.472025, 27.887884>,  <38.327198, 31.690374, 27.819216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399364, 31.472025, 27.887884>,  <38.519642, 31.108109, 28.002333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399364, 31.472025, 27.887884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345461, -0.175728, -0.921833,
		-0.888954, -0.376033, -0.261457,
		-0.300695, 0.909790, -0.286119,
		38.309155, 31.744963, 27.802048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382256, 31.062830, 27.332405>,  <38.519642, 31.108109, 28.002333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382256, 31.062830, 27.332405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377270, 31.460222, 27.377735>,  <38.374279, 31.698658, 27.404934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377270, 31.460222, 27.377735>,  <38.382256, 31.062830, 27.332405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377270, 31.460222, 27.377735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236945, 0.113042, -0.964924,
		-0.971443, 0.014824, -0.236809,
		-0.012465, 0.993480, 0.113327,
		38.373531, 31.758266, 27.411734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001953, 31.274078, 26.855484>,  <38.382256, 31.062830, 27.332405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001953, 31.274078, 26.855484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241631, 31.586445, 26.926065>,  <38.385437, 31.773865, 26.968414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241631, 31.586445, 26.926065>,  <38.001953, 31.274078, 26.855484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241631, 31.586445, 26.926065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050478, 0.183109, -0.981796,
		-0.799011, 0.597193, 0.070299,
		0.599194, 0.780917, 0.176452,
		38.421391, 31.820721, 26.979000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800179, 31.742067, 26.273460>,  <38.001953, 31.274078, 26.855484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800179, 31.742067, 26.273460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143970, 31.876160, 26.427818>,  <38.350246, 31.956615, 26.520433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143970, 31.876160, 26.427818>,  <37.800179, 31.742067, 26.273460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143970, 31.876160, 26.427818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364371, 0.127681, -0.922459,
		-0.358509, 0.933444, -0.012410,
		0.859480, 0.335232, 0.385895,
		38.401814, 31.976728, 26.543587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918228, 32.267719, 25.826414>,  <37.800179, 31.742067, 26.273460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918228, 32.267719, 25.826414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271847, 32.198746, 26.000189>,  <38.484016, 32.157364, 26.104454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271847, 32.198746, 26.000189>,  <37.918228, 32.267719, 25.826414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271847, 32.198746, 26.000189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457707, 0.131010, -0.879398,
		0.094720, 0.976271, 0.194741,
		0.884043, -0.172431, 0.434436,
		38.537060, 32.147015, 26.130520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432487, 32.911003, 25.788177>,  <37.918228, 32.267719, 25.826414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432487, 32.911003, 25.788177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639805, 32.572376, 25.836664>,  <38.764194, 32.369198, 25.865755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639805, 32.572376, 25.836664>,  <38.432487, 32.911003, 25.788177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639805, 32.572376, 25.836664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627264, 0.279965, -0.726746,
		0.581306, 0.452699, 0.676126,
		0.518289, -0.846571, 0.121216,
		38.795292, 32.318405, 25.873030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079136, 33.140343, 25.787354>,  <38.432487, 32.911003, 25.788177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079136, 33.140343, 25.787354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120354, 32.751575, 25.702738>,  <39.145084, 32.518314, 25.651968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120354, 32.751575, 25.702738>,  <39.079136, 33.140343, 25.787354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120354, 32.751575, 25.702738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834421, 0.200225, -0.513469,
		0.541408, -0.123604, 0.831625,
		0.103045, -0.971922, -0.211542,
		39.151268, 32.459999, 25.639275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768650, 33.163891, 25.840160>,  <39.079136, 33.140343, 25.787354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768650, 33.163891, 25.840160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697762, 32.809494, 25.668764>,  <39.655228, 32.596855, 25.565926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697762, 32.809494, 25.668764>,  <39.768650, 33.163891, 25.840160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697762, 32.809494, 25.668764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894829, 0.036195, -0.444940,
		0.409724, -0.462280, 0.786399,
		-0.177223, -0.885995, -0.428491,
		39.644596, 32.543697, 25.540216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428608, 32.719326, 25.822893>,  <39.768650, 33.163891, 25.840160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428608, 32.719326, 25.822893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184700, 32.629223, 25.518936>,  <40.038353, 32.575161, 25.336561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184700, 32.629223, 25.518936>,  <40.428608, 32.719326, 25.822893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184700, 32.629223, 25.518936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787222, -0.060881, -0.613657,
		0.091967, -0.972396, 0.214450,
		-0.609773, -0.225256, -0.759892,
		40.001766, 32.561646, 25.290968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787300, 32.196529, 25.503616>,  <40.428608, 32.719326, 25.822893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787300, 32.196529, 25.503616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523838, 32.272434, 25.212366>,  <40.365761, 32.317978, 25.037617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523838, 32.272434, 25.212366>,  <40.787300, 32.196529, 25.503616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523838, 32.272434, 25.212366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728898, -0.079280, -0.680017,
		-0.186770, -0.978623, -0.086102,
		-0.658654, 0.189766, -0.728123,
		40.326241, 32.329365, 24.993929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872478, 31.688330, 24.979164>,  <40.787300, 32.196529, 25.503616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872478, 31.688330, 24.979164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702393, 32.013569, 24.820137>,  <40.600342, 32.208714, 24.724720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702393, 32.013569, 24.820137>,  <40.872478, 31.688330, 24.979164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702393, 32.013569, 24.820137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730566, 0.049039, -0.681079,
		-0.534288, -0.580056, -0.614874,
		-0.425217, 0.813099, -0.397568,
		40.574829, 32.257500, 24.700867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004761, 31.535727, 24.286589>,  <40.872478, 31.688330, 24.979164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004761, 31.535727, 24.286589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883755, 31.916637, 24.270325>,  <40.811150, 32.145184, 24.260567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883755, 31.916637, 24.270325>,  <41.004761, 31.535727, 24.286589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883755, 31.916637, 24.270325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560981, 0.143397, -0.815314,
		-0.770574, -0.269456, -0.577589,
		-0.302515, 0.952277, -0.040662,
		40.792999, 32.202320, 24.258125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933140, 31.706806, 23.569756>,  <41.004761, 31.535727, 24.286589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933140, 31.706806, 23.569756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015236, 32.051449, 23.755447>,  <41.064495, 32.258236, 23.866863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015236, 32.051449, 23.755447>,  <40.933140, 31.706806, 23.569756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015236, 32.051449, 23.755447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617941, 0.253747, -0.744151,
		-0.758962, 0.439600, -0.480341,
		0.205244, 0.861605, 0.464232,
		41.076809, 32.309929, 23.894716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969131, 32.070751, 23.041056>,  <40.933140, 31.706806, 23.569756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969131, 32.070751, 23.041056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149895, 32.269154, 23.337637>,  <41.258354, 32.388195, 23.515585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149895, 32.269154, 23.337637>,  <40.969131, 32.070751, 23.041056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149895, 32.269154, 23.337637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788134, 0.167354, -0.592315,
		-0.417880, 0.852036, -0.315294,
		0.451909, 0.496011, 0.741453,
		41.285469, 32.417957, 23.560072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129673, 32.720406, 22.770918>,  <40.969131, 32.070751, 23.041056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129673, 32.720406, 22.770918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375465, 32.656120, 23.079876>,  <41.522942, 32.617550, 23.265251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375465, 32.656120, 23.079876>,  <41.129673, 32.720406, 22.770918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375465, 32.656120, 23.079876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787299, 0.187940, -0.587230,
		-0.050790, 0.968943, 0.242012,
		0.614477, -0.160710, 0.772393,
		41.559807, 32.607906, 23.311594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627331, 33.213341, 22.734507>,  <41.129673, 32.720406, 22.770918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627331, 33.213341, 22.734507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779724, 32.893532, 22.920240>,  <41.871162, 32.701645, 23.031681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779724, 32.893532, 22.920240>,  <41.627331, 33.213341, 22.734507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779724, 32.893532, 22.920240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876862, 0.153196, -0.455680,
		0.293193, 0.580766, 0.759440,
		0.380986, -0.799526, 0.464335,
		41.894020, 32.653675, 23.059542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296425, 33.409447, 22.744936>,  <41.627331, 33.213341, 22.734507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296425, 33.409447, 22.744936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307941, 33.020222, 22.836426>,  <42.314850, 32.786686, 22.891319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307941, 33.020222, 22.836426>,  <42.296425, 33.409447, 22.744936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307941, 33.020222, 22.836426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903873, -0.072368, -0.421635,
		0.426830, 0.218878, 0.877444,
		0.028787, -0.973065, 0.228727,
		42.316578, 32.728302, 22.905045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026497, 33.223907, 22.964884>,  <42.296425, 33.409447, 22.744936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026497, 33.223907, 22.964884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864452, 32.871761, 22.866217>,  <42.767227, 32.660473, 22.807016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864452, 32.871761, 22.866217>,  <43.026497, 33.223907, 22.964884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864452, 32.871761, 22.866217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770389, -0.183415, -0.610623,
		0.492328, -0.437400, 0.752526,
		-0.405111, -0.880364, -0.246667,
		42.742920, 32.607651, 22.792217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525219, 32.601521, 23.160160>,  <43.026497, 33.223907, 22.964884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525219, 32.601521, 23.160160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276127, 32.525345, 22.856598>,  <43.126671, 32.479637, 22.674461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276127, 32.525345, 22.856598>,  <43.525219, 32.601521, 23.160160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276127, 32.525345, 22.856598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775549, -0.278641, -0.566465,
		-0.103583, -0.941324, 0.321215,
		-0.622731, -0.190442, -0.758906,
		43.089306, 32.468212, 22.628925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875751, 32.072880, 22.812078>,  <43.525219, 32.601521, 23.160160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875751, 32.072880, 22.812078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618439, 32.193134, 22.530424>,  <43.464050, 32.265285, 22.361431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618439, 32.193134, 22.530424>,  <43.875751, 32.072880, 22.812078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618439, 32.193134, 22.530424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728572, -0.042283, -0.683662,
		-0.235305, -0.952802, -0.191833,
		-0.643283, 0.300633, -0.704135,
		43.425453, 32.283325, 22.319183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890762, 31.580397, 22.220112>,  <43.875751, 32.072880, 22.812078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890762, 31.580397, 22.220112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726524, 31.911900, 22.068022>,  <43.627979, 32.110802, 21.976768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726524, 31.911900, 22.068022>,  <43.890762, 31.580397, 22.220112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726524, 31.911900, 22.068022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484043, -0.155276, -0.861157,
		-0.772730, -0.537635, -0.337398,
		-0.410598, 0.828757, -0.380225,
		43.603344, 32.160526, 21.953955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847984, 31.419987, 21.494745>,  <43.890762, 31.580397, 22.220112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847984, 31.419987, 21.494745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811214, 31.818153, 21.505316>,  <43.789154, 32.057053, 21.511658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811214, 31.818153, 21.505316>,  <43.847984, 31.419987, 21.494745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811214, 31.818153, 21.505316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391106, 0.060498, -0.918355,
		-0.915744, -0.074080, -0.394874,
		-0.091921, 0.995416, 0.026427,
		43.783638, 32.116779, 21.513245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511318, 31.753887, 21.474401>,  <43.847984, 31.419987, 21.494745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511318, 31.753887, 21.474401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320015, 31.712040, 21.125614>,  <44.205235, 31.686932, 20.916342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320015, 31.712040, 21.125614>,  <44.511318, 31.753887, 21.474401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320015, 31.712040, 21.125614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487550, 0.794194, -0.362699,
		0.730456, -0.598590, -0.328823,
		-0.478257, -0.104618, -0.871966,
		44.176537, 31.680655, 20.864025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048981, 31.980452, 20.864786>,  <44.511318, 31.753887, 21.474401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048981, 31.980452, 20.864786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663902, 32.015656, 20.762432>,  <44.432858, 32.036777, 20.701019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663902, 32.015656, 20.762432>,  <45.048981, 31.980452, 20.864786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663902, 32.015656, 20.762432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194279, 0.883041, -0.427193,
		0.188360, -0.460969, -0.867195,
		-0.962692, 0.088012, -0.255886,
		44.375095, 32.042061, 20.685667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.278801, 32.313419, 20.287685>,  <45.048981, 31.980452, 20.864786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.278801, 32.313419, 20.287685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.904583, 32.356594, 20.422211>,  <44.680054, 32.382500, 20.502926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.904583, 32.356594, 20.422211>,  <45.278801, 32.313419, 20.287685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904583, 32.356594, 20.422211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020454, 0.967119, -0.253503,
		-0.352619, -0.230284, -0.906989,
		-0.935544, 0.107941, 0.336314,
		44.623920, 32.388977, 20.523106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707855, 32.384350, 19.769968>,  <45.278801, 32.313419, 20.287685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707855, 32.384350, 19.769968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652493, 32.606064, 20.098263>,  <44.619274, 32.739094, 20.295238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652493, 32.606064, 20.098263>,  <44.707855, 32.384350, 19.769968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652493, 32.606064, 20.098263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123590, 0.831901, -0.540987,
		-0.982633, 0.026556, -0.183649,
		-0.138411, 0.554288, 0.820735,
		44.610970, 32.772350, 20.344484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.270145, 33.007713, 19.664642>,  <44.707855, 32.384350, 19.769968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.270145, 33.007713, 19.664642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532833, 33.118088, 19.945379>,  <44.690445, 33.184311, 20.113821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532833, 33.118088, 19.945379>,  <44.270145, 33.007713, 19.664642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532833, 33.118088, 19.945379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373496, 0.689494, -0.620564,
		-0.655152, 0.669670, 0.349740,
		0.656716, 0.275937, 0.701842,
		44.729847, 33.200871, 20.155931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096935, 33.636444, 19.871834>,  <44.270145, 33.007713, 19.664642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096935, 33.636444, 19.871834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.490059, 33.572029, 19.907942>,  <44.725933, 33.533379, 19.929605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.490059, 33.572029, 19.907942>,  <44.096935, 33.636444, 19.871834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490059, 33.572029, 19.907942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182094, 0.765170, -0.617540,
		0.030376, 0.623363, 0.781342,
		0.982812, -0.161036, 0.090268,
		44.784901, 33.523720, 19.935022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.375954, 34.211254, 20.215616>,  <44.096935, 33.636444, 19.871834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.375954, 34.211254, 20.215616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613911, 34.029434, 19.950439>,  <44.756683, 33.920341, 19.791334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613911, 34.029434, 19.950439>,  <44.375954, 34.211254, 20.215616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613911, 34.029434, 19.950439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003341, 0.826145, -0.563448,
		0.803798, 0.332976, 0.492986,
		0.594893, -0.454545, -0.662941,
		44.792377, 33.893070, 19.751556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127537, 34.231949, 20.450493>,  <44.375954, 34.211254, 20.215616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127537, 34.231949, 20.450493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254826, 34.148499, 20.080582>,  <45.331200, 34.098431, 19.858635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254826, 34.148499, 20.080582>,  <45.127537, 34.231949, 20.450493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254826, 34.148499, 20.080582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345456, -0.933933, 0.091814,
		-0.882834, 0.290253, -0.369266,
		0.318221, -0.208621, -0.924777,
		45.350292, 34.085911, 19.803148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.663120, 34.079258, 21.011045>,  <45.127537, 34.231949, 20.450493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.663120, 34.079258, 21.011045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.507088, 34.415417, 20.860548>,  <45.413467, 34.617111, 20.770248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.507088, 34.415417, 20.860548>,  <45.663120, 34.079258, 21.011045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.507088, 34.415417, 20.860548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599757, 0.078141, 0.796358,
		0.698660, 0.536302, 0.473555,
		-0.390084, 0.840401, -0.376245,
		45.390064, 34.667538, 20.747675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.645355, 34.679890, 21.579092>,  <45.663120, 34.079258, 21.011045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.645355, 34.679890, 21.579092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359116, 34.676952, 21.299704>,  <45.187370, 34.675190, 21.132071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359116, 34.676952, 21.299704>,  <45.645355, 34.679890, 21.579092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359116, 34.676952, 21.299704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693097, 0.131679, 0.708715,
		0.086770, 0.991266, -0.099318,
		-0.715603, -0.007342, -0.698469,
		45.144436, 34.674751, 21.090162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200760, 35.262878, 21.699665>,  <45.645355, 34.679890, 21.579092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200760, 35.262878, 21.699665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024345, 34.961678, 21.504330>,  <44.918499, 34.780956, 21.387129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024345, 34.961678, 21.504330>,  <45.200760, 35.262878, 21.699665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.024345, 34.961678, 21.504330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812227, 0.103401, 0.574104,
		-0.381807, 0.649842, -0.657212,
		-0.441034, -0.753003, -0.488340,
		44.892036, 34.735775, 21.357828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608593, 35.476055, 21.295231>,  <45.200760, 35.262878, 21.699665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608593, 35.476055, 21.295231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.566940, 35.095074, 21.409763>,  <44.541950, 34.866486, 21.478483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.566940, 35.095074, 21.409763>,  <44.608593, 35.476055, 21.295231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566940, 35.095074, 21.409763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885333, 0.219943, 0.409646,
		-0.453146, -0.210842, -0.866143,
		-0.104132, -0.952455, 0.286331,
		44.535702, 34.809338, 21.495663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979362, 35.209316, 21.026634>,  <44.608593, 35.476055, 21.295231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979362, 35.209316, 21.026634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077217, 34.990597, 21.346926>,  <44.135929, 34.859364, 21.539101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077217, 34.990597, 21.346926>,  <43.979362, 35.209316, 21.026634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077217, 34.990597, 21.346926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949801, 0.030957, 0.311321,
		-0.195017, -0.836693, -0.511775,
		0.244637, -0.546798, 0.800728,
		44.150608, 34.826557, 21.587145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423618, 34.824013, 21.178623>,  <43.979362, 35.209316, 21.026634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423618, 34.824013, 21.178623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603481, 34.811783, 21.535694>,  <43.711399, 34.804447, 21.749937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603481, 34.811783, 21.535694>,  <43.423618, 34.824013, 21.178623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603481, 34.811783, 21.535694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869998, 0.211324, 0.445473,
		-0.202263, -0.976938, 0.068426,
		0.449659, -0.030572, 0.892677,
		43.738380, 34.802612, 21.803497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954449, 34.511009, 21.562019>,  <43.423618, 34.824013, 21.178623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954449, 34.511009, 21.562019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190475, 34.707848, 21.818041>,  <43.332092, 34.825951, 21.971653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190475, 34.707848, 21.818041>,  <42.954449, 34.511009, 21.562019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190475, 34.707848, 21.818041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765526, 0.089140, 0.637201,
		0.256509, -0.865965, 0.429310,
		0.590062, 0.492095, 0.640054,
		43.367493, 34.855476, 22.010057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717800, 34.303623, 22.242125>,  <42.954449, 34.511009, 21.562019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717800, 34.303623, 22.242125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957447, 34.613762, 22.322016>,  <43.101234, 34.799847, 22.369951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957447, 34.613762, 22.322016>,  <42.717800, 34.303623, 22.242125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957447, 34.613762, 22.322016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596477, 0.265815, 0.757336,
		0.534108, -0.572868, 0.621732,
		0.599119, 0.775348, 0.199729,
		43.137184, 34.846367, 22.381935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866123, 34.275642, 23.015205>,  <42.717800, 34.303623, 22.242125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866123, 34.275642, 23.015205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989468, 34.643642, 22.918449>,  <43.063473, 34.864445, 22.860395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989468, 34.643642, 22.918449>,  <42.866123, 34.275642, 23.015205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989468, 34.643642, 22.918449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550223, 0.379923, 0.743582,
		0.775997, -0.096195, 0.623358,
		0.308357, 0.920003, -0.241890,
		43.081974, 34.919643, 22.845882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042759, 34.603607, 23.593472>,  <42.866123, 34.275642, 23.015205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042759, 34.603607, 23.593472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933121, 34.888176, 23.334627>,  <42.867336, 35.058918, 23.179321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933121, 34.888176, 23.334627>,  <43.042759, 34.603607, 23.593472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933121, 34.888176, 23.334627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510700, 0.462487, 0.724770,
		0.814897, 0.529135, 0.236557,
		-0.274097, 0.711422, -0.647109,
		42.850891, 35.101604, 23.140495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225533, 35.181690, 23.824646>,  <43.042759, 34.603607, 23.593472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225533, 35.181690, 23.824646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941795, 35.321457, 23.579781>,  <42.771553, 35.405315, 23.432861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941795, 35.321457, 23.579781>,  <43.225533, 35.181690, 23.824646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941795, 35.321457, 23.579781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460982, 0.427035, 0.777906,
		0.533229, 0.833996, -0.141838,
		-0.709340, 0.349417, -0.612164,
		42.728992, 35.426281, 23.396132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059677, 35.830143, 24.210022>,  <43.225533, 35.181690, 23.824646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059677, 35.830143, 24.210022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763584, 35.746391, 23.954454>,  <42.585926, 35.696140, 23.801115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763584, 35.746391, 23.954454>,  <43.059677, 35.830143, 24.210022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763584, 35.746391, 23.954454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671667, 0.273065, 0.688693,
		0.030270, 0.938934, -0.342763,
		-0.740234, -0.209376, -0.638917,
		42.541515, 35.683578, 23.762779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584721, 36.332218, 24.351912>,  <43.059677, 35.830143, 24.210022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584721, 36.332218, 24.351912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362904, 36.077892, 24.137167>,  <42.229813, 35.925297, 24.008320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362904, 36.077892, 24.137167>,  <42.584721, 36.332218, 24.351912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362904, 36.077892, 24.137167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745614, 0.093163, 0.659834,
		-0.369518, 0.766197, -0.525737,
		-0.554542, -0.635817, -0.536861,
		42.196541, 35.887146, 23.976109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951057, 36.649021, 24.296286>,  <42.584721, 36.332218, 24.351912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951057, 36.649021, 24.296286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894741, 36.256912, 24.240797>,  <41.860950, 36.021648, 24.207504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894741, 36.256912, 24.240797>,  <41.951057, 36.649021, 24.296286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894741, 36.256912, 24.240797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752166, 0.014802, 0.658807,
		-0.643757, 0.197100, -0.739411,
		-0.140796, -0.980272, -0.138723,
		41.852501, 35.962830, 24.199181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321899, 36.594952, 24.113667>,  <41.951057, 36.649021, 24.296286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321899, 36.594952, 24.113667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423550, 36.242870, 24.273996>,  <41.484539, 36.031620, 24.370195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423550, 36.242870, 24.273996>,  <41.321899, 36.594952, 24.113667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423550, 36.242870, 24.273996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826274, 0.017813, 0.562987,
		-0.502683, -0.474263, -0.722762,
		0.254129, -0.880203, 0.400825,
		41.499790, 35.978809, 24.394243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643879, 36.191902, 24.137508>,  <41.321899, 36.594952, 24.113667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643879, 36.191902, 24.137508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894421, 36.017620, 24.396069>,  <41.044746, 35.913052, 24.551205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894421, 36.017620, 24.396069>,  <40.643879, 36.191902, 24.137508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894421, 36.017620, 24.396069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751516, -0.117185, 0.649224,
		-0.207125, -0.892426, -0.400842,
		0.626358, -0.435710, 0.646400,
		41.082329, 35.886906, 24.589989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445263, 35.485146, 24.251638>,  <40.643879, 36.191902, 24.137508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445263, 35.485146, 24.251638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600060, 35.679802, 24.564924>,  <40.692936, 35.796597, 24.752895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600060, 35.679802, 24.564924>,  <40.445263, 35.485146, 24.251638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600060, 35.679802, 24.564924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845995, -0.150491, 0.511513,
		0.366789, -0.860543, 0.353457,
		0.386987, 0.486640, 0.783213,
		40.716156, 35.825794, 24.799889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344440, 35.073338, 24.829189>,  <40.445263, 35.485146, 24.251638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344440, 35.073338, 24.829189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380474, 35.449791, 24.959515>,  <40.402096, 35.675663, 25.037710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380474, 35.449791, 24.959515>,  <40.344440, 35.073338, 24.829189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380474, 35.449791, 24.959515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842185, -0.102637, 0.529330,
		0.531610, -0.322080, 0.783362,
		0.090085, 0.941132, 0.325814,
		40.407501, 35.732132, 25.057259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101570, 34.975845, 25.419390>,  <40.344440, 35.073338, 24.829189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101570, 34.975845, 25.419390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071449, 35.374107, 25.397499>,  <40.053375, 35.613064, 25.384365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071449, 35.374107, 25.397499>,  <40.101570, 34.975845, 25.419390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071449, 35.374107, 25.397499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904070, -0.045014, 0.425008,
		0.420699, 0.081480, 0.903534,
		-0.075301, 0.995658, -0.054727,
		40.048859, 35.672806, 25.381081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998611, 35.297314, 26.158348>,  <40.101570, 34.975845, 25.419390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998611, 35.297314, 26.158348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858715, 35.563961, 25.895046>,  <39.774776, 35.723949, 25.737064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858715, 35.563961, 25.895046>,  <39.998611, 35.297314, 26.158348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858715, 35.563961, 25.895046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808145, 0.140751, 0.571918,
		0.473903, 0.731987, 0.489501,
		-0.349739, 0.666622, -0.658254,
		39.753792, 35.763947, 25.697571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046268, 35.912712, 26.483904>,  <39.998611, 35.297314, 26.158348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046268, 35.912712, 26.483904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765976, 35.959846, 26.202454>,  <39.597801, 35.988129, 26.033583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765976, 35.959846, 26.202454>,  <40.046268, 35.912712, 26.483904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765976, 35.959846, 26.202454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658523, 0.272574, 0.701463,
		0.274450, 0.954892, -0.113402,
		-0.700731, 0.117839, -0.703626,
		39.555756, 35.995197, 25.991365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691078, 36.566540, 26.735199>,  <40.046268, 35.912712, 26.483904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691078, 36.566540, 26.735199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431076, 36.391533, 26.486662>,  <39.275074, 36.286530, 26.337540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431076, 36.391533, 26.486662>,  <39.691078, 36.566540, 26.735199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431076, 36.391533, 26.486662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758204, 0.318317, 0.569035,
		-0.051179, 0.840982, -0.538637,
		-0.650005, -0.437520, -0.621345,
		39.236073, 36.260277, 26.300259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074471, 37.004749, 26.755507>,  <39.691078, 36.566540, 26.735199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074471, 37.004749, 26.755507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948772, 36.663536, 26.588854>,  <38.873352, 36.458809, 26.488863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948772, 36.663536, 26.588854>,  <39.074471, 37.004749, 26.755507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948772, 36.663536, 26.588854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747909, -0.047847, 0.662075,
		-0.584707, 0.519656, -0.622956,
		-0.314245, -0.853034, -0.416632,
		38.854500, 36.407627, 26.463863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411327, 37.131660, 26.531591>,  <39.074471, 37.004749, 26.755507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411327, 37.131660, 26.531591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450245, 36.737331, 26.586285>,  <38.473595, 36.500736, 26.619101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450245, 36.737331, 26.586285>,  <38.411327, 37.131660, 26.531591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450245, 36.737331, 26.586285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813332, 0.000427, 0.581800,
		-0.573608, -0.167812, -0.801756,
		0.097291, -0.985819, 0.136732,
		38.479431, 36.441586, 26.627304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762638, 36.822170, 26.603018>,  <38.411327, 37.131660, 26.531591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762638, 36.822170, 26.603018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992558, 36.530262, 26.751091>,  <38.130508, 36.355118, 26.839935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992558, 36.530262, 26.751091>,  <37.762638, 36.822170, 26.603018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992558, 36.530262, 26.751091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685693, -0.182672, 0.704596,
		-0.446574, -0.658833, -0.605401,
		0.574801, -0.729774, 0.370180,
		38.164997, 36.311329, 26.862144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368862, 36.260303, 26.635408>,  <37.762638, 36.822170, 26.603018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368862, 36.260303, 26.635408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668945, 36.209019, 26.894867>,  <37.848995, 36.178249, 27.050543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668945, 36.209019, 26.894867>,  <37.368862, 36.260303, 26.635408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668945, 36.209019, 26.894867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656337, -0.263122, 0.707098,
		0.080016, -0.956205, -0.281547,
		0.750213, -0.128211, 0.648647,
		37.894009, 36.170555, 27.089460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036388, 35.905647, 27.171539>,  <37.368862, 36.260303, 26.635408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036388, 35.905647, 27.171539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384441, 35.987743, 27.350754>,  <37.593273, 36.037003, 27.458282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384441, 35.987743, 27.350754>,  <37.036388, 35.905647, 27.171539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384441, 35.987743, 27.350754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442928, -0.072861, 0.893591,
		0.216048, -0.975995, 0.027508,
		0.870136, 0.205243, 0.448038,
		37.645481, 36.049316, 27.485165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024139, 35.387329, 27.718128>,  <37.036388, 35.905647, 27.171539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024139, 35.387329, 27.718128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287041, 35.681587, 27.783676>,  <37.444782, 35.858143, 27.823004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287041, 35.681587, 27.783676>,  <37.024139, 35.387329, 27.718128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287041, 35.681587, 27.783676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230972, -0.010360, 0.972905,
		0.717409, -0.677290, 0.163104,
		0.657249, 0.735643, 0.163868,
		37.484215, 35.902279, 27.832836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351974, 35.154018, 28.249542>,  <37.024139, 35.387329, 27.718128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351974, 35.154018, 28.249542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402504, 35.550671, 28.238836>,  <37.432819, 35.788662, 28.232412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402504, 35.550671, 28.238836>,  <37.351974, 35.154018, 28.249542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402504, 35.550671, 28.238836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320704, 0.066355, 0.944853,
		0.938718, -0.110770, 0.326401,
		0.126320, 0.991628, -0.026765,
		37.440399, 35.848160, 28.230806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765385, 35.340141, 28.875957>,  <37.351974, 35.154018, 28.249542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765385, 35.340141, 28.875957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538170, 35.649387, 28.763083>,  <37.401840, 35.834934, 28.695358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538170, 35.649387, 28.763083>,  <37.765385, 35.340141, 28.875957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538170, 35.649387, 28.763083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381904, 0.056112, 0.922497,
		0.729032, 0.631777, 0.263382,
		-0.568033, 0.773117, -0.282185,
		37.367760, 35.881321, 28.678427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921707, 35.826141, 29.333963>,  <37.765385, 35.340141, 28.875957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921707, 35.826141, 29.333963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572449, 35.930256, 29.169104>,  <37.362892, 35.992725, 29.070187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572449, 35.930256, 29.169104>,  <37.921707, 35.826141, 29.333963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572449, 35.930256, 29.169104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433609, -0.028426, 0.900652,
		0.222711, 0.965113, 0.137682,
		-0.873145, 0.260285, -0.412151,
		37.310505, 36.008343, 29.045458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678959, 36.363632, 29.701630>,  <37.921707, 35.826141, 29.333963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678959, 36.363632, 29.701630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340382, 36.260895, 29.515053>,  <37.137238, 36.199253, 29.403107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340382, 36.260895, 29.515053>,  <37.678959, 36.363632, 29.701630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340382, 36.260895, 29.515053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525169, 0.257992, 0.810949,
		-0.087946, 0.931382, -0.353260,
		-0.846441, -0.256841, -0.466444,
		37.086449, 36.183842, 29.375120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111122, 36.779869, 29.926899>,  <37.678959, 36.363632, 29.701630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111122, 36.779869, 29.926899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910007, 36.496864, 29.728252>,  <36.789337, 36.327061, 29.609064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910007, 36.496864, 29.728252>,  <37.111122, 36.779869, 29.926899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910007, 36.496864, 29.728252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759903, 0.087937, 0.644060,
		-0.412012, 0.701205, -0.581857,
		-0.502786, -0.707516, -0.496617,
		36.759171, 36.284611, 29.579268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457554, 37.018028, 29.847546>,  <37.111122, 36.779869, 29.926899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457554, 37.018028, 29.847546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441921, 36.618412, 29.839666>,  <36.432541, 36.378643, 29.834940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441921, 36.618412, 29.839666>,  <36.457554, 37.018028, 29.847546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441921, 36.618412, 29.839666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715932, 0.014242, 0.698025,
		-0.697075, 0.041379, -0.715803,
		-0.039078, -0.999042, -0.019696,
		36.430199, 36.318699, 29.833757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770111, 36.794319, 29.821177>,  <36.457554, 37.018028, 29.847546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770111, 36.794319, 29.821177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939026, 36.457424, 29.955225>,  <36.040375, 36.255287, 30.035654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939026, 36.457424, 29.955225>,  <35.770111, 36.794319, 29.821177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939026, 36.457424, 29.955225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690869, -0.059709, 0.720510,
		-0.586831, -0.535788, -0.607092,
		0.422290, -0.842239, 0.335120,
		36.065712, 36.204754, 30.055761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222141, 36.437057, 30.055687>,  <35.770111, 36.794319, 29.821177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222141, 36.437057, 30.055687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537174, 36.266716, 30.233835>,  <35.726196, 36.164509, 30.340723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537174, 36.266716, 30.233835>,  <35.222141, 36.437057, 30.055687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537174, 36.266716, 30.233835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562599, -0.202106, 0.801646,
		-0.251381, -0.881926, -0.398766,
		0.787585, -0.425864, 0.445365,
		35.773449, 36.138958, 30.367447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987324, 35.822937, 30.324759>,  <35.222141, 36.437057, 30.055687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987324, 35.822937, 30.324759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314449, 35.902725, 30.540682>,  <35.510723, 35.950596, 30.670235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314449, 35.902725, 30.540682>,  <34.987324, 35.822937, 30.324759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314449, 35.902725, 30.540682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537909, -0.068421, 0.840222,
		0.204532, -0.977513, 0.051340,
		0.817815, 0.199468, 0.539807,
		35.559795, 35.962566, 30.702623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055218, 35.257053, 30.850868>,  <34.987324, 35.822937, 30.324759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055218, 35.257053, 30.850868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269310, 35.565216, 30.989433>,  <35.397766, 35.750114, 31.072573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269310, 35.565216, 30.989433>,  <35.055218, 35.257053, 30.850868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269310, 35.565216, 30.989433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435702, -0.099543, 0.894570,
		0.723666, -0.629733, 0.282389,
		0.535230, 0.770407, 0.346412,
		35.429878, 35.796337, 31.093357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257893, 34.999313, 31.529348>,  <35.055218, 35.257053, 30.850868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257893, 34.999313, 31.529348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291363, 35.397095, 31.554819>,  <35.311447, 35.635765, 31.570101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291363, 35.397095, 31.554819>,  <35.257893, 34.999313, 31.529348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291363, 35.397095, 31.554819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484453, -0.015242, 0.874685,
		0.870806, -0.104041, 0.480492,
		0.083679, 0.994456, 0.063676,
		35.316467, 35.695431, 31.573921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409882, 35.175308, 32.279121>,  <35.257893, 34.999313, 31.529348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409882, 35.175308, 32.279121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265297, 35.517395, 32.130558>,  <35.178547, 35.722649, 32.041420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265297, 35.517395, 32.130558>,  <35.409882, 35.175308, 32.279121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265297, 35.517395, 32.130558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547741, 0.127593, 0.826862,
		0.754538, 0.502313, 0.422319,
		-0.361459, 0.855220, -0.371411,
		35.156860, 35.773960, 32.019135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341999, 35.647888, 32.877106>,  <35.409882, 35.175308, 32.279121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341999, 35.647888, 32.877106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128002, 35.836510, 32.596699>,  <34.999603, 35.949684, 32.428455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128002, 35.836510, 32.596699>,  <35.341999, 35.647888, 32.877106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128002, 35.836510, 32.596699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703316, 0.211159, 0.678792,
		0.468113, 0.856182, 0.218684,
		-0.534992, 0.471555, -0.701013,
		34.967506, 35.977978, 32.386395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165482, 36.235561, 33.230442>,  <35.341999, 35.647888, 32.877106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165482, 36.235561, 33.230442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907547, 36.159031, 32.934448>,  <34.752789, 36.113113, 32.756851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907547, 36.159031, 32.934448>,  <35.165482, 36.235561, 33.230442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907547, 36.159031, 32.934448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753645, -0.002102, 0.657279,
		-0.127311, 0.981524, -0.142838,
		-0.644835, -0.191327, -0.739988,
		34.714096, 36.101631, 32.712452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088150, 36.937870, 33.099087>,  <35.165482, 36.235561, 33.230442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088150, 36.937870, 33.099087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254723, 36.825859, 33.445076>,  <35.354668, 36.758652, 33.652668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254723, 36.825859, 33.445076>,  <35.088150, 36.937870, 33.099087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254723, 36.825859, 33.445076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908427, 0.089784, -0.408287,
		0.036671, 0.955785, 0.291771,
		0.416431, -0.280026, 0.864969,
		35.379650, 36.741852, 33.704567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636730, 37.454037, 33.224339>,  <35.088150, 36.937870, 33.099087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636730, 37.454037, 33.224339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728893, 37.132381, 33.443527>,  <35.784191, 36.939388, 33.575039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728893, 37.132381, 33.443527>,  <35.636730, 37.454037, 33.224339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728893, 37.132381, 33.443527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948986, 0.061111, -0.309339,
		0.215265, 0.591290, 0.777198,
		0.230405, -0.804140, 0.547971,
		35.798016, 36.891140, 33.607918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305511, 37.628860, 33.648064>,  <35.636730, 37.454037, 33.224339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305511, 37.628860, 33.648064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276100, 37.235218, 33.583412>,  <36.258453, 36.999031, 33.544621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276100, 37.235218, 33.583412>,  <36.305511, 37.628860, 33.648064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276100, 37.235218, 33.583412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968944, -0.032125, -0.245186,
		0.236097, -0.174638, 0.955908,
		-0.073528, -0.984109, -0.161630,
		36.254044, 36.939987, 33.534924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882145, 37.445930, 33.975372>,  <36.305511, 37.628860, 33.648064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882145, 37.445930, 33.975372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767071, 37.129425, 33.759544>,  <36.698025, 36.939522, 33.630047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767071, 37.129425, 33.759544>,  <36.882145, 37.445930, 33.975372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767071, 37.129425, 33.759544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939860, -0.124943, -0.317887,
		0.184119, -0.598568, 0.779626,
		-0.287686, -0.791268, -0.539566,
		36.680763, 36.892044, 33.597675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400696, 37.053028, 34.105911>,  <36.882145, 37.445930, 33.975372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400696, 37.053028, 34.105911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243256, 36.942574, 33.755180>,  <37.148792, 36.876301, 33.544743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243256, 36.942574, 33.755180>,  <37.400696, 37.053028, 34.105911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243256, 36.942574, 33.755180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918738, -0.085343, -0.385536,
		0.031628, -0.957323, 0.287284,
		-0.393600, -0.276132, -0.876829,
		37.125175, 36.859734, 33.492130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808868, 36.516396, 33.830109>,  <37.400696, 37.053028, 34.105911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808868, 36.516396, 33.830109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623825, 36.662868, 33.507145>,  <37.512798, 36.750751, 33.313366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623825, 36.662868, 33.507145>,  <37.808868, 36.516396, 33.830109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623825, 36.662868, 33.507145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868256, 0.003009, -0.496108,
		-0.179236, -0.930539, -0.319331,
		-0.462609, 0.366181, -0.807406,
		37.485043, 36.772724, 33.264923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093044, 36.124336, 33.325943>,  <37.808868, 36.516396, 33.830109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093044, 36.124336, 33.325943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884098, 36.373196, 33.092686>,  <37.758728, 36.522511, 32.952732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884098, 36.373196, 33.092686>,  <38.093044, 36.124336, 33.325943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884098, 36.373196, 33.092686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731785, -0.023989, -0.681113,
		-0.437745, -0.782529, -0.442751,
		-0.522369, 0.622152, -0.583144,
		37.727386, 36.559841, 32.917744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981911, 35.871208, 32.577209>,  <38.093044, 36.124336, 33.325943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981911, 35.871208, 32.577209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980923, 36.270599, 32.555195>,  <37.980331, 36.510235, 32.541985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980923, 36.270599, 32.555195>,  <37.981911, 35.871208, 32.577209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980923, 36.270599, 32.555195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715077, -0.036710, -0.698081,
		-0.699041, -0.041077, -0.713901,
		-0.002468, 0.998481, -0.055035,
		37.980183, 36.570145, 32.538685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925705, 36.050259, 31.831217>,  <37.981911, 35.871208, 32.577209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925705, 36.050259, 31.831217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029255, 36.407360, 31.978710>,  <38.091385, 36.621620, 32.067207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029255, 36.407360, 31.978710>,  <37.925705, 36.050259, 31.831217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029255, 36.407360, 31.978710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548661, 0.178270, -0.816818,
		-0.794955, 0.413768, -0.443670,
		0.258880, 0.892757, 0.368735,
		38.106918, 36.675186, 32.089333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880074, 36.492443, 31.329601>,  <37.925705, 36.050259, 31.831217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880074, 36.492443, 31.329601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137096, 36.676048, 31.575014>,  <38.291309, 36.786213, 31.722261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137096, 36.676048, 31.575014>,  <37.880074, 36.492443, 31.329601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137096, 36.676048, 31.575014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658616, 0.078339, -0.748390,
		-0.391586, 0.884967, -0.251978,
		0.642561, 0.459016, 0.613531,
		38.329865, 36.813751, 31.759073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119591, 37.083214, 30.902306>,  <37.880074, 36.492443, 31.329601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119591, 37.083214, 30.902306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382442, 37.009876, 31.194763>,  <38.540154, 36.965874, 31.370237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382442, 37.009876, 31.194763>,  <38.119591, 37.083214, 30.902306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382442, 37.009876, 31.194763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752195, 0.222358, -0.620290,
		-0.048849, 0.957571, 0.284028,
		0.657128, -0.183344, 0.731142,
		38.579582, 36.954872, 31.414106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644939, 37.634926, 30.678400>,  <38.119591, 37.083214, 30.902306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644939, 37.634926, 30.678400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809269, 37.360317, 30.918371>,  <38.907867, 37.195553, 31.062355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809269, 37.360317, 30.918371>,  <38.644939, 37.634926, 30.678400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809269, 37.360317, 30.918371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856325, 0.064696, -0.512370,
		0.312938, 0.724229, 0.614461,
		0.410826, -0.686518, 0.599929,
		38.932518, 37.154362, 31.098351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343185, 37.891048, 30.996969>,  <38.644939, 37.634926, 30.678400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343185, 37.891048, 30.996969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336060, 37.491402, 30.981741>,  <39.331783, 37.251614, 30.972603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336060, 37.491402, 30.981741>,  <39.343185, 37.891048, 30.996969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336060, 37.491402, 30.981741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745373, 0.012112, -0.666537,
		0.666410, -0.040249, 0.744499,
		-0.017810, -0.999116, -0.038072,
		39.330715, 37.191666, 30.970320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037716, 37.753857, 31.026634>,  <39.343185, 37.891048, 30.996969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037716, 37.753857, 31.026634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867676, 37.427097, 30.870701>,  <39.765652, 37.231041, 30.777140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867676, 37.427097, 30.870701>,  <40.037716, 37.753857, 31.026634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867676, 37.427097, 30.870701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719777, -0.043936, -0.692814,
		0.548829, -0.575108, 0.606661,
		-0.425097, -0.816897, -0.389836,
		39.740147, 37.182030, 30.753750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587852, 37.293236, 30.924622>,  <40.037716, 37.753857, 31.026634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587852, 37.293236, 30.924622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299931, 37.160542, 30.680710>,  <40.127178, 37.080925, 30.534363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299931, 37.160542, 30.680710>,  <40.587852, 37.293236, 30.924622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299931, 37.160542, 30.680710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677012, -0.141362, -0.722269,
		0.153399, -0.932723, 0.326339,
		-0.719808, -0.331731, -0.609779,
		40.083988, 37.061024, 30.497776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939377, 36.834003, 30.552427>,  <40.587852, 37.293236, 30.924622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939377, 36.834003, 30.552427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614529, 36.912708, 30.332701>,  <40.419621, 36.959930, 30.200865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614529, 36.912708, 30.332701>,  <40.939377, 36.834003, 30.552427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614529, 36.912708, 30.332701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526886, -0.157222, -0.835268,
		-0.250711, -0.967764, 0.024014,
		-0.812118, 0.196758, -0.549319,
		40.370892, 36.971737, 30.167906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944824, 36.507843, 29.951538>,  <40.939377, 36.834003, 30.552427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944824, 36.507843, 29.951538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661972, 36.725285, 29.770672>,  <40.492260, 36.855751, 29.662151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661972, 36.725285, 29.770672>,  <40.944824, 36.507843, 29.951538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661972, 36.725285, 29.770672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494430, -0.076999, -0.865800,
		-0.505471, -0.835801, -0.214328,
		-0.707133, 0.543607, -0.452166,
		40.449833, 36.888367, 29.635021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530968, 36.068462, 29.400972>,  <40.944824, 36.507843, 29.951538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530968, 36.068462, 29.400972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514256, 36.453796, 29.294956>,  <40.504230, 36.684998, 29.231346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514256, 36.453796, 29.294956>,  <40.530968, 36.068462, 29.400972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514256, 36.453796, 29.294956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263369, -0.245274, -0.932994,
		-0.963790, -0.108781, -0.243465,
		-0.041777, 0.963331, -0.265042,
		40.501724, 36.742794, 29.215443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313843, 36.063332, 28.734177>,  <40.530968, 36.068462, 29.400972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313843, 36.063332, 28.734177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463570, 36.431664, 28.777929>,  <40.553406, 36.652660, 28.804182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463570, 36.431664, 28.777929>,  <40.313843, 36.063332, 28.734177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463570, 36.431664, 28.777929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374071, -0.042010, -0.926448,
		-0.848503, 0.387704, -0.360179,
		0.374319, 0.920826, 0.109383,
		40.575867, 36.707912, 28.810743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098339, 36.408287, 28.064999>,  <40.313843, 36.063332, 28.734177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098339, 36.408287, 28.064999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399281, 36.594769, 28.251167>,  <40.579845, 36.706657, 28.362869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399281, 36.594769, 28.251167>,  <40.098339, 36.408287, 28.064999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399281, 36.594769, 28.251167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552024, -0.060619, -0.831622,
		-0.359493, 0.882597, -0.302963,
		0.752353, 0.466205, 0.465423,
		40.624985, 36.734631, 28.390795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309875, 36.867443, 27.648212>,  <40.098339, 36.408287, 28.064999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309875, 36.867443, 27.648212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628036, 36.796558, 27.880051>,  <40.818932, 36.754028, 28.019154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628036, 36.796558, 27.880051>,  <40.309875, 36.867443, 27.648212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628036, 36.796558, 27.880051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554285, -0.174138, -0.813906,
		0.245162, 0.968645, -0.040285,
		0.795401, -0.177210, 0.579598,
		40.866657, 36.743397, 28.053930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946953, 37.195271, 27.264826>,  <40.309875, 36.867443, 27.648212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946953, 37.195271, 27.264826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046963, 36.918087, 27.535320>,  <41.106968, 36.751778, 27.697617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046963, 36.918087, 27.535320>,  <40.946953, 37.195271, 27.264826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046963, 36.918087, 27.535320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505261, -0.502409, -0.701638,
		0.825954, 0.517102, 0.224512,
		0.250022, -0.692958, 0.676238,
		41.121971, 36.710201, 27.738192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699306, 37.113720, 27.121548>,  <40.946953, 37.195271, 27.264826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699306, 37.113720, 27.121548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574825, 36.805729, 27.344362>,  <41.500137, 36.620934, 27.478050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574825, 36.805729, 27.344362>,  <41.699306, 37.113720, 27.121548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574825, 36.805729, 27.344362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495111, -0.631671, -0.596537,
		0.811183, 0.090151, 0.577802,
		-0.311203, -0.769977, 0.557036,
		41.481464, 36.574738, 27.511473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296627, 36.809002, 27.288778>,  <41.699306, 37.113720, 27.121548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296627, 36.809002, 27.288778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001850, 36.542152, 27.332344>,  <41.824986, 36.382042, 27.358484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001850, 36.542152, 27.332344>,  <42.296627, 36.809002, 27.288778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001850, 36.542152, 27.332344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525773, -0.666980, -0.527920,
		0.424835, -0.331780, 0.842281,
		-0.736938, -0.667128, 0.108916,
		41.780769, 36.342014, 27.365019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630238, 36.275036, 27.532139>,  <42.296627, 36.809002, 27.288778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630238, 36.275036, 27.532139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285957, 36.116367, 27.404484>,  <42.079388, 36.021168, 27.327890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285957, 36.116367, 27.404484>,  <42.630238, 36.275036, 27.532139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285957, 36.116367, 27.404484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508070, -0.709332, -0.488583,
		-0.032570, -0.582668, 0.812058,
		-0.860700, -0.396669, -0.319138,
		42.027748, 35.997368, 27.308743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632252, 35.601097, 27.746273>,  <42.630238, 36.275036, 27.532139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632252, 35.601097, 27.746273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385456, 35.627228, 27.432571>,  <42.237377, 35.642906, 27.244350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385456, 35.627228, 27.432571>,  <42.632252, 35.601097, 27.746273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385456, 35.627228, 27.432571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487996, -0.750059, -0.446399,
		-0.617398, -0.658137, 0.430900,
		-0.616992, 0.065329, -0.784253,
		42.200359, 35.646828, 27.197296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315845, 34.991268, 27.670223>,  <42.632252, 35.601097, 27.746273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315845, 34.991268, 27.670223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311077, 35.154266, 27.304972>,  <42.308216, 35.252068, 27.085821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311077, 35.154266, 27.304972>,  <42.315845, 34.991268, 27.670223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311077, 35.154266, 27.304972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377364, -0.843832, -0.381503,
		-0.925988, -0.349130, -0.143715,
		-0.011923, 0.407500, -0.913127,
		42.307499, 35.276516, 27.031033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067078, 34.439320, 27.278444>,  <42.315845, 34.991268, 27.670223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067078, 34.439320, 27.278444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221298, 34.678005, 26.996939>,  <42.313831, 34.821217, 26.828035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221298, 34.678005, 26.996939>,  <42.067078, 34.439320, 27.278444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221298, 34.678005, 26.996939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460846, -0.785320, -0.413393,
		-0.799358, -0.164944, -0.577772,
		0.385550, 0.596713, -0.703765,
		42.336964, 34.857018, 26.785809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036732, 34.042702, 26.694174>,  <42.067078, 34.439320, 27.278444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036732, 34.042702, 26.694174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303596, 34.329121, 26.612030>,  <42.463715, 34.500973, 26.562744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303596, 34.329121, 26.612030>,  <42.036732, 34.042702, 26.694174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303596, 34.329121, 26.612030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551316, -0.660036, -0.510298,
		-0.500939, 0.227235, -0.835119,
		0.667166, 0.716043, -0.205359,
		42.503746, 34.543934, 26.550423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249050, 33.851208, 26.031406>,  <42.036732, 34.042702, 26.694174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249050, 33.851208, 26.031406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533249, 34.109032, 26.144354>,  <42.703770, 34.263725, 26.212122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533249, 34.109032, 26.144354>,  <42.249050, 33.851208, 26.031406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533249, 34.109032, 26.144354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653069, -0.454523, -0.605731,
		-0.262085, 0.614780, -0.743880,
		0.710502, 0.644558, 0.282370,
		42.746399, 34.302399, 26.229065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524334, 34.196152, 25.435104>,  <42.249050, 33.851208, 26.031406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524334, 34.196152, 25.435104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797615, 34.199497, 25.727177>,  <42.961582, 34.201504, 25.902420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797615, 34.199497, 25.727177>,  <42.524334, 34.196152, 25.435104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797615, 34.199497, 25.727177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699903, -0.292682, -0.651516,
		0.208260, 0.956173, -0.205816,
		0.683201, 0.008367, 0.730183,
		43.002575, 34.202007, 25.946232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985256, 34.662647, 25.191179>,  <42.524334, 34.196152, 25.435104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985256, 34.662647, 25.191179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185890, 34.462261, 25.473299>,  <43.306271, 34.342030, 25.642570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185890, 34.462261, 25.473299>,  <42.985256, 34.662647, 25.191179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185890, 34.462261, 25.473299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688829, -0.261960, -0.675937,
		0.523384, 0.824868, 0.213688,
		0.501581, -0.500969, 0.705299,
		43.336365, 34.311970, 25.684889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746315, 34.803379, 25.215870>,  <42.985256, 34.662647, 25.191179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746315, 34.803379, 25.215870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754787, 34.457851, 25.417213>,  <43.759872, 34.250534, 25.538019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754787, 34.457851, 25.417213>,  <43.746315, 34.803379, 25.215870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754787, 34.457851, 25.417213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748260, -0.320212, -0.581009,
		0.663068, 0.388952, 0.639576,
		0.021185, -0.863817, 0.503359,
		43.761143, 34.198708, 25.568222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383545, 34.695221, 25.352430>,  <43.746315, 34.803379, 25.215870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383545, 34.695221, 25.352430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261059, 34.316803, 25.394838>,  <44.187569, 34.089752, 25.420282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261059, 34.316803, 25.394838>,  <44.383545, 34.695221, 25.352430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261059, 34.316803, 25.394838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789433, -0.314592, -0.527093,
		0.532004, -0.077707, 0.843168,
		-0.306213, -0.946041, 0.106020,
		44.169193, 34.032990, 25.426643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916031, 34.329773, 25.619942>,  <44.383545, 34.695221, 25.352430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916031, 34.329773, 25.619942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683632, 34.049782, 25.453817>,  <44.544193, 33.881786, 25.354143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683632, 34.049782, 25.453817>,  <44.916031, 34.329773, 25.619942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683632, 34.049782, 25.453817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783205, -0.341988, -0.519264,
		0.221440, -0.626962, 0.746916,
		-0.580994, -0.699974, -0.415309,
		44.509335, 33.839790, 25.329224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286091, 33.655090, 25.705605>,  <44.916031, 34.329773, 25.619942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286091, 33.655090, 25.705605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.018684, 33.604656, 25.412434>,  <44.858238, 33.574394, 25.236530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.018684, 33.604656, 25.412434>,  <45.286091, 33.655090, 25.705605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018684, 33.604656, 25.412434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623855, -0.631543, -0.460388,
		-0.404828, -0.765020, 0.500858,
		-0.668520, -0.126085, -0.732928,
		44.818127, 33.566830, 25.192554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406441, 33.037346, 25.400196>,  <45.286091, 33.655090, 25.705605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406441, 33.037346, 25.400196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198280, 33.194038, 25.096689>,  <45.073383, 33.288055, 24.914585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198280, 33.194038, 25.096689>,  <45.406441, 33.037346, 25.400196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198280, 33.194038, 25.096689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544567, -0.532188, -0.648246,
		-0.657745, -0.750549, 0.063628,
		-0.520403, 0.391731, -0.758768,
		45.042160, 33.311558, 24.869059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200520, 32.476360, 24.976542>,  <45.406441, 33.037346, 25.400196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200520, 32.476360, 24.976542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276966, 32.831512, 24.809137>,  <45.322834, 33.044601, 24.708694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276966, 32.831512, 24.809137>,  <45.200520, 32.476360, 24.976542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276966, 32.831512, 24.809137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638407, -0.436303, -0.634096,
		-0.745596, -0.145995, -0.650209,
		0.191113, 0.887877, -0.418510,
		45.334301, 33.097874, 24.683584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.037693, 32.280128, 24.842548>,  <45.200520, 32.476360, 24.976542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.037693, 32.280128, 24.842548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.285053, 31.967602, 24.876301>,  <46.433468, 31.780085, 24.896553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.285053, 31.967602, 24.876301>,  <46.037693, 32.280128, 24.842548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.285053, 31.967602, 24.876301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146692, -0.009280, 0.989139,
		-0.772052, -0.624061, -0.120352,
		0.618400, -0.781321, 0.084380,
		46.470573, 31.733206, 24.901615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738003, 31.684967, 25.160378>,  <46.037693, 32.280128, 24.842548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738003, 31.684967, 25.160378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101215, 31.798571, 25.283543>,  <46.319145, 31.866732, 25.357443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101215, 31.798571, 25.283543>,  <45.738003, 31.684967, 25.160378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.101215, 31.798571, 25.283543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377177, 0.234553, 0.895948,
		0.182227, -0.929693, 0.320101,
		0.908037, 0.284001, 0.307917,
		46.373627, 31.883774, 25.375917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731380, 31.570259, 25.955311>,  <45.738003, 31.684967, 25.160378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731380, 31.570259, 25.955311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051605, 31.802183, 25.894758>,  <46.243740, 31.941338, 25.858427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051605, 31.802183, 25.894758>,  <45.731380, 31.570259, 25.955311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051605, 31.802183, 25.894758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096344, 0.373868, 0.922465,
		0.591452, -0.723907, 0.355166,
		0.800564, 0.579812, -0.151380,
		46.291775, 31.976126, 25.849344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211670, 31.405443, 26.478428>,  <45.731380, 31.570259, 25.955311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211670, 31.405443, 26.478428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.243664, 31.784878, 26.355932>,  <46.262859, 32.012539, 26.282434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.243664, 31.784878, 26.355932>,  <46.211670, 31.405443, 26.478428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.243664, 31.784878, 26.355932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099296, 0.313280, 0.944456,
		0.991838, -0.045135, 0.119249,
		0.079986, 0.948588, -0.306241,
		46.267658, 32.069454, 26.264059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.492817, 31.711597, 27.038721>,  <46.211670, 31.405443, 26.478428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.492817, 31.711597, 27.038721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391811, 32.035583, 26.826988>,  <46.331207, 32.229977, 26.699947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391811, 32.035583, 26.826988>,  <46.492817, 31.711597, 27.038721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.391811, 32.035583, 26.826988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212856, 0.487162, 0.846975,
		0.943890, 0.326546, 0.049390,
		-0.252515, 0.809964, -0.529334,
		46.316055, 32.278572, 26.668188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.723690, 32.258556, 27.397924>,  <46.492817, 31.711597, 27.038721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.723690, 32.258556, 27.397924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472797, 32.443565, 27.147278>,  <46.322262, 32.554573, 26.996891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472797, 32.443565, 27.147278>,  <46.723690, 32.258556, 27.397924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.472797, 32.443565, 27.147278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275117, 0.621108, 0.733850,
		0.728621, 0.632689, -0.262331,
		-0.627234, 0.462527, -0.626615,
		46.284626, 32.582325, 26.959293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.672550, 32.983948, 27.604839>,  <46.723690, 32.258556, 27.397924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.672550, 32.983948, 27.604839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343182, 32.948231, 27.380697>,  <46.145561, 32.926800, 27.246212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343182, 32.948231, 27.380697>,  <46.672550, 32.983948, 27.604839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343182, 32.948231, 27.380697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497855, 0.587484, 0.637968,
		0.272235, 0.804295, -0.528203,
		-0.823425, -0.089291, -0.560356,
		46.096153, 32.921444, 27.212591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.375782, 33.634914, 27.583479>,  <46.672550, 32.983948, 27.604839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.375782, 33.634914, 27.583479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071522, 33.392342, 27.490837>,  <45.888966, 33.246796, 27.435251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071522, 33.392342, 27.490837>,  <46.375782, 33.634914, 27.583479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.071522, 33.392342, 27.490837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626140, 0.591237, 0.508318,
		-0.171328, 0.531673, -0.829440,
		-0.760654, -0.606435, -0.231607,
		45.843327, 33.210411, 27.421354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.757442, 34.057487, 27.432196>,  <46.375782, 33.634914, 27.583479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.757442, 34.057487, 27.432196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612644, 33.696571, 27.525854>,  <45.525764, 33.480022, 27.582048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612644, 33.696571, 27.525854>,  <45.757442, 34.057487, 27.432196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612644, 33.696571, 27.525854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618630, 0.420431, 0.663727,
		-0.697318, 0.095420, -0.710382,
		-0.362000, -0.902293, 0.234145,
		45.504044, 33.425884, 27.596098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017830, 34.080971, 27.431004>,  <45.757442, 34.057487, 27.432196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017830, 34.080971, 27.431004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089561, 33.761082, 27.660187>,  <45.132603, 33.569149, 27.797697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089561, 33.761082, 27.660187>,  <45.017830, 34.080971, 27.431004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089561, 33.761082, 27.660187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744931, 0.270025, 0.610053,
		-0.642588, -0.536215, -0.547315,
		0.179331, -0.799725, 0.572958,
		45.143360, 33.521164, 27.832075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393753, 33.741962, 27.523117>,  <45.017830, 34.080971, 27.431004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393753, 33.741962, 27.523117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621143, 33.568352, 27.802675>,  <44.757576, 33.464184, 27.970409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621143, 33.568352, 27.802675>,  <44.393753, 33.741962, 27.523117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621143, 33.568352, 27.802675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744183, 0.090895, 0.661763,
		-0.350751, -0.896301, -0.271327,
		0.568476, -0.434031, 0.698893,
		44.791687, 33.438141, 28.012342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913532, 33.374378, 27.815800>,  <44.393753, 33.741962, 27.523117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913532, 33.374378, 27.815800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220837, 33.416653, 28.068342>,  <44.405220, 33.442017, 28.219868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220837, 33.416653, 28.068342>,  <43.913532, 33.374378, 27.815800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220837, 33.416653, 28.068342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640036, 0.144637, 0.754609,
		-0.011562, -0.983824, 0.178765,
		0.768258, 0.105691, 0.631355,
		44.451313, 33.448360, 28.257750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712044, 33.009815, 28.313005>,  <43.913532, 33.374378, 27.815800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712044, 33.009815, 28.313005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973690, 33.269009, 28.469084>,  <44.130676, 33.424522, 28.562731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973690, 33.269009, 28.469084>,  <43.712044, 33.009815, 28.313005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973690, 33.269009, 28.469084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560026, 0.068134, 0.825668,
		0.508432, -0.758602, 0.407454,
		0.654115, 0.647982, 0.390196,
		44.169926, 33.463402, 28.586143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919102, 32.740788, 29.081947>,  <43.712044, 33.009815, 28.313005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919102, 32.740788, 29.081947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021648, 33.126785, 29.059797>,  <44.083176, 33.358383, 29.046507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021648, 33.126785, 29.059797>,  <43.919102, 32.740788, 29.081947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021648, 33.126785, 29.059797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612626, 0.206532, 0.762912,
		0.747641, -0.161657, 0.644127,
		0.256363, 0.964993, -0.055377,
		44.098557, 33.416283, 29.043184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072384, 32.915882, 29.748606>,  <43.919102, 32.740788, 29.081947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072384, 32.915882, 29.748606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.977448, 33.251762, 29.553228>,  <43.920486, 33.453289, 29.436003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.977448, 33.251762, 29.553228>,  <44.072384, 32.915882, 29.748606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.977448, 33.251762, 29.553228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676654, 0.217861, 0.703332,
		0.696999, 0.497437, 0.516477,
		-0.237343, 0.839698, -0.488442,
		43.906246, 33.503674, 29.406696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004959, 33.448589, 30.245569>,  <44.072384, 32.915882, 29.748606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004959, 33.448589, 30.245569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825649, 33.610271, 29.926655>,  <43.718063, 33.707279, 29.735306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825649, 33.610271, 29.926655>,  <44.004959, 33.448589, 30.245569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825649, 33.610271, 29.926655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644320, 0.472125, 0.601623,
		0.619599, 0.783400, 0.048798,
		-0.448273, 0.404206, -0.797288,
		43.691166, 33.731533, 29.687468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843864, 34.153645, 30.475210>,  <44.004959, 33.448589, 30.245569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843864, 34.153645, 30.475210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588184, 34.072136, 30.178589>,  <43.434776, 34.023232, 30.000616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588184, 34.072136, 30.178589>,  <43.843864, 34.153645, 30.475210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588184, 34.072136, 30.178589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711045, 0.523947, 0.468929,
		0.292982, 0.827018, -0.479795,
		-0.639200, -0.203768, -0.741554,
		43.396423, 34.011005, 29.956123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550079, 34.807716, 30.400383>,  <43.843864, 34.153645, 30.475210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550079, 34.807716, 30.400383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313736, 34.545834, 30.211809>,  <43.171928, 34.388706, 30.098665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313736, 34.545834, 30.211809>,  <43.550079, 34.807716, 30.400383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313736, 34.545834, 30.211809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805908, 0.451860, 0.382538,
		-0.037427, 0.605957, -0.794617,
		-0.590857, -0.654705, -0.471434,
		43.136478, 34.349422, 30.070379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911922, 35.211601, 30.211763>,  <43.550079, 34.807716, 30.400383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911922, 35.211601, 30.211763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807564, 34.825745, 30.196796>,  <42.744949, 34.594231, 30.187817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807564, 34.825745, 30.196796>,  <42.911922, 35.211601, 30.211763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807564, 34.825745, 30.196796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887427, 0.224395, 0.402641,
		-0.380008, 0.138251, -0.914593,
		-0.260896, -0.964642, -0.037415,
		42.729294, 34.536350, 30.185572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233253, 35.317135, 29.946346>,  <42.911922, 35.211601, 30.211763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233253, 35.317135, 29.946346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268475, 34.950611, 30.102617>,  <42.289608, 34.730698, 30.196381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268475, 34.950611, 30.102617>,  <42.233253, 35.317135, 29.946346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268475, 34.950611, 30.102617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911113, 0.084447, 0.403413,
		-0.402642, -0.391474, -0.827422,
		0.088052, -0.916306, 0.390679,
		42.294891, 34.675720, 30.219820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684582, 34.965664, 29.809536>,  <42.233253, 35.317135, 29.946346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684582, 34.965664, 29.809536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797157, 34.757256, 30.131859>,  <41.864704, 34.632210, 30.325253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797157, 34.757256, 30.131859>,  <41.684582, 34.965664, 29.809536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797157, 34.757256, 30.131859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865392, 0.225008, 0.447736,
		-0.414594, -0.823352, -0.387561,
		0.281440, -0.521021, 0.805809,
		41.881588, 34.600948, 30.373602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113598, 34.501755, 30.038818>,  <41.684582, 34.965664, 29.809536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113598, 34.501755, 30.038818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342728, 34.558025, 30.361826>,  <41.480206, 34.591785, 30.555632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342728, 34.558025, 30.361826>,  <41.113598, 34.501755, 30.038818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342728, 34.558025, 30.361826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818796, 0.052441, 0.571684,
		0.038067, -0.988668, 0.145213,
		0.572821, 0.140662, 0.807521,
		41.514572, 34.600227, 30.604082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776669, 34.026363, 30.535372>,  <41.113598, 34.501755, 30.038818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776669, 34.026363, 30.535372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015293, 34.273033, 30.740829>,  <41.158466, 34.421036, 30.864103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015293, 34.273033, 30.740829>,  <40.776669, 34.026363, 30.535372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015293, 34.273033, 30.740829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665505, 0.022384, 0.746057,
		0.448578, -0.786900, 0.423754,
		0.596558, 0.616675, 0.513645,
		41.194260, 34.458035, 30.894922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503330, 33.975632, 31.271214>,  <40.776669, 34.026363, 30.535372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503330, 33.975632, 31.271214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743279, 34.293575, 31.307756>,  <40.887249, 34.484341, 31.329681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743279, 34.293575, 31.307756>,  <40.503330, 33.975632, 31.271214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743279, 34.293575, 31.307756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556997, 0.332909, 0.760872,
		0.574376, -0.507310, 0.642439,
		0.599872, 0.794864, 0.091356,
		40.923241, 34.532036, 31.335163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753075, 33.978912, 31.960032>,  <40.503330, 33.975632, 31.271214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753075, 33.978912, 31.960032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754784, 34.347404, 31.804438>,  <40.755810, 34.568501, 31.711081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754784, 34.347404, 31.804438>,  <40.753075, 33.978912, 31.960032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754784, 34.347404, 31.804438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490698, 0.340868, 0.801888,
		0.871319, 0.187448, 0.453504,
		0.004273, 0.921234, -0.388985,
		40.756065, 34.623775, 31.687742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251839, 34.365555, 32.351898>,  <40.753075, 33.978912, 31.960032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251839, 34.365555, 32.351898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012119, 34.634331, 32.177841>,  <40.868290, 34.795597, 32.073406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012119, 34.634331, 32.177841>,  <41.251839, 34.365555, 32.351898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012119, 34.634331, 32.177841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125428, 0.458040, 0.880038,
		0.790642, 0.581981, -0.190221,
		-0.599294, 0.671936, -0.435142,
		40.832333, 34.835911, 32.047298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383526, 34.936852, 32.644341>,  <41.251839, 34.365555, 32.351898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383526, 34.936852, 32.644341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023972, 35.020729, 32.490440>,  <40.808239, 35.071056, 32.398102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023972, 35.020729, 32.490440>,  <41.383526, 34.936852, 32.644341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023972, 35.020729, 32.490440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207908, 0.568822, 0.795749,
		0.385719, 0.795280, -0.467708,
		-0.898886, 0.209695, -0.384750,
		40.754307, 35.083637, 32.375015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375397, 35.695175, 32.609291>,  <41.383526, 34.936852, 32.644341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375397, 35.695175, 32.609291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992420, 35.580475, 32.596176>,  <40.762634, 35.511654, 32.588306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992420, 35.580475, 32.596176>,  <41.375397, 35.695175, 32.609291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992420, 35.580475, 32.596176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216378, 0.637972, 0.739034,
		-0.191004, 0.714678, -0.672869,
		-0.957443, -0.286753, -0.032785,
		40.705189, 35.494450, 32.586342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955475, 36.265327, 32.743233>,  <41.375397, 35.695175, 32.609291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955475, 36.265327, 32.743233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719048, 35.957878, 32.841099>,  <40.577190, 35.773407, 32.899818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719048, 35.957878, 32.841099>,  <40.955475, 36.265327, 32.743233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719048, 35.957878, 32.841099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308485, 0.495659, 0.811886,
		-0.745303, 0.404404, -0.530076,
		-0.591067, -0.768622, 0.244664,
		40.541729, 35.727291, 32.914497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308182, 36.583557, 32.915516>,  <40.955475, 36.265327, 32.743233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308182, 36.583557, 32.915516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252708, 36.221870, 33.077087>,  <40.219425, 36.004860, 33.174030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252708, 36.221870, 33.077087>,  <40.308182, 36.583557, 32.915516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252708, 36.221870, 33.077087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354526, 0.426172, 0.832279,
		-0.924704, -0.027777, -0.379673,
		-0.138688, -0.904216, 0.403930,
		40.211102, 35.950607, 33.198265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642849, 36.635742, 33.272934>,  <40.308182, 36.583557, 32.915516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642849, 36.635742, 33.272934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840378, 36.327160, 33.433434>,  <39.958893, 36.142010, 33.529732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840378, 36.327160, 33.433434>,  <39.642849, 36.635742, 33.272934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840378, 36.327160, 33.433434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098131, 0.409047, 0.907222,
		-0.864010, -0.487378, 0.126291,
		0.493819, -0.771455, 0.401247,
		39.988525, 36.095722, 33.553806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239357, 36.581421, 33.786728>,  <39.642849, 36.635742, 33.272934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239357, 36.581421, 33.786728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574017, 36.377556, 33.866982>,  <39.774815, 36.255238, 33.915134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574017, 36.377556, 33.866982>,  <39.239357, 36.581421, 33.786728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574017, 36.377556, 33.866982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146581, 0.144598, 0.978573,
		-0.527757, -0.848134, 0.046271,
		0.836652, -0.509667, 0.200633,
		39.825012, 36.224655, 33.927170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015896, 36.125351, 34.346451>,  <39.239357, 36.581421, 33.786728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015896, 36.125351, 34.346451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407715, 36.203308, 34.366478>,  <39.642807, 36.250084, 34.378494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407715, 36.203308, 34.366478>,  <39.015896, 36.125351, 34.346451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407715, 36.203308, 34.366478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078990, 0.143600, 0.986478,
		0.185079, -0.970254, 0.156058,
		0.979544, 0.194903, 0.050063,
		39.701580, 36.261776, 34.381496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263268, 35.529018, 34.809731>,  <39.015896, 36.125351, 34.346451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263268, 35.529018, 34.809731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527645, 35.829151, 34.804699>,  <39.686272, 36.009232, 34.801678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527645, 35.829151, 34.804699>,  <39.263268, 35.529018, 34.809731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527645, 35.829151, 34.804699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151698, -0.117166, 0.981458,
		0.734945, -0.650595, -0.191264,
		0.660941, 0.750332, -0.012583,
		39.725929, 36.054253, 34.800922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821178, 35.337273, 35.286880>,  <39.263268, 35.529018, 34.809731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821178, 35.337273, 35.286880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893311, 35.729061, 35.250828>,  <39.936592, 35.964134, 35.229198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893311, 35.729061, 35.250828>,  <39.821178, 35.337273, 35.286880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893311, 35.729061, 35.250828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260396, 0.040821, 0.964638,
		0.948512, -0.197424, -0.247688,
		0.180332, 0.979468, -0.090127,
		39.947411, 36.022900, 35.223789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347824, 35.445492, 35.659142>,  <39.821178, 35.337273, 35.286880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347824, 35.445492, 35.659142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212585, 35.821400, 35.639019>,  <40.131443, 36.046944, 35.626945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212585, 35.821400, 35.639019>,  <40.347824, 35.445492, 35.659142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212585, 35.821400, 35.639019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211135, 0.127830, 0.969062,
		0.917121, 0.317018, -0.241637,
		-0.338099, 0.939765, -0.050302,
		40.111156, 36.103329, 35.623928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861385, 35.863224, 35.942337>,  <40.347824, 35.445492, 35.659142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861385, 35.863224, 35.942337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526394, 36.080818, 35.963161>,  <40.325397, 36.211376, 35.975655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526394, 36.080818, 35.963161>,  <40.861385, 35.863224, 35.942337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526394, 36.080818, 35.963161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144183, 0.128067, 0.981229,
		0.527106, 0.829264, -0.185686,
		-0.837479, 0.543985, 0.052061,
		40.275150, 36.244015, 35.978779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004860, 36.505650, 36.254787>,  <40.861385, 35.863224, 35.942337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004860, 36.505650, 36.254787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614796, 36.429382, 36.299866>,  <40.380756, 36.383621, 36.326912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614796, 36.429382, 36.299866>,  <41.004860, 36.505650, 36.254787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614796, 36.429382, 36.299866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096515, 0.092135, 0.991058,
		-0.199349, 0.977321, -0.071444,
		-0.975164, -0.190671, 0.112693,
		40.322247, 36.372181, 36.333675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866375, 36.792133, 36.983845>,  <41.004860, 36.505650, 36.254787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866375, 36.792133, 36.983845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535561, 36.577618, 36.916428>,  <40.337070, 36.448910, 36.875977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535561, 36.577618, 36.916428>,  <40.866375, 36.792133, 36.983845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535561, 36.577618, 36.916428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048926, -0.230014, 0.971957,
		-0.560016, 0.812089, 0.163991,
		-0.827036, -0.536288, -0.168544,
		40.287449, 36.416733, 36.865864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493511, 37.089901, 37.396503>,  <40.866375, 36.792133, 36.983845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493511, 37.089901, 37.396503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350937, 36.720798, 37.337891>,  <40.265392, 36.499336, 37.302723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350937, 36.720798, 37.337891>,  <40.493511, 37.089901, 37.396503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350937, 36.720798, 37.337891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054206, -0.136147, 0.989205,
		-0.932745, 0.360534, -0.001491,
		-0.356439, -0.922756, -0.146533,
		40.244007, 36.443970, 37.293930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824875, 37.077057, 37.836952>,  <40.493511, 37.089901, 37.396503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824875, 37.077057, 37.836952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930897, 36.693901, 37.792797>,  <39.994511, 36.464008, 37.766304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930897, 36.693901, 37.792797>,  <39.824875, 37.077057, 37.836952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930897, 36.693901, 37.792797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046848, -0.101550, 0.993727,
		-0.963094, -0.268566, 0.017959,
		0.265058, -0.957893, -0.110384,
		40.010414, 36.406532, 37.759682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393475, 36.699093, 38.366581>,  <39.824875, 37.077057, 37.836952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393475, 36.699093, 38.366581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710217, 36.484737, 38.249416>,  <39.900261, 36.356125, 38.179115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710217, 36.484737, 38.249416>,  <39.393475, 36.699093, 38.366581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710217, 36.484737, 38.249416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202109, -0.222653, 0.953718,
		-0.576302, -0.814403, -0.068001,
		0.791851, -0.535886, -0.292913,
		39.947773, 36.323971, 38.161541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402401, 36.033833, 38.730133>,  <39.393475, 36.699093, 38.366581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402401, 36.033833, 38.730133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774952, 36.110676, 38.606441>,  <39.998482, 36.156780, 38.532227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774952, 36.110676, 38.606441>,  <39.402401, 36.033833, 38.730133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774952, 36.110676, 38.606441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362878, -0.421899, 0.830856,
		0.029147, -0.886057, -0.462659,
		0.931381, 0.192106, -0.309233,
		40.054367, 36.168308, 38.513672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679195, 35.754517, 39.287277>,  <39.402401, 36.033833, 38.730133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679195, 35.754517, 39.287277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987114, 35.835304, 39.045078>,  <40.171864, 35.883778, 38.899757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987114, 35.835304, 39.045078>,  <39.679195, 35.754517, 39.287277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987114, 35.835304, 39.045078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636832, -0.307197, 0.707160,
		-0.043185, -0.929968, -0.365096,
		0.769792, 0.201966, -0.605500,
		40.218052, 35.895893, 38.863430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042206, 35.176361, 38.937149>,  <39.679195, 35.754517, 39.287277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042206, 35.176361, 38.937149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246284, 35.504524, 39.040398>,  <40.368732, 35.701424, 39.102348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246284, 35.504524, 39.040398>,  <40.042206, 35.176361, 38.937149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246284, 35.504524, 39.040398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473760, -0.518566, 0.711787,
		0.717811, -0.240863, -0.653248,
		0.510195, 0.820411, 0.258121,
		40.399342, 35.750648, 39.117832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572845, 34.900894, 39.114784>,  <40.042206, 35.176361, 38.937149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572845, 34.900894, 39.114784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648640, 35.267891, 39.254673>,  <40.694115, 35.488091, 39.338608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648640, 35.267891, 39.254673>,  <40.572845, 34.900894, 39.114784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648640, 35.267891, 39.254673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513116, -0.396195, 0.761408,
		0.837143, 0.035174, -0.545851,
		0.189482, 0.917492, 0.349721,
		40.705482, 35.543140, 39.359589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286880, 34.851044, 39.261791>,  <40.572845, 34.900894, 39.114784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286880, 34.851044, 39.261791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118763, 35.143745, 39.476414>,  <41.017891, 35.319366, 39.605186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118763, 35.143745, 39.476414>,  <41.286880, 34.851044, 39.261791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118763, 35.143745, 39.476414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311778, -0.438857, 0.842733,
		0.852142, 0.521483, -0.043695,
		-0.420296, 0.731751, 0.536555,
		40.992676, 35.363270, 39.637379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869347, 35.046474, 39.779594>,  <41.286880, 34.851044, 39.261791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869347, 35.046474, 39.779594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510868, 35.171124, 39.905910>,  <41.295780, 35.245914, 39.981701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510868, 35.171124, 39.905910>,  <41.869347, 35.046474, 39.779594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510868, 35.171124, 39.905910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175408, -0.404909, 0.897374,
		0.407509, 0.859616, 0.308217,
		-0.896197, 0.311624, 0.315788,
		41.242008, 35.264610, 40.000648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984901, 35.170921, 40.463657>,  <41.869347, 35.046474, 39.779594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984901, 35.170921, 40.463657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591583, 35.128090, 40.404797>,  <41.355591, 35.102390, 40.369480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591583, 35.128090, 40.404797>,  <41.984901, 35.170921, 40.463657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591583, 35.128090, 40.404797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061109, -0.567379, 0.821186,
		-0.171425, 0.816465, 0.551360,
		-0.983300, -0.107078, -0.147157,
		41.296593, 35.095966, 40.360649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749157, 35.318600, 41.103092>,  <41.984901, 35.170921, 40.463657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749157, 35.318600, 41.103092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483925, 35.109497, 40.888786>,  <41.324787, 34.984035, 40.760204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483925, 35.109497, 40.888786>,  <41.749157, 35.318600, 41.103092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483925, 35.109497, 40.888786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180999, -0.582530, 0.792400,
		-0.726335, 0.622399, 0.291646,
		-0.663081, -0.522760, -0.535766,
		41.285000, 34.952667, 40.728058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065231, 35.401928, 41.522606>,  <41.749157, 35.318600, 41.103092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065231, 35.401928, 41.522606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060596, 35.068066, 41.302345>,  <41.057816, 34.867748, 41.170189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060596, 35.068066, 41.302345>,  <41.065231, 35.401928, 41.522606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060596, 35.068066, 41.302345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100114, -0.546957, 0.831153,
		-0.994909, 0.064763, -0.077220,
		-0.011592, -0.834652, -0.550655,
		41.057117, 34.817669, 41.137150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541588, 34.999046, 41.765129>,  <41.065231, 35.401928, 41.522606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541588, 34.999046, 41.765129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764004, 34.723961, 41.578423>,  <40.897453, 34.558910, 41.466400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764004, 34.723961, 41.578423>,  <40.541588, 34.999046, 41.765129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764004, 34.723961, 41.578423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188221, -0.651186, 0.735207,
		-0.809561, -0.320952, -0.491529,
		0.556043, -0.687711, -0.466765,
		40.930817, 34.517647, 41.438393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177845, 34.414711, 41.928677>,  <40.541588, 34.999046, 41.765129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177845, 34.414711, 41.928677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540222, 34.299007, 41.804996>,  <40.757648, 34.229588, 41.730789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540222, 34.299007, 41.804996>,  <40.177845, 34.414711, 41.928677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540222, 34.299007, 41.804996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038507, -0.670956, 0.740496,
		-0.421654, -0.682751, -0.596707,
		0.905939, -0.289255, -0.309202,
		40.812004, 34.212231, 41.712234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094769, 33.695282, 41.937870>,  <40.177845, 34.414711, 41.928677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094769, 33.695282, 41.937870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483456, 33.787758, 41.957096>,  <40.716667, 33.843243, 41.968632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483456, 33.787758, 41.957096>,  <40.094769, 33.695282, 41.937870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483456, 33.787758, 41.957096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155294, -0.779013, 0.607472,
		0.177884, -0.582829, -0.792885,
		0.971721, 0.231190, 0.048064,
		40.774971, 33.857117, 41.971516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611477, 33.118900, 41.660034>,  <40.094769, 33.695282, 41.937870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611477, 33.118900, 41.660034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809341, 33.355843, 41.914413>,  <40.928059, 33.498009, 42.067039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809341, 33.355843, 41.914413>,  <40.611477, 33.118900, 41.660034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809341, 33.355843, 41.914413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223971, -0.793912, 0.565279,
		0.839733, -0.137185, -0.525385,
		0.494657, 0.592354, 0.635949,
		40.957737, 33.533550, 42.105198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001968, 32.581535, 42.098106>,  <40.611477, 33.118900, 41.660034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001968, 32.581535, 42.098106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087830, 32.931828, 42.271088>,  <41.139347, 33.142002, 42.374878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087830, 32.931828, 42.271088>,  <41.001968, 32.581535, 42.098106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087830, 32.931828, 42.271088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097287, -0.459745, 0.882706,
		0.971834, -0.147399, -0.183881,
		0.214648, 0.875733, 0.432456,
		41.152225, 33.194546, 42.400826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652603, 32.639660, 42.525070>,  <41.001968, 32.581535, 42.098106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652603, 32.639660, 42.525070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399635, 32.909389, 42.677555>,  <41.247852, 33.071228, 42.769047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399635, 32.909389, 42.677555>,  <41.652603, 32.639660, 42.525070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399635, 32.909389, 42.677555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075822, -0.435876, 0.896807,
		0.770903, 0.596066, 0.224530,
		-0.632424, 0.674327, 0.381213,
		41.209908, 33.111687, 42.791920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961533, 32.820267, 43.234173>,  <41.652603, 32.639660, 42.525070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961533, 32.820267, 43.234173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580311, 32.941376, 43.232506>,  <41.351578, 33.014042, 43.231506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580311, 32.941376, 43.232506>,  <41.961533, 32.820267, 43.234173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580311, 32.941376, 43.232506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110839, -0.336028, 0.935308,
		0.281789, 0.891859, 0.353811,
		-0.953053, 0.302776, -0.004164,
		41.294395, 33.032207, 43.231258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769020, 33.196217, 43.899220>,  <41.961533, 32.820267, 43.234173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769020, 33.196217, 43.899220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413898, 33.058090, 43.777523>,  <41.200825, 32.975216, 43.704506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413898, 33.058090, 43.777523>,  <41.769020, 33.196217, 43.899220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413898, 33.058090, 43.777523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161186, -0.385899, 0.908350,
		-0.431072, 0.855476, 0.286943,
		-0.887804, -0.345314, -0.304242,
		41.147556, 32.954494, 43.686249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312263, 33.400272, 44.310806>,  <41.769020, 33.196217, 43.899220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312263, 33.400272, 44.310806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178341, 33.057606, 44.153820>,  <41.097988, 32.852005, 44.059628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178341, 33.057606, 44.153820>,  <41.312263, 33.400272, 44.310806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178341, 33.057606, 44.153820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149430, -0.362958, 0.919746,
		-0.930364, 0.366579, -0.006493,
		-0.334803, -0.856669, -0.392461,
		41.077900, 32.800606, 44.036083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737461, 33.134907, 44.726582>,  <41.312263, 33.400272, 44.310806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737461, 33.134907, 44.726582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906212, 32.825924, 44.536709>,  <41.007462, 32.640533, 44.422783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906212, 32.825924, 44.536709>,  <40.737461, 33.134907, 44.726582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906212, 32.825924, 44.536709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058100, -0.499448, 0.864393,
		-0.904788, -0.392249, -0.165828,
		0.421880, -0.772458, -0.474685,
		41.032776, 32.594185, 44.394302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341099, 32.531021, 44.815945>,  <40.737461, 33.134907, 44.726582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341099, 32.531021, 44.815945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737186, 32.483646, 44.786469>,  <40.974838, 32.455223, 44.768784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737186, 32.483646, 44.786469>,  <40.341099, 32.531021, 44.815945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737186, 32.483646, 44.786469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002149, -0.515293, 0.857011,
		-0.139472, -0.848791, -0.510001,
		0.990224, -0.118433, -0.073693,
		41.034252, 32.448116, 44.764362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580593, 31.831594, 44.777195>,  <40.341099, 32.531021, 44.815945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580593, 31.831594, 44.777195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898720, 32.026512, 44.921429>,  <41.089596, 32.143463, 45.007969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898720, 32.026512, 44.921429>,  <40.580593, 31.831594, 44.777195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898720, 32.026512, 44.921429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114123, -0.704546, 0.700422,
		0.595360, -0.515904, -0.615946,
		0.795313, 0.487297, 0.360582,
		41.137314, 32.172703, 45.029602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081318, 31.837412, 44.245892>,  <40.580593, 31.831594, 44.777195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081318, 31.837412, 44.245892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354431, 31.608236, 44.064541>,  <40.518299, 31.470732, 43.955730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354431, 31.608236, 44.064541>,  <40.081318, 31.837412, 44.245892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354431, 31.608236, 44.064541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701208, -0.339564, -0.626900,
		0.205224, 0.745948, -0.633596,
		0.682782, -0.572937, -0.453378,
		40.559265, 31.436356, 43.928528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817017, 32.118343, 44.057858>,  <40.081318, 31.837412, 44.245892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817017, 32.118343, 44.057858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549286, 32.411835, 44.104599>,  <40.388649, 32.587929, 44.132645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549286, 32.411835, 44.104599>,  <40.817017, 32.118343, 44.057858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549286, 32.411835, 44.104599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233381, 0.356952, -0.904499,
		-0.705366, -0.578129, -0.410154,
		-0.669322, 0.733725, 0.116857,
		40.348488, 32.631950, 44.139656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280258, 32.119507, 43.483829>,  <40.817017, 32.118343, 44.057858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280258, 32.119507, 43.483829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426044, 32.437050, 43.678543>,  <40.513515, 32.627575, 43.795372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426044, 32.437050, 43.678543>,  <40.280258, 32.119507, 43.483829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426044, 32.437050, 43.678543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328690, 0.379428, -0.864868,
		-0.871280, 0.475215, -0.122644,
		0.364464, 0.793854, 0.486787,
		40.535385, 32.675205, 43.824577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916340, 32.804787, 43.253895>,  <40.280258, 32.119507, 43.483829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916340, 32.804787, 43.253895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286804, 32.861893, 43.393517>,  <40.509083, 32.896156, 43.477291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286804, 32.861893, 43.393517>,  <39.916340, 32.804787, 43.253895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286804, 32.861893, 43.393517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264933, 0.412402, -0.871628,
		-0.268393, 0.899745, 0.344127,
		0.926162, 0.142768, 0.349058,
		40.564651, 32.904724, 43.498234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017773, 33.413712, 43.206173>,  <39.916340, 32.804787, 43.253895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017773, 33.413712, 43.206173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398438, 33.291451, 43.218288>,  <40.626835, 33.218094, 43.225559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398438, 33.291451, 43.218288>,  <40.017773, 33.413712, 43.206173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398438, 33.291451, 43.218288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239584, 0.676979, -0.695916,
		0.192206, 0.669532, 0.717484,
		0.951660, -0.305656, 0.030289,
		40.683937, 33.199753, 43.227375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458691, 34.094883, 43.174400>,  <40.017773, 33.413712, 43.206173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458691, 34.094883, 43.174400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661182, 33.773499, 43.049061>,  <40.782677, 33.580669, 42.973858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661182, 33.773499, 43.049061>,  <40.458691, 34.094883, 43.174400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661182, 33.773499, 43.049061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246505, 0.482992, -0.840210,
		0.826418, 0.348098, 0.442562,
		0.506229, -0.803459, -0.313345,
		40.813049, 33.532459, 42.955059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139408, 34.245266, 43.161087>,  <40.458691, 34.094883, 43.174400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139408, 34.245266, 43.161087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078827, 33.942513, 42.906780>,  <41.042477, 33.760860, 42.754196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078827, 33.942513, 42.906780>,  <41.139408, 34.245266, 43.161087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078827, 33.942513, 42.906780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307640, 0.575145, -0.758002,
		0.939372, -0.310389, 0.145737,
		-0.151455, -0.756880, -0.635763,
		41.033390, 33.715450, 42.716053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780518, 34.073910, 42.948963>,  <41.139408, 34.245266, 43.161087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780518, 34.073910, 42.948963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495605, 33.960358, 42.692192>,  <41.324657, 33.892227, 42.538128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495605, 33.960358, 42.692192>,  <41.780518, 34.073910, 42.948963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495605, 33.960358, 42.692192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391841, 0.597957, -0.699219,
		0.582338, -0.749573, -0.314677,
		-0.712280, -0.283879, -0.641927,
		41.281921, 33.875195, 42.499615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993973, 34.409977, 42.309052>,  <41.780518, 34.073910, 42.948963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993973, 34.409977, 42.309052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638191, 34.260437, 42.203896>,  <41.424721, 34.170715, 42.140804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638191, 34.260437, 42.203896>,  <41.993973, 34.409977, 42.309052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638191, 34.260437, 42.203896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073280, 0.451112, -0.889454,
		0.451112, -0.810393, -0.373848,
		0.889454, 0.373848, 0.262888,
		41.371357, 34.148281, 42.125031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996895, 33.780224, 41.933731>,  <41.993973, 34.409977, 42.309052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996895, 33.780224, 41.933731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597340, 33.798332, 41.938942>,  <41.357605, 33.809196, 41.942070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597340, 33.798332, 41.938942>,  <41.996895, 33.780224, 41.933731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597340, 33.798332, 41.938942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008827, 0.451503, -0.892226,
		-0.046272, -0.891120, -0.451402,
		-0.998890, 0.045269, 0.013026,
		41.297672, 33.811913, 41.942848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853645, 33.563530, 41.318645>,  <41.996895, 33.780224, 41.933731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853645, 33.563530, 41.318645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544178, 33.789333, 41.433720>,  <41.358498, 33.924816, 41.502766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544178, 33.789333, 41.433720>,  <41.853645, 33.563530, 41.318645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544178, 33.789333, 41.433720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134203, 0.297751, -0.945164,
		-0.619212, -0.769854, -0.154602,
		-0.773670, 0.564509, 0.287687,
		41.312077, 33.958687, 41.520027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524471, 33.713074, 40.695679>,  <41.853645, 33.563530, 41.318645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524471, 33.713074, 40.695679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326206, 33.966747, 40.933041>,  <41.207249, 34.118954, 41.075459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326206, 33.966747, 40.933041>,  <41.524471, 33.713074, 40.695679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326206, 33.966747, 40.933041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326150, 0.497322, -0.803926,
		-0.804953, -0.592012, -0.039662,
		-0.495658, 0.634186, 0.593406,
		41.177509, 34.157001, 41.111061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811954, 33.785110, 40.422077>,  <41.524471, 33.713074, 40.695679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811954, 33.785110, 40.422077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897827, 34.103416, 40.648590>,  <40.949348, 34.294399, 40.784496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897827, 34.103416, 40.648590>,  <40.811954, 33.785110, 40.422077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897827, 34.103416, 40.648590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117798, 0.596662, -0.793800,
		-0.969555, 0.103705, 0.221830,
		0.214678, 0.795764, 0.566280,
		40.962231, 34.342144, 40.818474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331898, 34.276089, 40.202820>,  <40.811954, 33.785110, 40.422077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331898, 34.276089, 40.202820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591446, 34.484184, 40.424927>,  <40.747177, 34.609039, 40.558189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591446, 34.484184, 40.424927>,  <40.331898, 34.276089, 40.202820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591446, 34.484184, 40.424927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157870, 0.805918, -0.570590,
		-0.744340, 0.282580, 0.605068,
		0.648872, 0.520235, 0.555266,
		40.786106, 34.640255, 40.591507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064922, 34.944687, 40.563194>,  <40.331898, 34.276089, 40.202820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064922, 34.944687, 40.563194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451496, 35.014565, 40.487850>,  <40.683441, 35.056492, 40.442642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451496, 35.014565, 40.487850>,  <40.064922, 34.944687, 40.563194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451496, 35.014565, 40.487850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256768, 0.680568, -0.686220,
		0.008313, 0.711553, 0.702583,
		0.966437, 0.174696, -0.188362,
		40.741428, 35.066975, 40.431343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210773, 35.731186, 40.655319>,  <40.064922, 34.944687, 40.563194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210773, 35.731186, 40.655319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515629, 35.575668, 40.448250>,  <40.698544, 35.482357, 40.324009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515629, 35.575668, 40.448250>,  <40.210773, 35.731186, 40.655319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515629, 35.575668, 40.448250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064897, 0.749694, -0.658595,
		0.644152, 0.535536, 0.546139,
		0.762139, -0.388793, -0.517672,
		40.744270, 35.459030, 40.292950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522102, 36.324032, 40.386028>,  <40.210773, 35.731186, 40.655319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522102, 36.324032, 40.386028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662476, 36.029274, 40.154915>,  <40.746700, 35.852421, 40.016247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662476, 36.029274, 40.154915>,  <40.522102, 36.324032, 40.386028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662476, 36.029274, 40.154915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093674, 0.586304, -0.804657,
		0.931705, 0.336501, 0.136723,
		0.350929, -0.736896, -0.577783,
		40.767754, 35.808205, 39.981579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959110, 36.631233, 39.908550>,  <40.522102, 36.324032, 40.386028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959110, 36.631233, 39.908550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880253, 36.285995, 39.722561>,  <40.832939, 36.078854, 39.610970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880253, 36.285995, 39.722561>,  <40.959110, 36.631233, 39.908550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880253, 36.285995, 39.722561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133747, 0.446167, -0.884899,
		0.971209, -0.236640, 0.027478,
		-0.197143, -0.863097, -0.464971,
		40.821110, 36.027065, 39.583069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301712, 36.654278, 39.299805>,  <40.959110, 36.631233, 39.908550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301712, 36.654278, 39.299805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023602, 36.374130, 39.235210>,  <40.856735, 36.206043, 39.196453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023602, 36.374130, 39.235210>,  <41.301712, 36.654278, 39.299805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023602, 36.374130, 39.235210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013943, 0.211491, -0.977280,
		0.718607, -0.681732, -0.137279,
		-0.695276, -0.700366, -0.161485,
		40.815018, 36.164021, 39.186764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221329, 36.730484, 38.599079>,  <41.301712, 36.654278, 39.299805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221329, 36.730484, 38.599079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977234, 36.418991, 38.657295>,  <40.830776, 36.232094, 38.692226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977234, 36.418991, 38.657295>,  <41.221329, 36.730484, 38.599079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977234, 36.418991, 38.657295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436885, 0.177547, -0.881821,
		0.660861, -0.601710, -0.448562,
		-0.610242, -0.778731, 0.145544,
		40.794163, 36.185371, 38.700958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229305, 36.168026, 38.032833>,  <41.221329, 36.730484, 38.599079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229305, 36.168026, 38.032833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871475, 36.139168, 38.209259>,  <40.656776, 36.121853, 38.315113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871475, 36.139168, 38.209259>,  <41.229305, 36.168026, 38.032833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871475, 36.139168, 38.209259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445526, 0.066004, -0.892833,
		0.035294, -0.995208, -0.091184,
		-0.894573, -0.072136, 0.441062,
		40.603104, 36.117523, 38.341576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925564, 35.524792, 37.862064>,  <41.229305, 36.168026, 38.032833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925564, 35.524792, 37.862064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648098, 35.801342, 37.942886>,  <40.481617, 35.967274, 37.991379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648098, 35.801342, 37.942886>,  <40.925564, 35.524792, 37.862064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648098, 35.801342, 37.942886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357834, -0.087318, -0.929694,
		-0.625124, -0.717200, 0.307967,
		-0.693668, 0.691375, 0.202054,
		40.439999, 36.008755, 38.003502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341801, 35.210434, 37.494293>,  <40.925564, 35.524792, 37.862064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341801, 35.210434, 37.494293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286190, 35.600388, 37.563900>,  <40.252823, 35.834358, 37.605663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286190, 35.600388, 37.563900>,  <40.341801, 35.210434, 37.494293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286190, 35.600388, 37.563900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350582, 0.115890, -0.929334,
		-0.926156, -0.190205, 0.325664,
		-0.139023, 0.974880, 0.174014,
		40.244484, 35.892853, 37.616104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132675, 35.014370, 37.408550>,  <40.341801, 35.210434, 37.494293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132675, 35.014370, 37.408550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136673, 34.696236, 37.650982>,  <41.139072, 34.505356, 37.796440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136673, 34.696236, 37.650982>,  <41.132675, 35.014370, 37.408550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136673, 34.696236, 37.650982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346096, -0.565899, -0.748315,
		0.938146, 0.217239, 0.269610,
		0.009991, -0.795340, 0.606081,
		41.139671, 34.457634, 37.832806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664459, 34.639641, 37.175152>,  <41.132675, 35.014370, 37.408550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664459, 34.639641, 37.175152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469345, 34.380463, 37.409157>,  <41.352276, 34.224957, 37.549561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469345, 34.380463, 37.409157>,  <41.664459, 34.639641, 37.175152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469345, 34.380463, 37.409157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220693, -0.739902, -0.635484,
		0.844607, -0.180872, 0.503909,
		-0.487784, -0.647943, 0.585010,
		41.323009, 34.186081, 37.584660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999432, 34.031567, 37.050648>,  <41.664459, 34.639641, 37.175152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999432, 34.031567, 37.050648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684299, 33.902740, 37.260639>,  <41.495220, 33.825447, 37.386635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684299, 33.902740, 37.260639>,  <41.999432, 34.031567, 37.050648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684299, 33.902740, 37.260639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223815, -0.943818, -0.243132,
		0.573784, -0.074050, 0.815652,
		-0.787831, -0.322061, 0.524975,
		41.447948, 33.806122, 37.418133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115952, 33.479969, 37.566208>,  <41.999432, 34.031567, 37.050648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115952, 33.479969, 37.566208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737232, 33.442642, 37.443005>,  <41.510002, 33.420246, 37.369083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737232, 33.442642, 37.443005>,  <42.115952, 33.479969, 37.566208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737232, 33.442642, 37.443005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156964, -0.969392, -0.188791,
		-0.280962, -0.227092, 0.932464,
		-0.946796, -0.093321, -0.308008,
		41.453194, 33.414646, 37.350601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709930, 33.763680, 37.095509>,  <42.115952, 33.479969, 37.566208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709930, 33.763680, 37.095509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976280, 33.656731, 37.374115>,  <43.136089, 33.592564, 37.541279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976280, 33.656731, 37.374115>,  <42.709930, 33.763680, 37.095509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976280, 33.656731, 37.374115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579044, -0.403482, -0.708456,
		0.470448, 0.875052, -0.113850,
		0.665873, -0.267368, 0.696511,
		43.176041, 33.576519, 37.583069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416969, 34.073826, 37.033985>,  <42.709930, 33.763680, 37.095509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416969, 34.073826, 37.033985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394638, 33.690247, 37.145191>,  <43.381237, 33.460098, 37.211914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394638, 33.690247, 37.145191>,  <43.416969, 34.073826, 37.033985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394638, 33.690247, 37.145191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659919, -0.244400, -0.710475,
		0.749259, 0.143801, 0.646477,
		-0.055832, -0.958953, 0.278016,
		43.377888, 33.402561, 37.228596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109192, 33.831146, 37.034241>,  <43.416969, 34.073826, 37.033985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109192, 33.831146, 37.034241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.864491, 33.517620, 36.991550>,  <43.717670, 33.329506, 36.965935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.864491, 33.517620, 36.991550>,  <44.109192, 33.831146, 37.034241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.864491, 33.517620, 36.991550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632283, -0.403425, -0.661412,
		0.475370, -0.472102, 0.742390,
		-0.611752, -0.783817, -0.106726,
		43.680965, 33.282475, 36.959534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429798, 33.166077, 37.328239>,  <44.109192, 33.831146, 37.034241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429798, 33.166077, 37.328239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185188, 33.141415, 37.012714>,  <44.038422, 33.126617, 36.823399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185188, 33.141415, 37.012714>,  <44.429798, 33.166077, 37.328239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.185188, 33.141415, 37.012714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758587, -0.329065, -0.562372,
		-0.224897, -0.942292, 0.248006,
		-0.611529, -0.061658, -0.788816,
		44.001728, 33.122917, 36.776070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186317, 32.442886, 36.977814>,  <44.429798, 33.166077, 37.328239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186317, 32.442886, 36.977814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247879, 32.767231, 36.751957>,  <44.284817, 32.961838, 36.616444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247879, 32.767231, 36.751957>,  <44.186317, 32.442886, 36.977814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247879, 32.767231, 36.751957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744643, -0.470799, -0.473134,
		-0.649478, -0.347641, -0.676258,
		0.153901, 0.810860, -0.564642,
		44.294048, 33.010490, 36.582565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445995, 32.132511, 36.419788>,  <44.186317, 32.442886, 36.977814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445995, 32.132511, 36.419788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516907, 32.520134, 36.351078>,  <44.559452, 32.752708, 36.309853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516907, 32.520134, 36.351078>,  <44.445995, 32.132511, 36.419788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516907, 32.520134, 36.351078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720861, -0.246683, -0.647693,
		-0.670023, -0.009001, -0.742286,
		0.177280, 0.969054, -0.171772,
		44.570091, 32.810852, 36.299545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538628, 32.357101, 35.714672>,  <44.445995, 32.132511, 36.419788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538628, 32.357101, 35.714672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740841, 32.586224, 35.972767>,  <44.862171, 32.723698, 36.127625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740841, 32.586224, 35.972767>,  <44.538628, 32.357101, 35.714672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740841, 32.586224, 35.972767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861636, -0.374064, -0.343015,
		0.044880, 0.729366, -0.682650,
		0.505538, 0.572802, 0.645236,
		44.892502, 32.758064, 36.166336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937473, 32.876835, 35.369198>,  <44.538628, 32.357101, 35.714672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937473, 32.876835, 35.369198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098167, 32.739124, 35.708630>,  <45.194584, 32.656498, 35.912289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098167, 32.739124, 35.708630>,  <44.937473, 32.876835, 35.369198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098167, 32.739124, 35.708630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774078, -0.367454, -0.515540,
		0.489301, 0.863975, 0.118877,
		0.401731, -0.344274, 0.848580,
		45.218685, 32.635841, 35.963203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416565, 33.134892, 34.826664>,  <44.937473, 32.876835, 35.369198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416565, 33.134892, 34.826664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612946, 33.212208, 34.486874>,  <45.730774, 33.258598, 34.283001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612946, 33.212208, 34.486874>,  <45.416565, 33.134892, 34.826664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612946, 33.212208, 34.486874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655162, 0.560782, 0.506248,
		0.574227, -0.805084, 0.148672,
		0.490945, 0.193297, -0.849476,
		45.760231, 33.270195, 34.232033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148792, 33.160049, 34.944370>,  <45.416565, 33.134892, 34.826664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.148792, 33.160049, 34.944370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.103004, 33.387844, 34.618774>,  <46.075531, 33.524521, 34.423416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.103004, 33.387844, 34.618774>,  <46.148792, 33.160049, 34.944370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.103004, 33.387844, 34.618774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668952, 0.649951, 0.360649,
		0.734439, -0.503237, -0.455360,
		-0.114470, 0.569489, -0.813990,
		46.068665, 33.558689, 34.374577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.726524, 33.181412, 34.448738>,  <46.148792, 33.160049, 34.944370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.726524, 33.181412, 34.448738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525181, 33.526787, 34.435474>,  <46.404373, 33.734013, 34.427517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525181, 33.526787, 34.435474>,  <46.726524, 33.181412, 34.448738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525181, 33.526787, 34.435474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834263, 0.495631, 0.241568,
		0.225013, 0.093934, -0.969817,
		-0.503363, 0.863439, -0.033158,
		46.374172, 33.785820, 34.425526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.105869, 33.647884, 33.971996>,  <46.726524, 33.181412, 34.448738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.105869, 33.647884, 33.971996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.870041, 33.860550, 34.215218>,  <46.728542, 33.988152, 34.361153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.870041, 33.860550, 34.215218>,  <47.105869, 33.647884, 33.971996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.870041, 33.860550, 34.215218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676539, 0.736306, 0.012173,
		-0.441244, 0.418551, -0.793800,
		-0.589576, 0.531665, 0.608056,
		46.693169, 34.020050, 34.397636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.782269, 34.252575, 33.716827>,  <47.105869, 33.647884, 33.971996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.782269, 34.252575, 33.716827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865417, 34.301907, 34.104969>,  <46.915306, 34.331505, 34.337852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865417, 34.301907, 34.104969>,  <46.782269, 34.252575, 33.716827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.865417, 34.301907, 34.104969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764759, 0.598017, -0.239832,
		-0.609865, 0.791938, 0.029993,
		0.207869, 0.123328, 0.970351,
		46.927776, 34.338905, 34.396076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.812172, 35.081059, 33.966061>,  <46.782269, 34.252575, 33.716827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.812172, 35.081059, 33.966061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.057621, 34.802933, 34.115734>,  <47.204891, 34.636059, 34.205536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.057621, 34.802933, 34.115734>,  <46.812172, 35.081059, 33.966061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.057621, 34.802933, 34.115734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784506, 0.590600, -0.189058,
		-0.089537, 0.409556, 0.907880,
		0.613624, -0.695310, 0.374180,
		47.241707, 34.594341, 34.227989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.183571, 35.359509, 34.440941>,  <46.812172, 35.081059, 33.966061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.183571, 35.359509, 34.440941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390495, 35.047142, 34.300907>,  <47.514652, 34.859722, 34.216888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390495, 35.047142, 34.300907>,  <47.183571, 35.359509, 34.440941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.390495, 35.047142, 34.300907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803767, 0.583809, -0.114564,
		0.293844, -0.222117, 0.929688,
		0.517314, -0.780917, -0.350080,
		47.545689, 34.812866, 34.195885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.865555, 35.293919, 34.711777>,  <47.183571, 35.359509, 34.440941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.865555, 35.293919, 34.711777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.870411, 35.143238, 34.341274>,  <47.873325, 35.052830, 34.118973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.870411, 35.143238, 34.341274>,  <47.865555, 35.293919, 34.711777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.870411, 35.143238, 34.341274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619553, 0.729921, -0.288735,
		0.784861, -0.570357, 0.242253,
		0.012143, -0.376705, -0.926254,
		47.874054, 35.030228, 34.063396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.561386, 34.754665, 35.083023>,  <47.865555, 35.293919, 34.711777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.561386, 34.754665, 35.083023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.941292, 34.844238, 34.995575>,  <48.169235, 34.897984, 34.943104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.941292, 34.844238, 34.995575>,  <47.561386, 34.754665, 35.083023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.941292, 34.844238, 34.995575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112436, 0.896087, 0.429403,
		0.292065, -0.383251, 0.876251,
		0.949767, 0.223935, -0.218624,
		48.226223, 34.911419, 34.929989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.535698, 30.691650, 29.130478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.178406, 30.725069, 28.953770>,  <40.964031, 30.745119, 28.847746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.178406, 30.725069, 28.953770>,  <41.535698, 30.691650, 29.130478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178406, 30.725069, 28.953770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402787, 0.287860, 0.868850,
		0.199755, 0.954022, -0.223475,
		-0.893230, 0.083544, -0.441769,
		40.910435, 30.750132, 28.821239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069313, 31.298077, 29.519371>,  <41.535698, 30.691650, 29.130478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069313, 31.298077, 29.519371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.801392, 31.106688, 29.292240>,  <40.640640, 30.991854, 29.155962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.801392, 31.106688, 29.292240>,  <41.069313, 31.298077, 29.519371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801392, 31.106688, 29.292240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723600, 0.248976, 0.643750,
		-0.166642, 0.842065, -0.512989,
		-0.669801, -0.478474, -0.567828,
		40.600452, 30.963144, 29.121891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563545, 31.795876, 29.399637>,  <41.069313, 31.298077, 29.519371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563545, 31.795876, 29.399637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.385155, 31.439295, 29.367598>,  <40.278122, 31.225346, 29.348373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.385155, 31.439295, 29.367598>,  <40.563545, 31.795876, 29.399637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385155, 31.439295, 29.367598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808382, 0.362761, 0.463599,
		-0.384219, 0.271506, -0.882417,
		-0.445976, -0.891453, -0.080101,
		40.251362, 31.171860, 29.343567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890118, 31.906071, 29.057642>,  <40.563545, 31.795876, 29.399637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890118, 31.906071, 29.057642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.904308, 31.559153, 29.256252>,  <39.912823, 31.351002, 29.375418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.904308, 31.559153, 29.256252>,  <39.890118, 31.906071, 29.057642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904308, 31.559153, 29.256252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803863, 0.270418, 0.529790,
		-0.593755, -0.417935, -0.687594,
		0.035480, -0.867297, 0.496525,
		39.914951, 31.298964, 29.405210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035553, 31.694359, 29.143671>,  <39.890118, 31.906071, 29.057642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035553, 31.694359, 29.143671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231670, 31.450602, 29.392912>,  <39.349342, 31.304348, 29.542456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231670, 31.450602, 29.392912>,  <39.035553, 31.694359, 29.143671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231670, 31.450602, 29.392912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626098, 0.251087, 0.738212,
		-0.606313, -0.752062, -0.258433,
		0.490292, -0.609391, 0.623101,
		39.378757, 31.267784, 29.579842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483318, 31.185568, 29.422434>,  <39.035553, 31.694359, 29.143671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483318, 31.185568, 29.422434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804916, 31.213196, 29.658678>,  <38.997875, 31.229773, 29.800425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804916, 31.213196, 29.658678>,  <38.483318, 31.185568, 29.422434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804916, 31.213196, 29.658678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574023, 0.349391, 0.740556,
		-0.155205, -0.934428, 0.320556,
		0.803996, 0.069069, 0.590611,
		39.046116, 31.233917, 29.835861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212547, 30.877014, 30.128500>,  <38.483318, 31.185568, 29.422434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212547, 30.877014, 30.128500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.534462, 31.108406, 30.181694>,  <38.727612, 31.247240, 30.213610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.534462, 31.108406, 30.181694>,  <38.212547, 30.877014, 30.128500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534462, 31.108406, 30.181694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436085, 0.424241, 0.793630,
		0.402674, -0.696698, 0.593688,
		0.804787, 0.578473, 0.132989,
		38.775898, 31.281950, 30.221590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388020, 30.814150, 30.832296>,  <38.212547, 30.877014, 30.128500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388020, 30.814150, 30.832296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575302, 31.148987, 30.719116>,  <38.687672, 31.349888, 30.651209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575302, 31.148987, 30.719116>,  <38.388020, 30.814150, 30.832296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575302, 31.148987, 30.719116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371881, 0.477152, 0.796260,
		0.801553, -0.267590, 0.534704,
		0.468206, 0.837091, -0.282950,
		38.715763, 31.400114, 30.634232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544449, 31.111319, 31.508436>,  <38.388020, 30.814150, 30.832296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544449, 31.111319, 31.508436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.647491, 31.411694, 31.265215>,  <38.709316, 31.591919, 31.119282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.647491, 31.411694, 31.265215>,  <38.544449, 31.111319, 31.508436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647491, 31.411694, 31.265215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249616, 0.659651, 0.708910,
		0.933450, -0.030843, 0.357379,
		0.257610, 0.750939, -0.608052,
		38.724773, 31.636974, 31.082800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931087, 31.563961, 31.833540>,  <38.544449, 31.111319, 31.508436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931087, 31.563961, 31.833540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.739346, 31.782368, 31.558706>,  <38.624302, 31.913412, 31.393806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.739346, 31.782368, 31.558706>,  <38.931087, 31.563961, 31.833540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739346, 31.782368, 31.558706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171996, 0.709265, 0.683638,
		0.860603, 0.445880, -0.246076,
		-0.479354, 0.546017, -0.687085,
		38.595539, 31.946173, 31.352581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218719, 32.163315, 31.955256>,  <38.931087, 31.563961, 31.833540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218719, 32.163315, 31.955256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870415, 32.224419, 31.768309>,  <38.661430, 32.261082, 31.656141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870415, 32.224419, 31.768309>,  <39.218719, 32.163315, 31.955256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870415, 32.224419, 31.768309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212116, 0.740813, 0.637340,
		0.443594, 0.654109, -0.612671,
		-0.870765, 0.152763, -0.467367,
		38.609184, 32.270248, 31.628098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177944, 32.920364, 32.014526>,  <39.218719, 32.163315, 31.955256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177944, 32.920364, 32.014526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.818409, 32.763569, 31.936102>,  <38.602688, 32.669491, 31.889048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.818409, 32.763569, 31.936102>,  <39.177944, 32.920364, 32.014526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818409, 32.763569, 31.936102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426529, 0.679405, 0.597061,
		-0.100836, 0.620285, -0.777868,
		-0.898835, -0.391988, -0.196062,
		38.548759, 32.645973, 31.877283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655010, 33.516182, 31.956972>,  <39.177944, 32.920364, 32.014526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655010, 33.516182, 31.956972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440910, 33.184410, 32.020908>,  <38.312450, 32.985348, 32.059269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440910, 33.184410, 32.020908>,  <38.655010, 33.516182, 31.956972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440910, 33.184410, 32.020908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429948, 0.430403, 0.793661,
		-0.727085, 0.356082, -0.586986,
		-0.535249, -0.829433, 0.159842,
		38.280334, 32.935581, 32.068863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045712, 33.770809, 32.176357>,  <38.655010, 33.516182, 31.956972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045712, 33.770809, 32.176357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.001087, 33.387314, 32.280952>,  <37.974312, 33.157215, 32.343712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.001087, 33.387314, 32.280952>,  <38.045712, 33.770809, 32.176357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001087, 33.387314, 32.280952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459232, 0.283088, 0.842002,
		-0.881283, -0.026153, -0.471864,
		-0.111558, -0.958737, 0.261491,
		37.967621, 33.099693, 32.359398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340973, 33.679169, 32.327217>,  <38.045712, 33.770809, 32.176357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340973, 33.679169, 32.327217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.516495, 33.381226, 32.528271>,  <37.621807, 33.202461, 32.648903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.516495, 33.381226, 32.528271>,  <37.340973, 33.679169, 32.327217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516495, 33.381226, 32.528271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547669, 0.221768, 0.806770,
		-0.712394, -0.629293, -0.310620,
		0.438809, -0.744855, 0.502631,
		37.648136, 33.157768, 32.679058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864376, 33.387157, 32.720425>,  <37.340973, 33.679169, 32.327217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864376, 33.387157, 32.720425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.200790, 33.270473, 32.902660>,  <37.402637, 33.200462, 33.012001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.200790, 33.270473, 32.902660>,  <36.864376, 33.387157, 32.720425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200790, 33.270473, 32.902660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432085, 0.144525, 0.890177,
		-0.325517, -0.945525, -0.004492,
		0.841036, -0.291709, 0.455593,
		37.453102, 33.182961, 33.039337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645058, 32.958092, 33.292625>,  <36.864376, 33.387157, 32.720425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645058, 32.958092, 33.292625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.014858, 33.081821, 33.381714>,  <37.236740, 33.156059, 33.435169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.014858, 33.081821, 33.381714>,  <36.645058, 32.958092, 33.292625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014858, 33.081821, 33.381714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170992, -0.185666, 0.967621,
		0.340664, -0.932655, -0.118756,
		0.924506, 0.309327, 0.222726,
		37.292210, 33.174618, 33.448532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780293, 32.602959, 33.844715>,  <36.645058, 32.958092, 33.292625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780293, 32.602959, 33.844715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.026253, 32.917313, 33.870876>,  <37.173828, 33.105927, 33.886574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.026253, 32.917313, 33.870876>,  <36.780293, 32.602959, 33.844715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026253, 32.917313, 33.870876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179836, 0.058993, 0.981926,
		0.767826, -0.615548, 0.177606,
		0.614900, 0.785889, 0.065401,
		37.210724, 33.153080, 33.890495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071629, 32.494137, 34.381241>,  <36.780293, 32.602959, 33.844715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071629, 32.494137, 34.381241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178211, 32.878483, 34.350937>,  <37.242161, 33.109089, 34.332756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178211, 32.878483, 34.350937>,  <37.071629, 32.494137, 34.381241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178211, 32.878483, 34.350937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301041, 0.157630, 0.940493,
		0.915629, -0.227793, 0.331262,
		0.266455, 0.960866, -0.075756,
		37.258148, 33.166744, 34.328209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562794, 32.580254, 35.016911>,  <37.071629, 32.494137, 34.381241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562794, 32.580254, 35.016911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.409729, 32.926456, 34.887627>,  <37.317890, 33.134178, 34.810055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.409729, 32.926456, 34.887627>,  <37.562794, 32.580254, 35.016911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409729, 32.926456, 34.887627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225300, 0.251857, 0.941174,
		0.895996, 0.432973, 0.098622,
		-0.382664, 0.865507, -0.323211,
		37.294930, 33.186108, 34.790665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815678, 33.080151, 35.433544>,  <37.562794, 32.580254, 35.016911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815678, 33.080151, 35.433544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483643, 33.240795, 35.278797>,  <37.284424, 33.337181, 35.185951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483643, 33.240795, 35.278797>,  <37.815678, 33.080151, 35.433544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483643, 33.240795, 35.278797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389109, 0.079790, 0.917730,
		0.399443, 0.912326, 0.090039,
		-0.830084, 0.401616, -0.386865,
		37.234619, 33.361279, 35.162739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684711, 33.573013, 35.855167>,  <37.815678, 33.080151, 35.433544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684711, 33.573013, 35.855167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330685, 33.502705, 35.682762>,  <37.118271, 33.460522, 35.579319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330685, 33.502705, 35.682762>,  <37.684711, 33.573013, 35.855167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330685, 33.502705, 35.682762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441858, 0.026080, 0.896706,
		-0.146372, 0.984086, -0.100748,
		-0.885063, -0.175768, -0.431009,
		37.065166, 33.449974, 35.553459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216820, 33.688892, 36.467495>,  <37.684711, 33.573013, 35.855167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216820, 33.688892, 36.467495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548687, 33.704586, 36.690247>,  <38.747807, 33.714001, 36.823898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548687, 33.704586, 36.690247>,  <38.216820, 33.688892, 36.467495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548687, 33.704586, 36.690247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519121, -0.421143, -0.743742,
		0.205345, 0.906145, -0.369776,
		0.829666, 0.039235, 0.556879,
		38.797588, 33.716358, 36.857311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752560, 33.952251, 36.073402>,  <38.216820, 33.688892, 36.467495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752560, 33.952251, 36.073402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.938576, 33.729141, 36.348392>,  <39.050186, 33.595276, 36.513386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.938576, 33.729141, 36.348392>,  <38.752560, 33.952251, 36.073402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938576, 33.729141, 36.348392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501416, -0.474040, -0.723788,
		0.729605, 0.681299, 0.059234,
		0.465037, -0.557780, 0.687476,
		39.078087, 33.561806, 36.554634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438911, 33.863853, 35.806435>,  <38.752560, 33.952251, 36.073402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438911, 33.863853, 35.806435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.401703, 33.572651, 36.078125>,  <39.379379, 33.397930, 36.241138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.401703, 33.572651, 36.078125>,  <39.438911, 33.863853, 35.806435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401703, 33.572651, 36.078125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515870, -0.618721, -0.592506,
		0.851602, 0.295282, 0.433108,
		-0.093017, -0.728007, 0.679231,
		39.373798, 33.354248, 36.281895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055767, 33.510761, 35.716785>,  <39.438911, 33.863853, 35.806435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055767, 33.510761, 35.716785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823723, 33.257320, 35.921535>,  <39.684494, 33.105255, 36.044388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823723, 33.257320, 35.921535>,  <40.055767, 33.510761, 35.716785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823723, 33.257320, 35.921535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444389, -0.772856, -0.453002,
		0.682631, -0.035320, 0.729910,
		-0.580115, -0.633597, 0.511880,
		39.649689, 33.067242, 36.075100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503677, 33.032673, 35.899254>,  <40.055767, 33.510761, 35.716785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503677, 33.032673, 35.899254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.136246, 32.875549, 35.916771>,  <39.915787, 32.781277, 35.927280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.136246, 32.875549, 35.916771>,  <40.503677, 33.032673, 35.899254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136246, 32.875549, 35.916771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296484, -0.758092, -0.580857,
		0.261367, -0.520576, 0.812827,
		-0.918578, -0.392807, 0.043798,
		39.860672, 32.757706, 35.929909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553139, 32.309467, 36.105110>,  <40.503677, 33.032673, 35.899254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553139, 32.309467, 36.105110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.195530, 32.342041, 35.928886>,  <39.980965, 32.361584, 35.823151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.195530, 32.342041, 35.928886>,  <40.553139, 32.309467, 36.105110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195530, 32.342041, 35.928886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178405, -0.837311, -0.516800,
		-0.410968, -0.540629, 0.734047,
		-0.894023, 0.081430, -0.440559,
		39.927322, 32.366470, 35.796719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295933, 31.629280, 36.125927>,  <40.553139, 32.309467, 36.105110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295933, 31.629280, 36.125927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.095757, 31.831064, 35.844479>,  <39.975651, 31.952135, 35.675610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.095757, 31.831064, 35.844479>,  <40.295933, 31.629280, 36.125927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095757, 31.831064, 35.844479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224064, -0.709554, -0.668078,
		-0.836277, -0.491987, 0.242054,
		-0.500436, 0.504463, -0.703620,
		39.945625, 31.982403, 35.633392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973270, 31.133522, 35.785965>,  <40.295933, 31.629280, 36.125927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973270, 31.133522, 35.785965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.960133, 31.447838, 35.538918>,  <39.952248, 31.636427, 35.390690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.960133, 31.447838, 35.538918>,  <39.973270, 31.133522, 35.785965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960133, 31.447838, 35.538918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221267, -0.596901, -0.771201,
		-0.974660, -0.161990, -0.154263,
		-0.032847, 0.785792, -0.617618,
		39.950279, 31.683575, 35.353634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538353, 30.952156, 35.183762>,  <39.973270, 31.133522, 35.785965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538353, 30.952156, 35.183762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.768787, 31.254786, 35.060005>,  <39.907047, 31.436363, 34.985752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.768787, 31.254786, 35.060005>,  <39.538353, 30.952156, 35.183762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768787, 31.254786, 35.060005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302758, -0.549091, -0.778997,
		-0.759252, 0.355097, -0.545382,
		0.576084, 0.756574, -0.309390,
		39.941612, 31.481758, 34.967190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505775, 30.812538, 34.479195>,  <39.538353, 30.952156, 35.183762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505775, 30.812538, 34.479195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.812881, 31.067879, 34.501251>,  <39.997147, 31.221083, 34.514484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.812881, 31.067879, 34.501251>,  <39.505775, 30.812538, 34.479195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812881, 31.067879, 34.501251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406653, -0.418971, -0.811848,
		-0.495140, 0.645735, -0.581259,
		0.767769, 0.638349, 0.055141,
		40.043213, 31.259384, 34.517792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606255, 31.032459, 33.833488>,  <39.505775, 30.812538, 34.479195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606255, 31.032459, 33.833488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.965305, 31.116335, 33.988556>,  <40.180737, 31.166660, 34.081596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.965305, 31.116335, 33.988556>,  <39.606255, 31.032459, 33.833488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965305, 31.116335, 33.988556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436459, -0.300501, -0.848058,
		-0.061336, 0.930445, -0.361261,
		0.897631, 0.209691, 0.387670,
		40.234596, 31.179243, 34.104858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016014, 31.444540, 33.296547>,  <39.606255, 31.032459, 33.833488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016014, 31.444540, 33.296547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.292580, 31.296497, 33.544727>,  <40.458519, 31.207672, 33.693638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.292580, 31.296497, 33.544727>,  <40.016014, 31.444540, 33.296547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292580, 31.296497, 33.544727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614763, -0.149707, -0.774374,
		0.379486, 0.916848, 0.124017,
		0.691417, -0.370105, 0.620456,
		40.500004, 31.185467, 33.730865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682716, 31.839863, 33.094582>,  <40.016014, 31.444540, 33.296547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682716, 31.839863, 33.094582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.745415, 31.499758, 33.295574>,  <40.783031, 31.295694, 33.416168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.745415, 31.499758, 33.295574>,  <40.682716, 31.839863, 33.094582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745415, 31.499758, 33.295574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653250, -0.292331, -0.698432,
		0.740741, 0.437720, 0.509612,
		0.156742, -0.850261, 0.502482,
		40.792439, 31.244680, 33.446320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415615, 31.739532, 32.940781>,  <40.682716, 31.839863, 33.094582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415615, 31.739532, 32.940781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.255455, 31.391832, 33.056770>,  <41.159359, 31.183212, 33.126366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.255455, 31.391832, 33.056770>,  <41.415615, 31.739532, 32.940781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255455, 31.391832, 33.056770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459086, -0.464162, -0.757492,
		0.793045, -0.170175, 0.584910,
		-0.400399, -0.869249, 0.289977,
		41.135334, 31.131058, 33.143764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994846, 31.290569, 32.930779>,  <41.415615, 31.739532, 32.940781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994846, 31.290569, 32.930779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.683193, 31.039986, 32.939819>,  <41.496201, 30.889637, 32.945244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.683193, 31.039986, 32.939819>,  <41.994846, 31.290569, 32.930779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683193, 31.039986, 32.939819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427982, -0.557938, -0.711011,
		0.458029, -0.544295, 0.702818,
		-0.779129, -0.626457, 0.022603,
		41.449455, 30.852049, 32.946602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285397, 30.676516, 33.066277>,  <41.994846, 31.290569, 32.930779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285397, 30.676516, 33.066277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.939075, 30.611536, 32.876961>,  <41.731285, 30.572548, 32.763371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.939075, 30.611536, 32.876961>,  <42.285397, 30.676516, 33.066277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939075, 30.611536, 32.876961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499447, -0.338570, -0.797448,
		-0.030696, -0.926812, 0.374269,
		-0.865801, -0.162449, -0.473286,
		41.679337, 30.562801, 32.734974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246265, 29.933123, 32.785263>,  <42.285397, 30.676516, 33.066277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246265, 29.933123, 32.785263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.995369, 30.148750, 32.560417>,  <41.844830, 30.278126, 32.425510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.995369, 30.148750, 32.560417>,  <42.246265, 29.933123, 32.785263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995369, 30.148750, 32.560417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296760, -0.501875, -0.812438,
		-0.720071, -0.676408, 0.154823,
		-0.627241, 0.539067, -0.562116,
		41.807198, 30.310471, 32.391781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001686, 29.450714, 32.372330>,  <42.246265, 29.933123, 32.785263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001686, 29.450714, 32.372330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.923531, 29.793030, 32.180725>,  <41.876637, 29.998419, 32.065762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.923531, 29.793030, 32.180725>,  <42.001686, 29.450714, 32.372330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923531, 29.793030, 32.180725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258783, -0.426126, -0.866861,
		-0.945968, -0.293334, -0.138204,
		-0.195387, 0.855787, -0.479011,
		41.864914, 30.049767, 32.037022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.109203, 29.473579, 31.243055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.338219, 29.790920, 31.325802>,  <41.475628, 29.981325, 31.375450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.338219, 29.790920, 31.325802>,  <41.109203, 29.473579, 31.243055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338219, 29.790920, 31.325802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361680, -0.017958, -0.932129,
		-0.735790, 0.608500, -0.297220,
		0.572538, 0.793351, 0.206869,
		41.509979, 30.028925, 31.387863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943569, 30.025574, 30.758913>,  <41.109203, 29.473579, 31.243055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943569, 30.025574, 30.758913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.321041, 30.094587, 30.871840>,  <41.547523, 30.135996, 30.939596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.321041, 30.094587, 30.871840>,  <40.943569, 30.025574, 30.758913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321041, 30.094587, 30.871840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248708, 0.192843, -0.949187,
		-0.218210, 0.965942, 0.139071,
		0.943678, 0.172534, 0.282318,
		41.604145, 30.146347, 30.956535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180683, 30.678410, 30.480068>,  <40.943569, 30.025574, 30.758913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180683, 30.678410, 30.480068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.525700, 30.493929, 30.563320>,  <41.732708, 30.383240, 30.613272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.525700, 30.493929, 30.563320>,  <41.180683, 30.678410, 30.480068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525700, 30.493929, 30.563320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335540, 0.213474, -0.917519,
		0.378732, 0.861232, 0.338882,
		0.862540, -0.461203, 0.208129,
		41.784462, 30.355568, 30.625759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681122, 30.997267, 30.052971>,  <41.180683, 30.678410, 30.480068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681122, 30.997267, 30.052971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.880352, 30.672338, 30.174337>,  <41.999889, 30.477383, 30.247158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.880352, 30.672338, 30.174337>,  <41.681122, 30.997267, 30.052971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880352, 30.672338, 30.174337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573559, 0.046192, -0.817861,
		0.650348, 0.581382, 0.488920,
		0.498074, -0.812318, 0.303416,
		42.029774, 30.428642, 30.265362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343868, 31.197407, 29.891590>,  <41.681122, 30.997267, 30.052971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343868, 31.197407, 29.891590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.390141, 30.801321, 29.922821>,  <42.417904, 30.563669, 29.941559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.390141, 30.801321, 29.922821>,  <42.343868, 31.197407, 29.891590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390141, 30.801321, 29.922821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646468, 0.015379, -0.762786,
		0.754120, 0.138712, 0.641920,
		0.115680, -0.990213, 0.078075,
		42.424843, 30.504257, 29.946243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104309, 31.084961, 29.934645>,  <42.343868, 31.197407, 29.891590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104309, 31.084961, 29.934645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.918980, 30.751493, 29.814426>,  <42.807781, 30.551413, 29.742294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.918980, 30.751493, 29.814426>,  <43.104309, 31.084961, 29.934645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918980, 30.751493, 29.814426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730865, -0.167675, -0.661605,
		0.501164, -0.526199, 0.686986,
		-0.463326, -0.833666, -0.300548,
		42.779984, 30.501394, 29.724262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719418, 30.629044, 29.725365>,  <43.104309, 31.084961, 29.934645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719418, 30.629044, 29.725365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.397121, 30.465651, 29.553820>,  <43.203743, 30.367615, 29.450893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.397121, 30.465651, 29.553820>,  <43.719418, 30.629044, 29.725365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397121, 30.465651, 29.553820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514010, -0.122553, -0.848984,
		0.294237, -0.904501, 0.308711,
		-0.805741, -0.408483, -0.428863,
		43.155399, 30.343105, 29.425161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953178, 29.985668, 29.408531>,  <43.719418, 30.629044, 29.725365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953178, 29.985668, 29.408531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.616642, 30.085659, 29.216843>,  <43.414719, 30.145653, 29.101830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.616642, 30.085659, 29.216843>,  <43.953178, 29.985668, 29.408531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616642, 30.085659, 29.216843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441860, -0.192535, -0.876179,
		-0.311293, -0.948916, 0.051533,
		-0.841342, 0.249978, -0.479223,
		43.364239, 30.160652, 29.073076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746349, 29.269537, 29.034237>,  <43.953178, 29.985668, 29.408531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746349, 29.269537, 29.034237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.603775, 29.590710, 28.843132>,  <43.518230, 29.783413, 28.728468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.603775, 29.590710, 28.843132>,  <43.746349, 29.269537, 29.034237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603775, 29.590710, 28.843132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343641, -0.362846, -0.866172,
		-0.868830, -0.472913, -0.146588,
		-0.356436, 0.802930, -0.477763,
		43.496845, 29.831589, 28.699802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523628, 28.965704, 28.500196>,  <43.746349, 29.269537, 29.034237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523628, 28.965704, 28.500196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.544357, 29.343145, 28.369398>,  <43.556793, 29.569611, 28.290918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.544357, 29.343145, 28.369398>,  <43.523628, 28.965704, 28.500196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544357, 29.343145, 28.369398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267132, -0.328603, -0.905903,
		-0.962266, -0.040409, -0.269094,
		0.051819, 0.943604, -0.326998,
		43.559902, 29.626226, 28.271299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227791, 28.909433, 27.859713>,  <43.523628, 28.965704, 28.500196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227791, 28.909433, 27.859713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.409660, 29.262133, 27.809458>,  <43.518784, 29.473753, 27.779305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.409660, 29.262133, 27.809458>,  <43.227791, 28.909433, 27.859713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409660, 29.262133, 27.809458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102379, -0.191868, -0.976066,
		-0.884752, 0.430933, -0.177511,
		0.454677, 0.881750, -0.125637,
		43.546062, 29.526657, 27.771767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071968, 29.266680, 27.266022>,  <43.227791, 28.909433, 27.859713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071968, 29.266680, 27.266022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.415199, 29.466324, 27.314331>,  <43.621140, 29.586109, 27.343317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.415199, 29.466324, 27.314331>,  <43.071968, 29.266680, 27.266022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415199, 29.466324, 27.314331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255168, -0.210329, -0.943743,
		-0.445629, 0.840626, -0.307836,
		0.858082, 0.499109, 0.120773,
		43.672623, 29.616056, 27.350563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229256, 29.700943, 26.632080>,  <43.071968, 29.266680, 27.266022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229256, 29.700943, 26.632080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.585037, 29.646404, 26.806564>,  <43.798508, 29.613682, 26.911255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.585037, 29.646404, 26.806564>,  <43.229256, 29.700943, 26.632080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585037, 29.646404, 26.806564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353297, -0.400336, -0.845525,
		0.289913, 0.906169, -0.307910,
		0.889456, -0.136345, 0.436209,
		43.851875, 29.605501, 26.937428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657169, 29.932058, 26.164648>,  <43.229256, 29.700943, 26.632080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657169, 29.932058, 26.164648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.912575, 29.723314, 26.390909>,  <44.065819, 29.598068, 26.526667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.912575, 29.723314, 26.390909>,  <43.657169, 29.932058, 26.164648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912575, 29.723314, 26.390909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512833, -0.259527, -0.818320,
		0.573850, 0.812595, 0.101914,
		0.638513, -0.521858, 0.565655,
		44.104130, 29.566757, 26.560606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306789, 30.016479, 25.902813>,  <43.657169, 29.932058, 26.164648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306789, 30.016479, 25.902813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.410629, 29.699669, 26.123829>,  <44.472931, 29.509583, 26.256439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.410629, 29.699669, 26.123829>,  <44.306789, 30.016479, 25.902813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410629, 29.699669, 26.123829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682612, -0.254232, -0.685133,
		0.683118, 0.555029, 0.474651,
		0.259597, -0.792029, 0.552540,
		44.488510, 29.462061, 26.289591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968067, 30.070459, 26.001974>,  <44.306789, 30.016479, 25.902813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968067, 30.070459, 26.001974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.867687, 29.686083, 26.048641>,  <44.807461, 29.455456, 26.076641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.867687, 29.686083, 26.048641>,  <44.968067, 30.070459, 26.001974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867687, 29.686083, 26.048641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659126, -0.257899, -0.706428,
		0.708926, -0.100380, 0.698103,
		-0.250951, -0.960943, 0.116668,
		44.792400, 29.397800, 26.083641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505978, 29.716019, 26.116943>,  <44.968067, 30.070459, 26.001974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505978, 29.716019, 26.116943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.258099, 29.431667, 25.983904>,  <45.109371, 29.261057, 25.904079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.258099, 29.431667, 25.983904>,  <45.505978, 29.716019, 26.116943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258099, 29.431667, 25.983904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717348, -0.341103, -0.607504,
		0.318411, -0.615060, 0.721329,
		-0.619699, -0.710880, -0.332601,
		45.072189, 29.218403, 25.884123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980835, 29.195007, 26.010811>,  <45.505978, 29.716019, 26.116943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980835, 29.195007, 26.010811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.655468, 29.094852, 25.800798>,  <45.460247, 29.034760, 25.674791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.655468, 29.094852, 25.800798>,  <45.980835, 29.195007, 26.010811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655468, 29.094852, 25.800798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575736, -0.217876, -0.788072,
		0.082932, -0.943311, 0.321382,
		-0.813419, -0.250387, -0.525030,
		45.411442, 29.019737, 25.643290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.190136, 28.575613, 25.772026>,  <45.980835, 29.195007, 26.010811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.190136, 28.575613, 25.772026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.893089, 28.705919, 25.537968>,  <45.714859, 28.784103, 25.397533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.893089, 28.705919, 25.537968>,  <46.190136, 28.575613, 25.772026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893089, 28.705919, 25.537968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630763, 0.046595, -0.774575,
		-0.225065, -0.944302, -0.240083,
		-0.742619, 0.325766, -0.585144,
		45.670303, 28.803648, 25.362425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303722, 28.181791, 25.151428>,  <46.190136, 28.575613, 25.772026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303722, 28.181791, 25.151428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.069946, 28.490248, 25.050411>,  <45.929680, 28.675322, 24.989801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.069946, 28.490248, 25.050411>,  <46.303722, 28.181791, 25.151428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.069946, 28.490248, 25.050411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610847, 0.213244, -0.762492,
		-0.534135, -0.599892, -0.595676,
		-0.584437, 0.771140, -0.252541,
		45.894615, 28.721590, 24.974649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.108662, 28.132807, 24.481741>,  <46.303722, 28.181791, 25.151428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.108662, 28.132807, 24.481741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.090511, 28.525949, 24.553217>,  <46.079620, 28.761835, 24.596102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.090511, 28.525949, 24.553217>,  <46.108662, 28.132807, 24.481741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.090511, 28.525949, 24.553217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727017, 0.155167, -0.668857,
		-0.685119, 0.099559, -0.721596,
		-0.045377, 0.982859, 0.178689,
		46.076897, 28.820807, 24.606823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006077, 28.386929, 23.785273>,  <46.108662, 28.132807, 24.481741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006077, 28.386929, 23.785273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.119858, 28.707571, 23.995611>,  <46.188126, 28.899956, 24.121815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.119858, 28.707571, 23.995611>,  <46.006077, 28.386929, 23.785273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.119858, 28.707571, 23.995611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762217, 0.143583, -0.631196,
		-0.581473, 0.580356, -0.570155,
		0.284454, 0.801605, 0.525847,
		46.205193, 28.948053, 24.153366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.151741, 28.886860, 23.299936>,  <46.006077, 28.386929, 23.785273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.151741, 28.886860, 23.299936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.363609, 28.911976, 23.638287>,  <46.490730, 28.927046, 23.841297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.363609, 28.911976, 23.638287>,  <46.151741, 28.886860, 23.299936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363609, 28.911976, 23.638287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838328, 0.112989, -0.533328,
		-0.129062, 0.991610, 0.007209,
		0.529669, 0.062789, 0.845878,
		46.522511, 28.930813, 23.892050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.759949, 29.052921, 22.747549>,  <46.151741, 28.886860, 23.299936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.759949, 29.052921, 22.747549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.544823, 29.246473, 22.471399>,  <45.415745, 29.362604, 22.305710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.544823, 29.246473, 22.471399>,  <45.759949, 29.052921, 22.747549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544823, 29.246473, 22.471399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657122, 0.272404, 0.702842,
		0.528150, 0.831660, 0.171463,
		-0.537818, 0.483878, -0.690372,
		45.383476, 29.391636, 22.264288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447090, 29.654093, 22.995766>,  <45.759949, 29.052921, 22.747549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447090, 29.654093, 22.995766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.194603, 29.599030, 22.690449>,  <45.043110, 29.565992, 22.507257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.194603, 29.599030, 22.690449>,  <45.447090, 29.654093, 22.995766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194603, 29.599030, 22.690449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739091, 0.405167, 0.538130,
		0.235183, 0.903820, -0.357489,
		-0.631215, -0.137658, -0.763294,
		45.005238, 29.557732, 22.461460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030098, 30.265207, 22.944693>,  <45.447090, 29.654093, 22.995766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.030098, 30.265207, 22.944693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.807621, 30.017214, 22.723328>,  <44.674133, 29.868418, 22.590508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.807621, 30.017214, 22.723328>,  <45.030098, 30.265207, 22.944693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807621, 30.017214, 22.723328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831035, 0.410834, 0.374961,
		-0.005108, 0.668458, -0.743733,
		-0.556196, -0.619983, -0.553413,
		44.640762, 29.831219, 22.557304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.590958, 30.668007, 22.617033>,  <45.030098, 30.265207, 22.944693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.590958, 30.668007, 22.617033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.413643, 30.309734, 22.602905>,  <44.307255, 30.094770, 22.594429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.413643, 30.309734, 22.602905>,  <44.590958, 30.668007, 22.617033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413643, 30.309734, 22.602905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829033, 0.394682, 0.396144,
		-0.340878, 0.204889, -0.917509,
		-0.443290, -0.895682, -0.035321,
		44.280655, 30.041029, 22.592308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931072, 30.949312, 22.611300>,  <44.590958, 30.668007, 22.617033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931072, 30.949312, 22.611300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.920975, 30.562929, 22.714287>,  <43.914917, 30.331099, 22.776079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.920975, 30.562929, 22.714287>,  <43.931072, 30.949312, 22.611300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920975, 30.562929, 22.714287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778615, 0.180530, 0.600972,
		-0.626994, -0.185299, -0.756665,
		-0.025241, -0.965957, 0.257468,
		43.913403, 30.273142, 22.791527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208828, 30.765881, 22.462606>,  <43.931072, 30.949312, 22.611300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208828, 30.765881, 22.462606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.368031, 30.510706, 22.726311>,  <43.463554, 30.357601, 22.884533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.368031, 30.510706, 22.726311>,  <43.208828, 30.765881, 22.462606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368031, 30.510706, 22.726311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652927, 0.307818, 0.692051,
		-0.644417, -0.705892, -0.294012,
		0.398010, -0.637938, 0.659259,
		43.487434, 30.319324, 22.924089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628315, 30.439663, 22.780197>,  <43.208828, 30.765881, 22.462606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628315, 30.439663, 22.780197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.932541, 30.412846, 23.038513>,  <43.115078, 30.396755, 23.193502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.932541, 30.412846, 23.038513>,  <42.628315, 30.439663, 22.780197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932541, 30.412846, 23.038513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599680, 0.308678, 0.738310,
		-0.248839, -0.948801, 0.194566,
		0.760567, -0.067043, 0.645788,
		43.160709, 30.392733, 23.232250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326473, 30.212784, 23.467365>,  <42.628315, 30.439663, 22.780197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326473, 30.212784, 23.467365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.684658, 30.312250, 23.615046>,  <42.899570, 30.371929, 23.703653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.684658, 30.312250, 23.615046>,  <42.326473, 30.212784, 23.467365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684658, 30.312250, 23.615046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414363, 0.162627, 0.895464,
		0.162627, -0.954840, 0.248664,
		-0.895464, -0.248664, -0.369202,
		42.953297, 30.386848, 23.725805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399807, 29.805174, 24.019264>,  <42.326473, 30.212784, 23.467365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399807, 29.805174, 24.019264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.641281, 30.118071, 24.080788>,  <42.786167, 30.305809, 24.117702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.641281, 30.118071, 24.080788>,  <42.399807, 29.805174, 24.019264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641281, 30.118071, 24.080788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237131, -0.008008, 0.971445,
		0.761139, -0.622920, 0.180660,
		0.603686, 0.782244, 0.153809,
		42.822388, 30.352743, 24.126930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569473, 29.758989, 24.707466>,  <42.399807, 29.805174, 24.019264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569473, 29.758989, 24.707466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.681305, 30.135113, 24.629847>,  <42.748405, 30.360786, 24.583275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.681305, 30.135113, 24.629847>,  <42.569473, 29.758989, 24.707466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681305, 30.135113, 24.629847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210862, 0.257308, 0.943043,
		0.936681, -0.222739, 0.270214,
		0.279581, 0.940308, -0.194048,
		42.765179, 30.417206, 24.571632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069973, 29.879961, 25.240276>,  <42.569473, 29.758989, 24.707466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069973, 29.879961, 25.240276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.895702, 30.209351, 25.094908>,  <42.791138, 30.406984, 25.007687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.895702, 30.209351, 25.094908>,  <43.069973, 29.879961, 25.240276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895702, 30.209351, 25.094908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299742, 0.247977, 0.921229,
		0.848728, 0.510292, 0.138791,
		-0.435679, 0.823474, -0.363421,
		42.764999, 30.456392, 24.985882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305115, 30.394760, 25.660900>,  <43.069973, 29.879961, 25.240276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305115, 30.394760, 25.660900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.957039, 30.503239, 25.496353>,  <42.748192, 30.568327, 25.397625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.957039, 30.503239, 25.496353>,  <43.305115, 30.394760, 25.660900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957039, 30.503239, 25.496353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314645, 0.336627, 0.887514,
		0.379169, 0.901739, -0.207599,
		-0.870189, 0.271197, -0.411367,
		42.695984, 30.584599, 25.372944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087582, 31.041437, 26.016315>,  <43.305115, 30.394760, 25.660900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087582, 31.041437, 26.016315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.742813, 30.927837, 25.848301>,  <42.535950, 30.859678, 25.747492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.742813, 30.927837, 25.848301>,  <43.087582, 31.041437, 26.016315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742813, 30.927837, 25.848301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496598, 0.305600, 0.812403,
		-0.102357, 0.908820, -0.404437,
		-0.861924, -0.283998, -0.420038,
		42.484238, 30.842638, 25.722290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713562, 31.619183, 26.135698>,  <43.087582, 31.041437, 26.016315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713562, 31.619183, 26.135698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.457958, 31.317940, 26.073093>,  <42.304596, 31.137194, 26.035530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.457958, 31.317940, 26.073093>,  <42.713562, 31.619183, 26.135698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457958, 31.317940, 26.073093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418474, 0.169644, 0.892244,
		-0.645404, 0.635650, -0.423560,
		-0.639009, -0.753107, -0.156515,
		42.266254, 31.092009, 26.026138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147755, 31.779507, 26.434439>,  <42.713562, 31.619183, 26.135698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147755, 31.779507, 26.434439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.100407, 31.383402, 26.405132>,  <42.071999, 31.145739, 26.387548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.100407, 31.383402, 26.405132>,  <42.147755, 31.779507, 26.434439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100407, 31.383402, 26.405132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599435, 0.012435, 0.800327,
		-0.791623, 0.138650, -0.595070,
		-0.118365, -0.990263, -0.073268,
		42.064896, 31.086323, 26.383152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343315, 31.599010, 26.535444>,  <42.147755, 31.779507, 26.434439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343315, 31.599010, 26.535444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.527393, 31.245340, 26.567566>,  <41.637840, 31.033138, 26.586840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.527393, 31.245340, 26.567566>,  <41.343315, 31.599010, 26.535444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527393, 31.245340, 26.567566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607706, -0.247772, 0.754521,
		-0.647232, -0.396033, -0.651344,
		0.460200, -0.884176, 0.080305,
		41.665455, 30.980087, 26.591658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768528, 31.086773, 26.621798>,  <41.343315, 31.599010, 26.535444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768528, 31.086773, 26.621798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.115520, 30.976173, 26.787216>,  <41.323715, 30.909813, 26.886467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.115520, 30.976173, 26.787216>,  <40.768528, 31.086773, 26.621798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115520, 30.976173, 26.787216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447489, -0.070571, 0.891500,
		-0.217316, -0.958419, -0.184950,
		0.867483, -0.276500, 0.413546,
		41.375767, 30.893223, 26.911280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568153, 30.399664, 26.883659>,  <40.768528, 31.086773, 26.621798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568153, 30.399664, 26.883659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.897614, 30.553312, 27.050537>,  <41.095291, 30.645502, 27.150663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.897614, 30.553312, 27.050537>,  <40.568153, 30.399664, 26.883659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897614, 30.553312, 27.050537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407318, -0.111163, 0.906496,
		0.394582, -0.916566, 0.064901,
		0.823649, 0.384122, 0.417196,
		41.144707, 30.668549, 27.175695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762653, 29.902525, 27.373968>,  <40.568153, 30.399664, 26.883659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762653, 29.902525, 27.373968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.920975, 30.258772, 27.463539>,  <41.015968, 30.472521, 27.517282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.920975, 30.258772, 27.463539>,  <40.762653, 29.902525, 27.373968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920975, 30.258772, 27.463539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356582, -0.075662, 0.931195,
		0.846281, -0.448415, 0.287631,
		0.395799, 0.890617, 0.223928,
		41.039715, 30.525957, 27.530718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179821, 29.811266, 27.914915>,  <40.762653, 29.902525, 27.373968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179821, 29.811266, 27.914915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.084007, 30.199278, 27.931238>,  <41.026520, 30.432085, 27.941032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.084007, 30.199278, 27.931238>,  <41.179821, 29.811266, 27.914915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084007, 30.199278, 27.931238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292949, -0.112285, 0.949512,
		0.925638, 0.215482, 0.311065,
		-0.239531, 0.970031, 0.040810,
		41.012150, 30.490288, 27.943481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397449, 29.968954, 28.660473>,  <41.179821, 29.811266, 27.914915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397449, 29.968954, 28.660473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.174213, 30.281094, 28.547626>,  <41.040272, 30.468376, 28.479918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.174213, 30.281094, 28.547626>,  <41.397449, 29.968954, 28.660473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174213, 30.281094, 28.547626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426015, 0.022300, 0.904441,
		0.712069, 0.624950, 0.319994,
		-0.558094, 0.780347, -0.282117,
		41.006786, 30.515198, 28.462992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.437702, 30.671640, 34.437977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.129768, 30.825796, 34.234474>,  <40.945007, 30.918289, 34.112373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.129768, 30.825796, 34.234474>,  <41.437702, 30.671640, 34.437977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129768, 30.825796, 34.234474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438061, 0.260678, 0.860319,
		0.464180, 0.885168, -0.031853,
		-0.769830, 0.385390, -0.508759,
		40.898819, 30.941414, 34.081848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333199, 31.294788, 34.812496>,  <41.437702, 30.671640, 34.437977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333199, 31.294788, 34.812496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.006500, 31.237787, 34.588844>,  <40.810482, 31.203587, 34.454655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.006500, 31.237787, 34.588844>,  <41.333199, 31.294788, 34.812496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006500, 31.237787, 34.588844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541813, 0.522645, 0.658241,
		0.198425, 0.840557, -0.504076,
		-0.816741, -0.142504, -0.559130,
		40.761478, 31.195036, 34.421104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060753, 32.019871, 34.721245>,  <41.333199, 31.294788, 34.812496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060753, 32.019871, 34.721245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.746731, 31.783239, 34.647800>,  <40.558315, 31.641260, 34.603733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.746731, 31.783239, 34.647800>,  <41.060753, 32.019871, 34.721245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746731, 31.783239, 34.647800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595781, 0.640047, 0.485164,
		-0.169494, 0.490275, -0.854928,
		-0.785059, -0.591582, -0.183612,
		40.511211, 31.605764, 34.592716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654091, 32.497402, 34.615627>,  <41.060753, 32.019871, 34.721245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654091, 32.497402, 34.615627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.424129, 32.179863, 34.694908>,  <40.286152, 31.989338, 34.742477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.424129, 32.179863, 34.694908>,  <40.654091, 32.497402, 34.615627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424129, 32.179863, 34.694908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636425, 0.586094, 0.501456,
		-0.514245, 0.162150, -0.842175,
		-0.574905, -0.793853, 0.198200,
		40.251659, 31.941708, 34.754368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968803, 32.673065, 34.510719>,  <40.654091, 32.497402, 34.615627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968803, 32.673065, 34.510719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.938274, 32.365337, 34.764435>,  <39.919956, 32.180698, 34.916664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.938274, 32.365337, 34.764435>,  <39.968803, 32.673065, 34.510719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938274, 32.365337, 34.764435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479814, 0.585979, 0.652999,
		-0.874045, -0.254504, -0.413852,
		-0.076318, -0.769322, 0.634287,
		39.915379, 32.134541, 34.954720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342892, 32.776020, 34.825817>,  <39.968803, 32.673065, 34.510719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342892, 32.776020, 34.825817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543652, 32.527061, 35.066055>,  <39.664108, 32.377686, 35.210197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543652, 32.527061, 35.066055>,  <39.342892, 32.776020, 34.825817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543652, 32.527061, 35.066055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206263, 0.588225, 0.781950,
		-0.839971, -0.516342, 0.166852,
		0.501900, -0.622400, 0.600595,
		39.694221, 32.340340, 35.246235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806557, 32.437778, 35.304924>,  <39.342892, 32.776020, 34.825817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806557, 32.437778, 35.304924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.174091, 32.480072, 35.457012>,  <39.394611, 32.505447, 35.548264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.174091, 32.480072, 35.457012>,  <38.806557, 32.437778, 35.304924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174091, 32.480072, 35.457012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379076, 0.504405, 0.775808,
		-0.109754, -0.856969, 0.503545,
		0.918834, 0.105733, 0.380217,
		39.449741, 32.511791, 35.571075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688927, 32.258877, 35.973186>,  <38.806557, 32.437778, 35.304924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688927, 32.258877, 35.973186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053032, 32.424194, 35.983097>,  <39.271496, 32.523384, 35.989044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053032, 32.424194, 35.983097>,  <38.688927, 32.258877, 35.973186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053032, 32.424194, 35.983097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252022, 0.505606, 0.825135,
		0.328493, -0.757333, 0.564393,
		0.910262, 0.413290, 0.024777,
		39.326111, 32.548183, 35.990528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852154, 32.271687, 36.691307>,  <38.688927, 32.258877, 35.973186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852154, 32.271687, 36.691307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.127125, 32.501999, 36.514256>,  <39.292107, 32.640186, 36.408024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.127125, 32.501999, 36.514256>,  <38.852154, 32.271687, 36.691307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127125, 32.501999, 36.514256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234176, 0.752643, 0.615378,
		0.687463, -0.319375, 0.652222,
		0.687427, 0.575785, -0.442624,
		39.333351, 32.674736, 36.381466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306164, 32.408283, 37.201439>,  <38.852154, 32.271687, 36.691307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306164, 32.408283, 37.201439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.287193, 32.693577, 36.921711>,  <39.275810, 32.864754, 36.753872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.287193, 32.693577, 36.921711>,  <39.306164, 32.408283, 37.201439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287193, 32.693577, 36.921711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265252, 0.665982, 0.697216,
		0.963012, 0.218563, 0.157600,
		-0.047427, 0.713231, -0.699323,
		39.272964, 32.907547, 36.711914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549763, 32.901676, 37.584396>,  <39.306164, 32.408283, 37.201439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549763, 32.901676, 37.584396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.396461, 33.101929, 37.273914>,  <39.304482, 33.222080, 37.087627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.396461, 33.101929, 37.273914>,  <39.549763, 32.901676, 37.584396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396461, 33.101929, 37.273914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214797, 0.769021, 0.602054,
		0.898322, 0.397463, -0.187193,
		-0.383249, 0.500630, -0.776202,
		39.281487, 33.252117, 37.041054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770954, 33.577106, 37.675663>,  <39.549763, 32.901676, 37.584396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770954, 33.577106, 37.675663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.449451, 33.591724, 37.438129>,  <39.256550, 33.600494, 37.295609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.449451, 33.591724, 37.438129>,  <39.770954, 33.577106, 37.675663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449451, 33.591724, 37.438129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349660, 0.778532, 0.521177,
		0.481363, 0.626540, -0.612975,
		-0.803759, 0.036543, -0.593832,
		39.208324, 33.602688, 37.259979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634037, 34.281879, 37.625015>,  <39.770954, 33.577106, 37.675663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634037, 34.281879, 37.625015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.285583, 34.107147, 37.535294>,  <39.076511, 34.002308, 37.481461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.285583, 34.107147, 37.535294>,  <39.634037, 34.281879, 37.625015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285583, 34.107147, 37.535294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478694, 0.857270, 0.189581,
		0.109472, 0.272522, -0.955902,
		-0.871130, -0.436830, -0.224302,
		39.024246, 33.976097, 37.468002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200890, 34.813091, 37.347595>,  <39.634037, 34.281879, 37.625015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200890, 34.813091, 37.347595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923695, 34.543392, 37.449699>,  <38.757378, 34.381573, 37.510963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923695, 34.543392, 37.449699>,  <39.200890, 34.813091, 37.347595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923695, 34.543392, 37.449699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658374, 0.736126, 0.157045,
		-0.293794, -0.059229, -0.954032,
		-0.692986, -0.674248, 0.255264,
		38.715797, 34.341118, 37.526279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779743, 35.245129, 37.034515>,  <39.200890, 34.813091, 37.347595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779743, 35.245129, 37.034515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.917187, 35.613140, 37.109863>,  <39.999653, 35.833946, 37.155071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.917187, 35.613140, 37.109863>,  <39.779743, 35.245129, 37.034515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917187, 35.613140, 37.109863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332071, 0.306653, -0.892016,
		-0.878443, 0.243953, 0.410883,
		0.343609, 0.920027, 0.188367,
		40.020267, 35.889149, 37.166374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251240, 35.731770, 36.657677>,  <39.779743, 35.245129, 37.034515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251240, 35.731770, 36.657677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.590679, 35.934822, 36.717262>,  <39.794342, 36.056652, 36.753014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.590679, 35.934822, 36.717262>,  <39.251240, 35.731770, 36.657677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590679, 35.934822, 36.717262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118245, 0.456446, -0.881859,
		-0.515648, 0.730733, 0.447365,
		0.848602, 0.507627, 0.148960,
		39.845261, 36.087109, 36.761951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040176, 36.434299, 36.508110>,  <39.251240, 35.731770, 36.657677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040176, 36.434299, 36.508110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.435368, 36.391273, 36.463703>,  <39.672482, 36.365456, 36.437057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.435368, 36.391273, 36.463703>,  <39.040176, 36.434299, 36.508110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435368, 36.391273, 36.463703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064868, 0.363397, -0.929373,
		0.140317, 0.925403, 0.352051,
		0.987979, -0.107570, -0.111020,
		39.731762, 36.359001, 36.430397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149944, 36.962391, 35.980572>,  <39.040176, 36.434299, 36.508110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149944, 36.962391, 35.980572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477764, 36.733227, 35.976337>,  <39.674458, 36.595730, 35.973797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477764, 36.733227, 35.976337>,  <39.149944, 36.962391, 35.980572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477764, 36.733227, 35.976337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080889, 0.133965, -0.987679,
		0.567266, 0.808599, 0.156133,
		0.819553, -0.572906, -0.010587,
		39.723629, 36.561356, 35.973160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576389, 37.286835, 35.492958>,  <39.149944, 36.962391, 35.980572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576389, 37.286835, 35.492958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.734440, 36.924110, 35.551704>,  <39.829269, 36.706474, 35.586952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.734440, 36.924110, 35.551704>,  <39.576389, 37.286835, 35.492958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734440, 36.924110, 35.551704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151607, -0.093315, -0.984026,
		0.906030, 0.411081, 0.100608,
		0.395127, -0.906810, 0.146869,
		39.852978, 36.652069, 35.595764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124512, 37.273010, 35.051456>,  <39.576389, 37.286835, 35.492958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124512, 37.273010, 35.051456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.044247, 36.884518, 35.102741>,  <39.996086, 36.651421, 35.133514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.044247, 36.884518, 35.102741>,  <40.124512, 37.273010, 35.051456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044247, 36.884518, 35.102741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196761, -0.168166, -0.965922,
		0.959697, -0.168601, 0.224846,
		-0.200667, -0.971233, 0.128214,
		39.984047, 36.593147, 35.141205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636803, 36.977467, 34.692509>,  <40.124512, 37.273010, 35.051456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636803, 36.977467, 34.692509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.349506, 36.702885, 34.737949>,  <40.177128, 36.538136, 34.765213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.349506, 36.702885, 34.737949>,  <40.636803, 36.977467, 34.692509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349506, 36.702885, 34.737949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099575, -0.263002, -0.959643,
		0.688630, -0.677945, 0.257253,
		-0.718243, -0.686455, 0.113605,
		40.134033, 36.496948, 34.772030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974880, 36.406521, 34.496193>,  <40.636803, 36.977467, 34.692509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974880, 36.406521, 34.496193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.581211, 36.339130, 34.474194>,  <40.345009, 36.298698, 34.460995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.581211, 36.339130, 34.474194>,  <40.974880, 36.406521, 34.496193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581211, 36.339130, 34.474194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127364, -0.456551, -0.880534,
		0.123236, -0.873600, 0.470781,
		-0.984170, -0.168474, -0.055002,
		40.285961, 36.288589, 34.457691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986012, 35.699360, 34.286827>,  <40.974880, 36.406521, 34.496193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986012, 35.699360, 34.286827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.629463, 35.846836, 34.181351>,  <40.415535, 35.935322, 34.118065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.629463, 35.846836, 34.181351>,  <40.986012, 35.699360, 34.286827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629463, 35.846836, 34.181351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022323, -0.545323, -0.837929,
		-0.452730, -0.752790, 0.477853,
		-0.891368, 0.368688, -0.263688,
		40.362053, 35.957443, 34.102245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664055, 35.139633, 34.148457>,  <40.986012, 35.699360, 34.286827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664055, 35.139633, 34.148457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.449707, 35.410686, 33.947002>,  <40.321098, 35.573318, 33.826130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.449707, 35.410686, 33.947002>,  <40.664055, 35.139633, 34.148457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449707, 35.410686, 33.947002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082025, -0.551908, -0.829861,
		-0.840304, -0.486011, 0.240170,
		-0.535874, 0.677636, -0.503636,
		40.288944, 35.613976, 33.795910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272270, 34.748989, 33.670586>,  <40.664055, 35.139633, 34.148457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272270, 34.748989, 33.670586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.258549, 35.125694, 33.536777>,  <40.250317, 35.351719, 33.456493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.258549, 35.125694, 33.536777>,  <40.272270, 34.748989, 33.670586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258549, 35.125694, 33.536777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004868, -0.334556, -0.942363,
		-0.999400, -0.033957, 0.006893,
		-0.034306, 0.941764, -0.334521,
		40.248257, 35.408222, 33.436420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741394, 34.756535, 33.175625>,  <40.272270, 34.748989, 33.670586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741394, 34.756535, 33.175625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007973, 35.046494, 33.105911>,  <40.167919, 35.220467, 33.064083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007973, 35.046494, 33.105911>,  <39.741394, 34.756535, 33.175625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007973, 35.046494, 33.105911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057722, -0.182901, -0.981435,
		-0.743313, 0.664136, -0.080052,
		0.666449, 0.724893, -0.174288,
		40.207909, 35.263962, 33.053623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515465, 34.981720, 32.502716>,  <39.741394, 34.756535, 33.175625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515465, 34.981720, 32.502716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.874020, 35.157490, 32.526024>,  <40.089153, 35.262951, 32.540009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.874020, 35.157490, 32.526024>,  <39.515465, 34.981720, 32.502716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874020, 35.157490, 32.526024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134024, -0.143377, -0.980551,
		-0.422521, 0.886765, -0.187414,
		0.896389, 0.439421, 0.058268,
		40.142937, 35.289314, 32.543503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563465, 35.394855, 31.891378>,  <39.515465, 34.981720, 32.502716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563465, 35.394855, 31.891378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931774, 35.305714, 32.019451>,  <40.152760, 35.252228, 32.096294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931774, 35.305714, 32.019451>,  <39.563465, 35.394855, 31.891378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931774, 35.305714, 32.019451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218831, -0.384394, -0.896858,
		0.322944, 0.895867, -0.305171,
		0.920771, -0.222854, 0.320181,
		40.208004, 35.238857, 32.115505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535824, 36.210308, 31.774269>,  <39.563465, 35.394855, 31.891378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535824, 36.210308, 31.774269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363731, 36.521187, 31.590588>,  <39.260475, 36.707714, 31.480379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363731, 36.521187, 31.590588>,  <39.535824, 36.210308, 31.774269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363731, 36.521187, 31.590588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685757, 0.049432, 0.726149,
		0.587062, 0.627311, 0.511702,
		-0.430227, 0.777198, -0.459203,
		39.234665, 36.754345, 31.452827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549202, 36.759235, 32.260189>,  <39.535824, 36.210308, 31.774269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549202, 36.759235, 32.260189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.245476, 36.800503, 32.003193>,  <39.063240, 36.825264, 31.848995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.245476, 36.800503, 32.003193>,  <39.549202, 36.759235, 32.260189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245476, 36.800503, 32.003193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639171, 0.066930, 0.766147,
		0.122043, 0.992410, 0.015120,
		-0.759319, 0.103167, -0.642488,
		39.017681, 36.831451, 31.810446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211090, 37.291996, 32.529312>,  <39.549202, 36.759235, 32.260189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211090, 37.291996, 32.529312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927563, 37.145008, 32.288467>,  <38.757446, 37.056816, 32.143959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927563, 37.145008, 32.288467>,  <39.211090, 37.291996, 32.529312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927563, 37.145008, 32.288467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689352, 0.179865, 0.701743,
		-0.149572, 0.912476, -0.380809,
		-0.708817, -0.367473, -0.602114,
		38.714916, 37.034767, 32.107834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626141, 37.755886, 32.570808>,  <39.211090, 37.291996, 32.529312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626141, 37.755886, 32.570808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.469379, 37.411976, 32.439846>,  <38.375324, 37.205627, 32.361267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.469379, 37.411976, 32.439846>,  <38.626141, 37.755886, 32.570808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469379, 37.411976, 32.439846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769605, 0.111373, 0.628733,
		-0.504107, 0.498374, -0.705337,
		-0.391900, -0.859779, -0.327407,
		38.351810, 37.154041, 32.341625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889740, 37.871609, 32.588238>,  <38.626141, 37.755886, 32.570808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889740, 37.871609, 32.588238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.919117, 37.475060, 32.544815>,  <37.936745, 37.237129, 32.518761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.919117, 37.475060, 32.544815>,  <37.889740, 37.871609, 32.588238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919117, 37.475060, 32.544815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805712, -0.123134, 0.579367,
		-0.587737, 0.044918, -0.807804,
		0.073444, -0.991373, -0.108561,
		37.941151, 37.177647, 32.512245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232170, 37.654629, 32.249920>,  <37.889740, 37.871609, 32.588238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232170, 37.654629, 32.249920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.402107, 37.360256, 32.460789>,  <37.504070, 37.183632, 32.587311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.402107, 37.360256, 32.460789>,  <37.232170, 37.654629, 32.249920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402107, 37.360256, 32.460789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793971, -0.023165, 0.607515,
		-0.434878, -0.676657, -0.594152,
		0.424843, -0.735934, 0.527171,
		37.529560, 37.139477, 32.618938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685513, 37.178272, 32.282574>,  <37.232170, 37.654629, 32.249920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685513, 37.178272, 32.282574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.929035, 37.061954, 32.577816>,  <37.075150, 36.992165, 32.754959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.929035, 37.061954, 32.577816>,  <36.685513, 37.178272, 32.282574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929035, 37.061954, 32.577816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780143, -0.388334, 0.490484,
		0.144000, -0.874434, -0.463282,
		0.608804, -0.290796, 0.738103,
		37.111675, 36.974716, 32.799248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552879, 36.442814, 32.353394>,  <36.685513, 37.178272, 32.282574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552879, 36.442814, 32.353394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.720779, 36.601311, 32.680023>,  <36.821518, 36.696411, 32.876003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.720779, 36.601311, 32.680023>,  <36.552879, 36.442814, 32.353394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720779, 36.601311, 32.680023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774363, -0.312967, 0.549921,
		0.473466, -0.863157, 0.175470,
		0.419752, 0.396247, 0.816577,
		36.846706, 36.720184, 32.924995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328438, 35.923096, 32.825214>,  <36.552879, 36.442814, 32.353394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328438, 35.923096, 32.825214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.432541, 36.228588, 33.061512>,  <36.495003, 36.411884, 33.203293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.432541, 36.228588, 33.061512>,  <36.328438, 35.923096, 32.825214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432541, 36.228588, 33.061512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840832, -0.121484, 0.527488,
		0.474625, -0.634002, 0.610551,
		0.260257, 0.763730, 0.590748,
		36.510616, 36.457706, 33.238735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151924, 35.633068, 33.477325>,  <36.328438, 35.923096, 32.825214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151924, 35.633068, 33.477325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.188854, 36.030376, 33.505302>,  <36.211010, 36.268761, 33.522091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.188854, 36.030376, 33.505302>,  <36.151924, 35.633068, 33.477325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188854, 36.030376, 33.505302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928693, 0.060554, 0.365873,
		0.359175, -0.098737, 0.928033,
		0.092321, 0.993270, 0.069947,
		36.216549, 36.328358, 33.526287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148746, 35.790577, 34.166523>,  <36.151924, 35.633068, 33.477325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148746, 35.790577, 34.166523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.026344, 36.140385, 34.016018>,  <35.952904, 36.350269, 33.925716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.026344, 36.140385, 34.016018>,  <36.148746, 35.790577, 34.166523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026344, 36.140385, 34.016018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754374, 0.018360, 0.656188,
		0.580758, 0.484639, 0.654098,
		-0.306005, 0.874521, -0.376262,
		35.934544, 36.402740, 33.903141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850140, 36.096413, 34.685932>,  <36.148746, 35.790577, 34.166523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850140, 36.096413, 34.685932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.715897, 36.317810, 34.381035>,  <35.635349, 36.450649, 34.198097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.715897, 36.317810, 34.381035>,  <35.850140, 36.096413, 34.685932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715897, 36.317810, 34.381035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839929, 0.190516, 0.508157,
		0.426479, 0.810772, 0.400954,
		-0.335611, 0.553491, -0.762242,
		35.615211, 36.483856, 34.152363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.804092, 36.606262, 28.947626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519531, 36.662739, 28.672243>,  <41.348793, 36.696625, 28.507013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519531, 36.662739, 28.672243>,  <41.804092, 36.606262, 28.947626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519531, 36.662739, 28.672243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528903, 0.537512, 0.656767,
		0.462785, 0.831351, -0.307710,
		-0.711402, 0.141193, -0.688456,
		41.306110, 36.705097, 28.465706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565113, 37.314339, 29.001776>,  <41.804092, 36.606262, 28.947626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565113, 37.314339, 29.001776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271481, 37.151428, 28.784426>,  <41.095303, 37.053684, 28.654016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271481, 37.151428, 28.784426>,  <41.565113, 37.314339, 29.001776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271481, 37.151428, 28.784426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677006, 0.376720, 0.632254,
		-0.052800, 0.831993, -0.552269,
		-0.734081, -0.407272, -0.543373,
		41.051258, 37.029247, 28.621414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121986, 37.882050, 28.994232>,  <41.565113, 37.314339, 29.001776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121986, 37.882050, 28.994232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934334, 37.539314, 28.908684>,  <40.821743, 37.333672, 28.857355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934334, 37.539314, 28.908684>,  <41.121986, 37.882050, 28.994232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934334, 37.539314, 28.908684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667228, 0.185237, 0.721453,
		-0.578552, 0.481158, -0.658608,
		-0.469132, -0.856840, -0.213873,
		40.793594, 37.282261, 28.844522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334057, 38.062672, 29.045839>,  <41.121986, 37.882050, 28.994232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334057, 38.062672, 29.045839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365959, 37.666012, 29.086380>,  <40.385101, 37.428017, 29.110704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365959, 37.666012, 29.086380>,  <40.334057, 38.062672, 29.045839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365959, 37.666012, 29.086380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584544, 0.035832, 0.810570,
		-0.807433, -0.123890, -0.576805,
		0.079753, -0.991649, 0.101351,
		40.389885, 37.368519, 29.116785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651333, 37.803425, 29.207827>,  <40.334057, 38.062672, 29.045839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651333, 37.803425, 29.207827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903748, 37.525585, 29.346006>,  <40.055195, 37.358883, 29.428915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903748, 37.525585, 29.346006>,  <39.651333, 37.803425, 29.207827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903748, 37.525585, 29.346006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629716, -0.198582, 0.751015,
		-0.453051, -0.691450, -0.562710,
		0.631033, -0.694595, 0.345449,
		40.093056, 37.317207, 29.449640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404568, 37.128143, 29.316536>,  <39.651333, 37.803425, 29.207827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404568, 37.128143, 29.316536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687481, 37.085186, 29.596025>,  <39.857227, 37.059410, 29.763720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687481, 37.085186, 29.596025>,  <39.404568, 37.128143, 29.316536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687481, 37.085186, 29.596025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700784, -0.236562, 0.673008,
		0.093016, -0.965663, -0.242576,
		0.707283, -0.107393, 0.698725,
		39.899666, 37.052967, 29.805643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225166, 36.606884, 29.691025>,  <39.404568, 37.128143, 29.316536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225166, 36.606884, 29.691025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486759, 36.776196, 29.941828>,  <39.643715, 36.877781, 30.092310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486759, 36.776196, 29.941828>,  <39.225166, 36.606884, 29.691025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486759, 36.776196, 29.941828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580204, -0.251217, 0.774760,
		0.485454, -0.870474, 0.081295,
		0.653986, 0.423278, 0.627007,
		39.682957, 36.903179, 30.129930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246994, 36.080063, 30.298330>,  <39.225166, 36.606884, 29.691025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246994, 36.080063, 30.298330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400799, 36.421890, 30.437965>,  <39.493080, 36.626987, 30.521748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400799, 36.421890, 30.437965>,  <39.246994, 36.080063, 30.298330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400799, 36.421890, 30.437965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555796, -0.087622, 0.826688,
		0.737051, -0.511892, 0.441275,
		0.384509, 0.854569, 0.349089,
		39.516151, 36.678261, 30.542692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510521, 35.934311, 31.024231>,  <39.246994, 36.080063, 30.298330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510521, 35.934311, 31.024231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427944, 36.324440, 30.992929>,  <39.378399, 36.558517, 30.974148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427944, 36.324440, 30.992929>,  <39.510521, 35.934311, 31.024231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427944, 36.324440, 30.992929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381722, -0.006642, 0.924253,
		0.900927, 0.220678, 0.373674,
		-0.206444, 0.975324, -0.078254,
		39.366013, 36.617039, 30.969454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078259, 35.687054, 31.393244>,  <39.510521, 35.934311, 31.024231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078259, 35.687054, 31.393244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304935, 35.426308, 31.594810>,  <40.440941, 35.269859, 31.715750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304935, 35.426308, 31.594810>,  <40.078259, 35.687054, 31.393244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304935, 35.426308, 31.594810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419322, -0.298294, -0.857432,
		0.709243, 0.697206, 0.104298,
		0.566696, -0.651862, 0.503916,
		40.474945, 35.230747, 31.745985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805622, 35.818928, 31.201691>,  <40.078259, 35.687054, 31.393244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805622, 35.818928, 31.201691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775257, 35.445202, 31.341000>,  <40.757038, 35.220966, 31.424585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775257, 35.445202, 31.341000>,  <40.805622, 35.818928, 31.201691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775257, 35.445202, 31.341000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689035, -0.301619, -0.658981,
		0.720741, 0.189949, 0.666672,
		-0.075908, -0.934316, 0.348271,
		40.752483, 35.164906, 31.445480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446693, 35.713390, 31.337126>,  <40.805622, 35.818928, 31.201691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446693, 35.713390, 31.337126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299721, 35.341381, 31.339811>,  <41.211536, 35.118176, 31.341423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299721, 35.341381, 31.339811>,  <41.446693, 35.713390, 31.337126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299721, 35.341381, 31.339811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778832, -0.311627, -0.544343,
		0.508346, -0.194778, 0.838836,
		-0.367430, -0.930027, 0.006715,
		41.189491, 35.062374, 31.341825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926815, 35.291931, 31.682333>,  <41.446693, 35.713390, 31.337126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926815, 35.291931, 31.682333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721104, 35.042397, 31.446928>,  <41.597679, 34.892677, 31.305685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721104, 35.042397, 31.446928>,  <41.926815, 35.291931, 31.682333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721104, 35.042397, 31.446928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856437, -0.337457, -0.390690,
		0.045129, -0.704947, 0.707823,
		-0.514275, -0.623837, -0.588513,
		41.566822, 34.855244, 31.270374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226791, 34.538948, 31.665188>,  <41.926815, 35.291931, 31.682333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226791, 34.538948, 31.665188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028271, 34.608921, 31.325050>,  <41.909161, 34.650906, 31.120968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028271, 34.608921, 31.325050>,  <42.226791, 34.538948, 31.665188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028271, 34.608921, 31.325050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671665, -0.543223, -0.503761,
		-0.550054, -0.821161, 0.152100,
		-0.496293, 0.174935, -0.850347,
		41.879383, 34.661400, 31.069946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279419, 33.943768, 31.419695>,  <42.226791, 34.538948, 31.665188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279419, 33.943768, 31.419695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174713, 34.159863, 31.099789>,  <42.111889, 34.289520, 30.907845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174713, 34.159863, 31.099789>,  <42.279419, 33.943768, 31.419695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174713, 34.159863, 31.099789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559316, -0.590406, -0.581882,
		-0.786539, -0.599638, -0.147614,
		-0.261767, 0.540236, -0.799764,
		42.096184, 34.321934, 30.859859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082733, 33.519089, 30.860134>,  <42.279419, 33.943768, 31.419695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082733, 33.519089, 30.860134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184593, 33.863537, 30.684124>,  <42.245712, 34.070206, 30.578518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184593, 33.863537, 30.684124>,  <42.082733, 33.519089, 30.860134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184593, 33.863537, 30.684124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502795, -0.506589, -0.700403,
		-0.826043, -0.042881, -0.561973,
		0.254655, 0.861121, -0.440025,
		42.260990, 34.121872, 30.552116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181549, 33.358593, 30.184341>,  <42.082733, 33.519089, 30.860134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181549, 33.358593, 30.184341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352360, 33.720226, 30.177486>,  <42.454845, 33.937206, 30.173374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352360, 33.720226, 30.177486>,  <42.181549, 33.358593, 30.184341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352360, 33.720226, 30.177486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544867, -0.272388, -0.793048,
		-0.721645, 0.329312, -0.608919,
		0.427022, 0.904079, -0.017136,
		42.480465, 33.991451, 30.172346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511593, 33.364517, 29.504936>,  <42.181549, 33.358593, 30.184341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511593, 33.364517, 29.504936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684052, 33.678059, 29.683685>,  <42.787525, 33.866184, 29.790936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684052, 33.678059, 29.683685>,  <42.511593, 33.364517, 29.504936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684052, 33.678059, 29.683685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821120, -0.135567, -0.554422,
		-0.374002, 0.605971, -0.702084,
		0.431143, 0.783850, 0.446872,
		42.813393, 33.913212, 29.817747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601009, 33.888107, 28.948126>,  <42.511593, 33.364517, 29.504936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601009, 33.888107, 28.948126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849003, 33.931633, 29.258940>,  <42.997799, 33.957748, 29.445429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849003, 33.931633, 29.258940>,  <42.601009, 33.888107, 28.948126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849003, 33.931633, 29.258940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779915, -0.193736, -0.595146,
		0.085778, 0.975000, -0.204980,
		0.619979, 0.108816, 0.777036,
		43.034996, 33.964279, 29.492050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131493, 34.333961, 28.722580>,  <42.601009, 33.888107, 28.948126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131493, 34.333961, 28.722580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311203, 34.155033, 29.031916>,  <43.419029, 34.047676, 29.217518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311203, 34.155033, 29.031916>,  <43.131493, 34.333961, 28.722580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311203, 34.155033, 29.031916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853558, -0.040676, -0.519408,
		0.263797, 0.893449, 0.363537,
		0.449277, -0.447318, 0.773341,
		43.445988, 34.020836, 29.263918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770794, 34.699226, 28.816473>,  <43.131493, 34.333961, 28.722580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770794, 34.699226, 28.816473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807655, 34.333981, 28.975332>,  <43.829773, 34.114834, 29.070648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807655, 34.333981, 28.975332>,  <43.770794, 34.699226, 28.816473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807655, 34.333981, 28.975332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841628, -0.141723, -0.521130,
		0.532137, 0.382276, 0.755444,
		0.092152, -0.913115, 0.397150,
		43.835300, 34.060047, 29.094477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454781, 34.650093, 28.946938>,  <43.770794, 34.699226, 28.816473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454781, 34.650093, 28.946938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337868, 34.267605, 28.952776>,  <44.267719, 34.038113, 28.956280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337868, 34.267605, 28.952776>,  <44.454781, 34.650093, 28.946938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337868, 34.267605, 28.952776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808509, -0.255222, -0.530259,
		0.510771, -0.143181, 0.847710,
		-0.292277, -0.956222, 0.014597,
		44.250183, 33.980740, 28.957155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069759, 34.232738, 29.104311>,  <44.454781, 34.650093, 28.946938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069759, 34.232738, 29.104311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.794712, 33.998833, 28.932159>,  <44.629684, 33.858490, 28.828869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.794712, 33.998833, 28.932159>,  <45.069759, 34.232738, 29.104311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794712, 33.998833, 28.932159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675852, -0.298880, -0.673717,
		0.265335, -0.754135, 0.600731,
		-0.687620, -0.584766, -0.430380,
		44.588425, 33.823402, 28.803045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.486675, 31.506155, 24.796236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.525417, 31.830690, 25.026833>,  <39.548664, 32.025414, 25.165192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.525417, 31.830690, 25.026833>,  <39.486675, 31.506155, 24.796236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525417, 31.830690, 25.026833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806502, -0.275441, 0.523151,
		0.583244, -0.515614, 0.627669,
		0.096858, 0.811341, 0.576493,
		39.554474, 32.074093, 25.199781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440834, 31.154402, 25.477802>,  <39.486675, 31.506155, 24.796236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440834, 31.154402, 25.477802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323788, 31.535803, 25.506672>,  <39.253559, 31.764643, 25.523994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323788, 31.535803, 25.506672>,  <39.440834, 31.154402, 25.477802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323788, 31.535803, 25.506672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387664, -0.187290, 0.902574,
		0.874123, 0.236129, 0.424442,
		-0.292618, 0.953501, 0.072175,
		39.236004, 31.821854, 25.528324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457371, 31.267263, 26.179390>,  <39.440834, 31.154402, 25.477802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457371, 31.267263, 26.179390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271839, 31.603348, 26.067028>,  <39.160519, 31.804998, 25.999611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271839, 31.603348, 26.067028>,  <39.457371, 31.267263, 26.179390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271839, 31.603348, 26.067028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426868, 0.065882, 0.901911,
		0.776302, 0.538242, 0.328101,
		-0.463831, 0.840211, -0.280903,
		39.132690, 31.855412, 25.982758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685841, 31.828894, 26.660002>,  <39.457371, 31.267263, 26.179390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685841, 31.828894, 26.660002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334240, 31.931589, 26.499285>,  <39.123280, 31.993206, 26.402855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334240, 31.931589, 26.499285>,  <39.685841, 31.828894, 26.660002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334240, 31.931589, 26.499285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352595, 0.217270, 0.910204,
		0.320982, 0.941743, -0.100456,
		-0.879004, 0.256738, -0.401794,
		39.070538, 32.008610, 26.378746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550175, 32.519234, 26.882263>,  <39.685841, 31.828894, 26.660002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550175, 32.519234, 26.882263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.215965, 32.313187, 26.805794>,  <39.015438, 32.189556, 26.759912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.215965, 32.313187, 26.805794>,  <39.550175, 32.519234, 26.882263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215965, 32.313187, 26.805794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327407, 0.187345, 0.926125,
		-0.441252, 0.836392, -0.325186,
		-0.835525, -0.515122, -0.191174,
		38.965309, 32.158649, 26.748442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062035, 32.895470, 27.243248>,  <39.550175, 32.519234, 26.882263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062035, 32.895470, 27.243248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.855774, 32.563419, 27.158405>,  <38.732018, 32.364189, 27.107500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.855774, 32.563419, 27.158405>,  <39.062035, 32.895470, 27.243248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855774, 32.563419, 27.158405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527108, 0.112190, 0.842360,
		-0.675472, 0.546167, -0.495419,
		-0.515650, -0.830130, -0.212108,
		38.701080, 32.314381, 27.094772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411118, 33.085083, 27.410740>,  <39.062035, 32.895470, 27.243248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411118, 33.085083, 27.410740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.417587, 32.685211, 27.418558>,  <38.421471, 32.445290, 27.423248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.417587, 32.685211, 27.418558>,  <38.411118, 33.085083, 27.410740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417587, 32.685211, 27.418558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562056, 0.007076, 0.827068,
		-0.826941, -0.024364, -0.561761,
		0.016176, -0.999678, 0.019545,
		38.422440, 32.385307, 27.424421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729740, 32.824238, 27.322994>,  <38.411118, 33.085083, 27.410740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729740, 32.824238, 27.322994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.914032, 32.500393, 27.468458>,  <38.024609, 32.306084, 27.555737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.914032, 32.500393, 27.468458>,  <37.729740, 32.824238, 27.322994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914032, 32.500393, 27.468458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708665, -0.088895, 0.699923,
		-0.534341, -0.580189, -0.614704,
		0.460731, -0.809617, 0.363659,
		38.052250, 32.257507, 27.577557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239422, 32.463436, 27.459200>,  <37.729740, 32.824238, 27.322994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239422, 32.463436, 27.459200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.526855, 32.290695, 27.677240>,  <37.699318, 32.187050, 27.808064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.526855, 32.290695, 27.677240>,  <37.239422, 32.463436, 27.459200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526855, 32.290695, 27.677240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644356, -0.118606, 0.755472,
		-0.261603, -0.894110, -0.363497,
		0.718588, -0.431855, 0.545098,
		37.742432, 32.161140, 27.840771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954006, 31.959515, 27.800169>,  <37.239422, 32.463436, 27.459200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954006, 31.959515, 27.800169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.268845, 32.072586, 28.019470>,  <37.457748, 32.140430, 28.151051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.268845, 32.072586, 28.019470>,  <36.954006, 31.959515, 27.800169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268845, 32.072586, 28.019470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587905, 0.074772, 0.805467,
		0.186696, -0.956296, 0.225041,
		0.787091, 0.282680, 0.548251,
		37.504971, 32.157391, 28.183945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867710, 31.642748, 28.322964>,  <36.954006, 31.959515, 27.800169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867710, 31.642748, 28.322964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.152840, 31.882727, 28.468264>,  <37.323917, 32.026714, 28.555445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.152840, 31.882727, 28.468264>,  <36.867710, 31.642748, 28.322964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152840, 31.882727, 28.468264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504433, 0.078718, 0.859855,
		0.487273, -0.796158, 0.358744,
		0.712820, 0.599947, 0.363251,
		37.366684, 32.062710, 28.577238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008430, 31.477221, 29.041523>,  <36.867710, 31.642748, 28.322964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008430, 31.477221, 29.041523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.154476, 31.848417, 29.011806>,  <37.242104, 32.071136, 28.993977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.154476, 31.848417, 29.011806>,  <37.008430, 31.477221, 29.041523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154476, 31.848417, 29.011806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495697, 0.261337, 0.828244,
		0.788019, -0.265581, 0.555421,
		0.365118, 0.927992, -0.074291,
		37.264011, 32.126816, 28.989519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279469, 31.770031, 29.691095>,  <37.008430, 31.477221, 29.041523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279469, 31.770031, 29.691095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.210510, 32.097683, 29.472260>,  <37.169136, 32.294273, 29.340958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.210510, 32.097683, 29.472260>,  <37.279469, 31.770031, 29.691095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210510, 32.097683, 29.472260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630125, 0.335188, 0.700422,
		0.757114, 0.465488, 0.458367,
		-0.172399, 0.819128, -0.547091,
		37.158791, 32.343422, 29.308132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374569, 32.288349, 30.170013>,  <37.279469, 31.770031, 29.691095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374569, 32.288349, 30.170013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164371, 32.487865, 29.894312>,  <37.038254, 32.607574, 29.728891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164371, 32.487865, 29.894312>,  <37.374569, 32.288349, 30.170013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164371, 32.487865, 29.894312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610272, 0.343491, 0.713850,
		0.592811, 0.795755, 0.123893,
		-0.525493, 0.498787, -0.689252,
		37.006725, 32.637501, 29.687536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029175, 32.577477, 30.411839>,  <37.374569, 32.288349, 30.170013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029175, 32.577477, 30.411839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.230686, 32.389839, 30.701986>,  <38.351593, 32.277256, 30.876076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.230686, 32.389839, 30.701986>,  <38.029175, 32.577477, 30.411839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230686, 32.389839, 30.701986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395171, -0.621547, -0.676402,
		0.768147, 0.627399, -0.127748,
		0.503775, -0.469094, 0.725369,
		38.381821, 32.249111, 30.919598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670185, 32.566898, 30.176939>,  <38.029175, 32.577477, 30.411839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670185, 32.566898, 30.176939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.699944, 32.286728, 30.460873>,  <38.717796, 32.118626, 30.631233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.699944, 32.286728, 30.460873>,  <38.670185, 32.566898, 30.176939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699944, 32.286728, 30.460873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554983, -0.562314, -0.613023,
		0.828529, 0.439551, 0.346893,
		0.074392, -0.700427, 0.709836,
		38.722260, 32.076599, 30.673824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426121, 32.428596, 30.130699>,  <38.670185, 32.566898, 30.176939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426121, 32.428596, 30.130699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.206913, 32.146152, 30.310070>,  <39.075390, 31.976686, 30.417692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.206913, 32.146152, 30.310070>,  <39.426121, 32.428596, 30.130699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206913, 32.146152, 30.310070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415042, -0.694990, -0.587137,
		0.726236, -0.135643, 0.673930,
		-0.548015, -0.706109, 0.448429,
		39.042507, 31.934320, 30.444599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908375, 31.881151, 30.439720>,  <39.426121, 32.428596, 30.130699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908375, 31.881151, 30.439720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.562294, 31.690252, 30.378185>,  <39.354645, 31.575712, 30.341265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.562294, 31.690252, 30.378185>,  <39.908375, 31.881151, 30.439720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562294, 31.690252, 30.378185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461503, -0.637936, -0.616484,
		0.196078, -0.604378, 0.772192,
		-0.865199, -0.477248, -0.153837,
		39.302734, 31.547077, 30.332035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119789, 31.272146, 30.629646>,  <39.908375, 31.881151, 30.439720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119789, 31.272146, 30.629646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.798229, 31.237362, 30.394297>,  <39.605293, 31.216492, 30.253086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.798229, 31.237362, 30.394297>,  <40.119789, 31.272146, 30.629646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798229, 31.237362, 30.394297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514710, -0.597418, -0.614951,
		-0.298030, -0.797201, 0.525022,
		-0.803898, -0.086960, -0.588376,
		39.557060, 31.211273, 30.217783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057827, 30.571587, 30.472561>,  <40.119789, 31.272146, 30.629646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057827, 30.571587, 30.472561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.872478, 30.776293, 30.183182>,  <39.761269, 30.899117, 30.009554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.872478, 30.776293, 30.183182>,  <40.057827, 30.571587, 30.472561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872478, 30.776293, 30.183182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460422, -0.558505, -0.689989,
		-0.757162, -0.652816, 0.023169,
		-0.463376, 0.511765, -0.723449,
		39.733467, 30.929823, 29.966146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862072, 30.104235, 29.969954>,  <40.057827, 30.571587, 30.472561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862072, 30.104235, 29.969954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.867672, 30.464453, 29.796137>,  <39.871033, 30.680584, 29.691847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.867672, 30.464453, 29.796137>,  <39.862072, 30.104235, 29.969954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867672, 30.464453, 29.796137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507052, -0.380955, -0.773156,
		-0.861802, -0.209510, -0.461957,
		0.014001, 0.900544, -0.434540,
		39.871872, 30.734615, 29.665775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727573, 30.038584, 29.152813>,  <39.862072, 30.104235, 29.969954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727573, 30.038584, 29.152813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893715, 30.396194, 29.219982>,  <39.993401, 30.610760, 29.260284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893715, 30.396194, 29.219982>,  <39.727573, 30.038584, 29.152813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893715, 30.396194, 29.219982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525388, -0.085074, -0.846599,
		-0.742595, 0.439865, -0.505046,
		0.415356, 0.894025, 0.167924,
		40.018322, 30.664402, 29.270359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658875, 30.359077, 28.556175>,  <39.727573, 30.038584, 29.152813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658875, 30.359077, 28.556175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.962025, 30.543102, 28.741199>,  <40.143917, 30.653519, 28.852213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.962025, 30.543102, 28.741199>,  <39.658875, 30.359077, 28.556175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962025, 30.543102, 28.741199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434299, 0.173299, -0.883941,
		-0.486831, 0.870809, -0.068466,
		0.757879, 0.460064, 0.462559,
		40.189388, 30.681122, 28.879967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729153, 30.960009, 28.261093>,  <39.658875, 30.359077, 28.556175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729153, 30.960009, 28.261093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.084232, 30.876989, 28.425489>,  <40.297279, 30.827177, 28.524128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.084232, 30.876989, 28.425489>,  <39.729153, 30.960009, 28.261093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084232, 30.876989, 28.425489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437385, 0.101293, -0.893552,
		0.143826, 0.972966, 0.180697,
		0.887699, -0.207550, 0.410992,
		40.350540, 30.814724, 28.548786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198166, 31.490646, 28.120003>,  <39.729153, 30.960009, 28.261093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198166, 31.490646, 28.120003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.445518, 31.184877, 28.192955>,  <40.593929, 31.001415, 28.236727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.445518, 31.184877, 28.192955>,  <40.198166, 31.490646, 28.120003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445518, 31.184877, 28.192955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451414, 0.155534, -0.878655,
		0.643297, 0.625674, 0.441250,
		0.618381, -0.764422, 0.182383,
		40.631031, 30.955551, 28.247669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853645, 31.774469, 27.995699>,  <40.198166, 31.490646, 28.120003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853645, 31.774469, 27.995699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.934433, 31.382748, 28.000860>,  <40.982906, 31.147715, 28.003958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.934433, 31.382748, 28.000860>,  <40.853645, 31.774469, 27.995699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934433, 31.382748, 28.000860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627576, 0.119295, -0.769362,
		0.751902, 0.163488, 0.638683,
		0.201973, -0.979306, 0.012903,
		40.995026, 31.088955, 28.004730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621181, 31.600580, 27.993021>,  <40.853645, 31.774469, 27.995699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621181, 31.600580, 27.993021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.449532, 31.266930, 27.854406>,  <41.346542, 31.066740, 27.771238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.449532, 31.266930, 27.854406>,  <41.621181, 31.600580, 27.993021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449532, 31.266930, 27.854406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608210, 0.016798, -0.793599,
		0.667782, -0.551319, 0.500115,
		-0.429125, -0.834126, -0.346535,
		41.320793, 31.016691, 27.750446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233490, 31.047400, 27.858757>,  <41.621181, 31.600580, 27.993021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233490, 31.047400, 27.858757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.921856, 30.924583, 27.640121>,  <41.734875, 30.850893, 27.508940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.921856, 30.924583, 27.640121>,  <42.233490, 31.047400, 27.858757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921856, 30.924583, 27.640121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607059, -0.151740, -0.780035,
		0.156563, -0.939522, 0.304610,
		-0.779081, -0.307041, -0.546588,
		41.688133, 30.832472, 27.476145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357449, 30.512333, 28.391018>,  <42.233490, 31.047400, 27.858757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357449, 30.512333, 28.391018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.671116, 30.380377, 28.601255>,  <42.859318, 30.301203, 28.727398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.671116, 30.380377, 28.601255>,  <42.357449, 30.512333, 28.391018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671116, 30.380377, 28.601255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530224, 0.083839, 0.843702,
		-0.322394, -0.940289, -0.109172,
		0.784171, -0.329890, 0.525593,
		42.906368, 30.281410, 28.758934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127110, 29.954617, 28.749863>,  <42.357449, 30.512333, 28.391018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127110, 29.954617, 28.749863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.452679, 30.041042, 28.965584>,  <42.648022, 30.092899, 29.095016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.452679, 30.041042, 28.965584>,  <42.127110, 29.954617, 28.749863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452679, 30.041042, 28.965584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562715, 0.062295, 0.824300,
		0.144513, -0.974388, 0.172290,
		0.813921, 0.216072, 0.539301,
		42.696854, 30.105862, 29.127375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302830, 29.415976, 29.201841>,  <42.127110, 29.954617, 28.749863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302830, 29.415976, 29.201841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.465366, 29.737900, 29.374889>,  <42.562889, 29.931055, 29.478718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.465366, 29.737900, 29.374889>,  <42.302830, 29.415976, 29.201841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465366, 29.737900, 29.374889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540778, -0.169818, 0.823845,
		0.736508, -0.568717, 0.366220,
		0.406344, 0.804812, 0.432622,
		42.587269, 29.979343, 29.504677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377472, 29.244938, 29.917738>,  <42.302830, 29.415976, 29.201841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377472, 29.244938, 29.917738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.409573, 29.642939, 29.941515>,  <42.428833, 29.881739, 29.955782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.409573, 29.642939, 29.941515>,  <42.377472, 29.244938, 29.917738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409573, 29.642939, 29.941515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485233, -0.013097, 0.874287,
		0.870695, -0.099005, 0.481756,
		0.080249, 0.995001, 0.059444,
		42.433647, 29.941439, 29.959349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510166, 29.317608, 30.577509>,  <42.377472, 29.244938, 29.917738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510166, 29.317608, 30.577509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.376705, 29.677877, 30.466179>,  <42.296627, 29.894039, 30.399382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.376705, 29.677877, 30.466179>,  <42.510166, 29.317608, 30.577509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376705, 29.677877, 30.466179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395854, 0.134090, 0.908471,
		0.855555, 0.413291, 0.311795,
		-0.333654, 0.900672, -0.278324,
		42.276608, 29.948080, 30.382681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822781, 29.765570, 31.063734>,  <42.510166, 29.317608, 30.577509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822781, 29.765570, 31.063734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.503582, 29.958889, 30.919722>,  <42.312061, 30.074881, 30.833313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.503582, 29.958889, 30.919722>,  <42.822781, 29.765570, 31.063734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503582, 29.958889, 30.919722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269928, 0.247504, 0.930527,
		0.538832, 0.839740, -0.067051,
		-0.797996, 0.483299, -0.360033,
		42.264183, 30.103878, 30.811712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775543, 30.377726, 31.428904>,  <42.822781, 29.765570, 31.063734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775543, 30.377726, 31.428904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.409698, 30.305414, 31.284239>,  <42.190189, 30.262028, 31.197441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.409698, 30.305414, 31.284239>,  <42.775543, 30.377726, 31.428904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409698, 30.305414, 31.284239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404324, 0.405797, 0.819665,
		-0.001418, 0.895906, -0.444242,
		-0.914615, -0.180780, -0.361661,
		42.135315, 30.251181, 31.175741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276966, 31.041891, 31.485689>,  <42.775543, 30.377726, 31.428904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276966, 31.041891, 31.485689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.073536, 30.697613, 31.476278>,  <41.951477, 30.491045, 31.470633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.073536, 30.697613, 31.476278>,  <42.276966, 31.041891, 31.485689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073536, 30.697613, 31.476278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521781, 0.286351, 0.803584,
		-0.684904, 0.420959, -0.594726,
		-0.508576, -0.860695, -0.023526,
		41.920963, 30.439404, 31.469221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569038, 31.206020, 31.509825>,  <42.276966, 31.041891, 31.485689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569038, 31.206020, 31.509825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.647427, 30.843838, 31.660419>,  <41.694458, 30.626528, 31.750776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.647427, 30.843838, 31.660419>,  <41.569038, 31.206020, 31.509825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647427, 30.843838, 31.660419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558566, 0.212488, 0.801781,
		-0.805979, -0.367414, -0.464118,
		0.195967, -0.905459, 0.376485,
		41.706215, 30.572201, 31.773365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910450, 30.913595, 31.763500>,  <41.569038, 31.206020, 31.509825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910450, 30.913595, 31.763500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.200226, 30.713818, 31.953552>,  <41.374092, 30.593952, 32.067581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.200226, 30.713818, 31.953552>,  <40.910450, 30.913595, 31.763500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200226, 30.713818, 31.953552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414496, 0.235127, 0.879152,
		-0.550802, -0.833829, -0.036683,
		0.724437, -0.499444, 0.475128,
		41.417557, 30.563984, 32.096092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547886, 30.377552, 32.123501>,  <40.910450, 30.913595, 31.763500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547886, 30.377552, 32.123501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.890419, 30.451021, 32.316566>,  <41.095940, 30.495102, 32.432407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.890419, 30.451021, 32.316566>,  <40.547886, 30.377552, 32.123501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890419, 30.451021, 32.316566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515360, 0.243790, 0.821566,
		0.033231, -0.952276, 0.303423,
		0.856329, 0.183674, 0.482664,
		41.147316, 30.506123, 32.461365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508884, 30.003422, 32.746250>,  <40.547886, 30.377552, 32.123501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508884, 30.003422, 32.746250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.775040, 30.296906, 32.801292>,  <40.934731, 30.472996, 32.834316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.775040, 30.296906, 32.801292>,  <40.508884, 30.003422, 32.746250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775040, 30.296906, 32.801292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350478, 0.144290, 0.925389,
		0.659113, -0.663965, 0.353158,
		0.665383, 0.733710, 0.137602,
		40.974655, 30.517019, 32.842571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704819, 29.919977, 33.370682>,  <40.508884, 30.003422, 32.746250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704819, 29.919977, 33.370682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.819695, 30.297878, 33.307487>,  <40.888618, 30.524620, 33.269569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.819695, 30.297878, 33.307487>,  <40.704819, 29.919977, 33.370682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819695, 30.297878, 33.307487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223298, 0.226423, 0.948088,
		0.931482, -0.237003, 0.275989,
		0.287190, 0.944755, -0.157986,
		40.905853, 30.581305, 33.260090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173153, 30.151157, 33.915810>,  <40.704819, 29.919977, 33.370682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173153, 30.151157, 33.915810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.033413, 30.503132, 33.787022>,  <40.949570, 30.714317, 33.709747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.033413, 30.503132, 33.787022>,  <41.173153, 30.151157, 33.915810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033413, 30.503132, 33.787022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370441, 0.185919, 0.910059,
		0.860656, 0.437198, 0.261015,
		-0.349349, 0.879938, -0.321969,
		40.928608, 30.767113, 33.690430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.421375, 33.592121, 29.121162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.123398, 33.539246, 28.859600>,  <44.944611, 33.507519, 28.702663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.123398, 33.539246, 28.859600>,  <45.421375, 33.592121, 29.121162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123398, 33.539246, 28.859600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642217, -0.407461, -0.649256,
		-0.180615, -0.903605, 0.388428,
		-0.744940, -0.132189, -0.653904,
		44.899918, 33.499588, 28.663429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484818, 32.926548, 28.988337>,  <45.421375, 33.592121, 29.121162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.484818, 32.926548, 28.988337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.269203, 33.068981, 28.683012>,  <45.139835, 33.154442, 28.499817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.269203, 33.068981, 28.683012>,  <45.484818, 32.926548, 28.988337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.269203, 33.068981, 28.683012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513652, -0.579253, -0.632951,
		-0.667533, -0.733261, 0.129338,
		-0.539038, 0.356081, -0.763311,
		45.107491, 33.175804, 28.454018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.597950, 32.487675, 28.459038>,  <45.484818, 32.926548, 28.988337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.597950, 32.487675, 28.459038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.422962, 32.795074, 28.272264>,  <45.317970, 32.979515, 28.160200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.422962, 32.795074, 28.272264>,  <45.597950, 32.487675, 28.459038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.422962, 32.795074, 28.272264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461206, -0.254009, -0.850158,
		-0.771954, -0.587268, -0.243318,
		-0.437465, 0.768502, -0.466935,
		45.291721, 33.025623, 28.132183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142082, 32.233456, 27.971670>,  <45.597950, 32.487675, 28.459038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142082, 32.233456, 27.971670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.280876, 32.594402, 27.869431>,  <45.364155, 32.810970, 27.808086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.280876, 32.594402, 27.869431>,  <45.142082, 32.233456, 27.971670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280876, 32.594402, 27.869431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257106, -0.353614, -0.899363,
		-0.901940, 0.246351, -0.354704,
		0.346988, 0.902368, -0.255600,
		45.384972, 32.865112, 27.792751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889790, 32.326817, 27.255049>,  <45.142082, 32.233456, 27.971670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889790, 32.326817, 27.255049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.176838, 32.604187, 27.280880>,  <45.349068, 32.770611, 27.296379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.176838, 32.604187, 27.280880>,  <44.889790, 32.326817, 27.255049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.176838, 32.604187, 27.280880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428341, -0.366359, -0.826018,
		-0.549125, 0.620434, -0.559932,
		0.717626, 0.693428, 0.064580,
		45.392124, 32.812214, 27.300255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965569, 32.546963, 26.665182>,  <44.889790, 32.326817, 27.255049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965569, 32.546963, 26.665182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.308273, 32.693264, 26.810614>,  <45.513897, 32.781044, 26.897873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.308273, 32.693264, 26.810614>,  <44.965569, 32.546963, 26.665182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.308273, 32.693264, 26.810614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475140, -0.285711, -0.832233,
		-0.200511, 0.885774, -0.418568,
		0.856760, 0.365750, 0.363578,
		45.565300, 32.802990, 26.919687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263130, 33.040531, 26.246489>,  <44.965569, 32.546963, 26.665182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263130, 33.040531, 26.246489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.580444, 32.908508, 26.451141>,  <45.770832, 32.829292, 26.573933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.580444, 32.908508, 26.451141>,  <45.263130, 33.040531, 26.246489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580444, 32.908508, 26.451141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472869, -0.195354, -0.859204,
		0.383538, 0.923525, 0.001104,
		0.793281, -0.330059, 0.511631,
		45.818428, 32.809490, 26.604631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876369, 33.272663, 25.932114>,  <45.263130, 33.040531, 26.246489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876369, 33.272663, 25.932114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.991215, 32.956665, 26.148808>,  <46.060120, 32.767067, 26.278824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.991215, 32.956665, 26.148808>,  <45.876369, 33.272663, 25.932114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.991215, 32.956665, 26.148808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645871, -0.257997, -0.718532,
		0.707402, 0.556189, 0.436161,
		0.287111, -0.789994, 0.541734,
		46.077347, 32.719666, 26.311327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.665733, 33.234539, 25.952154>,  <45.876369, 33.272663, 25.932114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.665733, 33.234539, 25.952154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.527149, 32.867474, 26.029991>,  <46.444000, 32.647236, 26.076694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.527149, 32.867474, 26.029991>,  <46.665733, 33.234539, 25.952154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.527149, 32.867474, 26.029991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587145, -0.373919, -0.717945,
		0.731591, -0.134485, 0.668347,
		-0.346461, -0.917659, 0.194594,
		46.423210, 32.592175, 26.088369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.288551, 32.764763, 25.737946>,  <46.665733, 33.234539, 25.952154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.288551, 32.764763, 25.737946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.982105, 32.510719, 25.777346>,  <46.798237, 32.358295, 25.800985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.982105, 32.510719, 25.777346>,  <47.288551, 32.764763, 25.737946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.982105, 32.510719, 25.777346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362070, -0.553129, -0.750302,
		0.531004, -0.539157, 0.653715,
		-0.766120, -0.635105, 0.098501,
		46.752270, 32.320187, 25.806896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.644730, 32.111343, 25.482471>,  <47.288551, 32.764763, 25.737946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.644730, 32.111343, 25.482471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.251415, 32.039154, 25.472795>,  <47.015427, 31.995842, 25.466990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.251415, 32.039154, 25.472795>,  <47.644730, 32.111343, 25.482471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.251415, 32.039154, 25.472795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141329, -0.672663, -0.726327,
		0.114809, -0.717604, 0.686923,
		-0.983283, -0.180471, -0.024190,
		46.956429, 31.985012, 25.465538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.644459, 31.431082, 25.480331>,  <47.644730, 32.111343, 25.482471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.644459, 31.431082, 25.480331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.318371, 31.592871, 25.314531>,  <47.122719, 31.689945, 25.215052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.318371, 31.592871, 25.314531>,  <47.644459, 31.431082, 25.480331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.318371, 31.592871, 25.314531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083867, -0.625719, -0.775527,
		-0.573040, -0.666992, 0.476180,
		-0.815225, 0.404472, -0.414501,
		47.073803, 31.714212, 25.190180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.211723, 30.830685, 25.310688>,  <47.644459, 31.431082, 25.480331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.211723, 30.830685, 25.310688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.183178, 31.166061, 25.094568>,  <47.166050, 31.367287, 24.964897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.183178, 31.166061, 25.094568>,  <47.211723, 30.830685, 25.310688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.183178, 31.166061, 25.094568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273793, -0.504407, -0.818908,
		-0.959137, -0.206371, -0.193563,
		-0.071364, 0.838442, -0.540298,
		47.161770, 31.417593, 24.932478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.829113, 30.735149, 24.716600>,  <47.211723, 30.830685, 25.310688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.829113, 30.735149, 24.716600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.051323, 31.049366, 24.607555>,  <47.184647, 31.237896, 24.542128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.051323, 31.049366, 24.607555>,  <46.829113, 30.735149, 24.716600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.051323, 31.049366, 24.607555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367826, -0.526193, -0.766698,
		-0.745722, 0.325642, -0.581254,
		0.555521, 0.785543, -0.272614,
		47.217979, 31.285028, 24.525772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.666100, 29.934235, 24.953184>,  <46.829113, 30.735149, 24.716600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.666100, 29.934235, 24.953184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.528835, 29.639198, 24.720564>,  <46.446476, 29.462177, 24.580992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.528835, 29.639198, 24.720564>,  <46.666100, 29.934235, 24.953184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.528835, 29.639198, 24.720564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851346, -0.017314, 0.524320,
		-0.396802, 0.675027, -0.622002,
		-0.343161, -0.737590, -0.581551,
		46.425888, 29.417921, 24.546099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940029, 30.099955, 24.629650>,  <46.666100, 29.934235, 24.953184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940029, 30.099955, 24.629650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.974236, 29.701427, 24.631975>,  <45.994759, 29.462311, 24.633369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.974236, 29.701427, 24.631975>,  <45.940029, 30.099955, 24.629650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974236, 29.701427, 24.631975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946779, -0.079446, 0.311925,
		-0.310316, -0.032178, -0.950089,
		0.085518, -0.996320, 0.005812,
		45.999889, 29.402531, 24.633718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.270931, 29.899689, 24.689489>,  <45.940029, 30.099955, 24.629650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.270931, 29.899689, 24.689489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.454769, 29.558086, 24.787010>,  <45.565071, 29.353125, 24.845524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.454769, 29.558086, 24.787010>,  <45.270931, 29.899689, 24.689489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454769, 29.558086, 24.787010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796370, -0.274763, 0.538795,
		-0.393148, -0.441785, -0.806388,
		0.459597, -0.854009, 0.243802,
		45.592648, 29.301884, 24.860151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730446, 29.332035, 24.571144>,  <45.270931, 29.899689, 24.689489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730446, 29.332035, 24.571144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.008537, 29.187918, 24.819933>,  <45.175392, 29.101448, 24.969206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.008537, 29.187918, 24.819933>,  <44.730446, 29.332035, 24.571144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008537, 29.187918, 24.819933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694894, -0.115640, 0.709753,
		-0.183794, -0.925644, -0.330761,
		0.695228, -0.360292, 0.621971,
		45.217106, 29.079830, 25.006523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401978, 28.848257, 24.872639>,  <44.730446, 29.332035, 24.571144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401978, 28.848257, 24.872639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.712337, 28.897291, 25.120173>,  <44.898552, 28.926712, 25.268694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.712337, 28.897291, 25.120173>,  <44.401978, 28.848257, 24.872639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712337, 28.897291, 25.120173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619603, -0.036414, 0.784070,
		0.118652, -0.991790, 0.047702,
		0.775896, 0.122587, 0.618836,
		44.945107, 28.934067, 25.305824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252270, 28.259926, 25.563955>,  <44.401978, 28.848257, 24.872639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252270, 28.259926, 25.563955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.480934, 28.581816, 25.627987>,  <44.618134, 28.774950, 25.666407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.480934, 28.581816, 25.627987>,  <44.252270, 28.259926, 25.563955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480934, 28.581816, 25.627987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368723, 0.077671, 0.926289,
		0.732973, -0.588547, 0.341121,
		0.571660, 0.804724, 0.160080,
		44.652431, 28.823233, 25.676010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487289, 28.127880, 26.258047>,  <44.252270, 28.259926, 25.563955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487289, 28.127880, 26.258047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.593807, 28.511990, 26.224659>,  <44.657719, 28.742455, 26.204626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.593807, 28.511990, 26.224659>,  <44.487289, 28.127880, 26.258047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593807, 28.511990, 26.224659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396630, 0.188089, 0.898503,
		0.878506, -0.206158, 0.430959,
		0.266292, 0.960271, -0.083469,
		44.673695, 28.800072, 26.199617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624470, 28.360937, 26.939384>,  <44.487289, 28.127880, 26.258047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624470, 28.360937, 26.939384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.581806, 28.698660, 26.729328>,  <44.556210, 28.901293, 26.603294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.581806, 28.698660, 26.729328>,  <44.624470, 28.360937, 26.939384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581806, 28.698660, 26.729328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448935, 0.430360, 0.783101,
		0.887176, 0.319279, 0.333136,
		-0.106660, 0.844305, -0.525141,
		44.549809, 28.951952, 26.571785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958496, 28.866173, 27.263372>,  <44.624470, 28.360937, 26.939384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958496, 28.866173, 27.263372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.708149, 29.093967, 27.050213>,  <44.557941, 29.230644, 26.922318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.708149, 29.093967, 27.050213>,  <44.958496, 28.866173, 27.263372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708149, 29.093967, 27.050213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159225, 0.575576, 0.802097,
		0.763506, 0.586854, -0.269556,
		-0.625864, 0.569486, -0.532898,
		44.520390, 29.264812, 26.890343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.974529, 29.499304, 27.651094>,  <44.958496, 28.866173, 27.263372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.974529, 29.499304, 27.651094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.649208, 29.541050, 27.422131>,  <44.454018, 29.566097, 27.284752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.649208, 29.541050, 27.422131>,  <44.974529, 29.499304, 27.651094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649208, 29.541050, 27.422131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444796, 0.522698, 0.727286,
		0.375100, 0.846106, -0.378688,
		-0.813300, 0.104366, -0.572408,
		44.405216, 29.572359, 27.250408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.820091, 30.179199, 27.497677>,  <44.974529, 29.499304, 27.651094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.820091, 30.179199, 27.497677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.475754, 29.976698, 27.477062>,  <44.269150, 29.855198, 27.464693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.475754, 29.976698, 27.477062>,  <44.820091, 30.179199, 27.497677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475754, 29.976698, 27.477062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390228, 0.591744, 0.705380,
		-0.326604, 0.627334, -0.706953,
		-0.860844, -0.506253, -0.051538,
		44.217499, 29.824821, 27.461601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229485, 30.625978, 27.754431>,  <44.820091, 30.179199, 27.497677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229485, 30.625978, 27.754431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.997219, 30.300802, 27.736736>,  <43.857861, 30.105696, 27.726120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.997219, 30.300802, 27.736736>,  <44.229485, 30.625978, 27.754431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997219, 30.300802, 27.736736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553033, 0.353972, 0.754227,
		-0.597484, 0.462415, -0.655122,
		-0.580661, -0.812943, -0.044238,
		43.823021, 30.056919, 27.723465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668606, 30.886883, 27.991001>,  <44.229485, 30.625978, 27.754431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668606, 30.886883, 27.991001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.581245, 30.500532, 28.046698>,  <43.528831, 30.268723, 28.080114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.581245, 30.500532, 28.046698>,  <43.668606, 30.886883, 27.991001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581245, 30.500532, 28.046698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515086, 0.235287, 0.824213,
		-0.828848, 0.108286, -0.548894,
		-0.218399, -0.965875, 0.139240,
		43.515724, 30.210770, 28.088470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930897, 30.787149, 28.044495>,  <43.668606, 30.886883, 27.991001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930897, 30.787149, 28.044495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.101387, 30.486843, 28.246357>,  <43.203682, 30.306660, 28.367474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.101387, 30.486843, 28.246357>,  <42.930897, 30.787149, 28.044495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101387, 30.486843, 28.246357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569307, 0.210916, 0.794609,
		-0.703006, -0.625990, -0.337518,
		0.426229, -0.750767, 0.504656,
		43.229256, 30.261614, 28.397755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493069, 30.433590, 27.470516>,  <42.930897, 30.787149, 28.044495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493069, 30.433590, 27.470516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.154221, 30.546974, 27.290718>,  <41.950912, 30.615004, 27.182838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.154221, 30.546974, 27.290718>,  <42.493069, 30.433590, 27.470516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154221, 30.546974, 27.290718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455681, -0.047712, -0.888864,
		-0.273403, -0.957797, -0.088750,
		-0.847116, 0.283460, -0.449495,
		41.900085, 30.632011, 27.155870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359936, 29.946590, 26.918238>,  <42.493069, 30.433590, 27.470516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359936, 29.946590, 26.918238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.147011, 30.270548, 26.819672>,  <42.019257, 30.464922, 26.760532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.147011, 30.270548, 26.819672>,  <42.359936, 29.946590, 26.918238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147011, 30.270548, 26.819672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190881, -0.168756, -0.966999,
		-0.824750, -0.561776, -0.064763,
		-0.532308, 0.809894, -0.246414,
		41.987320, 30.513515, 26.745747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048119, 29.745869, 26.317705>,  <42.359936, 29.946590, 26.918238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048119, 29.745869, 26.317705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.006210, 30.143528, 26.328234>,  <41.981068, 30.382124, 26.334551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.006210, 30.143528, 26.328234>,  <42.048119, 29.745869, 26.317705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006210, 30.143528, 26.328234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119378, 0.038845, -0.992089,
		-0.987306, -0.100796, -0.122750,
		-0.104767, 0.994148, 0.026319,
		41.974781, 30.441772, 26.336130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530571, 29.958067, 25.780048>,  <42.048119, 29.745869, 26.317705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530571, 29.958067, 25.780048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.771553, 30.262287, 25.876886>,  <41.916142, 30.444818, 25.934990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.771553, 30.262287, 25.876886>,  <41.530571, 29.958067, 25.780048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771553, 30.262287, 25.876886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209194, 0.142253, -0.967472,
		-0.770251, 0.633503, -0.073402,
		0.602455, 0.760551, 0.242095,
		41.952290, 30.490452, 25.949514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379978, 30.517673, 25.270500>,  <41.530571, 29.958067, 25.780048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379978, 30.517673, 25.270500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.741127, 30.595270, 25.423960>,  <41.957817, 30.641829, 25.516035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.741127, 30.595270, 25.423960>,  <41.379978, 30.517673, 25.270500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741127, 30.595270, 25.423960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366383, 0.119640, -0.922741,
		-0.224905, 0.973680, 0.036944,
		0.902874, 0.193993, 0.383647,
		42.011990, 30.653469, 25.539053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637283, 31.040817, 24.817551>,  <41.379978, 30.517673, 25.270500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637283, 31.040817, 24.817551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.973183, 30.907755, 24.989206>,  <42.174721, 30.827917, 25.092199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.973183, 30.907755, 24.989206>,  <41.637283, 31.040817, 24.817551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973183, 30.907755, 24.989206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459551, 0.014475, -0.888033,
		0.289199, 0.942937, 0.165028,
		0.839748, -0.332657, 0.429141,
		42.225105, 30.807959, 25.117949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222961, 31.564987, 24.591669>,  <41.637283, 31.040817, 24.817551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222961, 31.564987, 24.591669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.394268, 31.220585, 24.701405>,  <42.497051, 31.013945, 24.767246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.394268, 31.220585, 24.701405>,  <42.222961, 31.564987, 24.591669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394268, 31.220585, 24.701405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454920, -0.056893, -0.888713,
		0.780793, 0.505406, 0.367323,
		0.428263, -0.861004, 0.274341,
		42.522747, 30.962284, 24.783707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349628, 32.352928, 24.280811>,  <42.222961, 31.564987, 24.591669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349628, 32.352928, 24.280811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.109943, 32.457520, 23.978136>,  <41.966133, 32.520275, 23.796532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.109943, 32.457520, 23.978136>,  <42.349628, 32.352928, 24.280811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109943, 32.457520, 23.978136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786806, -0.017697, 0.616947,
		0.147929, 0.965046, 0.216339,
		-0.599211, 0.261481, -0.756687,
		41.930180, 32.535965, 23.751129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992180, 33.017056, 24.477465>,  <42.349628, 32.352928, 24.280811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992180, 33.017056, 24.477465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.764145, 32.859039, 24.189314>,  <41.627323, 32.764229, 24.016424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.764145, 32.859039, 24.189314>,  <41.992180, 33.017056, 24.477465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764145, 32.859039, 24.189314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809068, 0.117461, 0.575858,
		-0.142873, 0.911121, -0.386581,
		-0.570085, -0.395045, -0.720377,
		41.593121, 32.740524, 23.973200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304611, 33.374470, 24.528278>,  <41.992180, 33.017056, 24.477465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304611, 33.374470, 24.528278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.231636, 33.050106, 24.305878>,  <41.187851, 32.855488, 24.172438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.231636, 33.050106, 24.305878>,  <41.304611, 33.374470, 24.528278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231636, 33.050106, 24.305878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918561, -0.061109, 0.390528,
		-0.350661, 0.581966, -0.733725,
		-0.182437, -0.810913, -0.556000,
		41.176907, 32.806831, 24.139078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668781, 33.470051, 24.277037>,  <41.304611, 33.374470, 24.528278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668781, 33.470051, 24.277037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.706295, 33.072311, 24.257160>,  <40.728806, 32.833668, 24.245234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.706295, 33.072311, 24.257160>,  <40.668781, 33.470051, 24.277037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706295, 33.072311, 24.257160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865477, -0.106097, 0.489585,
		-0.492092, -0.002909, -0.870538,
		0.093786, -0.994352, -0.049692,
		40.734432, 32.774006, 24.242252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977455, 33.254513, 24.109142>,  <40.668781, 33.470051, 24.277037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977455, 33.254513, 24.109142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160789, 32.945568, 24.285046>,  <40.270790, 32.760201, 24.390589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160789, 32.945568, 24.285046>,  <39.977455, 33.254513, 24.109142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160789, 32.945568, 24.285046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841135, -0.217119, 0.495329,
		-0.287094, -0.596922, -0.749174,
		0.458333, -0.772362, 0.439759,
		40.298290, 32.713860, 24.416973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465969, 32.722218, 24.149118>,  <39.977455, 33.254513, 24.109142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465969, 32.722218, 24.149118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.732838, 32.609501, 24.424936>,  <39.892960, 32.541870, 24.590427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.732838, 32.609501, 24.424936>,  <39.465969, 32.722218, 24.149118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732838, 32.609501, 24.424936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744533, -0.281363, 0.605397,
		0.023420, -0.917295, -0.397518,
		0.667175, -0.281787, 0.689546,
		39.932991, 32.524963, 24.631800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218784, 32.092468, 24.371962>,  <39.465969, 32.722218, 24.149118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218784, 32.092468, 24.371962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.462788, 32.258862, 24.641733>,  <39.609188, 32.358696, 24.803596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.462788, 32.258862, 24.641733>,  <39.218784, 32.092468, 24.371962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462788, 32.258862, 24.641733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679857, -0.162468, 0.715121,
		0.407049, -0.894743, 0.183701,
		0.610004, 0.415980, 0.674430,
		39.645790, 32.383656, 24.844063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.647259, 33.079788, 23.417538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.046272, 33.080845, 23.445610>,  <45.285679, 33.081478, 23.462454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.046272, 33.080845, 23.445610>,  <44.647259, 33.079788, 23.417538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046272, 33.080845, 23.445610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036676, 0.871804, 0.488480,
		-0.059893, -0.489848, 0.869748,
		0.997531, 0.002643, 0.070181,
		45.345531, 33.081638, 23.466663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381824, 33.739109, 23.861933>,  <44.647259, 33.079788, 23.417538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381824, 33.739109, 23.861933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.576332, 33.616882, 24.189388>,  <44.693039, 33.543545, 24.385860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.576332, 33.616882, 24.189388>,  <44.381824, 33.739109, 23.861933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576332, 33.616882, 24.189388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810465, 0.192476, 0.553262,
		-0.326629, -0.932512, -0.154060,
		0.486270, -0.305572, 0.818637,
		44.722214, 33.525211, 24.434980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920036, 33.344658, 24.277792>,  <44.381824, 33.739109, 23.861933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920036, 33.344658, 24.277792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.212208, 33.420784, 24.540167>,  <44.387512, 33.466461, 24.697592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.212208, 33.420784, 24.540167>,  <43.920036, 33.344658, 24.277792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212208, 33.420784, 24.540167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680851, 0.126981, 0.721330,
		0.053988, -0.973476, 0.222327,
		0.730429, 0.190315, 0.655937,
		44.431335, 33.477879, 24.736948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637020, 32.974098, 24.961868>,  <43.920036, 33.344658, 24.277792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637020, 32.974098, 24.961868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.927666, 33.229378, 25.063641>,  <44.102055, 33.382545, 25.124704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.927666, 33.229378, 25.063641>,  <43.637020, 32.974098, 24.961868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927666, 33.229378, 25.063641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570623, 0.354330, 0.740837,
		0.382650, -0.683486, 0.621632,
		0.726615, 0.638199, 0.254428,
		44.145649, 33.420837, 25.139969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668728, 32.859985, 25.666672>,  <43.637020, 32.974098, 24.961868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668728, 32.859985, 25.666672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.792770, 33.229164, 25.575464>,  <43.867195, 33.450672, 25.520741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.792770, 33.229164, 25.575464>,  <43.668728, 32.859985, 25.666672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792770, 33.229164, 25.575464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589205, 0.374810, 0.715790,
		0.746104, -0.087623, 0.660039,
		0.310109, 0.922951, -0.228019,
		43.885803, 33.506050, 25.507059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918282, 33.112713, 26.285666>,  <43.668728, 32.859985, 25.666672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918282, 33.112713, 26.285666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.873447, 33.449104, 26.073936>,  <43.846546, 33.650940, 25.946899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.873447, 33.449104, 26.073936>,  <43.918282, 33.112713, 26.285666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873447, 33.449104, 26.073936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450968, 0.431615, 0.781240,
		0.885474, 0.326276, 0.330878,
		-0.112088, 0.840983, -0.529324,
		43.839821, 33.701401, 25.915138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939098, 33.683113, 26.719687>,  <43.918282, 33.112713, 26.285666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939098, 33.683113, 26.719687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.775192, 33.864697, 26.403204>,  <43.676849, 33.973648, 26.213314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.775192, 33.864697, 26.403204>,  <43.939098, 33.683113, 26.719687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775192, 33.864697, 26.403204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472483, 0.636325, 0.609795,
		0.780288, 0.623707, -0.046257,
		-0.409768, 0.453960, -0.791208,
		43.652264, 34.000885, 26.165842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796326, 34.274708, 26.958767>,  <43.939098, 33.683113, 26.719687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796326, 34.274708, 26.958767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.571739, 34.284775, 26.627920>,  <43.436989, 34.290813, 26.429411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.571739, 34.284775, 26.627920>,  <43.796326, 34.274708, 26.958767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571739, 34.284775, 26.627920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599511, 0.676603, 0.427545,
		0.570390, 0.735918, -0.364802,
		-0.561464, 0.025164, -0.827118,
		43.403301, 34.292324, 26.379786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752819, 34.989059, 26.758852>,  <43.796326, 34.274708, 26.958767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752819, 34.989059, 26.758852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.452858, 34.789333, 26.585266>,  <43.272881, 34.669498, 26.481113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.452858, 34.789333, 26.585266>,  <43.752819, 34.989059, 26.758852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452858, 34.789333, 26.585266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647698, 0.687666, 0.328029,
		0.134634, 0.527070, -0.839089,
		-0.749907, -0.499312, -0.433965,
		43.227886, 34.639538, 26.455076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486927, 35.392166, 26.307667>,  <43.752819, 34.989059, 26.758852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486927, 35.392166, 26.307667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.182800, 35.143456, 26.382835>,  <43.000324, 34.994228, 26.427937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.182800, 35.143456, 26.382835>,  <43.486927, 35.392166, 26.307667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182800, 35.143456, 26.382835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602256, 0.783183, 0.154635,
		-0.243324, 0.004396, -0.969935,
		-0.760317, -0.621776, 0.187920,
		42.954704, 34.956924, 26.439211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984932, 35.724007, 26.055239>,  <43.486927, 35.392166, 26.307667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984932, 35.724007, 26.055239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.801048, 35.462173, 26.295303>,  <42.690720, 35.305073, 26.439342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.801048, 35.462173, 26.295303>,  <42.984932, 35.724007, 26.055239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801048, 35.462173, 26.295303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651428, 0.707864, 0.273074,
		-0.603582, -0.265429, -0.751822,
		-0.459706, -0.654581, 0.600162,
		42.663136, 35.265800, 26.475351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366661, 35.784492, 25.851192>,  <42.984932, 35.724007, 26.055239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366661, 35.784492, 25.851192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.344078, 35.631310, 26.220009>,  <42.330528, 35.539402, 26.441299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.344078, 35.631310, 26.220009>,  <42.366661, 35.784492, 25.851192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344078, 35.631310, 26.220009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799486, 0.570508, 0.187998,
		-0.598026, -0.726545, -0.338375,
		-0.056456, -0.382954, 0.922041,
		42.327141, 35.516422, 26.496620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984173, 35.225616, 25.365080>,  <42.366661, 35.784492, 25.851192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984173, 35.225616, 25.365080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.714966, 35.431408, 25.152531>,  <41.553440, 35.554882, 25.025002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.714966, 35.431408, 25.152531>,  <41.984173, 35.225616, 25.365080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714966, 35.431408, 25.152531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576273, -0.085593, -0.812763,
		-0.463629, -0.853222, -0.238873,
		-0.673021, 0.514477, -0.531372,
		41.513058, 35.585751, 24.993118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734661, 34.762821, 24.885662>,  <41.984173, 35.225616, 25.365080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734661, 34.762821, 24.885662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.688110, 35.125423, 24.723330>,  <41.660179, 35.342987, 24.625931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.688110, 35.125423, 24.723330>,  <41.734661, 34.762821, 24.885662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688110, 35.125423, 24.723330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431032, -0.322024, -0.842918,
		-0.894800, -0.273026, -0.353257,
		-0.116381, 0.906508, -0.405830,
		41.653194, 35.397377, 24.601580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561245, 34.692928, 24.176748>,  <41.734661, 34.762821, 24.885662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561245, 34.692928, 24.176748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.669743, 35.077896, 24.181953>,  <41.734840, 35.308876, 24.185076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.669743, 35.077896, 24.181953>,  <41.561245, 34.692928, 24.176748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669743, 35.077896, 24.181953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529943, -0.138044, -0.836723,
		-0.803484, 0.233852, -0.547472,
		0.271245, 0.962422, 0.013012,
		41.751118, 35.366623, 24.185858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588795, 34.803089, 23.540611>,  <41.561245, 34.692928, 24.176748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588795, 34.803089, 23.540611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.771774, 35.142887, 23.645760>,  <41.881561, 35.346764, 23.708849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.771774, 35.142887, 23.645760>,  <41.588795, 34.803089, 23.540611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771774, 35.142887, 23.645760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570404, -0.053538, -0.819617,
		-0.682185, 0.524877, -0.509045,
		0.457452, 0.849492, 0.262869,
		41.909008, 35.397736, 23.724621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546936, 35.271366, 23.054743>,  <41.588795, 34.803089, 23.540611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546936, 35.271366, 23.054743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.860603, 35.406082, 23.263224>,  <42.048805, 35.486912, 23.388311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.860603, 35.406082, 23.263224>,  <41.546936, 35.271366, 23.054743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860603, 35.406082, 23.263224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502985, 0.146939, -0.851713,
		-0.363434, 0.930043, -0.054176,
		0.784169, 0.336791, 0.521200,
		42.095856, 35.507118, 23.419584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767597, 35.805763, 22.580784>,  <41.546936, 35.271366, 23.054743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767597, 35.805763, 22.580784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.052795, 35.668259, 22.825230>,  <42.223915, 35.585754, 22.971897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.052795, 35.668259, 22.825230>,  <41.767597, 35.805763, 22.580784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052795, 35.668259, 22.825230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586804, -0.184516, -0.788426,
		0.383791, 0.920751, 0.070161,
		0.712998, -0.343762, 0.611116,
		42.266693, 35.565128, 23.008564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397514, 36.032368, 22.339703>,  <41.767597, 35.805763, 22.580784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397514, 36.032368, 22.339703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.532917, 35.736023, 22.571749>,  <42.614159, 35.558216, 22.710976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.532917, 35.736023, 22.571749>,  <42.397514, 36.032368, 22.339703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532917, 35.736023, 22.571749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741272, -0.169785, -0.649375,
		0.579595, 0.649840, 0.491710,
		0.338505, -0.740865, 0.580114,
		42.634468, 35.513763, 22.745783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102814, 36.186031, 22.339804>,  <42.397514, 36.032368, 22.339703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102814, 36.186031, 22.339804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.087646, 35.815834, 22.490547>,  <43.078548, 35.593716, 22.580994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.087646, 35.815834, 22.490547>,  <43.102814, 36.186031, 22.339804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087646, 35.815834, 22.490547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814750, -0.246984, -0.524577,
		0.578571, 0.287158, 0.763411,
		-0.037914, -0.925494, 0.376860,
		43.076271, 35.538185, 22.603605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764061, 35.952560, 22.501898>,  <43.102814, 36.186031, 22.339804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764061, 35.952560, 22.501898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.587685, 35.593613, 22.508698>,  <43.481857, 35.378242, 22.512777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.587685, 35.593613, 22.508698>,  <43.764061, 35.952560, 22.501898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587685, 35.593613, 22.508698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749129, -0.378400, -0.543708,
		0.494342, -0.227011, 0.839102,
		-0.440944, -0.897373, 0.016999,
		43.455402, 35.324402, 22.513798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226532, 35.416328, 22.837503>,  <43.764061, 35.952560, 22.501898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226532, 35.416328, 22.837503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.954437, 35.235683, 22.606565>,  <43.791180, 35.127296, 22.468002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.954437, 35.235683, 22.606565>,  <44.226532, 35.416328, 22.837503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954437, 35.235683, 22.606565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730618, -0.481115, -0.484484,
		-0.058969, -0.751381, 0.657229,
		-0.680235, -0.451614, -0.577344,
		43.750366, 35.100201, 22.433363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334885, 34.689999, 22.924309>,  <44.226532, 35.416328, 22.837503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334885, 34.689999, 22.924309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.153801, 34.745728, 22.572025>,  <44.045151, 34.779163, 22.360655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.153801, 34.745728, 22.572025>,  <44.334885, 34.689999, 22.924309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153801, 34.745728, 22.572025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792178, -0.390529, -0.468979,
		-0.409282, -0.909986, 0.066423,
		-0.452704, 0.139326, -0.880708,
		44.017990, 34.787525, 22.307814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542908, 34.008636, 22.552893>,  <44.334885, 34.689999, 22.924309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542908, 34.008636, 22.552893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.414787, 34.257435, 22.267088>,  <44.337917, 34.406715, 22.095604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.414787, 34.257435, 22.267088>,  <44.542908, 34.008636, 22.552893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414787, 34.257435, 22.267088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705350, -0.346903, -0.618175,
		-0.632370, -0.701980, -0.327615,
		-0.320296, 0.621998, -0.714513,
		44.318699, 34.444035, 22.052734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470226, 33.583351, 21.964420>,  <44.542908, 34.008636, 22.552893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470226, 33.583351, 21.964420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.498997, 33.959751, 21.832153>,  <44.516258, 34.185593, 21.752794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.498997, 33.959751, 21.832153>,  <44.470226, 33.583351, 21.964420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498997, 33.959751, 21.832153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740360, -0.272521, -0.614491,
		-0.668351, -0.200613, -0.716282,
		0.071927, 0.941003, -0.330666,
		44.520576, 34.242050, 21.732954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357658, 33.552425, 21.228739>,  <44.470226, 33.583351, 21.964420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357658, 33.552425, 21.228739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.487244, 33.801933, 20.944216>,  <44.564995, 33.951637, 20.773502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.487244, 33.801933, 20.944216>,  <44.357658, 33.552425, 21.228739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.487244, 33.801933, 20.944216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908683, -0.414430, 0.050434,
		-0.263329, -0.662693, -0.701068,
		0.323966, 0.623767, -0.711309,
		44.584435, 33.989063, 20.730824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627880, 33.301933, 21.465450>,  <44.357658, 33.552425, 21.228739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627880, 33.301933, 21.465450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.590321, 32.904324, 21.443186>,  <43.567787, 32.665756, 21.429827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.590321, 32.904324, 21.443186>,  <43.627880, 33.301933, 21.465450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590321, 32.904324, 21.443186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687559, 0.024310, 0.725721,
		-0.720032, 0.106410, -0.685734,
		-0.093895, -0.994025, -0.055660,
		43.562153, 32.606117, 21.426489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922134, 33.177834, 21.542601>,  <43.627880, 33.301933, 21.465450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922134, 33.177834, 21.542601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.117142, 32.843399, 21.643221>,  <43.234146, 32.642738, 21.703592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.117142, 32.843399, 21.643221>,  <42.922134, 33.177834, 21.542601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117142, 32.843399, 21.643221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629781, -0.137193, 0.764561,
		-0.604731, -0.531160, -0.593439,
		0.487520, -0.836090, 0.251549,
		43.263397, 32.592571, 21.718685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589718, 32.543800, 21.368782>,  <42.922134, 33.177834, 21.542601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589718, 32.543800, 21.368782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.828171, 32.448666, 21.675522>,  <42.971241, 32.391582, 21.859566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.828171, 32.448666, 21.675522>,  <42.589718, 32.543800, 21.368782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828171, 32.448666, 21.675522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800517, -0.249425, 0.544941,
		0.061663, -0.938733, -0.339084,
		0.596130, -0.237839, 0.766852,
		43.007011, 32.377316, 21.905577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176575, 32.072613, 21.802647>,  <42.589718, 32.543800, 21.368782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176575, 32.072613, 21.802647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.466591, 32.169979, 22.060347>,  <42.640602, 32.228397, 22.214968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.466591, 32.169979, 22.060347>,  <42.176575, 32.072613, 21.802647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466591, 32.169979, 22.060347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650567, -0.064898, 0.756671,
		0.225996, -0.967748, 0.111305,
		0.725044, 0.243416, 0.644252,
		42.684105, 32.243004, 22.253622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195511, 31.531591, 22.321823>,  <42.176575, 32.072613, 21.802647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195511, 31.531591, 22.321823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.369038, 31.861166, 22.467663>,  <42.473156, 32.058910, 22.555166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.369038, 31.861166, 22.467663>,  <42.195511, 31.531591, 22.321823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369038, 31.861166, 22.467663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596440, -0.040686, 0.801626,
		0.675322, -0.565223, 0.473777,
		0.433821, 0.823934, 0.364598,
		42.499184, 32.108345, 22.577042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255440, 31.391109, 22.978703>,  <42.195511, 31.531591, 22.321823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255440, 31.391109, 22.978703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.287476, 31.789824, 22.977928>,  <42.306698, 32.029053, 22.977463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.287476, 31.789824, 22.977928>,  <42.255440, 31.391109, 22.978703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287476, 31.789824, 22.977928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654435, 0.054051, 0.754184,
		0.751864, -0.059135, 0.656661,
		0.080092, 0.996786, -0.001938,
		42.311504, 32.088860, 22.977346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416416, 31.638494, 23.681736>,  <42.255440, 31.391109, 22.978703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416416, 31.638494, 23.681736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.243896, 31.942036, 23.486544>,  <42.140385, 32.124161, 23.369429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.243896, 31.942036, 23.486544>,  <42.416416, 31.638494, 23.681736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243896, 31.942036, 23.486544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714259, 0.043248, 0.698544,
		0.551196, 0.649825, 0.523364,
		-0.431297, 0.758852, -0.487981,
		42.114506, 32.169693, 23.340149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919186, 31.679247, 24.284679>,  <42.416416, 31.638494, 23.681736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919186, 31.679247, 24.284679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.850140, 31.291422, 24.354141>,  <42.808712, 31.058727, 24.395819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.850140, 31.291422, 24.354141>,  <42.919186, 31.679247, 24.284679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850140, 31.291422, 24.354141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480172, -0.236764, -0.844617,
		0.860022, -0.062410, 0.506425,
		-0.172616, -0.969561, 0.173654,
		42.798355, 31.000553, 24.406237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573780, 31.427374, 24.166464>,  <42.919186, 31.679247, 24.284679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573780, 31.427374, 24.166464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.332596, 31.108419, 24.156570>,  <43.187885, 30.917046, 24.150635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.332596, 31.108419, 24.156570>,  <43.573780, 31.427374, 24.166464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332596, 31.108419, 24.156570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613510, -0.443654, -0.653281,
		0.509946, -0.409076, 0.756711,
		-0.602959, -0.797388, -0.024732,
		43.151707, 30.869204, 24.149151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029579, 30.830036, 24.265089>,  <43.573780, 31.427374, 24.166464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029579, 30.830036, 24.265089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.690235, 30.698643, 24.099010>,  <43.486629, 30.619806, 23.999363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.690235, 30.698643, 24.099010>,  <44.029579, 30.830036, 24.265089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690235, 30.698643, 24.099010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528835, -0.488743, -0.693876,
		0.025004, -0.808225, 0.588343,
		-0.848356, -0.328486, -0.415197,
		43.435730, 30.600098, 23.974451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121925, 30.047844, 24.086405>,  <44.029579, 30.830036, 24.265089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121925, 30.047844, 24.086405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.831680, 30.150219, 23.830910>,  <43.657536, 30.211643, 23.677612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.831680, 30.150219, 23.830910>,  <44.121925, 30.047844, 24.086405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831680, 30.150219, 23.830910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381703, -0.622636, -0.683101,
		-0.572534, -0.739473, 0.354097,
		-0.725609, 0.255939, -0.638739,
		43.613998, 30.227001, 23.639288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061146, 29.448103, 23.727516>,  <44.121925, 30.047844, 24.086405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061146, 29.448103, 23.727516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.856728, 29.699448, 23.492912>,  <43.734077, 29.850254, 23.352150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.856728, 29.699448, 23.492912>,  <44.061146, 29.448103, 23.727516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856728, 29.699448, 23.492912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218936, -0.564682, -0.795739,
		-0.831204, -0.535066, 0.151007,
		-0.511044, 0.628361, -0.586512,
		43.703415, 29.887957, 23.316959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649246, 29.047060, 23.214100>,  <44.061146, 29.448103, 23.727516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649246, 29.047060, 23.214100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.741497, 29.407293, 23.066717>,  <43.796848, 29.623434, 22.978289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.741497, 29.407293, 23.066717>,  <43.649246, 29.047060, 23.214100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741497, 29.407293, 23.066717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532090, -0.433754, -0.727143,
		-0.814674, -0.028356, -0.579226,
		0.230623, 0.900585, -0.368456,
		43.810684, 29.677469, 22.956181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947884, 28.778252, 22.646633>,  <43.649246, 29.047060, 23.214100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947884, 28.778252, 22.646633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.037834, 29.167347, 22.623978>,  <44.091805, 29.400805, 22.610384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.037834, 29.167347, 22.623978>,  <43.947884, 28.778252, 22.646633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.037834, 29.167347, 22.623978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628673, -0.189254, -0.754290,
		-0.744447, 0.134015, -0.654094,
		0.224876, 0.972740, -0.056638,
		44.105297, 29.459169, 22.606987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851467, 29.028505, 21.921583>,  <43.947884, 28.778252, 22.646633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851467, 29.028505, 21.921583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.107281, 29.267403, 22.115198>,  <44.260769, 29.410742, 22.231367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.107281, 29.267403, 22.115198>,  <43.851467, 29.028505, 21.921583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107281, 29.267403, 22.115198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673910, -0.132584, -0.726819,
		-0.369914, 0.791025, -0.487282,
		0.639538, 0.597245, 0.484035,
		44.299141, 29.446575, 22.260408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253357, 29.368216, 21.441387>,  <43.851467, 29.028505, 21.921583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253357, 29.368216, 21.441387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.486469, 29.429020, 21.760702>,  <44.626335, 29.465504, 21.952291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.486469, 29.429020, 21.760702>,  <44.253357, 29.368216, 21.441387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486469, 29.429020, 21.760702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812496, -0.091108, -0.575804,
		-0.014799, 0.984171, -0.176605,
		0.582780, 0.152012, 0.798286,
		44.661304, 29.474623, 22.000189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.973503, 33.124992, 34.962849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.310074, 33.245659, 35.142181>,  <36.512016, 33.318058, 35.249783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.310074, 33.245659, 35.142181>,  <35.973503, 33.124992, 34.962849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310074, 33.245659, 35.142181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424256, 0.145071, -0.893846,
		-0.334685, 0.942311, -0.005919,
		0.841423, 0.301668, 0.448334,
		36.562500, 33.336159, 35.276680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187962, 33.878178, 34.636570>,  <35.973503, 33.124992, 34.962849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187962, 33.878178, 34.636570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.497871, 33.706032, 34.821835>,  <36.683815, 33.602745, 34.932995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.497871, 33.706032, 34.821835>,  <36.187962, 33.878178, 34.636570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497871, 33.706032, 34.821835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541362, 0.073170, -0.837600,
		0.326580, 0.899687, 0.289671,
		0.774772, -0.430361, 0.463160,
		36.730305, 33.576923, 34.960781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772480, 34.317177, 34.382893>,  <36.187962, 33.878178, 34.636570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772480, 34.317177, 34.382893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.923874, 33.969997, 34.511528>,  <37.014709, 33.761688, 34.588711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.923874, 33.969997, 34.511528>,  <36.772480, 34.317177, 34.382893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923874, 33.969997, 34.511528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563420, -0.059625, -0.824016,
		0.734377, 0.493064, 0.466453,
		0.378480, -0.867948, 0.321589,
		37.037418, 33.709614, 34.608006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533249, 34.440464, 34.269676>,  <36.772480, 34.317177, 34.382893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533249, 34.440464, 34.269676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.471779, 34.048004, 34.316532>,  <37.434898, 33.812527, 34.344646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.471779, 34.048004, 34.316532>,  <37.533249, 34.440464, 34.269676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471779, 34.048004, 34.316532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397204, -0.169890, -0.901868,
		0.904772, -0.092065, 0.415826,
		-0.153675, -0.981153, 0.117144,
		37.425674, 33.753658, 34.351677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138000, 34.128067, 33.969788>,  <37.533249, 34.440464, 34.269676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138000, 34.128067, 33.969788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882030, 33.820702, 33.967209>,  <37.728447, 33.636284, 33.965660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882030, 33.820702, 33.967209>,  <38.138000, 34.128067, 33.969788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882030, 33.820702, 33.967209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376449, -0.306169, -0.874384,
		0.669911, -0.561967, 0.485192,
		-0.639926, -0.768410, -0.006446,
		37.690052, 33.590179, 33.965275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544430, 33.618244, 33.741955>,  <38.138000, 34.128067, 33.969788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544430, 33.618244, 33.741955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175365, 33.484024, 33.665955>,  <37.953926, 33.403492, 33.620354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175365, 33.484024, 33.665955>,  <38.544430, 33.618244, 33.741955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175365, 33.484024, 33.665955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333940, -0.448939, -0.828817,
		0.192811, -0.828167, 0.526273,
		-0.922663, -0.335549, -0.189997,
		37.898567, 33.383358, 33.608955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551384, 32.846642, 33.638199>,  <38.544430, 33.618244, 33.741955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551384, 32.846642, 33.638199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.230511, 32.981415, 33.441029>,  <38.037987, 33.062279, 33.322727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.230511, 32.981415, 33.441029>,  <38.551384, 32.846642, 33.638199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230511, 32.981415, 33.441029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354639, -0.395289, -0.847336,
		-0.480346, -0.854530, 0.197604,
		-0.802184, 0.336936, -0.492925,
		37.989857, 33.082497, 33.293152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360882, 32.202244, 33.254692>,  <38.551384, 32.846642, 33.638199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360882, 32.202244, 33.254692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.134270, 32.484673, 33.084747>,  <37.998302, 32.654129, 32.982780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.134270, 32.484673, 33.084747>,  <38.360882, 32.202244, 33.254692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134270, 32.484673, 33.084747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114807, -0.442928, -0.889176,
		-0.816003, -0.552523, 0.169871,
		-0.566532, 0.706069, -0.424864,
		37.964310, 32.696491, 32.957287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988594, 31.843040, 32.744221>,  <38.360882, 32.202244, 33.254692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988594, 31.843040, 32.744221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.969891, 32.225327, 32.627995>,  <37.958668, 32.454697, 32.558258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.969891, 32.225327, 32.627995>,  <37.988594, 31.843040, 32.744221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969891, 32.225327, 32.627995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139831, -0.281752, -0.949243,
		-0.989071, -0.085019, -0.120463,
		-0.046763, 0.955713, -0.290561,
		37.955860, 32.512039, 32.540825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456303, 31.911974, 32.230156>,  <37.988594, 31.843040, 32.744221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456303, 31.911974, 32.230156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714661, 32.213669, 32.182915>,  <37.869675, 32.394684, 32.154572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714661, 32.213669, 32.182915>,  <37.456303, 31.911974, 32.230156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714661, 32.213669, 32.182915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189877, -0.308548, -0.932065,
		-0.739437, 0.579591, -0.342501,
		0.645895, 0.754236, -0.118101,
		37.908428, 32.439941, 32.147484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342621, 32.079525, 31.551727>,  <37.456303, 31.911974, 32.230156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342621, 32.079525, 31.551727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.691673, 32.249569, 31.647896>,  <37.901104, 32.351593, 31.705597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.691673, 32.249569, 31.647896>,  <37.342621, 32.079525, 31.551727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691673, 32.249569, 31.647896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299262, -0.076403, -0.951107,
		-0.385954, 0.901913, -0.193890,
		0.872629, 0.425108, 0.240420,
		37.953461, 32.377102, 31.720022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534328, 32.450436, 30.939333>,  <37.342621, 32.079525, 31.551727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534328, 32.450436, 30.939333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.876007, 32.412384, 31.143801>,  <38.081017, 32.389553, 31.266481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.876007, 32.412384, 31.143801>,  <37.534328, 32.450436, 30.939333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876007, 32.412384, 31.143801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453762, -0.343601, -0.822216,
		0.253856, 0.934285, -0.250337,
		0.854200, -0.095131, 0.511168,
		38.132267, 32.383846, 31.297152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394970, 32.984455, 30.369383>,  <37.534328, 32.450436, 30.939333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394970, 32.984455, 30.369383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.066185, 32.965443, 30.142361>,  <36.868916, 32.954037, 30.006147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.066185, 32.965443, 30.142361>,  <37.394970, 32.984455, 30.369383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066185, 32.965443, 30.142361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517481, 0.478547, 0.709370,
		0.237885, 0.876775, -0.417944,
		-0.821964, -0.047530, -0.567553,
		36.819595, 32.951183, 29.972095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976582, 33.566700, 30.541931>,  <37.394970, 32.984455, 30.369383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976582, 33.566700, 30.541931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.700119, 33.358757, 30.341110>,  <36.534241, 33.233994, 30.220617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.700119, 33.358757, 30.341110>,  <36.976582, 33.566700, 30.541931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700119, 33.358757, 30.341110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707532, 0.345107, 0.616684,
		-0.147325, 0.781442, -0.606336,
		-0.691154, -0.519855, -0.502053,
		36.492771, 33.202801, 30.190495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444538, 33.968967, 30.316036>,  <36.976582, 33.566700, 30.541931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444538, 33.968967, 30.316036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257854, 33.615208, 30.314135>,  <36.145844, 33.402950, 30.312994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257854, 33.615208, 30.314135>,  <36.444538, 33.968967, 30.316036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257854, 33.615208, 30.314135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708219, 0.370507, 0.600959,
		-0.529726, 0.283838, -0.799266,
		-0.466708, -0.884398, -0.004753,
		36.117844, 33.349888, 30.312708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860844, 34.130276, 30.232183>,  <36.444538, 33.968967, 30.316036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860844, 34.130276, 30.232183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826981, 33.760860, 30.381804>,  <35.806664, 33.539211, 30.471575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826981, 33.760860, 30.381804>,  <35.860844, 34.130276, 30.232183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826981, 33.760860, 30.381804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753000, 0.305147, 0.582989,
		-0.652552, -0.232305, -0.721256,
		-0.084657, -0.923537, 0.374050,
		35.801582, 33.483799, 30.494019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139832, 34.149765, 30.486107>,  <35.860844, 34.130276, 30.232183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139832, 34.149765, 30.486107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.265865, 33.805660, 30.646444>,  <35.341484, 33.599197, 30.742647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.265865, 33.805660, 30.646444>,  <35.139832, 34.149765, 30.486107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265865, 33.805660, 30.646444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784996, 0.001145, 0.619499,
		-0.533390, -0.509852, -0.674941,
		0.315080, -0.860261, 0.400843,
		35.360390, 33.547581, 30.766697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578835, 33.734680, 30.556862>,  <35.139832, 34.149765, 30.486107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578835, 33.734680, 30.556862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862480, 33.637760, 30.821726>,  <35.032665, 33.579609, 30.980644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862480, 33.637760, 30.821726>,  <34.578835, 33.734680, 30.556862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862480, 33.637760, 30.821726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651098, 0.135411, 0.746816,
		-0.270619, -0.960704, -0.061741,
		0.709109, -0.242302, 0.662158,
		35.075214, 33.565071, 31.020372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260792, 33.209946, 30.985130>,  <34.578835, 33.734680, 30.556862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260792, 33.209946, 30.985130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.579521, 33.334557, 31.192215>,  <34.770760, 33.409325, 31.316465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.579521, 33.334557, 31.192215>,  <34.260792, 33.209946, 30.985130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579521, 33.334557, 31.192215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525516, -0.065521, 0.848257,
		0.298177, -0.947975, 0.111505,
		0.796821, 0.311529, 0.517713,
		34.818569, 33.428017, 31.347528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302273, 32.750221, 31.581751>,  <34.260792, 33.209946, 30.985130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302273, 32.750221, 31.581751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.501728, 33.082203, 31.681778>,  <34.621399, 33.281391, 31.741795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.501728, 33.082203, 31.681778>,  <34.302273, 32.750221, 31.581751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501728, 33.082203, 31.681778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392342, -0.041150, 0.918898,
		0.772936, -0.556309, 0.305108,
		0.498636, 0.829956, 0.250070,
		34.651318, 33.331188, 31.756800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553047, 32.602139, 32.284340>,  <34.302273, 32.750221, 31.581751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553047, 32.602139, 32.284340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593971, 32.998940, 32.254768>,  <34.618526, 33.237019, 32.237026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593971, 32.998940, 32.254768>,  <34.553047, 32.602139, 32.284340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593971, 32.998940, 32.254768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300048, 0.101633, 0.948494,
		0.948421, -0.074859, 0.308047,
		0.102311, 0.992001, -0.073929,
		34.624664, 33.296539, 32.232590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785576, 32.771946, 32.959545>,  <34.553047, 32.602139, 32.284340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785576, 32.771946, 32.959545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.635139, 33.105927, 32.798836>,  <34.544880, 33.306313, 32.702412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.635139, 33.105927, 32.798836>,  <34.785576, 32.771946, 32.959545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635139, 33.105927, 32.798836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447418, 0.216063, 0.867833,
		0.811403, 0.506140, 0.292313,
		-0.376087, 0.834949, -0.401770,
		34.522312, 33.356411, 32.678307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858574, 33.326004, 33.457180>,  <34.785576, 32.771946, 32.959545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858574, 33.326004, 33.457180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581856, 33.475903, 33.210285>,  <34.415825, 33.565842, 33.062149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581856, 33.475903, 33.210285>,  <34.858574, 33.326004, 33.457180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581856, 33.475903, 33.210285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469966, 0.415295, 0.778885,
		0.548220, 0.828911, -0.111182,
		-0.691800, 0.374749, -0.617233,
		34.374317, 33.588326, 33.025116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803692, 34.032185, 33.708302>,  <34.858574, 33.326004, 33.457180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803692, 34.032185, 33.708302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475201, 33.953934, 33.493896>,  <34.278107, 33.906982, 33.365253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475201, 33.953934, 33.493896>,  <34.803692, 34.032185, 33.708302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475201, 33.953934, 33.493896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562876, 0.431785, 0.704792,
		0.093567, 0.880506, -0.464709,
		-0.821228, -0.195628, -0.536017,
		34.228832, 33.895245, 33.333092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374687, 34.558594, 33.751740>,  <34.803692, 34.032185, 33.708302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374687, 34.558594, 33.751740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.110409, 34.267731, 33.677212>,  <33.951839, 34.093212, 33.632496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.110409, 34.267731, 33.677212>,  <34.374687, 34.558594, 33.751740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110409, 34.267731, 33.677212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644321, 0.422016, 0.637772,
		-0.385131, 0.541427, -0.747349,
		-0.660700, -0.727159, -0.186321,
		33.912197, 34.049583, 33.621315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754322, 34.855507, 33.725227>,  <34.374687, 34.558594, 33.751740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754322, 34.855507, 33.725227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682270, 34.467419, 33.790005>,  <33.639038, 34.234566, 33.828869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682270, 34.467419, 33.790005>,  <33.754322, 34.855507, 33.725227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682270, 34.467419, 33.790005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578401, 0.237640, 0.780371,
		-0.795616, 0.046903, -0.603983,
		-0.180133, -0.970220, 0.161942,
		33.628231, 34.176353, 33.838589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632416, 35.402664, 33.123146>,  <33.754322, 34.855507, 33.725227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632416, 35.402664, 33.123146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701572, 35.778095, 33.003689>,  <33.743065, 36.003353, 32.932014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701572, 35.778095, 33.003689>,  <33.632416, 35.402664, 33.123146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701572, 35.778095, 33.003689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847043, -0.296414, -0.441199,
		-0.502621, -0.176686, -0.846259,
		0.172890, 0.938574, -0.298645,
		33.753441, 36.059666, 32.914097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608192, 35.457573, 32.392750>,  <33.632416, 35.402664, 33.123146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608192, 35.457573, 32.392750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804317, 35.783184, 32.517300>,  <33.921993, 35.978550, 32.592030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804317, 35.783184, 32.517300>,  <33.608192, 35.457573, 32.392750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804317, 35.783184, 32.517300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726368, -0.184224, -0.662156,
		-0.481650, 0.550836, -0.681611,
		0.490308, 0.814028, 0.311378,
		33.951408, 36.027393, 32.610714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846317, 35.881493, 31.805756>,  <33.608192, 35.457573, 32.392750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846317, 35.881493, 31.805756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096951, 35.998909, 32.094540>,  <34.247330, 36.069359, 32.267811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096951, 35.998909, 32.094540>,  <33.846317, 35.881493, 31.805756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096951, 35.998909, 32.094540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667195, 0.276739, -0.691568,
		-0.402797, 0.915014, -0.022448,
		0.626582, 0.293539, 0.721962,
		34.284924, 36.086971, 32.311127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118355, 36.502903, 31.620365>,  <33.846317, 35.881493, 31.805756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118355, 36.502903, 31.620365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393337, 36.351746, 31.868431>,  <34.558327, 36.261051, 32.017269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393337, 36.351746, 31.868431>,  <34.118355, 36.502903, 31.620365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393337, 36.351746, 31.868431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710800, 0.175043, -0.681266,
		0.148890, 0.909152, 0.388940,
		0.687455, -0.377892, 0.620164,
		34.599575, 36.238377, 32.054482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729820, 36.907158, 31.512285>,  <34.118355, 36.502903, 31.620365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729820, 36.907158, 31.512285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.881645, 36.576687, 31.678829>,  <34.972740, 36.378403, 31.778755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.881645, 36.576687, 31.678829>,  <34.729820, 36.907158, 31.512285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881645, 36.576687, 31.678829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818441, 0.090015, -0.567496,
		0.431377, 0.556165, 0.710348,
		0.379564, -0.826182, 0.416358,
		34.995514, 36.328831, 31.803736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486916, 36.969933, 31.624937>,  <34.729820, 36.907158, 31.512285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486916, 36.969933, 31.624937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424667, 36.574959, 31.613987>,  <35.387318, 36.337975, 31.607416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424667, 36.574959, 31.613987>,  <35.486916, 36.969933, 31.624937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424667, 36.574959, 31.613987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715166, -0.093509, -0.692672,
		0.681410, -0.127376, 0.720733,
		-0.155625, -0.987437, -0.027377,
		35.377979, 36.278728, 31.605774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079903, 36.704464, 31.637011>,  <35.486916, 36.969933, 31.624937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079903, 36.704464, 31.637011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865250, 36.427162, 31.444588>,  <35.736458, 36.260780, 31.329134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865250, 36.427162, 31.444588>,  <36.079903, 36.704464, 31.637011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865250, 36.427162, 31.444588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790200, -0.212904, -0.574679,
		0.295981, -0.688525, 0.662064,
		-0.536637, -0.693257, -0.481056,
		35.704258, 36.219185, 31.300270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560604, 36.202526, 31.455229>,  <36.079903, 36.704464, 31.637011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560604, 36.202526, 31.455229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242466, 36.128139, 31.224457>,  <36.051582, 36.083508, 31.085993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242466, 36.128139, 31.224457>,  <36.560604, 36.202526, 31.455229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242466, 36.128139, 31.224457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602653, -0.344855, -0.719642,
		-0.065128, -0.920050, 0.386351,
		-0.795341, -0.185966, -0.576930,
		36.003864, 36.072350, 31.051378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785603, 35.649193, 31.014914>,  <36.560604, 36.202526, 31.455229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785603, 35.649193, 31.014914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472382, 35.792793, 30.811762>,  <36.284447, 35.878956, 30.689871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472382, 35.792793, 30.811762>,  <36.785603, 35.649193, 31.014914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472382, 35.792793, 30.811762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445758, -0.245521, -0.860825,
		-0.433734, -0.900464, 0.032227,
		-0.783054, 0.359004, -0.507880,
		36.237465, 35.900494, 30.659397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630699, 35.107471, 30.507959>,  <36.785603, 35.649193, 31.014914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630699, 35.107471, 30.507959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470173, 35.443459, 30.361862>,  <36.373859, 35.645050, 30.274204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470173, 35.443459, 30.361862>,  <36.630699, 35.107471, 30.507959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470173, 35.443459, 30.361862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438803, -0.173712, -0.881632,
		-0.803990, -0.514079, -0.298868,
		-0.401312, 0.839968, -0.365243,
		36.349781, 35.695450, 30.252289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517002, 35.052681, 29.829462>,  <36.630699, 35.107471, 30.507959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517002, 35.052681, 29.829462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.501019, 35.451984, 29.846823>,  <36.491428, 35.691566, 29.857239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.501019, 35.451984, 29.846823>,  <36.517002, 35.052681, 29.829462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501019, 35.451984, 29.846823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357784, 0.054849, -0.932192,
		-0.932949, -0.021717, -0.359353,
		-0.039954, 0.998258, 0.043402,
		36.489033, 35.751461, 29.859844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182987, 35.204468, 29.188612>,  <36.517002, 35.052681, 29.829462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182987, 35.204468, 29.188612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.346939, 35.551147, 29.302336>,  <36.445309, 35.759155, 29.370569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.346939, 35.551147, 29.302336>,  <36.182987, 35.204468, 29.188612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346939, 35.551147, 29.302336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189482, 0.223992, -0.955994,
		-0.892242, 0.445713, -0.072415,
		0.409878, 0.866699, 0.284309,
		36.469902, 35.811157, 29.387629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075878, 35.733719, 28.639784>,  <36.182987, 35.204468, 29.188612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075878, 35.733719, 28.639784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370796, 35.888130, 28.861553>,  <36.547749, 35.980778, 28.994614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370796, 35.888130, 28.861553>,  <36.075878, 35.733719, 28.639784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370796, 35.888130, 28.861553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515808, 0.208320, -0.830990,
		-0.436279, 0.898659, -0.045522,
		0.737294, 0.386024, 0.554421,
		36.591984, 36.003937, 29.027880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237755, 36.412083, 28.478247>,  <36.075878, 35.733719, 28.639784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237755, 36.412083, 28.478247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.575779, 36.276680, 28.643789>,  <36.778595, 36.195438, 28.743114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.575779, 36.276680, 28.643789>,  <36.237755, 36.412083, 28.478247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575779, 36.276680, 28.643789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512184, 0.290453, -0.808272,
		0.153404, 0.895012, 0.418832,
		0.845065, -0.338511, 0.413855,
		36.829300, 36.175125, 28.767946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774261, 37.007843, 28.405403>,  <36.237755, 36.412083, 28.478247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774261, 37.007843, 28.405403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.987343, 36.678055, 28.481794>,  <37.115192, 36.480183, 28.527630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.987343, 36.678055, 28.481794>,  <36.774261, 37.007843, 28.405403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987343, 36.678055, 28.481794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447600, 0.082957, -0.890378,
		0.718248, 0.559791, 0.413225,
		0.532705, -0.824471, 0.190978,
		37.147156, 36.430714, 28.539087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489647, 37.136139, 28.328096>,  <36.774261, 37.007843, 28.405403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489647, 37.136139, 28.328096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503315, 36.737175, 28.302794>,  <37.511517, 36.497795, 28.287611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503315, 36.737175, 28.302794>,  <37.489647, 37.136139, 28.328096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503315, 36.737175, 28.302794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514567, 0.071819, -0.854437,
		0.856769, -0.003356, 0.515689,
		0.034168, -0.997412, -0.063259,
		37.513565, 36.437950, 28.283815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195332, 36.966530, 28.178421>,  <37.489647, 37.136139, 28.328096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195332, 36.966530, 28.178421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.008636, 36.620476, 28.105003>,  <37.896618, 36.412842, 28.060953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.008636, 36.620476, 28.105003>,  <38.195332, 36.966530, 28.178421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008636, 36.620476, 28.105003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613018, -0.166886, -0.772242,
		0.637466, -0.472952, 0.608238,
		-0.466740, -0.865139, -0.183544,
		37.868614, 36.360935, 28.049940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650349, 36.467358, 28.104858>,  <38.195332, 36.966530, 28.178421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650349, 36.467358, 28.104858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.335270, 36.323223, 27.904980>,  <38.146225, 36.236740, 27.785053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.335270, 36.323223, 27.904980>,  <38.650349, 36.467358, 28.104858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335270, 36.323223, 27.904980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592983, -0.223502, -0.773575,
		0.167068, -0.905650, 0.389726,
		-0.787693, -0.360340, -0.499695,
		38.098961, 36.215122, 27.755072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903431, 35.915451, 27.863136>,  <38.650349, 36.467358, 28.104858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903431, 35.915451, 27.863136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.599648, 36.022827, 27.626101>,  <38.417377, 36.087254, 27.483879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.599648, 36.022827, 27.626101>,  <38.903431, 35.915451, 27.863136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599648, 36.022827, 27.626101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549662, -0.222463, -0.805222,
		-0.347981, -0.937257, 0.021402,
		-0.759461, 0.268438, -0.592587,
		38.371811, 36.103359, 27.448324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901726, 35.396030, 27.303146>,  <38.903431, 35.915451, 27.863136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901726, 35.396030, 27.303146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.662189, 35.680557, 27.155949>,  <38.518467, 35.851273, 27.067631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.662189, 35.680557, 27.155949>,  <38.901726, 35.396030, 27.303146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662189, 35.680557, 27.155949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380193, -0.151916, -0.912346,
		-0.704868, -0.686261, -0.179462,
		-0.598844, 0.711314, -0.367992,
		38.482536, 35.893951, 27.045551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622307, 35.113132, 26.721926>,  <38.901726, 35.396030, 27.303146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622307, 35.113132, 26.721926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604767, 35.511608, 26.691786>,  <38.594242, 35.750694, 26.673702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604767, 35.511608, 26.691786>,  <38.622307, 35.113132, 26.721926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604767, 35.511608, 26.691786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459896, -0.046824, -0.886737,
		-0.886889, -0.073539, -0.456092,
		-0.043854, 0.996192, -0.075348,
		38.591610, 35.810467, 26.669182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413193, 35.290226, 26.018215>,  <38.622307, 35.113132, 26.721926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413193, 35.290226, 26.018215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552711, 35.639942, 26.153246>,  <38.636425, 35.849770, 26.234264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552711, 35.639942, 26.153246>,  <38.413193, 35.290226, 26.018215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552711, 35.639942, 26.153246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371449, 0.201734, -0.906272,
		-0.860444, 0.441501, -0.254388,
		0.348801, 0.874288, 0.337575,
		38.657352, 35.902229, 26.254519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393242, 35.703949, 25.459665>,  <38.413193, 35.290226, 26.018215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393242, 35.703949, 25.459665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.656284, 35.852444, 25.721882>,  <38.814110, 35.941540, 25.879211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.656284, 35.852444, 25.721882>,  <38.393242, 35.703949, 25.459665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656284, 35.852444, 25.721882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579650, 0.306477, -0.755035,
		-0.481207, 0.876501, -0.013648,
		0.657606, 0.371240, 0.655542,
		38.853565, 35.963814, 25.918545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616936, 36.225380, 25.112206>,  <38.393242, 35.703949, 25.459665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616936, 36.225380, 25.112206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.886715, 36.137150, 25.394049>,  <39.048580, 36.084209, 25.563154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.886715, 36.137150, 25.394049>,  <38.616936, 36.225380, 25.112206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886715, 36.137150, 25.394049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735904, 0.123604, -0.665708,
		0.059748, 0.967506, 0.245688,
		0.674445, -0.220578, 0.704606,
		39.089046, 36.070976, 25.605431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183990, 36.701061, 25.070242>,  <38.616936, 36.225380, 25.112206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183990, 36.701061, 25.070242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.369129, 36.396122, 25.251173>,  <39.480213, 36.213158, 25.359732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.369129, 36.396122, 25.251173>,  <39.183990, 36.701061, 25.070242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369129, 36.396122, 25.251173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786548, 0.117876, -0.606175,
		0.408795, 0.636346, 0.654179,
		0.462849, -0.762344, 0.452330,
		39.507984, 36.167419, 25.386871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944611, 36.967766, 25.260870>,  <39.183990, 36.701061, 25.070242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944611, 36.967766, 25.260870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.994312, 36.572960, 25.301600>,  <40.024132, 36.336079, 25.326036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.994312, 36.572960, 25.301600>,  <39.944611, 36.967766, 25.260870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994312, 36.572960, 25.301600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918084, 0.075432, -0.389142,
		0.376407, 0.141834, 0.915533,
		0.124254, -0.987012, 0.101823,
		40.031590, 36.276855, 25.332146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611805, 36.910908, 25.486546>,  <39.944611, 36.967766, 25.260870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611805, 36.910908, 25.486546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.549904, 36.530319, 25.380152>,  <40.512764, 36.301964, 25.316315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.549904, 36.530319, 25.380152>,  <40.611805, 36.910908, 25.486546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549904, 36.530319, 25.380152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969918, -0.095109, -0.224083,
		0.187912, -0.292662, 0.937570,
		-0.154752, -0.951474, -0.265986,
		40.503479, 36.244877, 25.300356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237312, 36.634998, 25.780043>,  <40.611805, 36.910908, 25.486546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237312, 36.634998, 25.780043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.061199, 36.450882, 25.471685>,  <40.955532, 36.340412, 25.286671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.061199, 36.450882, 25.471685>,  <41.237312, 36.634998, 25.780043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061199, 36.450882, 25.471685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836424, 0.101865, -0.538534,
		0.326412, -0.881902, 0.340152,
		-0.440285, -0.460295, -0.770894,
		40.929115, 36.312794, 25.240417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447727, 35.868393, 26.150972>,  <41.237312, 36.634998, 25.780043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447727, 35.868393, 26.150972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.674896, 35.779026, 26.467844>,  <41.811195, 35.725407, 26.657967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.674896, 35.779026, 26.467844>,  <41.447727, 35.868393, 26.150972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674896, 35.779026, 26.467844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614082, 0.525850, 0.588545,
		-0.548061, -0.820710, 0.161442,
		0.567919, -0.223420, 0.792181,
		41.845272, 35.712002, 26.705498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896343, 35.723843, 26.748209>,  <41.447727, 35.868393, 26.150972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896343, 35.723843, 26.748209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.242123, 35.807404, 26.931114>,  <41.449589, 35.857540, 27.040857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.242123, 35.807404, 26.931114>,  <40.896343, 35.723843, 26.748209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242123, 35.807404, 26.931114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449750, 0.727777, 0.517750,
		-0.224624, -0.653221, 0.723081,
		0.864447, 0.208906, 0.457263,
		41.501457, 35.870075, 27.068293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833801, 35.451279, 27.423233>,  <40.896343, 35.723843, 26.748209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833801, 35.451279, 27.423233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.121643, 35.728992, 27.427877>,  <41.294350, 35.895618, 27.430664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.121643, 35.728992, 27.427877>,  <40.833801, 35.451279, 27.423233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121643, 35.728992, 27.427877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412455, 0.413930, 0.811507,
		0.558610, -0.588755, 0.584228,
		0.719608, 0.694283, 0.011609,
		41.337524, 35.937279, 27.431360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913361, 35.595085, 28.132915>,  <40.833801, 35.451279, 27.423233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913361, 35.595085, 28.132915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.122658, 35.890472, 27.962795>,  <41.248234, 36.067707, 27.860723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.122658, 35.890472, 27.962795>,  <40.913361, 35.595085, 28.132915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122658, 35.890472, 27.962795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301403, 0.627181, 0.718192,
		0.797106, -0.247598, 0.550743,
		0.523239, 0.738470, -0.425303,
		41.279629, 36.112015, 27.835205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469418, 35.859417, 28.639219>,  <40.913361, 35.595085, 28.132915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469418, 35.859417, 28.639219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.356628, 36.126808, 28.363937>,  <41.288956, 36.287243, 28.198769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.356628, 36.126808, 28.363937>,  <41.469418, 35.859417, 28.639219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356628, 36.126808, 28.363937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250411, 0.641171, 0.725393,
		0.926166, 0.376877, -0.013400,
		-0.281975, 0.668479, -0.688205,
		41.272038, 36.327351, 28.157476>
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
