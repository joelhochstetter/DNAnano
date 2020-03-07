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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.620617, 1.244733, 2.420606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.247097, 1.109749, 2.373043>,  <4.022985, 1.028758, 2.344505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.247097, 1.109749, 2.373043>,  <4.620617, 1.244733, 2.420606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.247097, 1.109749, 2.373043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306657, -0.583626, -0.751893,
		0.184336, -0.738581, 0.648474,
		-0.933800, -0.337460, -0.118908,
		3.966957, 1.008511, 2.337371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.393548, 0.517069, 2.440570>,  <4.620617, 1.244733, 2.420606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.393548, 0.517069, 2.440570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.151871, 0.712341, 2.188656>,  <4.006864, 0.829505, 2.037508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.151871, 0.712341, 2.188656>,  <4.393548, 0.517069, 2.440570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.151871, 0.712341, 2.188656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246609, -0.636993, -0.730358,
		-0.757716, -0.596588, 0.264478,
		-0.604194, 0.488182, -0.629784,
		3.970613, 0.858796, 1.999721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.743687, 0.139169, 2.256664>,  <4.393548, 0.517069, 2.440570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.743687, 0.139169, 2.256664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.831913, 0.391541, 1.959133>,  <3.884849, 0.542964, 1.780615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.831913, 0.391541, 1.959133>,  <3.743687, 0.139169, 2.256664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.831913, 0.391541, 1.959133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195617, -0.775728, -0.599983,
		-0.955555, -0.013171, -0.294519,
		0.220565, 0.630930, -0.743827,
		3.898082, 0.580819, 1.735985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.233582, 0.209037, 1.592028>,  <3.743687, 0.139169, 2.256664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.233582, 0.209037, 1.592028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.599560, 0.302490, 1.460396>,  <3.819146, 0.358562, 1.381416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.599560, 0.302490, 1.460396>,  <3.233582, 0.209037, 1.592028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.599560, 0.302490, 1.460396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006642, -0.824008, -0.566539,
		-0.403527, 0.516166, -0.755473,
		0.914944, 0.233632, -0.329081,
		3.874043, 0.372580, 1.361671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.313709, 0.172200, 0.792082>,  <3.233582, 0.209037, 1.592028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.313709, 0.172200, 0.792082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.681698, 0.130562, 0.943245>,  <3.902491, 0.105579, 1.033943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.681698, 0.130562, 0.943245>,  <3.313709, 0.172200, 0.792082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.681698, 0.130562, 0.943245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206316, -0.691154, -0.692632,
		0.333293, 0.715171, -0.614366,
		0.919972, -0.104096, 0.377908,
		3.957690, 0.099333, 1.056617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.708417, -0.062521, 0.195748>,  <3.313709, 0.172200, 0.792082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.708417, -0.062521, 0.195748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.922089, -0.147293, 0.523098>,  <4.050292, -0.198157, 0.719508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.922089, -0.147293, 0.523098>,  <3.708417, -0.062521, 0.195748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.922089, -0.147293, 0.523098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410342, -0.781371, -0.470191,
		0.739103, 0.586979, -0.330427,
		0.534178, -0.211931, 0.818376,
		4.082342, -0.210872, 0.768611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.286828, -0.275677, -0.071167>,  <3.708417, -0.062521, 0.195748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.286828, -0.275677, -0.071167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.295975, -0.405746, 0.306984>,  <4.301463, -0.483788, 0.533875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.295975, -0.405746, 0.306984>,  <4.286828, -0.275677, -0.071167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.295975, -0.405746, 0.306984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423569, -0.853407, -0.303785,
		0.905575, 0.407380, 0.118219,
		0.022867, -0.325174, 0.945378,
		4.302835, -0.503299, 0.590597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.883313, -0.607531, 0.009703>,  <4.286828, -0.275677, -0.071167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.883313, -0.607531, 0.009703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.659527, -0.755554, 0.306366>,  <4.525255, -0.844368, 0.484364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.659527, -0.755554, 0.306366>,  <4.883313, -0.607531, 0.009703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.659527, -0.755554, 0.306366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397287, -0.905038, -0.151886,
		0.727436, 0.209676, 0.653356,
		-0.559465, -0.370057, 0.741659,
		4.491687, -0.866571, 0.528863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.099388, 2.565279, 0.403118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.835804, 2.494263, 0.695488>,  <4.677654, 2.451653, 0.870910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.835804, 2.494263, 0.695488>,  <5.099388, 2.565279, 0.403118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.835804, 2.494263, 0.695488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149308, 0.983282, 0.104231,
		-0.737211, -0.040449, -0.674451,
		-0.658959, -0.177541, 0.730925,
		4.638116, 2.441000, 0.914766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.474588, 2.843036, 0.173059>,  <5.099388, 2.565279, 0.403118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.474588, 2.843036, 0.173059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.507151, 2.857315, 0.571476>,  <4.526688, 2.865883, 0.810526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.507151, 2.857315, 0.571476>,  <4.474588, 2.843036, 0.173059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.507151, 2.857315, 0.571476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176532, 0.984074, -0.020841,
		-0.980923, -0.174136, 0.086410,
		0.081405, 0.035698, 0.996042,
		4.531572, 2.868024, 0.870288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.864304, 3.250705, 0.399234>,  <4.474588, 2.843036, 0.173059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.864304, 3.250705, 0.399234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.149618, 3.255936, 0.679535>,  <4.320807, 3.259074, 0.847715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.149618, 3.255936, 0.679535>,  <3.864304, 3.250705, 0.399234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.149618, 3.255936, 0.679535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126982, 0.985691, 0.110859,
		-0.689274, -0.168057, 0.704739,
		0.713286, 0.013077, 0.700752,
		4.363604, 3.259859, 0.889760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.550664, 3.588430, 0.911278>,  <3.864304, 3.250705, 0.399234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.550664, 3.588430, 0.911278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.948740, 3.626068, 0.922199>,  <4.187585, 3.648651, 0.928752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.948740, 3.626068, 0.922199>,  <3.550664, 3.588430, 0.911278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.948740, 3.626068, 0.922199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097967, 0.959262, 0.264989,
		-0.001258, -0.266389, 0.963865,
		0.995189, 0.094094, 0.027304,
		4.247297, 3.654296, 0.930390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.862397, 3.743096, 1.594392>,  <3.550664, 3.588430, 0.911278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.862397, 3.743096, 1.594392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.066206, 3.887878, 1.282143>,  <4.188491, 3.974748, 1.094793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.066206, 3.887878, 1.282143>,  <3.862397, 3.743096, 1.594392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.066206, 3.887878, 1.282143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188464, 0.932137, 0.309197,
		0.839564, -0.010424, 0.543161,
		0.509523, 0.361956, -0.780624,
		4.219063, 3.996465, 1.047955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.395794, 4.158416, 1.842583>,  <3.862397, 3.743096, 1.594392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.395794, 4.158416, 1.842583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.330168, 4.266373, 1.463058>,  <4.290792, 4.331147, 1.235344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.330168, 4.266373, 1.463058>,  <4.395794, 4.158416, 1.842583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.330168, 4.266373, 1.463058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075143, 0.955630, 0.284826,
		0.983583, 0.118027, -0.136505,
		-0.164065, 0.269892, -0.948810,
		4.280948, 4.347341, 1.178415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.939930, 4.590207, 1.663982>,  <4.395794, 4.158416, 1.842583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.939930, 4.590207, 1.663982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.638386, 4.662170, 1.411213>,  <4.457459, 4.705349, 1.259551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.638386, 4.662170, 1.411213>,  <4.939930, 4.590207, 1.663982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.638386, 4.662170, 1.411213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051545, 0.975011, 0.216096,
		0.655010, 0.130333, -0.744295,
		-0.753860, 0.179910, -0.631923,
		4.412228, 4.716144, 1.221636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.158952, 5.082544, 1.355798>,  <4.939930, 4.590207, 1.663982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.158952, 5.082544, 1.355798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.760809, 5.081787, 1.317307>,  <4.521923, 5.081333, 1.294211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.760809, 5.081787, 1.317307>,  <5.158952, 5.082544, 1.355798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.760809, 5.081787, 1.317307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025008, 0.970554, 0.239582,
		0.092943, 0.240876, -0.966095,
		-0.995357, -0.001893, -0.096230,
		4.462202, 5.081219, 1.288437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
