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
	<24.013243, 34.763393, 34.728317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.194984, 34.969532, 35.018967>,  <24.304029, 35.093216, 35.193356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.194984, 34.969532, 35.018967>,  <24.013243, 34.763393, 34.728317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.194984, 34.969532, 35.018967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630285, 0.390446, -0.671039,
		-0.629525, 0.762868, -0.147415,
		0.454356, 0.515349, 0.726620,
		24.331291, 35.124138, 35.236954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.046124, 35.402752, 34.327911>,  <24.013243, 34.763393, 34.728317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.046124, 35.402752, 34.327911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.308863, 35.371700, 34.627918>,  <24.466507, 35.353069, 34.807922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.308863, 35.371700, 34.627918>,  <24.046124, 35.402752, 34.327911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.308863, 35.371700, 34.627918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739127, 0.263022, -0.620089,
		-0.149132, 0.961662, 0.230145,
		0.656849, -0.077631, 0.750015,
		24.505917, 35.348412, 34.852924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.606884, 35.978165, 34.443886>,  <24.046124, 35.402752, 34.327911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.606884, 35.978165, 34.443886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746157, 35.646637, 34.619080>,  <24.829720, 35.447720, 34.724197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746157, 35.646637, 34.619080>,  <24.606884, 35.978165, 34.443886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.746157, 35.646637, 34.619080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890784, 0.146981, -0.430000,
		0.292017, 0.539867, 0.789474,
		0.348180, -0.828819, 0.437984,
		24.850611, 35.397991, 34.750473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.249271, 36.200745, 34.625149>,  <24.606884, 35.978165, 34.443886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.249271, 36.200745, 34.625149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275854, 35.801670, 34.630997>,  <25.291803, 35.562225, 34.634506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275854, 35.801670, 34.630997>,  <25.249271, 36.200745, 34.625149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275854, 35.801670, 34.630997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924046, 0.056012, -0.378157,
		0.376461, 0.038638, 0.925626,
		0.066458, -0.997682, 0.014617,
		25.295792, 35.502365, 34.635384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991177, 36.038898, 34.802952>,  <25.249271, 36.200745, 34.625149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991177, 36.038898, 34.802952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827227, 35.714409, 34.636139>,  <25.728857, 35.519714, 34.536053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827227, 35.714409, 34.636139>,  <25.991177, 36.038898, 34.802952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827227, 35.714409, 34.636139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821617, -0.129777, -0.555070,
		0.396168, -0.570146, 0.719711,
		-0.409873, -0.811228, -0.417028,
		25.704264, 35.471039, 34.511032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491884, 35.870247, 35.410412>,  <25.991177, 36.038898, 34.802952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491884, 35.870247, 35.410412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725384, 35.553238, 35.481014>,  <25.865482, 35.363033, 35.523376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725384, 35.553238, 35.481014>,  <25.491884, 35.870247, 35.410412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725384, 35.553238, 35.481014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322941, -0.027172, 0.946029,
		-0.744949, -0.609243, -0.271798,
		0.583746, -0.792518, 0.176507,
		25.900507, 35.315483, 35.533966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047796, 35.267101, 35.817898>,  <25.491884, 35.870247, 35.410412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047796, 35.267101, 35.817898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433794, 35.251923, 35.921703>,  <25.665392, 35.242817, 35.983986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433794, 35.251923, 35.921703>,  <25.047796, 35.267101, 35.817898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433794, 35.251923, 35.921703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258509, -0.304589, 0.916733,
		0.044258, -0.951728, -0.303735,
		0.964995, -0.037945, 0.259511,
		25.723293, 35.240540, 35.999557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109655, 34.655827, 36.271370>,  <25.047796, 35.267101, 35.817898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109655, 34.655827, 36.271370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410561, 34.907322, 36.350143>,  <25.591105, 35.058220, 36.397408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410561, 34.907322, 36.350143>,  <25.109655, 34.655827, 36.271370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410561, 34.907322, 36.350143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138202, -0.141678, 0.980218,
		0.644205, -0.764600, -0.019686,
		0.752264, 0.628740, 0.196939,
		25.636240, 35.095943, 36.409225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364500, 34.465668, 36.943306>,  <25.109655, 34.655827, 36.271370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364500, 34.465668, 36.943306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583101, 34.798431, 36.904827>,  <25.714262, 34.998089, 36.881741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583101, 34.798431, 36.904827>,  <25.364500, 34.465668, 36.943306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.583101, 34.798431, 36.904827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080096, 0.062422, 0.994830,
		0.833617, -0.551385, -0.032519,
		0.546504, 0.831912, -0.096200,
		25.747053, 35.048004, 36.875969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891047, 34.439774, 37.477703>,  <25.364500, 34.465668, 36.943306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891047, 34.439774, 37.477703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873047, 34.824825, 37.370880>,  <25.862247, 35.055855, 37.306786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873047, 34.824825, 37.370880>,  <25.891047, 34.439774, 37.477703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873047, 34.824825, 37.370880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004008, 0.267150, 0.963646,
		0.998979, 0.044433, -0.008163,
		-0.044998, 0.962630, -0.267055,
		25.859547, 35.113613, 37.290764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256052, 34.821262, 38.049213>,  <25.891047, 34.439774, 37.477703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256052, 34.821262, 38.049213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047304, 35.109673, 37.866882>,  <25.922056, 35.282719, 37.757484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047304, 35.109673, 37.866882>,  <26.256052, 34.821262, 38.049213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.047304, 35.109673, 37.866882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127216, 0.462602, 0.877391,
		0.843486, 0.515872, -0.149692,
		-0.521870, 0.721024, -0.455825,
		25.890743, 35.325981, 37.730133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517803, 35.468311, 38.303101>,  <26.256052, 34.821262, 38.049213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517803, 35.468311, 38.303101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171423, 35.590210, 38.144478>,  <25.963594, 35.663349, 38.049305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171423, 35.590210, 38.144478>,  <26.517803, 35.468311, 38.303101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171423, 35.590210, 38.144478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028806, 0.761199, 0.647878,
		0.499297, 0.572454, -0.650383,
		-0.865952, 0.304749, -0.396554,
		25.911638, 35.681633, 38.025513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678886, 36.187870, 38.299809>,  <26.517803, 35.468311, 38.303101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678886, 36.187870, 38.299809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286036, 36.128784, 38.253155>,  <26.050325, 36.093330, 38.225163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286036, 36.128784, 38.253155>,  <26.678886, 36.187870, 38.299809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286036, 36.128784, 38.253155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186816, 0.689771, 0.699512,
		-0.022879, 0.708799, -0.705039,
		-0.982129, -0.147716, -0.116633,
		25.991398, 36.084469, 38.218166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438515, 36.828377, 38.350510>,  <26.678886, 36.187870, 38.299809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438515, 36.828377, 38.350510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138870, 36.580036, 38.442917>,  <25.959084, 36.431030, 38.498363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138870, 36.580036, 38.442917>,  <26.438515, 36.828377, 38.350510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138870, 36.580036, 38.442917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239707, 0.579159, 0.779176,
		-0.617554, 0.528312, -0.582678,
		-0.749111, -0.620855, 0.231022,
		25.914137, 36.393780, 38.512222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.744839, 37.212791, 38.423325>,  <26.438515, 36.828377, 38.350510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.744839, 37.212791, 38.423325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719341, 36.887646, 38.654907>,  <25.704042, 36.692558, 38.793858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719341, 36.887646, 38.654907>,  <25.744839, 37.212791, 38.423325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719341, 36.887646, 38.654907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302896, 0.568529, 0.764872,
		-0.950889, -0.126606, -0.282454,
		-0.063746, -0.812863, 0.578956,
		25.700218, 36.643787, 38.828594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.104380, 37.404957, 38.861965>,  <25.744839, 37.212791, 38.423325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.104380, 37.404957, 38.861965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267366, 37.086235, 39.040432>,  <25.365158, 36.895000, 39.147514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267366, 37.086235, 39.040432>,  <25.104380, 37.404957, 38.861965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267366, 37.086235, 39.040432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404885, 0.280300, 0.870345,
		-0.818559, -0.535284, -0.208402,
		0.407467, -0.796808, 0.446171,
		25.389606, 36.847195, 39.174282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.603220, 37.043602, 39.329838>,  <25.104380, 37.404957, 38.861965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.603220, 37.043602, 39.329838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961353, 36.926113, 39.463768>,  <25.176233, 36.855621, 39.544125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961353, 36.926113, 39.463768>,  <24.603220, 37.043602, 39.329838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961353, 36.926113, 39.463768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275245, 0.226148, 0.934397,
		-0.350174, -0.928754, 0.121631,
		0.895332, -0.293723, 0.334826,
		25.229954, 36.837997, 39.564217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.551241, 36.580235, 39.986423>,  <24.603220, 37.043602, 39.329838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.551241, 36.580235, 39.986423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926754, 36.716591, 40.006355>,  <25.152061, 36.798405, 40.018314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926754, 36.716591, 40.006355>,  <24.551241, 36.580235, 39.986423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.926754, 36.716591, 40.006355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125979, 0.205061, 0.970608,
		0.320657, -0.917464, 0.235453,
		0.938781, 0.340895, 0.049827,
		25.208387, 36.818859, 40.021305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850624, 36.241634, 40.522026>,  <24.551241, 36.580235, 39.986423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850624, 36.241634, 40.522026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106703, 36.545341, 40.475288>,  <25.260351, 36.727566, 40.447247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106703, 36.545341, 40.475288>,  <24.850624, 36.241634, 40.522026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.106703, 36.545341, 40.475288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059033, 0.200276, 0.977959,
		0.765938, -0.619190, 0.173038,
		0.640198, 0.759271, -0.116846,
		25.298763, 36.773125, 40.440235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297623, 36.260353, 41.140408>,  <24.850624, 36.241634, 40.522026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297623, 36.260353, 41.140408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414936, 36.611675, 40.989376>,  <25.485323, 36.822468, 40.898758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414936, 36.611675, 40.989376>,  <25.297623, 36.260353, 41.140408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.414936, 36.611675, 40.989376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107774, 0.422803, 0.899790,
		0.949932, -0.223199, 0.218659,
		0.293282, 0.878305, -0.377579,
		25.502920, 36.875168, 40.876102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893875, 36.444397, 41.586029>,  <25.297623, 36.260353, 41.140408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893875, 36.444397, 41.586029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762671, 36.781712, 41.415722>,  <25.683949, 36.984100, 41.313538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762671, 36.781712, 41.415722>,  <25.893875, 36.444397, 41.586029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762671, 36.781712, 41.415722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054248, 0.466770, 0.882713,
		0.943115, 0.266443, -0.198853,
		-0.328011, 0.843287, -0.425764,
		25.664267, 37.034698, 41.287994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433496, 36.965137, 41.616619>,  <25.893875, 36.444397, 41.586029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433496, 36.965137, 41.616619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097441, 37.178974, 41.579990>,  <25.895807, 37.307274, 41.558014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097441, 37.178974, 41.579990>,  <26.433496, 36.965137, 41.616619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097441, 37.178974, 41.579990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255890, 0.539549, 0.802126,
		0.478215, 0.650464, -0.590091,
		-0.840137, 0.534587, -0.091573,
		25.845400, 37.339352, 41.552517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590652, 37.658512, 41.635357>,  <26.433496, 36.965137, 41.616619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590652, 37.658512, 41.635357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212908, 37.608513, 41.757050>,  <25.986261, 37.578514, 41.830067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212908, 37.608513, 41.757050>,  <26.590652, 37.658512, 41.635357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212908, 37.608513, 41.757050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209522, 0.484387, 0.849394,
		-0.253540, 0.865878, -0.431246,
		-0.944361, -0.125000, 0.304232,
		25.929600, 37.571014, 41.848320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492275, 38.313400, 41.960598>,  <26.590652, 37.658512, 41.635357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492275, 38.313400, 41.960598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177971, 38.107430, 42.097672>,  <25.989389, 37.983849, 42.179916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177971, 38.107430, 42.097672>,  <26.492275, 38.313400, 41.960598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177971, 38.107430, 42.097672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171589, 0.350821, 0.920588,
		-0.594256, 0.782162, -0.187305,
		-0.785759, -0.514925, 0.342688,
		25.942244, 37.952953, 42.200478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986868, 38.758984, 42.345306>,  <26.492275, 38.313400, 41.960598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986868, 38.758984, 42.345306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878447, 38.398315, 42.480076>,  <25.813395, 38.181915, 42.560936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878447, 38.398315, 42.480076>,  <25.986868, 38.758984, 42.345306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878447, 38.398315, 42.480076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070291, 0.367629, 0.927312,
		-0.959995, 0.227667, -0.163026,
		-0.271052, -0.901674, 0.336919,
		25.797131, 38.127811, 42.581150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.363701, 38.720352, 42.720516>,  <25.986868, 38.758984, 42.345306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.363701, 38.720352, 42.720516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581957, 38.419086, 42.867500>,  <25.712910, 38.238327, 42.955692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581957, 38.419086, 42.867500>,  <25.363701, 38.720352, 42.720516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581957, 38.419086, 42.867500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045019, 0.411510, 0.910293,
		-0.836811, -0.513233, 0.190629,
		0.545638, -0.753161, 0.367461,
		25.745647, 38.193138, 42.977737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060595, 38.708874, 43.349216>,  <25.363701, 38.720352, 42.720516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060595, 38.708874, 43.349216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392946, 38.489574, 43.387287>,  <25.592358, 38.357994, 43.410130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392946, 38.489574, 43.387287>,  <25.060595, 38.708874, 43.349216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.392946, 38.489574, 43.387287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004950, 0.163748, 0.986490,
		-0.556429, -0.820126, 0.133341,
		0.830881, -0.548251, 0.095174,
		25.642210, 38.325100, 43.415840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.030308, 38.180443, 43.841667>,  <25.060595, 38.708874, 43.349216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.030308, 38.180443, 43.841667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414078, 38.292500, 43.828899>,  <25.644341, 38.359734, 43.821239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414078, 38.292500, 43.828899>,  <25.030308, 38.180443, 43.841667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.414078, 38.292500, 43.828899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029417, 0.013123, 0.999481,
		0.280420, -0.959867, 0.004350,
		0.959427, 0.280147, -0.031916,
		25.701906, 38.376545, 43.819324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.343361, 37.832466, 44.387085>,  <25.030308, 38.180443, 43.841667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.343361, 37.832466, 44.387085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601801, 38.128540, 44.312592>,  <25.756865, 38.306183, 44.267895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601801, 38.128540, 44.312592>,  <25.343361, 37.832466, 44.387085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601801, 38.128540, 44.312592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207230, 0.064714, 0.976150,
		0.734583, -0.669282, -0.111577,
		0.646099, 0.740185, -0.186233,
		25.795631, 38.350594, 44.256721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034225, 37.697994, 44.690815>,  <25.343361, 37.832466, 44.387085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034225, 37.697994, 44.690815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007441, 38.093346, 44.636215>,  <25.991369, 38.330555, 44.603455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007441, 38.093346, 44.636215>,  <26.034225, 37.697994, 44.690815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007441, 38.093346, 44.636215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218481, 0.148010, 0.964551,
		0.973541, 0.034767, -0.225853,
		-0.066963, 0.988375, -0.136498,
		25.987352, 38.389858, 44.595264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654015, 38.029919, 45.043999>,  <26.034225, 37.697994, 44.690815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654015, 38.029919, 45.043999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374159, 38.312710, 45.002651>,  <26.206245, 38.482384, 44.977844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374159, 38.312710, 45.002651>,  <26.654015, 38.029919, 45.043999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374159, 38.312710, 45.002651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119242, 0.258178, 0.958710,
		0.704476, 0.658425, -0.264933,
		-0.699639, 0.706980, -0.103369,
		26.164267, 38.524803, 44.971642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809443, 38.495178, 45.491550>,  <26.654015, 38.029919, 45.043999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809443, 38.495178, 45.491550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435980, 38.627934, 45.437679>,  <26.211903, 38.707588, 45.405357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435980, 38.627934, 45.437679>,  <26.809443, 38.495178, 45.491550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435980, 38.627934, 45.437679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048258, 0.256016, 0.965467,
		0.354908, 0.907912, -0.223015,
		-0.933655, 0.331890, -0.134677,
		26.155884, 38.727501, 45.397278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316271, 38.605927, 44.971523>,  <26.809443, 38.495178, 45.491550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316271, 38.605927, 44.971523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702286, 38.659122, 45.061874>,  <27.933895, 38.691040, 45.116085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702286, 38.659122, 45.061874>,  <27.316271, 38.605927, 44.971523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702286, 38.659122, 45.061874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223369, -0.868171, -0.443153,
		0.137160, 0.478112, -0.867523,
		0.965035, 0.132995, 0.225874,
		27.991796, 38.699020, 45.129635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671396, 38.447559, 44.391960>,  <27.316271, 38.605927, 44.971523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671396, 38.447559, 44.391960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927811, 38.388485, 44.693226>,  <28.081659, 38.353043, 44.873985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927811, 38.388485, 44.693226>,  <27.671396, 38.447559, 44.391960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927811, 38.388485, 44.693226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274780, -0.872108, -0.404875,
		0.716637, 0.466495, -0.518473,
		0.641036, -0.147682, 0.753168,
		28.120121, 38.344181, 44.919178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382256, 38.199821, 44.130901>,  <27.671396, 38.447559, 44.391960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382256, 38.199821, 44.130901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300817, 38.063454, 44.498013>,  <28.251955, 37.981632, 44.718281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300817, 38.063454, 44.498013>,  <28.382256, 38.199821, 44.130901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300817, 38.063454, 44.498013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243971, -0.925510, -0.289670,
		0.948170, 0.164936, 0.271605,
		-0.203596, -0.340920, 0.917781,
		28.239738, 37.961178, 44.773346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927509, 37.734886, 44.430992>,  <28.382256, 38.199821, 44.130901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927509, 37.734886, 44.430992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564245, 37.649536, 44.575058>,  <28.346287, 37.598328, 44.661499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564245, 37.649536, 44.575058>,  <28.927509, 37.734886, 44.430992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564245, 37.649536, 44.575058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078126, -0.931623, -0.354928,
		0.411272, -0.294193, 0.862731,
		-0.908158, -0.213374, 0.360167,
		28.291798, 37.585526, 44.683109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941807, 37.053516, 44.443604>,  <28.927509, 37.734886, 44.430992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941807, 37.053516, 44.443604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550299, 37.126396, 44.481163>,  <28.315393, 37.170124, 44.503700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550299, 37.126396, 44.481163>,  <28.941807, 37.053516, 44.443604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550299, 37.126396, 44.481163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204045, -0.822660, -0.530656,
		-0.019437, -0.538549, 0.842370,
		-0.978769, 0.182196, 0.093898,
		28.256668, 37.181057, 44.509331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671469, 36.385204, 44.602509>,  <28.941807, 37.053516, 44.443604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671469, 36.385204, 44.602509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371326, 36.599281, 44.447315>,  <28.191240, 36.727726, 44.354198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371326, 36.599281, 44.447315>,  <28.671469, 36.385204, 44.602509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371326, 36.599281, 44.447315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281280, -0.789656, -0.545275,
		-0.598203, -0.300018, 0.743063,
		-0.750357, 0.535194, -0.387985,
		28.146219, 36.759838, 44.330921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126778, 35.958008, 44.545456>,  <28.671469, 36.385204, 44.602509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126778, 35.958008, 44.545456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062613, 36.250881, 44.280678>,  <28.024113, 36.426605, 44.121811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062613, 36.250881, 44.280678>,  <28.126778, 35.958008, 44.545456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062613, 36.250881, 44.280678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162993, -0.681074, -0.713843,
		-0.973499, -0.006617, 0.228594,
		-0.160413, 0.732185, -0.661946,
		28.014488, 36.470535, 44.082092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495129, 35.702747, 44.166973>,  <28.126778, 35.958008, 44.545456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495129, 35.702747, 44.166973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670395, 35.982864, 43.941551>,  <27.775555, 36.150936, 43.806297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670395, 35.982864, 43.941551>,  <27.495129, 35.702747, 44.166973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670395, 35.982864, 43.941551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080288, -0.593950, -0.800486,
		-0.895301, 0.395993, -0.204024,
		0.438167, 0.700295, -0.563558,
		27.801846, 36.192951, 43.772484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095684, 35.881565, 43.594406>,  <27.495129, 35.702747, 44.166973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095684, 35.881565, 43.594406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461296, 35.979130, 43.464756>,  <27.680662, 36.037670, 43.386967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461296, 35.979130, 43.464756>,  <27.095684, 35.881565, 43.594406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461296, 35.979130, 43.464756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225529, -0.358594, -0.905841,
		-0.337176, 0.901065, -0.272756,
		0.914029, 0.243913, -0.324125,
		27.735504, 36.052303, 43.367519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013592, 36.071503, 42.931080>,  <27.095684, 35.881565, 43.594406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013592, 36.071503, 42.931080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412203, 36.039856, 42.920731>,  <27.651369, 36.020866, 42.914520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412203, 36.039856, 42.920731>,  <27.013592, 36.071503, 42.931080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412203, 36.039856, 42.920731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052319, -0.353575, -0.933942,
		0.064744, 0.932054, -0.356487,
		0.996529, -0.079118, -0.025873,
		27.711163, 36.016121, 42.912968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220757, 36.378296, 42.359879>,  <27.013592, 36.071503, 42.931080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220757, 36.378296, 42.359879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526897, 36.129372, 42.425556>,  <27.710583, 35.980019, 42.464962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526897, 36.129372, 42.425556>,  <27.220757, 36.378296, 42.359879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526897, 36.129372, 42.425556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066746, -0.330486, -0.941448,
		0.640139, 0.709582, -0.294476,
		0.765355, -0.622312, 0.164195,
		27.756504, 35.942677, 42.474815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.661621, 36.504391, 41.774609>,  <27.220757, 36.378296, 42.359879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.661621, 36.504391, 41.774609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755590, 36.146233, 41.925907>,  <27.811972, 35.931335, 42.016685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755590, 36.146233, 41.925907>,  <27.661621, 36.504391, 41.774609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755590, 36.146233, 41.925907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067842, -0.373084, -0.925314,
		0.969644, 0.243038, -0.026900,
		0.234922, -0.895400, 0.378247,
		27.826067, 35.877613, 42.039383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193214, 36.333370, 41.405998>,  <27.661621, 36.504391, 41.774609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193214, 36.333370, 41.405998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.077599, 35.992867, 41.581184>,  <28.008230, 35.788563, 41.686295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.077599, 35.992867, 41.581184>,  <28.193214, 36.333370, 41.405998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077599, 35.992867, 41.581184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137924, -0.489750, -0.860885,
		0.947330, -0.188422, 0.258966,
		-0.289038, -0.851259, 0.437967,
		27.990887, 35.737488, 41.712574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653654, 35.870384, 41.206268>,  <28.193214, 36.333370, 41.405998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653654, 35.870384, 41.206268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330536, 35.648029, 41.284706>,  <28.136665, 35.514614, 41.331768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330536, 35.648029, 41.284706>,  <28.653654, 35.870384, 41.206268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330536, 35.648029, 41.284706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063416, -0.412695, -0.908659,
		0.586043, -0.721574, 0.368625,
		-0.807794, -0.555890, 0.196098,
		28.088198, 35.481262, 41.343536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786306, 35.207737, 40.888195>,  <28.653654, 35.870384, 41.206268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786306, 35.207737, 40.888195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393616, 35.183907, 40.960491>,  <28.158001, 35.169609, 41.003868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393616, 35.183907, 40.960491>,  <28.786306, 35.207737, 40.888195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393616, 35.183907, 40.960491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120556, -0.540154, -0.832887,
		0.147248, -0.839455, 0.523100,
		-0.981725, -0.059578, 0.180738,
		28.099098, 35.166035, 41.014713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595415, 34.447014, 40.802811>,  <28.786306, 35.207737, 40.888195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595415, 34.447014, 40.802811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282507, 34.692642, 40.760921>,  <28.094763, 34.840019, 40.735790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282507, 34.692642, 40.760921>,  <28.595415, 34.447014, 40.802811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282507, 34.692642, 40.760921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209040, -0.417132, -0.884479,
		-0.586819, -0.670011, 0.454676,
		-0.782270, 0.614074, -0.104722,
		28.047825, 34.876865, 40.729504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080925, 34.039452, 40.536182>,  <28.595415, 34.447014, 40.802811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080925, 34.039452, 40.536182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998060, 34.420288, 40.446205>,  <27.948341, 34.648792, 40.392220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998060, 34.420288, 40.446205>,  <28.080925, 34.039452, 40.536182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998060, 34.420288, 40.446205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071843, -0.244114, -0.967082,
		-0.975665, -0.184182, 0.118973,
		-0.207162, 0.952095, -0.224941,
		27.935911, 34.705917, 40.378723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529142, 34.009060, 40.003536>,  <28.080925, 34.039452, 40.536182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529142, 34.009060, 40.003536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663401, 34.380913, 39.942707>,  <27.743956, 34.604023, 39.906208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663401, 34.380913, 39.942707>,  <27.529142, 34.009060, 40.003536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663401, 34.380913, 39.942707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064804, -0.138270, -0.988272,
		-0.939757, 0.341563, 0.013835,
		0.335645, 0.929632, -0.152075,
		27.764093, 34.659801, 39.897083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173189, 34.262856, 39.430004>,  <27.529142, 34.009060, 40.003536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173189, 34.262856, 39.430004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504187, 34.485508, 39.459427>,  <27.702785, 34.619099, 39.477081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504187, 34.485508, 39.459427>,  <27.173189, 34.262856, 39.430004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504187, 34.485508, 39.459427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104919, -0.024595, -0.994177,
		-0.551583, 0.830394, -0.078753,
		0.827495, 0.556634, 0.073558,
		27.752436, 34.652496, 39.481495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024075, 34.681118, 38.858727>,  <27.173189, 34.262856, 39.430004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024075, 34.681118, 38.858727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405737, 34.728096, 38.968849>,  <27.634735, 34.756283, 39.034924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405737, 34.728096, 38.968849>,  <27.024075, 34.681118, 38.858727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405737, 34.728096, 38.968849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269244, 0.065001, -0.960876,
		-0.130743, 0.990950, 0.030400,
		0.954156, 0.117442, 0.275306,
		27.691984, 34.763329, 39.051441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297760, 35.211685, 38.404392>,  <27.024075, 34.681118, 38.858727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297760, 35.211685, 38.404392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611334, 35.001713, 38.536995>,  <27.799479, 34.875729, 38.616558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611334, 35.001713, 38.536995>,  <27.297760, 35.211685, 38.404392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611334, 35.001713, 38.536995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388093, -0.002442, -0.921617,
		0.484591, 0.851144, 0.201806,
		0.783936, -0.524926, 0.331507,
		27.846514, 34.844234, 38.636448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810379, 35.525780, 38.167667>,  <27.297760, 35.211685, 38.404392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810379, 35.525780, 38.167667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950855, 35.157001, 38.233002>,  <28.035141, 34.935734, 38.272202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950855, 35.157001, 38.233002>,  <27.810379, 35.525780, 38.167667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950855, 35.157001, 38.233002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267042, -0.068572, -0.961242,
		0.897415, 0.381196, 0.222117,
		0.351191, -0.921948, 0.163333,
		28.056211, 34.880417, 38.282001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288530, 35.448444, 37.753052>,  <27.810379, 35.525780, 38.167667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288530, 35.448444, 37.753052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267359, 35.053558, 37.813202>,  <28.254656, 34.816628, 37.849293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267359, 35.053558, 37.813202>,  <28.288530, 35.448444, 37.753052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267359, 35.053558, 37.813202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350073, -0.159377, -0.923065,
		0.935226, 0.003787, 0.354031,
		-0.052929, -0.987211, 0.150379,
		28.251480, 34.757397, 37.858315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961241, 35.164867, 37.675335>,  <28.288530, 35.448444, 37.753052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961241, 35.164867, 37.675335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682489, 34.892536, 37.585155>,  <28.515238, 34.729137, 37.531048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682489, 34.892536, 37.585155>,  <28.961241, 35.164867, 37.675335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682489, 34.892536, 37.585155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433248, -0.149133, -0.888851,
		0.571536, -0.717097, 0.398897,
		-0.696881, -0.680832, -0.225446,
		28.473425, 34.688286, 37.517521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383287, 34.660675, 37.254929>,  <28.961241, 35.164867, 37.675335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383287, 34.660675, 37.254929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996540, 34.599503, 37.173172>,  <28.764492, 34.562801, 37.124119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996540, 34.599503, 37.173172>,  <29.383287, 34.660675, 37.254929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996540, 34.599503, 37.173172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202964, 0.025041, -0.978866,
		0.154816, -0.987920, 0.006828,
		-0.966870, -0.152930, -0.204389,
		28.706478, 34.553623, 37.111855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481430, 34.736229, 36.456539>,  <29.383287, 34.660675, 37.254929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481430, 34.736229, 36.456539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832060, 34.905502, 36.548218>,  <30.042439, 35.007065, 36.603226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832060, 34.905502, 36.548218>,  <29.481430, 34.736229, 36.456539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832060, 34.905502, 36.548218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426438, -0.903731, 0.037693,
		0.223087, 0.064699, -0.972649,
		0.876575, 0.423183, 0.229201,
		30.095032, 35.032455, 36.616978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863092, 34.745903, 35.887138>,  <29.481430, 34.736229, 36.456539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863092, 34.745903, 35.887138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096500, 34.724094, 36.211246>,  <30.236546, 34.711010, 36.405712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096500, 34.724094, 36.211246>,  <29.863092, 34.745903, 35.887138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096500, 34.724094, 36.211246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363216, -0.874866, -0.320444,
		0.726348, 0.481287, -0.490695,
		0.583518, -0.054526, 0.810268,
		30.271555, 34.707737, 36.454327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570461, 34.661469, 35.658592>,  <29.863092, 34.745903, 35.887138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570461, 34.661469, 35.658592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460550, 34.468407, 35.991230>,  <30.394604, 34.352570, 36.190811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460550, 34.468407, 35.991230>,  <30.570461, 34.661469, 35.658592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460550, 34.468407, 35.991230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422857, -0.837413, -0.346310,
		0.863533, 0.256487, 0.434194,
		-0.274776, -0.482653, 0.831592,
		30.378117, 34.323612, 36.240707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164656, 34.459663, 36.051487>,  <30.570461, 34.661469, 35.658592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164656, 34.459663, 36.051487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825680, 34.257732, 35.985771>,  <30.622293, 34.136574, 35.946342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825680, 34.257732, 35.985771>,  <31.164656, 34.459663, 36.051487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825680, 34.257732, 35.985771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508640, -0.683423, -0.523659,
		0.152081, -0.527333, 0.835937,
		-0.847442, -0.504830, -0.164287,
		30.571447, 34.106285, 35.936485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062832, 33.846909, 36.478008>,  <31.164656, 34.459663, 36.051487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062832, 33.846909, 36.478008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941206, 33.849510, 36.096958>,  <30.868231, 33.851070, 35.868328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941206, 33.849510, 36.096958>,  <31.062832, 33.846909, 36.478008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941206, 33.849510, 36.096958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643715, -0.735750, -0.210484,
		-0.702265, -0.677222, 0.219531,
		-0.304064, 0.006500, -0.952629,
		30.849987, 33.851460, 35.811169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761559, 33.977966, 36.715172>,  <31.062832, 33.846909, 36.478008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761559, 33.977966, 36.715172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784729, 33.697834, 36.999756>,  <31.798632, 33.529755, 37.170506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784729, 33.697834, 36.999756>,  <31.761559, 33.977966, 36.715172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784729, 33.697834, 36.999756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041724, 0.710338, 0.702623,
		-0.997449, -0.070385, 0.011926,
		0.057926, -0.700333, 0.711462,
		31.802107, 33.487736, 37.213196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160027, 34.028793, 37.206173>,  <31.761559, 33.977966, 36.715172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160027, 34.028793, 37.206173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504044, 33.881355, 37.347290>,  <31.710453, 33.792892, 37.431961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504044, 33.881355, 37.347290>,  <31.160027, 34.028793, 37.206173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504044, 33.881355, 37.347290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015258, 0.672563, 0.739883,
		-0.509994, -0.641714, 0.572809,
		0.860043, -0.368596, 0.352794,
		31.762056, 33.770775, 37.453129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128304, 33.928566, 37.919537>,  <31.160027, 34.028793, 37.206173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128304, 33.928566, 37.919537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526617, 33.904583, 37.891777>,  <31.765606, 33.890194, 37.875122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526617, 33.904583, 37.891777>,  <31.128304, 33.928566, 37.919537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526617, 33.904583, 37.891777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090523, 0.521208, 0.848615,
		-0.014712, -0.851321, 0.524439,
		0.995786, -0.059958, -0.069396,
		31.825354, 33.886597, 37.870956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392534, 33.733562, 38.641342>,  <31.128304, 33.928566, 37.919537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392534, 33.733562, 38.641342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685297, 33.902252, 38.427254>,  <31.860954, 34.003468, 38.298801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685297, 33.902252, 38.427254>,  <31.392534, 33.733562, 38.641342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685297, 33.902252, 38.427254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267729, 0.544319, 0.795009,
		0.626606, -0.725165, 0.285482,
		0.731906, 0.421726, -0.535221,
		31.904869, 34.028770, 38.266689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045731, 33.580757, 39.069321>,  <31.392534, 33.733562, 38.641342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045731, 33.580757, 39.069321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117550, 33.886581, 38.821705>,  <32.160641, 34.070076, 38.673134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117550, 33.886581, 38.821705>,  <32.045731, 33.580757, 39.069321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117550, 33.886581, 38.821705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461544, 0.490244, 0.739350,
		0.868758, -0.418460, -0.264857,
		0.179544, 0.764560, -0.619041,
		32.171413, 34.115948, 38.635994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740200, 33.686447, 39.134995>,  <32.045731, 33.580757, 39.069321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740200, 33.686447, 39.134995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613682, 34.034195, 38.983124>,  <32.537773, 34.242844, 38.892002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613682, 34.034195, 38.983124>,  <32.740200, 33.686447, 39.134995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613682, 34.034195, 38.983124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450306, 0.489848, 0.746508,
		0.834976, 0.065144, -0.546417,
		-0.316292, 0.869371, -0.379676,
		32.518795, 34.295006, 38.869221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387592, 34.157326, 39.019779>,  <32.740200, 33.686447, 39.134995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387592, 34.157326, 39.019779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066425, 34.395309, 39.034485>,  <32.873726, 34.538097, 39.043308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066425, 34.395309, 39.034485>,  <33.387592, 34.157326, 39.019779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066425, 34.395309, 39.034485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371342, 0.450989, 0.811612,
		0.466293, 0.665310, -0.583038,
		-0.802917, 0.594955, 0.036764,
		32.825550, 34.573795, 39.045513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631737, 34.781689, 39.282524>,  <33.387592, 34.157326, 39.019779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631737, 34.781689, 39.282524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236374, 34.831165, 39.317753>,  <32.999157, 34.860851, 39.338890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236374, 34.831165, 39.317753>,  <33.631737, 34.781689, 39.282524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236374, 34.831165, 39.317753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144236, 0.583584, 0.799141,
		0.047448, 0.802578, -0.594658,
		-0.988405, 0.123689, 0.088071,
		32.939854, 34.868271, 39.344173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522629, 35.565842, 39.527271>,  <33.631737, 34.781689, 39.282524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522629, 35.565842, 39.527271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192917, 35.371429, 39.643436>,  <32.995090, 35.254780, 39.713135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192917, 35.371429, 39.643436>,  <33.522629, 35.565842, 39.527271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192917, 35.371429, 39.643436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225688, 0.188362, 0.955816,
		-0.519262, 0.853400, -0.045571,
		-0.824277, -0.486034, 0.290411,
		32.945633, 35.225620, 39.730560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195621, 35.996796, 40.074448>,  <33.522629, 35.565842, 39.527271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195621, 35.996796, 40.074448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029118, 35.641956, 40.154236>,  <32.929214, 35.429054, 40.202110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029118, 35.641956, 40.154236>,  <33.195621, 35.996796, 40.074448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029118, 35.641956, 40.154236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112731, 0.167336, 0.979434,
		-0.902231, 0.430184, 0.030348,
		-0.416258, -0.887097, 0.199471,
		32.904240, 35.375828, 40.214077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834190, 36.061131, 40.666157>,  <33.195621, 35.996796, 40.074448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834190, 36.061131, 40.666157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869026, 35.662880, 40.652668>,  <32.889927, 35.423927, 40.644577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869026, 35.662880, 40.652668>,  <32.834190, 36.061131, 40.666157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869026, 35.662880, 40.652668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033714, -0.030881, 0.998954,
		-0.995629, -0.088140, 0.030877,
		0.087094, -0.995629, -0.033718,
		32.895153, 35.364193, 40.642551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468388, 35.805031, 41.197895>,  <32.834190, 36.061131, 40.666157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468388, 35.805031, 41.197895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709942, 35.496445, 41.117741>,  <32.854874, 35.311291, 41.069649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709942, 35.496445, 41.117741>,  <32.468388, 35.805031, 41.197895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709942, 35.496445, 41.117741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286178, -0.024791, 0.957856,
		-0.743923, -0.635785, 0.205806,
		0.603888, -0.771468, -0.200390,
		32.891109, 35.265003, 41.057625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371647, 35.314522, 41.755463>,  <32.468388, 35.805031, 41.197895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371647, 35.314522, 41.755463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735001, 35.242874, 41.604332>,  <32.953014, 35.199886, 41.513653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735001, 35.242874, 41.604332>,  <32.371647, 35.314522, 41.755463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735001, 35.242874, 41.604332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345233, -0.188525, 0.919387,
		-0.235911, -0.965595, -0.109415,
		0.908383, -0.179120, -0.377830,
		33.007515, 35.189140, 41.490982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605976, 34.917625, 42.353111>,  <32.371647, 35.314522, 41.755463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605976, 34.917625, 42.353111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929119, 34.942776, 42.118702>,  <33.123005, 34.957867, 41.978058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929119, 34.942776, 42.118702>,  <32.605976, 34.917625, 42.353111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929119, 34.942776, 42.118702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581726, -0.244807, 0.775670,
		-0.094691, -0.967531, -0.234345,
		0.807854, 0.062875, -0.586019,
		33.171474, 34.961639, 41.942898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031025, 34.242321, 42.387512>,  <32.605976, 34.917625, 42.353111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031025, 34.242321, 42.387512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249062, 34.568691, 42.310429>,  <33.379883, 34.764515, 42.264179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249062, 34.568691, 42.310429>,  <33.031025, 34.242321, 42.387512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249062, 34.568691, 42.310429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623375, -0.240750, 0.743938,
		0.560605, -0.525645, -0.639859,
		0.545093, 0.815927, -0.192708,
		33.412590, 34.813469, 42.252617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695076, 34.090427, 42.667923>,  <33.031025, 34.242321, 42.387512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695076, 34.090427, 42.667923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710869, 34.482914, 42.592400>,  <33.720345, 34.718407, 42.547085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710869, 34.482914, 42.592400>,  <33.695076, 34.090427, 42.667923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710869, 34.482914, 42.592400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575270, 0.132176, 0.807213,
		0.817010, -0.140485, -0.559248,
		0.039482, 0.981220, -0.188806,
		33.722713, 34.777279, 42.535759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423271, 34.241413, 42.815575>,  <33.695076, 34.090427, 42.667923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423271, 34.241413, 42.815575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175919, 34.553692, 42.851597>,  <34.027508, 34.741058, 42.873211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175919, 34.553692, 42.851597>,  <34.423271, 34.241413, 42.815575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175919, 34.553692, 42.851597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322111, 0.147263, 0.935178,
		0.716829, 0.607310, -0.342537,
		-0.618386, 0.780698, 0.090059,
		33.990402, 34.787903, 42.878613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953571, 34.732819, 42.993965>,  <34.423271, 34.241413, 42.815575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953571, 34.732819, 42.993965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594189, 34.875126, 43.096886>,  <34.378559, 34.960510, 43.158638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594189, 34.875126, 43.096886>,  <34.953571, 34.732819, 42.993965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594189, 34.875126, 43.096886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319520, 0.127858, 0.938914,
		0.301137, 0.925787, -0.228550,
		-0.898456, 0.355768, 0.257305,
		34.324654, 34.981857, 43.174076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080864, 35.260841, 43.389294>,  <34.953571, 34.732819, 42.993965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080864, 35.260841, 43.389294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697475, 35.201881, 43.486946>,  <34.467442, 35.166504, 43.545540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697475, 35.201881, 43.486946>,  <35.080864, 35.260841, 43.389294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697475, 35.201881, 43.486946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201337, 0.256535, 0.945332,
		-0.201970, 0.955230, -0.216205,
		-0.958474, -0.147399, 0.244135,
		34.409935, 35.157661, 43.560188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019173, 35.826298, 43.969765>,  <35.080864, 35.260841, 43.389294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019173, 35.826298, 43.969765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704605, 35.582905, 44.012272>,  <34.515865, 35.436867, 44.037777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704605, 35.582905, 44.012272>,  <35.019173, 35.826298, 43.969765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704605, 35.582905, 44.012272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088297, 0.281006, 0.955635,
		-0.611352, 0.742145, -0.274716,
		-0.786417, -0.608487, 0.106265,
		34.468681, 35.400360, 44.044151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464558, 36.286636, 44.237011>,  <35.019173, 35.826298, 43.969765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464558, 36.286636, 44.237011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420422, 35.900005, 44.329578>,  <34.393940, 35.668026, 44.385120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420422, 35.900005, 44.329578>,  <34.464558, 36.286636, 44.237011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420422, 35.900005, 44.329578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185133, 0.248753, 0.950709,
		-0.976500, 0.062055, -0.206392,
		-0.110337, -0.966577, 0.231418,
		34.387321, 35.610031, 44.399002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956703, 36.377689, 44.759262>,  <34.464558, 36.286636, 44.237011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956703, 36.377689, 44.759262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078720, 35.999325, 44.803452>,  <34.151932, 35.772305, 44.829964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078720, 35.999325, 44.803452>,  <33.956703, 36.377689, 44.759262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078720, 35.999325, 44.803452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023089, 0.123311, 0.992099,
		-0.952059, -0.300080, 0.059455,
		0.305041, -0.945910, 0.110471,
		34.170231, 35.715553, 44.836594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635326, 36.195271, 45.347237>,  <33.956703, 36.377689, 44.759262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635326, 36.195271, 45.347237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931877, 35.931400, 45.297943>,  <34.109810, 35.773079, 45.268368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931877, 35.931400, 45.297943>,  <33.635326, 36.195271, 45.347237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931877, 35.931400, 45.297943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089985, -0.084260, 0.992372,
		-0.665026, -0.746814, -0.003107,
		0.741379, -0.659674, -0.123237,
		34.154289, 35.733498, 45.260971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399265, 35.547070, 45.667042>,  <33.635326, 36.195271, 45.347237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399265, 35.547070, 45.667042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798199, 35.570065, 45.649090>,  <34.037560, 35.583862, 45.638317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798199, 35.570065, 45.649090>,  <33.399265, 35.547070, 45.667042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798199, 35.570065, 45.649090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052144, -0.131797, 0.989904,
		0.050993, -0.989609, -0.134443,
		0.997337, 0.057488, -0.044881,
		34.097401, 35.587311, 45.635624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588249, 35.093807, 46.145496>,  <33.399265, 35.547070, 45.667042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588249, 35.093807, 46.145496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908527, 35.329529, 46.102406>,  <34.100697, 35.470963, 46.076553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908527, 35.329529, 46.102406>,  <33.588249, 35.093807, 46.145496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908527, 35.329529, 46.102406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110862, 0.030953, 0.993354,
		0.588722, -0.807318, -0.040547,
		0.800698, 0.589304, -0.107724,
		34.148735, 35.506321, 46.070087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053223, 34.862057, 46.552933>,  <33.588249, 35.093807, 46.145496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053223, 34.862057, 46.552933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196918, 35.233368, 46.514458>,  <34.283134, 35.456154, 46.491371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196918, 35.233368, 46.514458>,  <34.053223, 34.862057, 46.552933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196918, 35.233368, 46.514458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094583, 0.066324, 0.993305,
		0.928442, -0.365928, -0.063974,
		0.359235, 0.928277, -0.096189,
		34.304688, 35.511852, 46.485600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537624, 34.903938, 47.057377>,  <34.053223, 34.862057, 46.552933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537624, 34.903938, 47.057377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486881, 35.292679, 46.977966>,  <34.456436, 35.525925, 46.930321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486881, 35.292679, 46.977966>,  <34.537624, 34.903938, 47.057377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486881, 35.292679, 46.977966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068775, 0.208276, 0.975649,
		0.989534, 0.110111, -0.093260,
		-0.126853, 0.971852, -0.198523,
		34.448826, 35.584236, 46.918407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042763, 35.262444, 47.413902>,  <34.537624, 34.903938, 47.057377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042763, 35.262444, 47.413902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748589, 35.521103, 47.332935>,  <34.572083, 35.676300, 47.284355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748589, 35.521103, 47.332935>,  <35.042763, 35.262444, 47.413902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748589, 35.521103, 47.332935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069095, 0.225610, 0.971764,
		0.674059, 0.728660, -0.121242,
		-0.735439, 0.646649, -0.202421,
		34.527958, 35.715099, 47.272209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245346, 35.800419, 47.853336>,  <35.042763, 35.262444, 47.413902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245346, 35.800419, 47.853336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867859, 35.872795, 47.742592>,  <34.641365, 35.916222, 47.676144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867859, 35.872795, 47.742592>,  <35.245346, 35.800419, 47.853336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867859, 35.872795, 47.742592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201471, 0.349379, 0.915065,
		0.262301, 0.919345, -0.293262,
		-0.943720, 0.180938, -0.276864,
		34.584743, 35.927078, 47.659534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073761, 36.558025, 48.026520>,  <35.245346, 35.800419, 47.853336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073761, 36.558025, 48.026520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739193, 36.339199, 48.013107>,  <34.538452, 36.207905, 48.005062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739193, 36.339199, 48.013107>,  <35.073761, 36.558025, 48.026520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739193, 36.339199, 48.013107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167707, 0.197214, 0.965909,
		-0.521801, 0.813528, -0.256700,
		-0.836420, -0.547063, -0.033527,
		34.488266, 36.175079, 48.003048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664440, 36.983414, 48.428387>,  <35.073761, 36.558025, 48.026520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664440, 36.983414, 48.428387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497406, 36.619995, 48.423222>,  <34.397186, 36.401943, 48.420124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497406, 36.619995, 48.423222>,  <34.664440, 36.983414, 48.428387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497406, 36.619995, 48.423222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244900, 0.098851, 0.964496,
		-0.875013, 0.405921, -0.263781,
		-0.417585, -0.908546, -0.012914,
		34.372131, 36.347431, 48.419346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033615, 37.184635, 48.586975>,  <34.664440, 36.983414, 48.428387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033615, 37.184635, 48.586975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076950, 36.801228, 48.692425>,  <34.102951, 36.571182, 48.755695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076950, 36.801228, 48.692425>,  <34.033615, 37.184635, 48.586975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076950, 36.801228, 48.692425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325930, 0.216274, 0.920324,
		-0.939166, -0.185631, -0.288980,
		0.108342, -0.958523, 0.263619,
		34.109451, 36.513672, 48.771511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478741, 37.116207, 49.002762>,  <34.033615, 37.184635, 48.586975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478741, 37.116207, 49.002762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730125, 36.820904, 49.100750>,  <33.880959, 36.643723, 49.159542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730125, 36.820904, 49.100750>,  <33.478741, 37.116207, 49.002762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730125, 36.820904, 49.100750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245926, 0.110198, 0.963004,
		-0.737938, -0.665459, -0.112300,
		0.628465, -0.738255, 0.244973,
		33.918663, 36.599426, 49.174240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145824, 36.709667, 49.429955>,  <33.478741, 37.116207, 49.002762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145824, 36.709667, 49.429955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519295, 36.611580, 49.534355>,  <33.743378, 36.552727, 49.596996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519295, 36.611580, 49.534355>,  <33.145824, 36.709667, 49.429955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519295, 36.611580, 49.534355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261885, 0.029608, 0.964645,
		-0.244281, -0.969014, -0.036577,
		0.933672, -0.245223, 0.261003,
		33.799397, 36.538013, 49.612656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964470, 36.362183, 50.001049>,  <33.145824, 36.709667, 49.429955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964470, 36.362183, 50.001049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359825, 36.422832, 49.997055>,  <33.597038, 36.459221, 49.994659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359825, 36.422832, 49.997055>,  <32.964470, 36.362183, 50.001049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359825, 36.422832, 49.997055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023612, 0.218165, 0.975626,
		0.150103, -0.964062, 0.219212,
		0.988389, 0.151621, -0.009984,
		33.656342, 36.468319, 49.994061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206970, 36.200523, 50.648289>,  <32.964470, 36.362183, 50.001049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206970, 36.200523, 50.648289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537388, 36.373047, 50.503170>,  <33.735638, 36.476559, 50.416100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537388, 36.373047, 50.503170>,  <33.206970, 36.200523, 50.648289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537388, 36.373047, 50.503170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281179, 0.242508, 0.928509,
		0.488453, -0.869002, 0.079049,
		0.826046, 0.431306, -0.362799,
		33.785202, 36.502438, 50.394329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777576, 35.796139, 50.810566>,  <33.206970, 36.200523, 50.648289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777576, 35.796139, 50.810566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903618, 36.174374, 50.778133>,  <33.979240, 36.401314, 50.758675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903618, 36.174374, 50.778133>,  <33.777576, 35.796139, 50.810566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903618, 36.174374, 50.778133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250491, -0.000459, 0.968119,
		0.915405, -0.325364, -0.237006,
		0.315100, 0.945589, -0.081081,
		33.998146, 36.458050, 50.753811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365059, 35.787670, 51.066044>,  <33.777576, 35.796139, 50.810566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365059, 35.787670, 51.066044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238136, 36.165916, 51.094654>,  <34.161983, 36.392864, 51.111820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238136, 36.165916, 51.094654>,  <34.365059, 35.787670, 51.066044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238136, 36.165916, 51.094654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059288, -0.055497, 0.996697,
		0.946466, 0.320504, -0.038454,
		-0.317311, 0.945620, 0.071528,
		34.142944, 36.449604, 51.116112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679153, 36.020443, 51.663090>,  <34.365059, 35.787670, 51.066044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679153, 36.020443, 51.663090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429279, 36.329613, 51.618626>,  <34.279354, 36.515114, 51.591946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429279, 36.329613, 51.618626>,  <34.679153, 36.020443, 51.663090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429279, 36.329613, 51.618626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075540, 0.201503, 0.976571,
		0.777215, 0.601652, -0.184263,
		-0.624685, 0.772924, -0.111163,
		34.241875, 36.561489, 51.585278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047405, 36.486454, 51.980038>,  <34.679153, 36.020443, 51.663090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047405, 36.486454, 51.980038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657822, 36.576580, 51.969978>,  <34.424072, 36.630657, 51.963943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657822, 36.576580, 51.969978>,  <35.047405, 36.486454, 51.980038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657822, 36.576580, 51.969978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004898, 0.131826, 0.991261,
		0.226664, 0.965326, -0.129497,
		-0.973961, 0.225318, -0.025152,
		34.365635, 36.644176, 51.962433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965706, 36.967266, 52.493568>,  <35.047405, 36.486454, 51.980038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965706, 36.967266, 52.493568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594135, 36.842045, 52.414486>,  <34.371193, 36.766911, 52.367035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594135, 36.842045, 52.414486>,  <34.965706, 36.967266, 52.493568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594135, 36.842045, 52.414486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243279, 0.113517, 0.963291,
		-0.279118, 0.942927, -0.181609,
		-0.928928, -0.313054, -0.197710,
		34.315456, 36.748127, 52.355171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537739, 37.420338, 52.906487>,  <34.965706, 36.967266, 52.493568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537739, 37.420338, 52.906487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315208, 37.098888, 52.821922>,  <34.181690, 36.906017, 52.771183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315208, 37.098888, 52.821922>,  <34.537739, 37.420338, 52.906487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315208, 37.098888, 52.821922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361128, 0.004685, 0.932504,
		-0.748393, 0.595118, -0.292818,
		-0.556322, -0.803625, -0.211407,
		34.148312, 36.857800, 52.758499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787987, 37.457458, 52.864449>,  <34.537739, 37.420338, 52.906487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787987, 37.457458, 52.864449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926914, 37.109459, 53.004436>,  <34.010269, 36.900661, 53.088428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926914, 37.109459, 53.004436>,  <33.787987, 37.457458, 52.864449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926914, 37.109459, 53.004436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376429, 0.212465, 0.901753,
		-0.858879, -0.444931, -0.253700,
		0.347316, -0.869997, 0.349967,
		34.031109, 36.848461, 53.109428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207775, 37.059994, 53.305431>,  <33.787987, 37.457458, 52.864449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207775, 37.059994, 53.305431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591789, 36.983418, 53.387096>,  <33.822197, 36.937473, 53.436096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591789, 36.983418, 53.387096>,  <33.207775, 37.059994, 53.305431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591789, 36.983418, 53.387096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138372, 0.309402, 0.940810,
		-0.243278, -0.931461, 0.270547,
		0.960036, -0.191443, 0.204159,
		33.879799, 36.925983, 53.448345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349159, 36.601944, 53.826622>,  <33.207775, 37.059994, 53.305431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349159, 36.601944, 53.826622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687542, 36.814655, 53.842484>,  <33.890572, 36.942280, 53.852001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687542, 36.814655, 53.842484>,  <33.349159, 36.601944, 53.826622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687542, 36.814655, 53.842484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117411, 0.113204, 0.986610,
		0.520167, -0.839285, 0.158202,
		0.845956, 0.531776, 0.039656,
		33.941330, 36.974190, 53.854382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488670, 36.243896, 54.519604>,  <33.349159, 36.601944, 53.826622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488670, 36.243896, 54.519604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689163, 36.582676, 54.448677>,  <33.809460, 36.785946, 54.406120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689163, 36.582676, 54.448677>,  <33.488670, 36.243896, 54.519604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689163, 36.582676, 54.448677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210802, 0.079228, 0.974312,
		0.839243, -0.525735, -0.138827,
		0.501232, 0.846950, -0.177318,
		33.839531, 36.836761, 54.395481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748230, 35.503551, 54.580761>,  <33.488670, 36.243896, 54.519604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748230, 35.503551, 54.580761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880341, 35.223152, 54.327930>,  <33.959606, 35.054913, 54.176231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880341, 35.223152, 54.327930>,  <33.748230, 35.503551, 54.580761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880341, 35.223152, 54.327930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356468, 0.527432, -0.771197,
		0.873986, 0.480022, -0.075686,
		0.330273, -0.700995, -0.632081,
		33.979424, 35.012856, 54.138306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999058, 35.811371, 54.020924>,  <33.748230, 35.503551, 54.580761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999058, 35.811371, 54.020924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897274, 35.453537, 53.873970>,  <33.836205, 35.238838, 53.785797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897274, 35.453537, 53.873970>,  <33.999058, 35.811371, 54.020924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897274, 35.453537, 53.873970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348594, 0.439200, -0.828001,
		0.902070, -0.082627, -0.423606,
		-0.254462, -0.894581, -0.367386,
		33.820934, 35.185162, 53.763756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327103, 35.661648, 53.426121>,  <33.999058, 35.811371, 54.020924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327103, 35.661648, 53.426121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962147, 35.497990, 53.430901>,  <33.743172, 35.399796, 53.433769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962147, 35.497990, 53.430901>,  <34.327103, 35.661648, 53.426121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962147, 35.497990, 53.430901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279465, 0.601333, -0.748531,
		0.299075, -0.686291, -0.662992,
		-0.912389, -0.409150, 0.011951,
		33.688431, 35.375244, 53.434486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027779, 35.952152, 53.631550>,  <34.327103, 35.661648, 53.426121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027779, 35.952152, 53.631550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881855, 35.640167, 53.428150>,  <34.794300, 35.452976, 53.306110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881855, 35.640167, 53.428150>,  <35.027779, 35.952152, 53.631550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881855, 35.640167, 53.428150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651326, -0.604044, 0.459245,
		-0.665351, -0.163665, 0.728369,
		-0.364805, -0.779964, -0.508501,
		34.772415, 35.406178, 53.275600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908920, 35.438629, 54.062523>,  <35.027779, 35.952152, 53.631550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908920, 35.438629, 54.062523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885929, 35.236794, 53.717945>,  <34.872135, 35.115692, 53.511200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885929, 35.236794, 53.717945>,  <34.908920, 35.438629, 54.062523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885929, 35.236794, 53.717945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402488, -0.801353, 0.442534,
		-0.913619, -0.321286, 0.249149,
		-0.057476, -0.504587, -0.861445,
		34.868687, 35.085419, 53.459511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235313, 34.789196, 53.953983>,  <34.908920, 35.438629, 54.062523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235313, 34.789196, 53.953983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484772, 34.514458, 54.103279>,  <35.634445, 34.349613, 54.192856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484772, 34.514458, 54.103279>,  <35.235313, 34.789196, 53.953983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484772, 34.514458, 54.103279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767227, -0.446345, 0.460585,
		-0.149756, -0.573603, -0.805328,
		0.623647, -0.686845, 0.373241,
		35.671867, 34.308403, 54.215252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491562, 34.326015, 53.447636>,  <35.235313, 34.789196, 53.953983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491562, 34.326015, 53.447636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110058, 34.207623, 53.468578>,  <34.881157, 34.136585, 53.481144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110058, 34.207623, 53.468578>,  <35.491562, 34.326015, 53.447636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110058, 34.207623, 53.468578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055582, -0.344851, -0.937010,
		0.295394, -0.890770, 0.345355,
		-0.953757, -0.295983, 0.052356,
		34.823929, 34.118828, 53.484283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455112, 33.636387, 53.241108>,  <35.491562, 34.326015, 53.447636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455112, 33.636387, 53.241108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104977, 33.816444, 53.170517>,  <34.894894, 33.924477, 53.128162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104977, 33.816444, 53.170517>,  <35.455112, 33.636387, 53.241108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104977, 33.816444, 53.170517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042846, -0.435789, -0.899028,
		-0.481601, -0.779397, 0.400752,
		-0.875343, 0.450143, -0.176483,
		34.842373, 33.951488, 53.117573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028877, 33.119244, 52.921719>,  <35.455112, 33.636387, 53.241108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028877, 33.119244, 52.921719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854565, 33.467094, 52.828903>,  <34.749977, 33.675804, 52.773212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854565, 33.467094, 52.828903>,  <35.028877, 33.119244, 52.921719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854565, 33.467094, 52.828903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064661, -0.287388, -0.955629,
		-0.897725, -0.401445, 0.181470,
		-0.435785, 0.869627, -0.232037,
		34.723827, 33.727982, 52.759293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317684, 33.003979, 52.689720>,  <35.028877, 33.119244, 52.921719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317684, 33.003979, 52.689720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436581, 33.350975, 52.530170>,  <34.507919, 33.559174, 52.434441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436581, 33.350975, 52.530170>,  <34.317684, 33.003979, 52.689720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436581, 33.350975, 52.530170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247368, -0.333530, -0.909708,
		-0.922201, 0.369075, 0.115450,
		0.297245, 0.867492, -0.398878,
		34.525753, 33.611221, 52.410507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900021, 33.194717, 52.109459>,  <34.317684, 33.003979, 52.689720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900021, 33.194717, 52.109459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246983, 33.387299, 52.059170>,  <34.455162, 33.502846, 52.028996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246983, 33.387299, 52.059170>,  <33.900021, 33.194717, 52.109459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246983, 33.387299, 52.059170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006602, -0.263781, -0.964560,
		-0.497553, 0.835837, -0.231985,
		0.867408, 0.481452, -0.125727,
		34.507206, 33.531734, 52.021450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810226, 33.604862, 51.415958>,  <33.900021, 33.194717, 52.109459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810226, 33.604862, 51.415958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196400, 33.543545, 51.500275>,  <34.428104, 33.506756, 51.550865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196400, 33.543545, 51.500275>,  <33.810226, 33.604862, 51.415958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196400, 33.543545, 51.500275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175432, -0.215923, -0.960521,
		0.192756, 0.964302, -0.181567,
		0.965437, -0.153294, 0.210790,
		34.486031, 33.497559, 51.563511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118401, 33.760826, 50.809731>,  <33.810226, 33.604862, 51.415958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118401, 33.760826, 50.809731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405579, 33.555645, 50.997959>,  <34.577885, 33.432537, 51.110897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405579, 33.555645, 50.997959>,  <34.118401, 33.760826, 50.809731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405579, 33.555645, 50.997959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292351, -0.391307, -0.872588,
		0.631734, 0.764040, -0.130974,
		0.717943, -0.512953, 0.470570,
		34.620960, 33.401760, 51.139130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750298, 33.850624, 50.320316>,  <34.118401, 33.760826, 50.809731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750298, 33.850624, 50.320316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802692, 33.522682, 50.543274>,  <34.834129, 33.325916, 50.677048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802692, 33.522682, 50.543274>,  <34.750298, 33.850624, 50.320316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802692, 33.522682, 50.543274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544918, -0.410151, -0.731328,
		0.828195, 0.399526, 0.393029,
		0.130983, -0.819851, 0.557394,
		34.841988, 33.276726, 50.710491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386120, 33.637863, 50.141655>,  <34.750298, 33.850624, 50.320316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386120, 33.637863, 50.141655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265648, 33.291370, 50.301121>,  <35.193363, 33.083477, 50.396801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265648, 33.291370, 50.301121>,  <35.386120, 33.637863, 50.141655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265648, 33.291370, 50.301121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370498, -0.491536, -0.788114,
		0.878647, -0.089662, 0.468979,
		-0.301184, -0.866229, 0.398667,
		35.175293, 33.031502, 50.420719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943733, 33.094414, 50.048828>,  <35.386120, 33.637863, 50.141655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943733, 33.094414, 50.048828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610294, 32.882462, 50.111229>,  <35.410233, 32.755291, 50.148670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610294, 32.882462, 50.111229>,  <35.943733, 33.094414, 50.048828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610294, 32.882462, 50.111229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156701, -0.497677, -0.853090,
		0.529680, -0.686687, 0.497896,
		-0.833597, -0.529885, 0.156005,
		35.360214, 32.723495, 50.158031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117977, 32.326767, 49.901634>,  <35.943733, 33.094414, 50.048828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117977, 32.326767, 49.901634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721073, 32.356560, 49.861874>,  <35.482933, 32.374435, 49.838017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721073, 32.356560, 49.861874>,  <36.117977, 32.326767, 49.901634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721073, 32.356560, 49.861874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055490, -0.450164, -0.891220,
		-0.111124, -0.889834, 0.442545,
		-0.992256, 0.074479, -0.099401,
		35.423397, 32.378902, 49.832054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931370, 31.777937, 49.493645>,  <36.117977, 32.326767, 49.901634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931370, 31.777937, 49.493645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623833, 32.027412, 49.437233>,  <35.439308, 32.177097, 49.403385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623833, 32.027412, 49.437233>,  <35.931370, 31.777937, 49.493645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623833, 32.027412, 49.437233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036833, -0.263384, -0.963988,
		-0.638374, -0.735962, 0.225474,
		-0.768845, 0.623689, -0.141030,
		35.393181, 32.214520, 49.394924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503548, 31.373667, 49.181900>,  <35.931370, 31.777937, 49.493645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503548, 31.373667, 49.181900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401447, 31.747669, 49.083420>,  <35.340187, 31.972071, 49.024330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401447, 31.747669, 49.083420>,  <35.503548, 31.373667, 49.181900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401447, 31.747669, 49.083420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130148, -0.285545, -0.949487,
		-0.958076, -0.210312, 0.194573,
		-0.255248, 0.935004, -0.246202,
		35.324871, 32.028172, 49.009560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998863, 31.325321, 48.670036>,  <35.503548, 31.373667, 49.181900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998863, 31.325321, 48.670036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096329, 31.711639, 48.634563>,  <35.154808, 31.943430, 48.613281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096329, 31.711639, 48.634563>,  <34.998863, 31.325321, 48.670036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096329, 31.711639, 48.634563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215373, -0.035271, -0.975895,
		-0.945644, 0.256887, 0.199412,
		0.243661, 0.965797, -0.088680,
		35.169426, 32.001377, 48.607960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461082, 31.626989, 48.323616>,  <34.998863, 31.325321, 48.670036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461082, 31.626989, 48.323616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773556, 31.870874, 48.269947>,  <34.961040, 32.017204, 48.237747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773556, 31.870874, 48.269947>,  <34.461082, 31.626989, 48.323616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773556, 31.870874, 48.269947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178203, 0.011805, -0.983923,
		-0.598326, 0.792535, 0.117874,
		0.781185, 0.609713, -0.134169,
		35.007912, 32.053787, 48.229694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262058, 32.224766, 47.957039>,  <34.461082, 31.626989, 48.323616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262058, 32.224766, 47.957039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654057, 32.168316, 47.900913>,  <34.889256, 32.134445, 47.867237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654057, 32.168316, 47.900913>,  <34.262058, 32.224766, 47.957039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654057, 32.168316, 47.900913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150112, -0.061284, -0.986768,
		0.130655, 0.988094, -0.081242,
		0.979998, -0.141122, -0.140317,
		34.948055, 32.125980, 47.858818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415989, 32.657089, 47.393410>,  <34.262058, 32.224766, 47.957039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415989, 32.657089, 47.393410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725235, 32.403503, 47.401226>,  <34.910782, 32.251350, 47.405914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725235, 32.403503, 47.401226>,  <34.415989, 32.657089, 47.393410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725235, 32.403503, 47.401226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013130, -0.014801, -0.999804,
		0.634129, 0.773221, -0.003119,
		0.773116, -0.633964, 0.019538,
		34.957169, 32.213314, 47.407089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817558, 32.907532, 46.836315>,  <34.415989, 32.657089, 47.393410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817558, 32.907532, 46.836315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008575, 32.561588, 46.898251>,  <35.123184, 32.354023, 46.935413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008575, 32.561588, 46.898251>,  <34.817558, 32.907532, 46.836315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008575, 32.561588, 46.898251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307515, -0.000561, -0.951543,
		0.823036, 0.502018, 0.265688,
		0.477543, -0.864857, 0.154840,
		35.151836, 32.302132, 46.944702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373047, 32.997334, 46.499660>,  <34.817558, 32.907532, 46.836315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373047, 32.997334, 46.499660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328465, 32.600304, 46.519138>,  <35.301716, 32.362087, 46.530827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328465, 32.600304, 46.519138>,  <35.373047, 32.997334, 46.499660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328465, 32.600304, 46.519138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212487, -0.071675, -0.974532,
		0.970786, -0.098274, 0.218898,
		-0.111460, -0.992575, 0.048699,
		35.295025, 32.302532, 46.533749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877422, 32.732697, 46.026424>,  <35.373047, 32.997334, 46.499660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877422, 32.732697, 46.026424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610085, 32.437309, 46.062176>,  <35.449684, 32.260078, 46.083626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610085, 32.437309, 46.062176>,  <35.877422, 32.732697, 46.026424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610085, 32.437309, 46.062176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087422, -0.197302, -0.976437,
		0.738700, -0.644779, 0.196423,
		-0.668341, -0.738466, 0.089379,
		35.409580, 32.215771, 46.088989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089989, 32.087051, 45.699745>,  <35.877422, 32.732697, 46.026424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089989, 32.087051, 45.699745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691463, 32.052773, 45.697922>,  <35.452351, 32.032204, 45.696827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691463, 32.052773, 45.697922>,  <36.089989, 32.087051, 45.699745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691463, 32.052773, 45.697922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035955, -0.368609, -0.928889,
		0.077927, -0.925626, 0.370331,
		-0.996311, -0.085700, -0.004556,
		35.392570, 32.027061, 45.696556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991608, 31.346321, 45.565708>,  <36.089989, 32.087051, 45.699745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991608, 31.346321, 45.565708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651764, 31.543076, 45.489586>,  <35.447857, 31.661129, 45.443913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651764, 31.543076, 45.489586>,  <35.991608, 31.346321, 45.565708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651764, 31.543076, 45.489586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006193, -0.370106, -0.928969,
		-0.527381, -0.788080, 0.317491,
		-0.849606, 0.491886, -0.190306,
		35.396881, 31.690641, 45.432495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574574, 30.825216, 45.315559>,  <35.991608, 31.346321, 45.565708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574574, 30.825216, 45.315559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395782, 31.152853, 45.171722>,  <35.288509, 31.349434, 45.085423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395782, 31.152853, 45.171722>,  <35.574574, 30.825216, 45.315559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395782, 31.152853, 45.171722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205936, -0.485402, -0.849691,
		-0.870519, -0.305739, 0.385643,
		-0.446976, 0.819090, -0.359588,
		35.261688, 31.398581, 45.063847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915001, 30.671612, 45.072041>,  <35.574574, 30.825216, 45.315559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915001, 30.671612, 45.072041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028946, 31.003662, 44.880314>,  <35.097313, 31.202892, 44.765278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028946, 31.003662, 44.880314>,  <34.915001, 30.671612, 45.072041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028946, 31.003662, 44.880314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295073, -0.399817, -0.867801,
		-0.912022, 0.388638, 0.131054,
		0.284863, 0.830124, -0.479319,
		35.114407, 31.252699, 44.736519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449940, 30.646986, 44.588394>,  <34.915001, 30.671612, 45.072041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449940, 30.646986, 44.588394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713371, 30.925121, 44.473312>,  <34.871429, 31.092003, 44.404263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713371, 30.925121, 44.473312>,  <34.449940, 30.646986, 44.588394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713371, 30.925121, 44.473312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303749, -0.104163, -0.947041,
		-0.688483, 0.711094, 0.142609,
		0.658580, 0.695339, -0.287709,
		34.910946, 31.133722, 44.387001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066765, 31.030958, 44.195881>,  <34.449940, 30.646986, 44.588394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066765, 31.030958, 44.195881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438507, 31.132072, 44.088253>,  <34.661552, 31.192741, 44.023674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438507, 31.132072, 44.088253>,  <34.066765, 31.030958, 44.195881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438507, 31.132072, 44.088253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275318, -0.011030, -0.961290,
		-0.245967, 0.967460, 0.059345,
		0.929355, 0.252784, -0.269072,
		34.717312, 31.207909, 44.007530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047981, 31.588692, 43.680763>,  <34.066765, 31.030958, 44.195881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047981, 31.588692, 43.680763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386776, 31.391153, 43.602047>,  <34.590054, 31.272631, 43.554817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386776, 31.391153, 43.602047>,  <34.047981, 31.588692, 43.680763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386776, 31.391153, 43.602047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139088, 0.151417, -0.978636,
		0.513092, 0.856264, 0.059560,
		0.846989, -0.493846, -0.196787,
		34.640873, 31.243000, 43.543011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131168, 31.782522, 43.040672>,  <34.047981, 31.588692, 43.680763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131168, 31.782522, 43.040672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444916, 31.539068, 43.088566>,  <34.633163, 31.392996, 43.117302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444916, 31.539068, 43.088566>,  <34.131168, 31.782522, 43.040672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444916, 31.539068, 43.088566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201057, 0.066842, -0.977296,
		0.586811, 0.790631, 0.174799,
		0.784365, -0.608633, 0.119738,
		34.680225, 31.356478, 43.124489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639423, 32.059311, 42.663685>,  <34.131168, 31.782522, 43.040672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639423, 32.059311, 42.663685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684467, 31.661928, 42.671314>,  <34.711494, 31.423498, 42.675892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684467, 31.661928, 42.671314>,  <34.639423, 32.059311, 42.663685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684467, 31.661928, 42.671314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051917, -0.013284, -0.998563,
		0.992283, 0.113434, 0.050081,
		0.112606, -0.993457, 0.019071,
		34.718250, 31.363892, 42.677036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123653, 31.886854, 42.169609>,  <34.639423, 32.059311, 42.663685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123653, 31.886854, 42.169609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901810, 31.556873, 42.213177>,  <34.768703, 31.358885, 42.239315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901810, 31.556873, 42.213177>,  <35.123653, 31.886854, 42.169609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901810, 31.556873, 42.213177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040370, -0.104063, -0.993751,
		0.831132, -0.555539, 0.024411,
		-0.554608, -0.824953, 0.108917,
		34.735428, 31.309387, 42.245853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363678, 31.446678, 41.653610>,  <35.123653, 31.886854, 42.169609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363678, 31.446678, 41.653610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995155, 31.316187, 41.738239>,  <34.774040, 31.237892, 41.789017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995155, 31.316187, 41.738239>,  <35.363678, 31.446678, 41.653610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995155, 31.316187, 41.738239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162477, -0.171351, -0.971720,
		0.353255, -0.929632, 0.104863,
		-0.921310, -0.326227, 0.211574,
		34.718761, 31.218319, 41.801712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332340, 30.800734, 41.377037>,  <35.363678, 31.446678, 41.653610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332340, 30.800734, 41.377037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945820, 30.892904, 41.422928>,  <34.713905, 30.948206, 41.450462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945820, 30.892904, 41.422928>,  <35.332340, 30.800734, 41.377037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945820, 30.892904, 41.422928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162360, -0.199746, -0.966303,
		-0.199746, -0.952368, 0.230428,
		0.966303, -0.230428, -0.114728,
		34.655930, 30.962032, 41.457348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980263, 30.189341, 40.886246>,  <35.332340, 30.800734, 41.377037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980263, 30.189341, 40.886246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703213, 30.466871, 40.965107>,  <34.536983, 30.633390, 41.012424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703213, 30.466871, 40.965107>,  <34.980263, 30.189341, 40.886246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703213, 30.466871, 40.965107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258592, 0.016303, -0.965849,
		-0.673347, -0.719956, 0.168127,
		-0.692627, 0.693828, 0.197152,
		34.495426, 30.675020, 41.024254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289738, 29.918936, 40.646786>,  <34.980263, 30.189341, 40.886246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289738, 29.918936, 40.646786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289406, 30.317883, 40.675804>,  <34.289207, 30.557251, 40.693214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289406, 30.317883, 40.675804>,  <34.289738, 29.918936, 40.646786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289406, 30.317883, 40.675804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465580, 0.063819, -0.882702,
		-0.885006, -0.034510, 0.464300,
		-0.000831, 0.997365, 0.072548,
		34.289158, 30.617092, 40.697567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705109, 30.122087, 40.229305>,  <34.289738, 29.918936, 40.646786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705109, 30.122087, 40.229305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893543, 30.472477, 40.270767>,  <34.006603, 30.682711, 40.295643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893543, 30.472477, 40.270767>,  <33.705109, 30.122087, 40.229305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893543, 30.472477, 40.270767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488732, 0.357032, -0.796034,
		-0.734313, 0.324343, 0.596310,
		0.471090, 0.875974, 0.103656,
		34.034870, 30.735270, 40.301865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339897, 30.517822, 39.922867>,  <33.705109, 30.122087, 40.229305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339897, 30.517822, 39.922867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643650, 30.777929, 39.931812>,  <33.825901, 30.933992, 39.937180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643650, 30.777929, 39.931812>,  <33.339897, 30.517822, 39.922867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643650, 30.777929, 39.931812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301030, 0.381600, -0.873935,
		-0.576824, 0.656915, 0.485528,
		0.759378, 0.650265, 0.022365,
		33.871464, 30.973009, 39.938522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071987, 31.080801, 39.739220>,  <33.339897, 30.517822, 39.922867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071987, 31.080801, 39.739220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461208, 31.141449, 39.669735>,  <33.694740, 31.177837, 39.628044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461208, 31.141449, 39.669735>,  <33.071987, 31.080801, 39.739220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461208, 31.141449, 39.669735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229035, 0.548776, -0.803982,
		-0.026573, 0.822105, 0.568716,
		0.973055, 0.151620, -0.173708,
		33.753124, 31.186935, 39.617622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201340, 31.825989, 39.801506>,  <33.071987, 31.080801, 39.739220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201340, 31.825989, 39.801506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468662, 31.649401, 39.562016>,  <33.629055, 31.543447, 39.418324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468662, 31.649401, 39.562016>,  <33.201340, 31.825989, 39.801506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468662, 31.649401, 39.562016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258580, 0.616801, -0.743433,
		0.697497, 0.651659, 0.298057,
		0.668307, -0.441471, -0.598723,
		33.669155, 31.516960, 39.382401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563408, 32.450699, 39.483021>,  <33.201340, 31.825989, 39.801506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563408, 32.450699, 39.483021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622196, 32.140808, 39.237030>,  <33.657471, 31.954872, 39.089436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622196, 32.140808, 39.237030>,  <33.563408, 32.450699, 39.483021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622196, 32.140808, 39.237030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201159, 0.585321, -0.785451,
		0.968470, 0.239145, -0.069820,
		0.146970, -0.774731, -0.614973,
		33.666286, 31.908388, 39.052540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859547, 32.818588, 38.884060>,  <33.563408, 32.450699, 39.483021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859547, 32.818588, 38.884060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750347, 32.450291, 38.772552>,  <33.684826, 32.229313, 38.705647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750347, 32.450291, 38.772552>,  <33.859547, 32.818588, 38.884060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750347, 32.450291, 38.772552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551989, 0.387248, -0.738476,
		0.787896, -0.047726, -0.613956,
		-0.272998, -0.920739, -0.278767,
		33.668449, 32.174068, 38.688923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165771, 32.611134, 38.193905>,  <33.859547, 32.818588, 38.884060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165771, 32.611134, 38.193905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821636, 32.422779, 38.271965>,  <33.615154, 32.309765, 38.318802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821636, 32.422779, 38.271965>,  <34.165771, 32.611134, 38.193905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821636, 32.422779, 38.271965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347060, 0.260743, -0.900868,
		0.373325, -0.842778, -0.387754,
		-0.860336, -0.470891, 0.195153,
		33.563534, 32.281513, 38.330509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957989, 32.542297, 38.201679>,  <34.165771, 32.611134, 38.193905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957989, 32.542297, 38.201679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328426, 32.548683, 38.050896>,  <35.550690, 32.552513, 37.960426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328426, 32.548683, 38.050896>,  <34.957989, 32.542297, 38.201679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328426, 32.548683, 38.050896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302551, -0.628353, 0.716683,
		-0.225424, -0.777764, -0.586742,
		0.926092, 0.015962, -0.376959,
		35.606255, 32.553471, 37.937809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354515, 31.879244, 38.324127>,  <34.957989, 32.542297, 38.201679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354515, 31.879244, 38.324127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656170, 32.137512, 38.276154>,  <35.837162, 32.292473, 38.247372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656170, 32.137512, 38.276154>,  <35.354515, 31.879244, 38.324127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656170, 32.137512, 38.276154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418867, -0.332265, 0.845074,
		0.505790, -0.687539, -0.521024,
		0.754140, 0.645670, -0.119931,
		35.882412, 32.331215, 38.240173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011738, 31.545002, 38.381756>,  <35.354515, 31.879244, 38.324127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011738, 31.545002, 38.381756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084068, 31.925837, 38.480412>,  <36.127464, 32.154339, 38.539604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084068, 31.925837, 38.480412>,  <36.011738, 31.545002, 38.381756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084068, 31.925837, 38.480412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424687, -0.301777, 0.853564,
		0.887099, -0.049598, -0.458907,
		0.180822, 0.952088, 0.246642,
		36.138313, 32.211464, 38.554405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790474, 31.597481, 38.761757>,  <36.011738, 31.545002, 38.381756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790474, 31.597481, 38.761757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607433, 31.934990, 38.873932>,  <36.497608, 32.137497, 38.941235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607433, 31.934990, 38.873932>,  <36.790474, 31.597481, 38.761757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607433, 31.934990, 38.873932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393567, -0.090603, 0.914820,
		0.797311, 0.528994, -0.290622,
		-0.457603, 0.843775, 0.280433,
		36.470154, 32.188122, 38.958061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350281, 32.048119, 39.035946>,  <36.790474, 31.597481, 38.761757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350281, 32.048119, 39.035946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995647, 32.165752, 39.178772>,  <36.782867, 32.236332, 39.264465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995647, 32.165752, 39.178772>,  <37.350281, 32.048119, 39.035946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995647, 32.165752, 39.178772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373621, 0.000141, 0.927581,
		0.272734, 0.955781, -0.110000,
		-0.886580, 0.294081, 0.357061,
		36.729675, 32.253975, 39.285889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468266, 32.582691, 39.609917>,  <37.350281, 32.048119, 39.035946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468266, 32.582691, 39.609917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093163, 32.488815, 39.712318>,  <36.868103, 32.432491, 39.773758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093163, 32.488815, 39.712318>,  <37.468266, 32.582691, 39.609917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093163, 32.488815, 39.712318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187034, 0.279823, 0.941657,
		-0.292631, 0.930924, -0.218511,
		-0.937755, -0.234689, 0.256000,
		36.811836, 32.418407, 39.789120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326618, 33.077831, 39.969883>,  <37.468266, 32.582691, 39.609917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326618, 33.077831, 39.969883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089466, 32.781143, 40.095318>,  <36.947174, 32.603130, 40.170578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089466, 32.781143, 40.095318>,  <37.326618, 33.077831, 39.969883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089466, 32.781143, 40.095318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358616, 0.105482, 0.927506,
		-0.721030, 0.662361, 0.203455,
		-0.592883, -0.741722, 0.313589,
		36.911602, 32.558628, 40.189396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954418, 33.341225, 40.606186>,  <37.326618, 33.077831, 39.969883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954418, 33.341225, 40.606186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926991, 32.942284, 40.615841>,  <36.910534, 32.702919, 40.621635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926991, 32.942284, 40.615841>,  <36.954418, 33.341225, 40.606186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926991, 32.942284, 40.615841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230163, 0.007728, 0.973122,
		-0.970733, 0.072283, 0.229024,
		-0.068571, -0.997354, 0.024139,
		36.906418, 32.643078, 40.623081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628029, 33.176594, 41.158207>,  <36.954418, 33.341225, 40.606186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628029, 33.176594, 41.158207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790089, 32.816166, 41.096321>,  <36.887325, 32.599911, 41.059189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790089, 32.816166, 41.096321>,  <36.628029, 33.176594, 41.158207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790089, 32.816166, 41.096321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064271, -0.140736, 0.987959,
		-0.911990, -0.410211, 0.000894,
		0.405146, -0.901066, -0.154715,
		36.911633, 32.545845, 41.049908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511921, 32.831257, 41.821560>,  <36.628029, 33.176594, 41.158207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511921, 32.831257, 41.821560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779266, 32.565407, 41.687954>,  <36.939674, 32.405899, 41.607792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779266, 32.565407, 41.687954>,  <36.511921, 32.831257, 41.821560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779266, 32.565407, 41.687954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304603, -0.165115, 0.938059,
		-0.678605, -0.728708, 0.092089,
		0.668365, -0.664621, -0.334014,
		36.979774, 32.366020, 41.587749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454144, 32.280918, 42.260342>,  <36.511921, 32.831257, 41.821560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454144, 32.280918, 42.260342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825375, 32.273415, 42.111576>,  <37.048115, 32.268913, 42.022316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825375, 32.273415, 42.111576>,  <36.454144, 32.280918, 42.260342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825375, 32.273415, 42.111576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358492, -0.225313, 0.905935,
		-0.100787, -0.974106, -0.202385,
		0.928076, -0.018753, -0.371917,
		37.103798, 32.267788, 42.000000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804420, 31.726776, 42.496693>,  <36.454144, 32.280918, 42.260342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804420, 31.726776, 42.496693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109200, 31.954546, 42.373280>,  <37.292065, 32.091209, 42.299232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109200, 31.954546, 42.373280>,  <36.804420, 31.726776, 42.496693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109200, 31.954546, 42.373280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477883, -0.172796, 0.861260,
		0.437112, -0.803676, -0.403780,
		0.761946, 0.569427, -0.308532,
		37.337784, 32.125374, 42.280720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423691, 31.271269, 42.574955>,  <36.804420, 31.726776, 42.496693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423691, 31.271269, 42.574955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542019, 31.653130, 42.561493>,  <37.613014, 31.882246, 42.553413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542019, 31.653130, 42.561493>,  <37.423691, 31.271269, 42.574955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542019, 31.653130, 42.561493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618822, -0.164676, 0.768076,
		0.727701, -0.248042, -0.639473,
		0.295821, 0.954650, -0.033659,
		37.630764, 31.939526, 42.551395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188324, 31.248449, 42.696648>,  <37.423691, 31.271269, 42.574955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188324, 31.248449, 42.696648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039906, 31.606041, 42.797150>,  <37.950855, 31.820595, 42.857452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039906, 31.606041, 42.797150>,  <38.188324, 31.248449, 42.696648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039906, 31.606041, 42.797150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430278, -0.074264, 0.899637,
		0.822914, 0.441916, -0.357103,
		-0.371044, 0.893977, 0.251260,
		37.928593, 31.874233, 42.872528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748718, 31.482641, 43.155544>,  <38.188324, 31.248449, 42.696648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748718, 31.482641, 43.155544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435696, 31.721350, 43.226498>,  <38.247883, 31.864574, 43.269070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435696, 31.721350, 43.226498>,  <38.748718, 31.482641, 43.155544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435696, 31.721350, 43.226498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200558, -0.028089, 0.979279,
		0.589388, 0.801920, -0.097706,
		-0.782559, 0.596771, 0.177387,
		38.200928, 31.900381, 43.279713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002785, 31.925581, 43.703606>,  <38.748718, 31.482641, 43.155544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002785, 31.925581, 43.703606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605412, 31.965244, 43.726471>,  <38.366989, 31.989042, 43.740189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605412, 31.965244, 43.726471>,  <39.002785, 31.925581, 43.703606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605412, 31.965244, 43.726471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062040, 0.046852, 0.996973,
		0.096180, 0.993968, -0.052696,
		-0.993429, 0.099158, 0.057160,
		38.307384, 31.994991, 43.743618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829979, 32.512138, 44.222740>,  <39.002785, 31.925581, 43.703606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829979, 32.512138, 44.222740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503651, 32.280842, 44.219250>,  <38.307854, 32.142063, 44.217155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503651, 32.280842, 44.219250>,  <38.829979, 32.512138, 44.222740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503651, 32.280842, 44.219250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172685, 0.229176, 0.957945,
		-0.551925, 0.783016, -0.286820,
		-0.815818, -0.578243, -0.008727,
		38.258904, 32.107368, 44.216633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397823, 32.849258, 44.589355>,  <38.829979, 32.512138, 44.222740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397823, 32.849258, 44.589355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227768, 32.487209, 44.590759>,  <38.125732, 32.269981, 44.591602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227768, 32.487209, 44.590759>,  <38.397823, 32.849258, 44.589355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227768, 32.487209, 44.590759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131254, 0.065490, 0.989183,
		-0.895560, 0.420082, -0.146643,
		-0.425142, -0.905120, 0.003513,
		38.100227, 32.215672, 44.591812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798805, 32.945724, 45.051853>,  <38.397823, 32.849258, 44.589355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798805, 32.945724, 45.051853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842972, 32.548222, 45.045376>,  <37.869473, 32.309719, 45.041489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842972, 32.548222, 45.045376>,  <37.798805, 32.945724, 45.051853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842972, 32.548222, 45.045376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014938, -0.014633, 0.999781,
		-0.993774, -0.110630, 0.013229,
		0.110412, -0.993754, -0.016194,
		37.876095, 32.250095, 45.040516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113297, 32.663021, 45.358429>,  <37.798805, 32.945724, 45.051853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113297, 32.663021, 45.358429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411781, 32.399509, 45.396759>,  <37.590874, 32.241402, 45.419758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411781, 32.399509, 45.396759>,  <37.113297, 32.663021, 45.358429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411781, 32.399509, 45.396759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235564, -0.126670, 0.963569,
		-0.622637, -0.741599, -0.249707,
		0.746212, -0.658776, 0.095825,
		37.635647, 32.201878, 45.425507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857330, 32.157387, 45.661491>,  <37.113297, 32.663021, 45.358429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857330, 32.157387, 45.661491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233967, 32.058918, 45.753414>,  <37.459949, 31.999836, 45.808567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233967, 32.058918, 45.753414>,  <36.857330, 32.157387, 45.661491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233967, 32.058918, 45.753414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261920, -0.106391, 0.959207,
		-0.211683, -0.963369, -0.164654,
		0.941588, -0.246174, 0.229804,
		37.516445, 31.985065, 45.822357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805622, 31.636591, 46.254780>,  <36.857330, 32.157387, 45.661491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805622, 31.636591, 46.254780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159794, 31.822176, 46.265762>,  <37.372295, 31.933527, 46.272354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159794, 31.822176, 46.265762>,  <36.805622, 31.636591, 46.254780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159794, 31.822176, 46.265762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030251, -0.001428, 0.999541,
		0.463787, -0.885855, 0.012771,
		0.885430, 0.463961, 0.027460,
		37.425423, 31.961365, 46.274002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281498, 31.320194, 46.802837>,  <36.805622, 31.636591, 46.254780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281498, 31.320194, 46.802837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458542, 31.674477, 46.746811>,  <37.564770, 31.887047, 46.713196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458542, 31.674477, 46.746811>,  <37.281498, 31.320194, 46.802837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458542, 31.674477, 46.746811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033287, 0.172322, 0.984478,
		0.896096, -0.431078, 0.105754,
		0.442611, 0.885707, -0.140068,
		37.591324, 31.940189, 46.704792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615990, 31.312849, 47.430576>,  <37.281498, 31.320194, 46.802837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615990, 31.312849, 47.430576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686897, 31.675575, 47.277599>,  <37.729443, 31.893211, 47.185814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686897, 31.675575, 47.277599>,  <37.615990, 31.312849, 47.430576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686897, 31.675575, 47.277599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107978, 0.368331, 0.923403,
		0.978221, -0.204985, -0.032623,
		0.177267, 0.906815, -0.382443,
		37.740078, 31.947620, 47.162865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337482, 31.541565, 47.692219>,  <37.615990, 31.312849, 47.430576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337482, 31.541565, 47.692219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094006, 31.843016, 47.592991>,  <37.947918, 32.023888, 47.533455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094006, 31.843016, 47.592991>,  <38.337482, 31.541565, 47.692219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094006, 31.843016, 47.592991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143218, 0.411895, 0.899906,
		0.780374, 0.512237, -0.358651,
		-0.608692, 0.753628, -0.248071,
		37.911400, 32.069103, 47.518570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684628, 32.173786, 47.917900>,  <38.337482, 31.541565, 47.692219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684628, 32.173786, 47.917900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298763, 32.270214, 47.875351>,  <38.067245, 32.328072, 47.849823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298763, 32.270214, 47.875351>,  <38.684628, 32.173786, 47.917900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298763, 32.270214, 47.875351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075809, 0.640547, 0.764168,
		0.252352, 0.729099, -0.636187,
		-0.964661, 0.241068, -0.106371,
		38.009365, 32.342533, 47.843441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660286, 32.885029, 48.011658>,  <38.684628, 32.173786, 47.917900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660286, 32.885029, 48.011658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286282, 32.765255, 48.087639>,  <38.061878, 32.693390, 48.133228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286282, 32.765255, 48.087639>,  <38.660286, 32.885029, 48.011658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286282, 32.765255, 48.087639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048145, 0.637919, 0.768597,
		-0.351324, 0.709505, -0.610880,
		-0.935015, -0.299437, 0.189957,
		38.005775, 32.675423, 48.144627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216251, 33.498676, 48.018391>,  <38.660286, 32.885029, 48.011658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216251, 33.498676, 48.018391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007595, 33.237862, 48.238480>,  <37.882401, 33.081375, 48.370533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007595, 33.237862, 48.238480>,  <38.216251, 33.498676, 48.018391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007595, 33.237862, 48.238480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013149, 0.650986, 0.758975,
		-0.853065, 0.388676, -0.348153,
		-0.521639, -0.652033, 0.550223,
		37.851105, 33.042252, 48.403545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619064, 33.871147, 48.332027>,  <38.216251, 33.498676, 48.018391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619064, 33.871147, 48.332027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643990, 33.538551, 48.552841>,  <37.658943, 33.338993, 48.685329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643990, 33.538551, 48.552841>,  <37.619064, 33.871147, 48.332027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643990, 33.538551, 48.552841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159327, 0.537731, 0.827925,
		-0.985257, -0.139544, -0.098972,
		0.062312, -0.831488, 0.552037,
		37.662682, 33.289104, 48.718452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229603, 34.024563, 48.839832>,  <37.619064, 33.871147, 48.332027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229603, 34.024563, 48.839832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397591, 33.697220, 48.996761>,  <37.498383, 33.500813, 49.090919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397591, 33.697220, 48.996761>,  <37.229603, 34.024563, 48.839832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397591, 33.697220, 48.996761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241277, 0.316053, 0.917549,
		-0.874879, -0.479998, -0.064720,
		0.419967, -0.818360, 0.392321,
		37.523582, 33.451714, 49.114456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809017, 33.777908, 49.439159>,  <37.229603, 34.024563, 48.839832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809017, 33.777908, 49.439159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172028, 33.619102, 49.493980>,  <37.389832, 33.523819, 49.526875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172028, 33.619102, 49.493980>,  <36.809017, 33.777908, 49.439159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172028, 33.619102, 49.493980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118029, 0.072098, 0.990389,
		-0.403080, -0.914976, 0.018572,
		0.907521, -0.397014, 0.137055,
		37.444283, 33.500000, 49.535095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688095, 33.319946, 49.926727>,  <36.809017, 33.777908, 49.439159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688095, 33.319946, 49.926727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081871, 33.389038, 49.939594>,  <37.318138, 33.430492, 49.947315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081871, 33.389038, 49.939594>,  <36.688095, 33.319946, 49.926727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081871, 33.389038, 49.939594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028373, -0.024371, 0.999300,
		0.173396, -0.984667, -0.019091,
		0.984444, 0.172733, 0.032164,
		37.377205, 33.440857, 49.949242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056442, 32.678661, 50.224556>,  <36.688095, 33.319946, 49.926727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056442, 32.678661, 50.224556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258545, 33.017475, 50.290585>,  <37.379807, 33.220764, 50.330204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258545, 33.017475, 50.290585>,  <37.056442, 32.678661, 50.224556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258545, 33.017475, 50.290585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052217, -0.160927, 0.985584,
		0.861389, -0.506591, -0.037080,
		0.505255, 0.847035, 0.165074,
		37.410122, 33.271587, 50.340107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376240, 32.585236, 50.869179>,  <37.056442, 32.678661, 50.224556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376240, 32.585236, 50.869179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437847, 32.977306, 50.819340>,  <37.474812, 33.212551, 50.789436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437847, 32.977306, 50.819340>,  <37.376240, 32.585236, 50.869179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437847, 32.977306, 50.819340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060648, 0.116482, 0.991339,
		0.986205, -0.160239, -0.041506,
		0.154016, 0.980181, -0.124594,
		37.484051, 33.271362, 50.781963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881580, 32.709736, 51.286945>,  <37.376240, 32.585236, 50.869179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881580, 32.709736, 51.286945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723389, 33.072243, 51.227234>,  <37.628475, 33.289745, 51.191406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723389, 33.072243, 51.227234>,  <37.881580, 32.709736, 51.286945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723389, 33.072243, 51.227234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003021, 0.161243, 0.986910,
		0.918471, 0.390751, -0.061030,
		-0.395476, 0.906264, -0.149278,
		37.604744, 33.344124, 51.182449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318676, 33.186394, 51.607136>,  <37.881580, 32.709736, 51.286945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318676, 33.186394, 51.607136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979530, 33.394569, 51.566597>,  <37.776043, 33.519478, 51.542274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979530, 33.394569, 51.566597>,  <38.318676, 33.186394, 51.607136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979530, 33.394569, 51.566597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183962, 0.468015, 0.864361,
		0.497284, 0.714213, -0.492553,
		-0.847860, 0.520444, -0.101348,
		37.725174, 33.550701, 51.536194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547699, 33.837112, 51.773975>,  <38.318676, 33.186394, 51.607136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547699, 33.837112, 51.773975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148251, 33.843018, 51.794102>,  <37.908581, 33.846561, 51.806175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148251, 33.843018, 51.794102>,  <38.547699, 33.837112, 51.773975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148251, 33.843018, 51.794102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051105, 0.488609, 0.871005,
		-0.011729, 0.872378, -0.488691,
		-0.998624, 0.014758, 0.050314,
		37.848663, 33.847446, 51.809196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411911, 34.531754, 51.786613>,  <38.547699, 33.837112, 51.773975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411911, 34.531754, 51.786613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113091, 34.344555, 51.975460>,  <37.933796, 34.232235, 52.088768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113091, 34.344555, 51.975460>,  <38.411911, 34.531754, 51.786613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113091, 34.344555, 51.975460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115434, 0.608083, 0.785436,
		-0.654662, 0.641263, -0.400250,
		-0.747056, -0.467993, 0.472113,
		37.888973, 34.204159, 52.117092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651287, 35.298187, 52.068779>,  <38.411911, 34.531754, 51.786613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651287, 35.298187, 52.068779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890919, 35.617096, 52.039200>,  <39.034698, 35.808441, 52.021454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890919, 35.617096, 52.039200>,  <38.651287, 35.298187, 52.068779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890919, 35.617096, 52.039200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281562, 0.123310, -0.951587,
		-0.749553, 0.590894, 0.298353,
		0.599077, 0.797270, -0.073946,
		39.070641, 35.856277, 52.017017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366314, 35.576698, 51.529030>,  <38.651287, 35.298187, 52.068779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366314, 35.576698, 51.529030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676479, 35.827152, 51.561760>,  <38.862579, 35.977425, 51.581398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676479, 35.827152, 51.561760>,  <38.366314, 35.576698, 51.529030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676479, 35.827152, 51.561760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014420, 0.147099, -0.989017,
		-0.631294, 0.765713, 0.123091,
		0.775410, 0.626135, 0.081821,
		38.909103, 36.014992, 51.586308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250660, 36.320568, 51.293236>,  <38.366314, 35.576698, 51.529030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250660, 36.320568, 51.293236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639812, 36.240089, 51.247597>,  <38.873306, 36.191803, 51.220211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639812, 36.240089, 51.247597>,  <38.250660, 36.320568, 51.293236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639812, 36.240089, 51.247597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056136, 0.273175, -0.960325,
		0.224382, 0.940689, 0.254473,
		0.972883, -0.201194, -0.114102,
		38.931679, 36.179729, 51.213367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555862, 36.823650, 50.868935>,  <38.250660, 36.320568, 51.293236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555862, 36.823650, 50.868935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822994, 36.529160, 50.825165>,  <38.983273, 36.352463, 50.798901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822994, 36.529160, 50.825165>,  <38.555862, 36.823650, 50.868935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822994, 36.529160, 50.825165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118484, 0.250295, -0.960892,
		0.734826, 0.628744, 0.254385,
		0.667827, -0.736229, -0.109427,
		39.023342, 36.308292, 50.792336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179260, 37.135738, 50.704998>,  <38.555862, 36.823650, 50.868935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179260, 37.135738, 50.704998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195007, 36.761444, 50.564796>,  <39.204456, 36.536869, 50.480675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195007, 36.761444, 50.564796>,  <39.179260, 37.135738, 50.704998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195007, 36.761444, 50.564796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182982, 0.351597, -0.918094,
		0.982328, -0.027992, 0.185064,
		0.039369, -0.935733, -0.350505,
		39.206818, 36.480724, 50.459644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537125, 37.207928, 50.112228>,  <39.179260, 37.135738, 50.704998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537125, 37.207928, 50.112228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406750, 36.831474, 50.076363>,  <39.328526, 36.605602, 50.054844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406750, 36.831474, 50.076363>,  <39.537125, 37.207928, 50.112228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406750, 36.831474, 50.076363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104132, 0.058528, -0.992840,
		0.939640, -0.332937, 0.078926,
		-0.325933, -0.941131, -0.089665,
		39.308971, 36.549133, 50.049461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845886, 37.006065, 49.568691>,  <39.537125, 37.207928, 50.112228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845886, 37.006065, 49.568691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559753, 36.727425, 49.590763>,  <39.388073, 36.560238, 49.604008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559753, 36.727425, 49.590763>,  <39.845886, 37.006065, 49.568691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559753, 36.727425, 49.590763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115580, 0.040064, -0.992490,
		0.689164, -0.716334, -0.109173,
		-0.715328, -0.696607, 0.055184,
		39.345154, 36.518444, 49.607319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028381, 36.468761, 49.128223>,  <39.845886, 37.006065, 49.568691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028381, 36.468761, 49.128223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630806, 36.467487, 49.172188>,  <39.392262, 36.466724, 49.198566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630806, 36.467487, 49.172188>,  <40.028381, 36.468761, 49.128223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630806, 36.467487, 49.172188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109480, -0.064281, -0.991908,
		0.010225, -0.997927, 0.063543,
		-0.993936, -0.003185, 0.109910,
		39.332626, 36.466534, 49.205162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814426, 35.819756, 48.823528>,  <40.028381, 36.468761, 49.128223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814426, 35.819756, 48.823528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495853, 36.061638, 48.825172>,  <39.304710, 36.206768, 48.826160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495853, 36.061638, 48.825172>,  <39.814426, 35.819756, 48.823528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495853, 36.061638, 48.825172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136764, -0.173492, -0.975293,
		-0.589056, -0.777320, 0.220878,
		-0.796435, 0.604710, 0.004113,
		39.256924, 36.243050, 48.826405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208481, 35.385784, 48.580254>,  <39.814426, 35.819756, 48.823528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208481, 35.385784, 48.580254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074333, 35.761673, 48.553570>,  <38.993843, 35.987206, 48.537560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074333, 35.761673, 48.553570>,  <39.208481, 35.385784, 48.580254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074333, 35.761673, 48.553570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341982, -0.187411, -0.920829,
		-0.877825, -0.286004, 0.384220,
		-0.335368, 0.939723, -0.066706,
		38.973724, 36.043591, 48.533558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490135, 35.322273, 48.290123>,  <39.208481, 35.385784, 48.580254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490135, 35.322273, 48.290123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614868, 35.690166, 48.194752>,  <38.689709, 35.910904, 48.137531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614868, 35.690166, 48.194752>,  <38.490135, 35.322273, 48.290123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614868, 35.690166, 48.194752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246909, -0.163874, -0.955082,
		-0.917496, 0.356692, 0.175990,
		0.311830, 0.919737, -0.238424,
		38.708416, 35.966087, 48.123226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883720, 35.701099, 47.992825>,  <38.490135, 35.322273, 48.290123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883720, 35.701099, 47.992825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219872, 35.885422, 47.878693>,  <38.421562, 35.996017, 47.810211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219872, 35.885422, 47.878693>,  <37.883720, 35.701099, 47.992825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219872, 35.885422, 47.878693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336600, 0.031108, -0.941134,
		-0.424805, 0.886955, 0.181250,
		0.840381, 0.460808, -0.285334,
		38.471985, 36.023663, 47.793091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672726, 36.268444, 47.574387>,  <37.883720, 35.701099, 47.992825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672726, 36.268444, 47.574387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046459, 36.162189, 47.479340>,  <38.270699, 36.098438, 47.422310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046459, 36.162189, 47.479340>,  <37.672726, 36.268444, 47.574387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046459, 36.162189, 47.479340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244401, 0.007727, -0.969643,
		0.259404, 0.964043, -0.057702,
		0.934332, -0.265632, -0.237618,
		38.326759, 36.082500, 47.408054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807156, 36.591663, 46.905891>,  <37.672726, 36.268444, 47.574387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807156, 36.591663, 46.905891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101440, 36.322914, 46.940102>,  <38.278011, 36.161663, 46.960629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101440, 36.322914, 46.940102>,  <37.807156, 36.591663, 46.905891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101440, 36.322914, 46.940102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019251, -0.105479, -0.994235,
		0.677022, 0.733117, -0.064668,
		0.735711, -0.671874, 0.085524,
		38.322155, 36.121353, 46.965759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117798, 36.597218, 46.234356>,  <37.807156, 36.591663, 46.905891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117798, 36.597218, 46.234356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305786, 36.288395, 46.405495>,  <38.418579, 36.103100, 46.508179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305786, 36.288395, 46.405495>,  <38.117798, 36.597218, 46.234356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305786, 36.288395, 46.405495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248235, -0.349542, -0.903438,
		0.847057, 0.530797, 0.027376,
		0.469973, -0.772058, 0.427844,
		38.446777, 36.056778, 46.533848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833363, 36.611298, 45.972160>,  <38.117798, 36.597218, 46.234356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833363, 36.611298, 45.972160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714191, 36.238792, 46.056057>,  <38.642689, 36.015289, 46.106396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714191, 36.238792, 46.056057>,  <38.833363, 36.611298, 45.972160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714191, 36.238792, 46.056057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218364, -0.280382, -0.934721,
		0.929277, -0.232681, 0.286888,
		-0.297930, -0.931260, 0.209743,
		38.624813, 35.959415, 46.118980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331055, 36.087811, 45.852436>,  <38.833363, 36.611298, 45.972160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331055, 36.087811, 45.852436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982643, 35.893196, 45.825356>,  <38.773594, 35.776428, 45.809109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982643, 35.893196, 45.825356>,  <39.331055, 36.087811, 45.852436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982643, 35.893196, 45.825356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192502, -0.211296, -0.958278,
		0.451935, -0.847723, 0.277706,
		-0.871032, -0.486538, -0.067697,
		38.721333, 35.747234, 45.805046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540100, 35.542221, 45.420357>,  <39.331055, 36.087811, 45.852436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540100, 35.542221, 45.420357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140625, 35.524555, 45.430729>,  <38.900940, 35.513958, 45.436954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140625, 35.524555, 45.430729>,  <39.540100, 35.542221, 45.420357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140625, 35.524555, 45.430729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015050, -0.230927, -0.972855,
		0.048952, -0.971968, 0.229960,
		-0.998688, -0.044163, 0.025933,
		38.841019, 35.511307, 45.438507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341579, 34.884933, 45.244026>,  <39.540100, 35.542221, 45.420357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341579, 34.884933, 45.244026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029675, 35.122902, 45.166012>,  <38.842533, 35.265682, 45.119202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029675, 35.122902, 45.166012>,  <39.341579, 34.884933, 45.244026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029675, 35.122902, 45.166012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081795, -0.405661, -0.910356,
		-0.620710, -0.693908, 0.364981,
		-0.779762, 0.594921, -0.195039,
		38.795746, 35.301376, 45.107502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810776, 34.431572, 45.081409>,  <39.341579, 34.884933, 45.244026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810776, 34.431572, 45.081409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694324, 34.783524, 44.931183>,  <38.624454, 34.994694, 44.841045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694324, 34.783524, 44.931183>,  <38.810776, 34.431572, 45.081409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694324, 34.783524, 44.931183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323917, -0.460045, -0.826702,
		-0.900180, -0.119019, 0.418939,
		-0.291124, 0.879883, -0.375571,
		38.606987, 35.047489, 44.818512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205444, 34.269276, 44.831505>,  <38.810776, 34.431572, 45.081409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205444, 34.269276, 44.831505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324795, 34.594990, 44.632343>,  <38.396404, 34.790421, 44.512848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324795, 34.594990, 44.632343>,  <38.205444, 34.269276, 44.831505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324795, 34.594990, 44.632343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126526, -0.483312, -0.866257,
		-0.946025, 0.321468, -0.041180,
		0.298377, 0.814290, -0.497899,
		38.414307, 34.839275, 44.482975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792984, 34.274044, 44.166832>,  <38.205444, 34.269276, 44.831505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792984, 34.274044, 44.166832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034401, 34.577927, 44.070019>,  <38.179253, 34.760258, 44.011929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034401, 34.577927, 44.070019>,  <37.792984, 34.274044, 44.166832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034401, 34.577927, 44.070019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012149, -0.312286, -0.949911,
		-0.797236, 0.570374, -0.197708,
		0.603545, 0.759705, -0.242036,
		38.215466, 34.805840, 43.997406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543106, 34.570557, 43.495323>,  <37.792984, 34.274044, 44.166832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543106, 34.570557, 43.495323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936924, 34.631363, 43.530087>,  <38.173218, 34.667847, 43.550945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936924, 34.631363, 43.530087>,  <37.543106, 34.570557, 43.495323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936924, 34.631363, 43.530087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120616, -0.228939, -0.965939,
		-0.126941, 0.961498, -0.243738,
		0.984549, 0.152016, 0.086910,
		38.232288, 34.676968, 43.556160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764721, 35.056797, 43.043217>,  <37.543106, 34.570557, 43.495323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764721, 35.056797, 43.043217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096653, 34.841938, 43.103680>,  <38.295815, 34.713020, 43.139957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096653, 34.841938, 43.103680>,  <37.764721, 35.056797, 43.043217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096653, 34.841938, 43.103680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229972, 0.082401, -0.969703,
		0.508421, 0.839452, 0.191908,
		0.829832, -0.537151, 0.151156,
		38.345604, 34.680794, 43.149025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025810, 35.077736, 42.430214>,  <37.764721, 35.056797, 43.043217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025810, 35.077736, 42.430214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318424, 34.883499, 42.621651>,  <38.493992, 34.766956, 42.736511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318424, 34.883499, 42.621651>,  <38.025810, 35.077736, 42.430214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318424, 34.883499, 42.621651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438893, -0.201777, -0.875591,
		0.521750, 0.850579, 0.065516,
		0.731540, -0.485594, 0.478590,
		38.537888, 34.737820, 42.765228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665142, 35.415787, 42.252182>,  <38.025810, 35.077736, 42.430214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665142, 35.415787, 42.252182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738770, 35.029282, 42.324238>,  <38.782948, 34.797379, 42.367474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738770, 35.029282, 42.324238>,  <38.665142, 35.415787, 42.252182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738770, 35.029282, 42.324238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212289, -0.139867, -0.967146,
		0.959714, 0.216265, 0.179382,
		0.184070, -0.966264, 0.180143,
		38.793991, 34.739403, 42.378281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384094, 35.218948, 42.043339>,  <38.665142, 35.415787, 42.252182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384094, 35.218948, 42.043339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169922, 34.882061, 42.018112>,  <39.041416, 34.679928, 42.002975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169922, 34.882061, 42.018112>,  <39.384094, 35.218948, 42.043339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169922, 34.882061, 42.018112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295981, -0.117183, -0.947979,
		0.791015, -0.526247, 0.312024,
		-0.535435, -0.842218, -0.063065,
		39.009293, 34.629395, 41.999191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941357, 34.680695, 41.753212>,  <39.384094, 35.218948, 42.043339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941357, 34.680695, 41.753212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577122, 34.528530, 41.688576>,  <39.358582, 34.437229, 41.649796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577122, 34.528530, 41.688576>,  <39.941357, 34.680695, 41.753212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577122, 34.528530, 41.688576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284195, -0.292423, -0.913084,
		0.300098, -0.877367, 0.374390,
		-0.910590, -0.380415, -0.161588,
		39.303944, 34.414406, 41.640099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949459, 33.968281, 41.498894>,  <39.941357, 34.680695, 41.753212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949459, 33.968281, 41.498894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615032, 34.136925, 41.358479>,  <39.414375, 34.238113, 41.274231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615032, 34.136925, 41.358479>,  <39.949459, 33.968281, 41.498894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615032, 34.136925, 41.358479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221780, -0.325503, -0.919163,
		-0.501794, -0.846339, 0.178639,
		-0.836072, 0.421613, -0.351037,
		39.364212, 34.263409, 41.253166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725639, 33.392696, 41.095978>,  <39.949459, 33.968281, 41.498894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725639, 33.392696, 41.095978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536018, 33.726982, 40.985088>,  <39.422245, 33.927555, 40.918556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536018, 33.726982, 40.985088>,  <39.725639, 33.392696, 41.095978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536018, 33.726982, 40.985088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146109, -0.235822, -0.960750,
		-0.868291, -0.495947, -0.010315,
		-0.474049, 0.835718, -0.277224,
		39.393803, 33.977699, 40.901920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405304, 33.224617, 40.537502>,  <39.725639, 33.392696, 41.095978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405304, 33.224617, 40.537502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372253, 33.621395, 40.499092>,  <39.352425, 33.859463, 40.476048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372253, 33.621395, 40.499092>,  <39.405304, 33.224617, 40.537502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372253, 33.621395, 40.499092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054520, -0.091709, -0.994292,
		-0.995088, -0.087386, -0.046503,
		-0.082623, 0.991944, -0.096023,
		39.347466, 33.918980, 40.470284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091656, 33.237919, 39.883942>,  <39.405304, 33.224617, 40.537502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091656, 33.237919, 39.883942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245174, 33.601234, 39.950531>,  <39.337284, 33.819225, 39.990486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245174, 33.601234, 39.950531>,  <39.091656, 33.237919, 39.883942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245174, 33.601234, 39.950531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208752, 0.090273, -0.973793,
		-0.899513, 0.408490, -0.154960,
		0.383796, 0.908288, 0.166475,
		39.360313, 33.873722, 40.000473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883575, 33.559368, 39.239437>,  <39.091656, 33.237919, 39.883942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883575, 33.559368, 39.239437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188606, 33.765499, 39.395851>,  <39.371624, 33.889179, 39.489700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188606, 33.765499, 39.395851>,  <38.883575, 33.559368, 39.239437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188606, 33.765499, 39.395851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360268, 0.163746, -0.918365,
		-0.537289, 0.841205, -0.060787,
		0.762579, 0.515327, 0.391038,
		39.417381, 33.920097, 39.513161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853275, 34.227116, 38.917233>,  <38.883575, 33.559368, 39.239437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853275, 34.227116, 38.917233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233772, 34.194790, 39.036301>,  <39.462070, 34.175396, 39.107742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233772, 34.194790, 39.036301>,  <38.853275, 34.227116, 38.917233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233772, 34.194790, 39.036301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306820, 0.346810, -0.886332,
		-0.031607, 0.934448, 0.354695,
		0.951243, -0.080813, 0.297669,
		39.519146, 34.170547, 39.125603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176262, 34.748322, 38.536255>,  <38.853275, 34.227116, 38.917233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176262, 34.748322, 38.536255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486702, 34.552883, 38.695724>,  <39.672966, 34.435619, 38.791409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486702, 34.552883, 38.695724>,  <39.176262, 34.748322, 38.536255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486702, 34.552883, 38.695724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554402, 0.227375, -0.800586,
		0.300518, 0.842360, 0.447346,
		0.776097, -0.488600, 0.398676,
		39.719532, 34.406303, 38.815327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733482, 35.163170, 38.412418>,  <39.176262, 34.748322, 38.536255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733482, 35.163170, 38.412418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875484, 34.789757, 38.432396>,  <39.960686, 34.565708, 38.444382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875484, 34.789757, 38.432396>,  <39.733482, 35.163170, 38.412418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875484, 34.789757, 38.432396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577068, 0.176789, -0.797332,
		0.735502, 0.311881, 0.601471,
		0.355006, -0.933529, 0.049948,
		39.981987, 34.509697, 38.447380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404945, 35.186913, 38.142315>,  <39.733482, 35.163170, 38.412418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404945, 35.186913, 38.142315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345772, 34.791321, 38.140068>,  <40.310268, 34.553967, 38.138718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345772, 34.791321, 38.140068>,  <40.404945, 35.186913, 38.142315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345772, 34.791321, 38.140068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604896, -0.085979, -0.791649,
		0.782444, -0.120508, 0.610950,
		-0.147929, -0.988982, -0.005621,
		40.301392, 34.494625, 38.138382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061958, 34.910694, 38.095448>,  <40.404945, 35.186913, 38.142315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061958, 34.910694, 38.095448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809273, 34.634438, 37.954624>,  <40.657661, 34.468681, 37.870129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809273, 34.634438, 37.954624>,  <41.061958, 34.910694, 38.095448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809273, 34.634438, 37.954624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567758, -0.102982, -0.816729,
		0.527814, -0.715824, 0.457174,
		-0.631715, -0.690645, -0.352059,
		40.619759, 34.427242, 37.849007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452770, 34.323093, 37.877972>,  <41.061958, 34.910694, 38.095448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452770, 34.323093, 37.877972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106506, 34.290699, 37.680355>,  <40.898746, 34.271263, 37.561787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106506, 34.290699, 37.680355>,  <41.452770, 34.323093, 37.877972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106506, 34.290699, 37.680355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490993, 0.055385, -0.869401,
		0.097774, -0.995175, -0.008180,
		-0.865660, -0.080989, -0.494039,
		40.846809, 34.266403, 37.532143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507172, 33.729485, 37.419804>,  <41.452770, 34.323093, 37.877972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507172, 33.729485, 37.419804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193226, 33.930817, 37.275219>,  <41.004860, 34.051617, 37.188469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193226, 33.930817, 37.275219>,  <41.507172, 33.729485, 37.419804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193226, 33.930817, 37.275219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473497, 0.110838, -0.873794,
		-0.399740, -0.856958, -0.325316,
		-0.784862, 0.503326, -0.361460,
		40.957767, 34.081814, 37.166782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158058, 33.384369, 36.844807>,  <41.507172, 33.729485, 37.419804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158058, 33.384369, 36.844807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126228, 33.782093, 36.816456>,  <41.107132, 34.020725, 36.799446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126228, 33.782093, 36.816456>,  <41.158058, 33.384369, 36.844807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126228, 33.782093, 36.816456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450511, -0.027559, -0.892345,
		-0.889218, -0.102936, -0.445753,
		-0.079570, 0.994306, -0.070880,
		41.102356, 34.080383, 36.795193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762123, 33.513721, 36.229172>,  <41.158058, 33.384369, 36.844807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762123, 33.513721, 36.229172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993134, 33.828205, 36.317116>,  <41.131741, 34.016895, 36.369884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993134, 33.828205, 36.317116>,  <40.762123, 33.513721, 36.229172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993134, 33.828205, 36.317116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395570, -0.033906, -0.917810,
		-0.714137, 0.617027, -0.330584,
		0.577522, 0.786211, 0.219864,
		41.166389, 34.064068, 36.383076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584400, 33.939045, 35.741047>,  <40.762123, 33.513721, 36.229172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584400, 33.939045, 35.741047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926235, 34.089104, 35.884682>,  <41.131336, 34.179138, 35.970863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926235, 34.089104, 35.884682>,  <40.584400, 33.939045, 35.741047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926235, 34.089104, 35.884682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246523, 0.315531, -0.916333,
		-0.457063, 0.871611, 0.177166,
		0.854587, 0.375147, 0.359090,
		41.182610, 34.201649, 35.992409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811985, 34.733185, 35.511280>,  <40.584400, 33.939045, 35.741047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811985, 34.733185, 35.511280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126587, 34.501961, 35.598232>,  <41.315350, 34.363224, 35.650402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126587, 34.501961, 35.598232>,  <40.811985, 34.733185, 35.511280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126587, 34.501961, 35.598232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383434, 0.181137, -0.905631,
		0.484137, 0.795633, 0.364114,
		0.786505, -0.578063, 0.217378,
		41.362537, 34.328541, 35.663445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377220, 35.013176, 35.199757>,  <40.811985, 34.733185, 35.511280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377220, 35.013176, 35.199757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517200, 34.645348, 35.271221>,  <41.601189, 34.424652, 35.314102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517200, 34.645348, 35.271221>,  <41.377220, 35.013176, 35.199757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517200, 34.645348, 35.271221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624435, 0.086820, -0.776236,
		0.698293, 0.383210, 0.604596,
		0.349953, -0.919572, 0.178664,
		41.622185, 34.369476, 35.324821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107090, 35.025921, 35.325108>,  <41.377220, 35.013176, 35.199757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107090, 35.025921, 35.325108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010006, 34.658882, 35.199184>,  <41.951756, 34.438660, 35.123631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010006, 34.658882, 35.199184>,  <42.107090, 35.025921, 35.325108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010006, 34.658882, 35.199184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444320, 0.183322, -0.876911,
		0.862364, -0.352712, 0.363213,
		-0.242712, -0.917599, -0.314807,
		41.937191, 34.383602, 35.104744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405151, 34.601269, 35.973877>,  <42.107090, 35.025921, 35.325108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405151, 34.601269, 35.973877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652435, 34.480320, 36.264088>,  <42.800804, 34.407753, 36.438213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652435, 34.480320, 36.264088>,  <42.405151, 34.601269, 35.973877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652435, 34.480320, 36.264088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088708, 0.890310, 0.446631,
		-0.780993, -0.340471, 0.523574,
		0.618208, -0.302370, 0.725528,
		42.837898, 34.389610, 36.481747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193394, 34.819603, 36.624680>,  <42.405151, 34.601269, 35.973877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193394, 34.819603, 36.624680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589611, 34.775135, 36.656822>,  <42.827343, 34.748455, 36.676109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589611, 34.775135, 36.656822>,  <42.193394, 34.819603, 36.624680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589611, 34.775135, 36.656822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066176, 0.900418, 0.429964,
		-0.120159, -0.420581, 0.899263,
		0.990547, -0.111173, 0.080361,
		42.886776, 34.741783, 36.680931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293617, 35.151814, 37.182602>,  <42.193394, 34.819603, 36.624680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293617, 35.151814, 37.182602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662716, 35.162468, 37.028805>,  <42.884174, 35.168861, 36.936527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662716, 35.162468, 37.028805>,  <42.293617, 35.151814, 37.182602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662716, 35.162468, 37.028805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106289, 0.941339, 0.320287,
		0.370472, -0.336410, 0.865782,
		0.922742, 0.026634, -0.384496,
		42.939537, 35.170460, 36.913456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691051, 35.398796, 37.630062>,  <42.293617, 35.151814, 37.182602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691051, 35.398796, 37.630062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924145, 35.486580, 37.317074>,  <43.063999, 35.539249, 37.129280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924145, 35.486580, 37.317074>,  <42.691051, 35.398796, 37.630062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924145, 35.486580, 37.317074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255845, 0.864343, 0.432960,
		0.771339, -0.452492, 0.447534,
		0.582734, 0.219460, -0.782470,
		43.098965, 35.552418, 37.082333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325455, 35.713463, 37.913429>,  <42.691051, 35.398796, 37.630062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325455, 35.713463, 37.913429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344170, 35.852139, 37.538704>,  <43.355396, 35.935345, 37.313869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344170, 35.852139, 37.538704>,  <43.325455, 35.713463, 37.913429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344170, 35.852139, 37.538704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260491, 0.901154, 0.346506,
		0.964342, -0.260243, -0.048149,
		0.046786, 0.346693, -0.936811,
		43.358204, 35.956146, 37.257660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015022, 35.944019, 37.821468>,  <43.325455, 35.713463, 37.913429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015022, 35.944019, 37.821468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815361, 36.124031, 37.525272>,  <43.695564, 36.232037, 37.347553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815361, 36.124031, 37.525272>,  <44.015022, 35.944019, 37.821468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815361, 36.124031, 37.525272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480096, 0.855036, 0.196014,
		0.721356, -0.257664, -0.642849,
		-0.499154, 0.450025, -0.740488,
		43.665615, 36.259037, 37.303127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465359, 36.506615, 37.654251>,  <44.015022, 35.944019, 37.821468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465359, 36.506615, 37.654251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130226, 36.606972, 37.460308>,  <43.929146, 36.667187, 37.343941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130226, 36.606972, 37.460308>,  <44.465359, 36.506615, 37.654251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130226, 36.606972, 37.460308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212217, 0.967969, 0.134164,
		0.502986, 0.009513, -0.864242,
		-0.837836, 0.250890, -0.484856,
		43.878876, 36.682240, 37.314850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.641880, 36.915474, 37.097549>,  <44.465359, 36.506615, 37.654251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.641880, 36.915474, 37.097549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261253, 37.022827, 37.157528>,  <44.032875, 37.087238, 37.193516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261253, 37.022827, 37.157528>,  <44.641880, 36.915474, 37.097549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261253, 37.022827, 37.157528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288533, 0.948017, 0.134212,
		-0.106136, 0.170978, -0.979542,
		-0.951569, 0.268385, 0.149951,
		43.975784, 37.103344, 37.202515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569305, 37.483437, 36.684376>,  <44.641880, 36.915474, 37.097549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569305, 37.483437, 36.684376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301121, 37.482819, 36.981152>,  <44.140209, 37.482449, 37.159218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301121, 37.482819, 36.981152>,  <44.569305, 37.483437, 36.684376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301121, 37.482819, 36.981152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264108, 0.934000, 0.240605,
		-0.693344, 0.357270, -0.625806,
		-0.670464, -0.001541, 0.741941,
		44.099983, 37.482357, 37.203735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358025, 38.130959, 36.733833>,  <44.569305, 37.483437, 36.684376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358025, 38.130959, 36.733833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205204, 37.993752, 37.077084>,  <44.113510, 37.911427, 37.283031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205204, 37.993752, 37.077084>,  <44.358025, 38.130959, 36.733833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205204, 37.993752, 37.077084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017396, 0.925728, 0.377789,
		-0.923976, 0.159264, -0.347710,
		-0.382053, -0.343020, 0.858122,
		44.090588, 37.890846, 37.334518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806313, 38.554531, 36.897827>,  <44.358025, 38.130959, 36.733833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806313, 38.554531, 36.897827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.931816, 38.379280, 37.234779>,  <44.007118, 38.274128, 37.436951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.931816, 38.379280, 37.234779>,  <43.806313, 38.554531, 36.897827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.931816, 38.379280, 37.234779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017951, 0.884283, 0.466607,
		-0.949334, -0.161523, 0.269585,
		0.313757, -0.438126, 0.842379,
		44.025944, 38.247841, 37.487492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476471, 38.949383, 37.483776>,  <43.806313, 38.554531, 36.897827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476471, 38.949383, 37.483776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781242, 38.757088, 37.657379>,  <43.964104, 38.641712, 37.761543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781242, 38.757088, 37.657379>,  <43.476471, 38.949383, 37.483776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781242, 38.757088, 37.657379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206736, 0.815582, 0.540450,
		-0.613785, -0.322056, 0.720796,
		0.761924, -0.480734, 0.434012,
		44.009819, 38.612869, 37.787582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429115, 39.099625, 38.260361>,  <43.476471, 38.949383, 37.483776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429115, 39.099625, 38.260361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811405, 39.018799, 38.174786>,  <44.040779, 38.970303, 38.123440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811405, 39.018799, 38.174786>,  <43.429115, 39.099625, 38.260361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811405, 39.018799, 38.174786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283493, 0.827192, 0.485166,
		0.078933, -0.524332, 0.847848,
		0.955721, -0.202063, -0.213937,
		44.098122, 38.958179, 38.110603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835415, 39.167534, 38.824867>,  <43.429115, 39.099625, 38.260361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835415, 39.167534, 38.824867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.102150, 39.205379, 38.529198>,  <44.262192, 39.228088, 38.351795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.102150, 39.205379, 38.529198>,  <43.835415, 39.167534, 38.824867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.102150, 39.205379, 38.529198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364506, 0.823733, 0.434281,
		0.649969, -0.559027, 0.514810,
		0.666841, 0.094618, -0.739169,
		44.302200, 39.233765, 38.307446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419937, 39.452175, 39.139561>,  <43.835415, 39.167534, 38.824867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419937, 39.452175, 39.139561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471939, 39.527737, 38.750221>,  <44.503139, 39.573074, 38.516617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471939, 39.527737, 38.750221>,  <44.419937, 39.452175, 39.139561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471939, 39.527737, 38.750221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348488, 0.910345, 0.223222,
		0.928254, -0.368221, 0.052517,
		0.130003, 0.188906, -0.973352,
		44.510941, 39.584408, 38.458214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782597, 39.994526, 39.230167>,  <44.419937, 39.452175, 39.139561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782597, 39.994526, 39.230167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715740, 40.004478, 38.835918>,  <44.675625, 40.010448, 38.599369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715740, 40.004478, 38.835918>,  <44.782597, 39.994526, 39.230167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715740, 40.004478, 38.835918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190174, 0.981722, -0.007469,
		0.967418, -0.188688, -0.168818,
		-0.167142, 0.024879, -0.985619,
		44.665596, 40.011944, 38.540234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.399071, 40.264835, 38.906284>,  <44.782597, 39.994526, 39.230167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.399071, 40.264835, 38.906284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084610, 40.338875, 38.670418>,  <44.895935, 40.383297, 38.528896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084610, 40.338875, 38.670418>,  <45.399071, 40.264835, 38.906284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084610, 40.338875, 38.670418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218441, 0.975734, 0.015056,
		0.578147, -0.116972, -0.807504,
		-0.786148, 0.185097, -0.589669,
		44.848766, 40.394405, 38.493519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.609200, 40.586880, 38.342495>,  <45.399071, 40.264835, 38.906284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.609200, 40.586880, 38.342495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219326, 40.675770, 38.352310>,  <44.985401, 40.729103, 38.358200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219326, 40.675770, 38.352310>,  <45.609200, 40.586880, 38.342495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219326, 40.675770, 38.352310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223081, 0.973951, 0.040685,
		-0.014862, 0.045130, -0.998871,
		-0.974687, 0.222225, 0.024542,
		44.926922, 40.742435, 38.359673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499397, 41.076256, 37.780731>,  <45.609200, 40.586880, 38.342495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499397, 41.076256, 37.780731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192791, 41.118248, 38.034168>,  <45.008827, 41.143444, 38.186230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192791, 41.118248, 38.034168>,  <45.499397, 41.076256, 37.780731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192791, 41.118248, 38.034168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155355, 0.987559, 0.024323,
		-0.623155, 0.117075, -0.773286,
		-0.766513, 0.104976, 0.633591,
		44.962837, 41.149742, 38.224247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148369, 41.637138, 37.511024>,  <45.499397, 41.076256, 37.780731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148369, 41.637138, 37.511024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039581, 41.592735, 37.893379>,  <44.974308, 41.566093, 38.122791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039581, 41.592735, 37.893379>,  <45.148369, 41.637138, 37.511024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039581, 41.592735, 37.893379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157000, 0.974897, 0.157882,
		-0.949413, 0.193012, -0.247712,
		-0.271966, -0.111004, 0.955883,
		44.957993, 41.559433, 38.180145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716923, 42.186012, 37.561459>,  <45.148369, 41.637138, 37.511024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716923, 42.186012, 37.561459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.805336, 42.069942, 37.933899>,  <44.858383, 42.000301, 38.157364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.805336, 42.069942, 37.933899>,  <44.716923, 42.186012, 37.561459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.805336, 42.069942, 37.933899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182507, 0.950152, 0.252788,
		-0.958037, 0.114057, 0.262976,
		0.221035, -0.290175, 0.931097,
		44.871647, 41.982891, 38.213226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423977, 42.649887, 38.067825>,  <44.716923, 42.186012, 37.561459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423977, 42.649887, 38.067825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732361, 42.507023, 38.278748>,  <44.917393, 42.421303, 38.405300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732361, 42.507023, 38.278748>,  <44.423977, 42.649887, 38.067825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732361, 42.507023, 38.278748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261905, 0.932502, 0.248688,
		-0.580537, -0.053625, 0.812466,
		0.770962, -0.357162, 0.527307,
		44.963650, 42.399876, 38.436939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521938, 42.841969, 38.818348>,  <44.423977, 42.649887, 38.067825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521938, 42.841969, 38.818348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881336, 42.772995, 38.656872>,  <45.096977, 42.731609, 38.559986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881336, 42.772995, 38.656872>,  <44.521938, 42.841969, 38.818348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881336, 42.772995, 38.656872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333935, 0.865403, 0.373584,
		0.284936, -0.470471, 0.835146,
		0.898498, -0.172437, -0.403691,
		45.150887, 42.721264, 38.535763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016171, 42.728569, 39.382313>,  <44.521938, 42.841969, 38.818348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016171, 42.728569, 39.382313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093296, 42.903980, 39.031197>,  <45.139572, 43.009228, 38.820526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093296, 42.903980, 39.031197>,  <45.016171, 42.728569, 39.382313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093296, 42.903980, 39.031197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173805, 0.865170, 0.470397,
		0.965719, -0.243265, 0.090601,
		0.192816, 0.438524, -0.877792,
		45.151142, 43.035538, 38.767860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614910, 42.801888, 39.915279>,  <45.016171, 42.728569, 39.382313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614910, 42.801888, 39.915279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818226, 42.463707, 39.849731>,  <45.940216, 42.260799, 39.810402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818226, 42.463707, 39.849731>,  <45.614910, 42.801888, 39.915279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818226, 42.463707, 39.849731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845006, 0.452923, 0.284299,
		-0.166141, -0.282977, 0.944628,
		0.508294, -0.845450, -0.163868,
		45.970715, 42.210072, 39.800571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.050404, 42.604771, 40.529613>,  <45.614910, 42.801888, 39.915279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.050404, 42.604771, 40.529613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.220646, 42.445564, 40.204544>,  <46.322792, 42.350040, 40.009502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.220646, 42.445564, 40.204544>,  <46.050404, 42.604771, 40.529613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.220646, 42.445564, 40.204544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844579, 0.497142, 0.198835,
		0.324876, -0.770995, 0.547742,
		0.425607, -0.398015, -0.812676,
		46.348328, 42.326160, 39.960743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147591, 42.697632, 41.184063>,  <46.050404, 42.604771, 40.529613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147591, 42.697632, 41.184063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346451, 42.525249, 40.882835>,  <46.465767, 42.421818, 40.702099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346451, 42.525249, 40.882835>,  <46.147591, 42.697632, 41.184063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.346451, 42.525249, 40.882835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070914, -0.885207, 0.459761,
		-0.864758, -0.175170, -0.470647,
		0.497156, -0.430957, -0.753068,
		46.495598, 42.395962, 40.656914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871414, 42.088928, 41.178326>,  <46.147591, 42.697632, 41.184063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871414, 42.088928, 41.178326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.229450, 42.055191, 41.003193>,  <46.444271, 42.034946, 40.898113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.229450, 42.055191, 41.003193>,  <45.871414, 42.088928, 41.178326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.229450, 42.055191, 41.003193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063228, -0.948012, 0.311890,
		-0.441377, -0.306854, -0.843224,
		0.895091, -0.084346, -0.437832,
		46.497978, 42.029888, 40.871841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.900196, 41.567307, 40.726158>,  <45.871414, 42.088928, 41.178326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.900196, 41.567307, 40.726158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273579, 41.612892, 40.862206>,  <46.497608, 41.640244, 40.943832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273579, 41.612892, 40.862206>,  <45.900196, 41.567307, 40.726158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273579, 41.612892, 40.862206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065385, -0.986362, 0.151047,
		0.352693, -0.118757, -0.928173,
		0.933452, 0.113961, 0.340118,
		46.553616, 41.647079, 40.964241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.412975, 41.178078, 40.434322>,  <45.900196, 41.567307, 40.726158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.412975, 41.178078, 40.434322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.509327, 41.238308, 40.817844>,  <46.567139, 41.274448, 41.047958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.509327, 41.238308, 40.817844>,  <46.412975, 41.178078, 40.434322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.509327, 41.238308, 40.817844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136125, -0.983368, 0.120239,
		0.960962, 0.101554, -0.257370,
		0.240879, 0.150580, 0.958803,
		46.581593, 41.283482, 41.105484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.110432, 40.901470, 40.598740>,  <46.412975, 41.178078, 40.434322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.110432, 40.901470, 40.598740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.850594, 40.867565, 40.900955>,  <46.694691, 40.847221, 41.082287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.850594, 40.867565, 40.900955>,  <47.110432, 40.901470, 40.598740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.850594, 40.867565, 40.900955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053373, -0.996398, -0.065896,
		0.758405, -0.002480, 0.651779,
		-0.649594, -0.084763, 0.755541,
		46.655716, 40.842136, 41.127617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.362789, 40.374725, 41.025841>,  <47.110432, 40.901470, 40.598740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.362789, 40.374725, 41.025841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.971493, 40.393307, 41.106720>,  <46.736713, 40.404453, 41.155247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.971493, 40.393307, 41.106720>,  <47.362789, 40.374725, 41.025841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.971493, 40.393307, 41.106720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030320, -0.996158, 0.082152,
		0.205235, 0.074234, 0.975893,
		-0.978243, 0.046449, 0.202196,
		46.678020, 40.407242, 41.167377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351368, 39.856308, 41.467796>,  <47.362789, 40.374725, 41.025841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351368, 39.856308, 41.467796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.988075, 39.918232, 41.312286>,  <46.770100, 39.955387, 41.218983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.988075, 39.918232, 41.312286>,  <47.351368, 39.856308, 41.467796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.988075, 39.918232, 41.312286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147894, -0.987844, -0.047865,
		-0.391457, 0.014025, 0.920089,
		-0.908234, 0.154812, -0.388772,
		46.715607, 39.964676, 41.195656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.958538, 39.398327, 41.792904>,  <47.351368, 39.856308, 41.467796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.958538, 39.398327, 41.792904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.793095, 39.478065, 41.437557>,  <46.693829, 39.525909, 41.224350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.793095, 39.478065, 41.437557>,  <46.958538, 39.398327, 41.792904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.793095, 39.478065, 41.437557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169624, -0.975523, -0.139936,
		-0.894515, 0.092809, 0.437299,
		-0.413608, 0.199351, -0.888363,
		46.669014, 39.537872, 41.171047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.298161, 38.944847, 41.827312>,  <46.958538, 39.398327, 41.792904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.298161, 38.944847, 41.827312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.405289, 39.014500, 41.448273>,  <46.469566, 39.056293, 41.220848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.405289, 39.014500, 41.448273>,  <46.298161, 38.944847, 41.827312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.405289, 39.014500, 41.448273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106574, -0.972142, -0.208764,
		-0.957557, 0.156901, -0.241800,
		0.267819, 0.174134, -0.947602,
		46.485634, 39.066738, 41.163994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705074, 38.643993, 41.316708>,  <46.298161, 38.944847, 41.827312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705074, 38.643993, 41.316708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042393, 38.674328, 41.103882>,  <46.244785, 38.692528, 40.976185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042393, 38.674328, 41.103882>,  <45.705074, 38.643993, 41.316708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042393, 38.674328, 41.103882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197099, -0.877375, -0.437453,
		-0.499998, 0.473774, -0.724942,
		0.843300, 0.075840, -0.532066,
		46.295383, 38.697079, 40.944263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531742, 38.316025, 40.681503>,  <45.705074, 38.643993, 41.316708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531742, 38.316025, 40.681503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.929054, 38.354259, 40.655418>,  <46.167442, 38.377201, 40.639767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.929054, 38.354259, 40.655418>,  <45.531742, 38.316025, 40.681503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.929054, 38.354259, 40.655418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042354, -0.824783, -0.563861,
		-0.107682, 0.557311, -0.823291,
		0.993283, 0.095587, -0.065210,
		46.227039, 38.382935, 40.635857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599602, 37.981400, 40.143459>,  <45.531742, 38.316025, 40.681503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599602, 37.981400, 40.143459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980503, 38.026783, 40.256840>,  <46.209042, 38.054012, 40.324867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980503, 38.026783, 40.256840>,  <45.599602, 37.981400, 40.143459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.980503, 38.026783, 40.256840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248008, -0.828917, -0.501387,
		0.178076, 0.547745, -0.817474,
		0.952251, 0.113455, 0.283455,
		46.266178, 38.060818, 40.341877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.005802, 38.109337, 39.568966>,  <45.599602, 37.981400, 40.143459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.005802, 38.109337, 39.568966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.227707, 37.941193, 39.856167>,  <46.360851, 37.840305, 40.028488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.227707, 37.941193, 39.856167>,  <46.005802, 38.109337, 39.568966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.227707, 37.941193, 39.856167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108935, -0.818852, -0.563573,
		0.824847, 0.390864, -0.408475,
		0.554761, -0.420364, 0.718007,
		46.394135, 37.815083, 40.071568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.617466, 37.944889, 39.295780>,  <46.005802, 38.109337, 39.568966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.617466, 37.944889, 39.295780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.552700, 37.702679, 39.607452>,  <46.513840, 37.557354, 39.794456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.552700, 37.702679, 39.607452>,  <46.617466, 37.944889, 39.295780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.552700, 37.702679, 39.607452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092127, -0.795428, -0.599005,
		0.982496, -0.025202, 0.184573,
		-0.161911, -0.605523, 0.779183,
		46.504128, 37.521023, 39.841206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032162, 37.434341, 39.012085>,  <46.617466, 37.944889, 39.295780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032162, 37.434341, 39.012085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.797810, 37.274250, 39.293953>,  <46.657200, 37.178196, 39.463074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.797810, 37.274250, 39.293953>,  <47.032162, 37.434341, 39.012085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.797810, 37.274250, 39.293953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093885, -0.830163, -0.549558,
		0.804940, -0.388134, 0.448802,
		-0.585881, -0.400226, 0.704672,
		46.622044, 37.154182, 39.505356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.289871, 36.796619, 39.059277>,  <47.032162, 37.434341, 39.012085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.289871, 36.796619, 39.059277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932629, 36.793808, 39.239193>,  <46.718285, 36.792122, 39.347141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932629, 36.793808, 39.239193>,  <47.289871, 36.796619, 39.059277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.932629, 36.793808, 39.239193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217295, -0.868750, -0.445035,
		0.393883, -0.495200, 0.774360,
		-0.893106, -0.007027, 0.449790,
		46.664696, 36.791698, 39.374130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.254433, 36.062870, 39.250942>,  <47.289871, 36.796619, 39.059277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.254433, 36.062870, 39.250942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.880646, 36.205276, 39.249069>,  <46.656372, 36.290718, 39.247944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.880646, 36.205276, 39.249069>,  <47.254433, 36.062870, 39.250942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.880646, 36.205276, 39.249069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288523, -0.764894, -0.575927,
		-0.208620, -0.536834, 0.817488,
		-0.934469, 0.356014, -0.004683,
		46.600304, 36.312080, 39.247665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.775501, 35.427158, 39.455547>,  <47.254433, 36.062870, 39.250942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.775501, 35.427158, 39.455547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579891, 35.718388, 39.263393>,  <46.462524, 35.893124, 39.148102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579891, 35.718388, 39.263393>,  <46.775501, 35.427158, 39.455547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.579891, 35.718388, 39.263393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378488, -0.673294, -0.635156,
		-0.785877, -0.128788, 0.604823,
		-0.489024, 0.728072, -0.480381,
		46.433186, 35.936810, 39.119278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.213337, 35.076508, 39.314838>,  <46.775501, 35.427158, 39.455547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.213337, 35.076508, 39.314838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196259, 35.384773, 39.060516>,  <46.186012, 35.569733, 38.907925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196259, 35.384773, 39.060516>,  <46.213337, 35.076508, 39.314838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.196259, 35.384773, 39.060516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302729, -0.616449, -0.726874,
		-0.952120, 0.161442, 0.259624,
		-0.042697, 0.770667, -0.635807,
		46.183449, 35.615974, 38.869774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.536079, 35.014317, 39.011806>,  <46.213337, 35.076508, 39.314838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.536079, 35.014317, 39.011806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760345, 35.239548, 38.768955>,  <45.894905, 35.374687, 38.623245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760345, 35.239548, 38.768955>,  <45.536079, 35.014317, 39.011806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.760345, 35.239548, 38.768955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409436, -0.448782, -0.794328,
		-0.719736, 0.693928, -0.021069,
		0.560662, 0.563080, -0.607124,
		45.928543, 35.408470, 38.586819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138748, 35.188435, 38.493279>,  <45.536079, 35.014317, 39.011806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138748, 35.188435, 38.493279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492554, 35.251850, 38.317783>,  <45.704838, 35.289902, 38.212486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492554, 35.251850, 38.317783>,  <45.138748, 35.188435, 38.493279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492554, 35.251850, 38.317783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346009, -0.407854, -0.844946,
		-0.312901, 0.899178, -0.305897,
		0.884517, 0.158541, -0.438741,
		45.757908, 35.299412, 38.186161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945271, 35.461346, 37.803349>,  <45.138748, 35.188435, 38.493279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945271, 35.461346, 37.803349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325626, 35.361115, 37.730667>,  <45.553841, 35.300976, 37.687057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325626, 35.361115, 37.730667>,  <44.945271, 35.461346, 37.803349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325626, 35.361115, 37.730667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259067, -0.323047, -0.910234,
		0.169387, 0.912606, -0.372099,
		0.950890, -0.250581, -0.181706,
		45.610893, 35.285942, 37.676155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127308, 35.524853, 37.097607>,  <44.945271, 35.461346, 37.803349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127308, 35.524853, 37.097607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397049, 35.254627, 37.216843>,  <45.558895, 35.092491, 37.288383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397049, 35.254627, 37.216843>,  <45.127308, 35.524853, 37.097607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397049, 35.254627, 37.216843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175756, -0.538940, -0.823804,
		0.717187, 0.503144, -0.482171,
		0.674354, -0.675566, 0.298090,
		45.599354, 35.051956, 37.306271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.762932, 35.533257, 36.740841>,  <45.127308, 35.524853, 37.097607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.762932, 35.533257, 36.740841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758877, 35.165813, 36.898861>,  <45.756443, 34.945347, 36.993671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758877, 35.165813, 36.898861>,  <45.762932, 35.533257, 36.740841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758877, 35.165813, 36.898861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033084, -0.395163, -0.918015,
		0.999401, 0.003763, 0.034397,
		-0.010138, -0.918603, 0.395050,
		45.755836, 34.890232, 37.017376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097836, 35.255962, 36.212482>,  <45.762932, 35.533257, 36.740841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097836, 35.255962, 36.212482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.939976, 34.957794, 36.427364>,  <45.845261, 34.778893, 36.556293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.939976, 34.957794, 36.427364>,  <46.097836, 35.255962, 36.212482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.939976, 34.957794, 36.427364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123282, -0.536421, -0.834898,
		0.910522, -0.395724, 0.119803,
		-0.394654, -0.745423, 0.537209,
		45.821579, 34.734169, 36.588528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.429062, 34.686237, 35.995678>,  <46.097836, 35.255962, 36.212482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.429062, 34.686237, 35.995678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094730, 34.555416, 36.172050>,  <45.894131, 34.476925, 36.277874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094730, 34.555416, 36.172050>,  <46.429062, 34.686237, 35.995678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094730, 34.555416, 36.172050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192365, -0.577777, -0.793202,
		0.514182, -0.747803, 0.420010,
		-0.835831, -0.327055, 0.440934,
		45.843983, 34.457298, 36.304329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434608, 33.897480, 36.000702>,  <46.429062, 34.686237, 35.995678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434608, 33.897480, 36.000702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060825, 34.037949, 36.024277>,  <45.836555, 34.122231, 36.038422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060825, 34.037949, 36.024277>,  <46.434608, 33.897480, 36.000702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060825, 34.037949, 36.024277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291870, -0.660569, -0.691708,
		-0.203974, -0.663573, 0.719768,
		-0.934455, 0.351169, 0.058938,
		45.780487, 34.143299, 36.041958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.705986, 33.594242, 35.402340>,  <46.434608, 33.897480, 36.000702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.705986, 33.594242, 35.402340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.803722, 33.879929, 35.664696>,  <46.862366, 34.051342, 35.822109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.803722, 33.879929, 35.664696>,  <46.705986, 33.594242, 35.402340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.803722, 33.879929, 35.664696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953739, -0.054835, -0.295592,
		-0.175150, 0.697775, -0.694574,
		0.244343, 0.714215, 0.655891,
		46.877026, 34.094193, 35.861462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.062969, 34.242619, 35.109947>,  <46.705986, 33.594242, 35.402340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.062969, 34.242619, 35.109947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195244, 34.176357, 35.481583>,  <47.274609, 34.136600, 35.704563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195244, 34.176357, 35.481583>,  <47.062969, 34.242619, 35.109947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.195244, 34.176357, 35.481583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923090, -0.148040, -0.354950,
		0.196342, 0.975009, 0.103960,
		0.330689, -0.165656, 0.929087,
		47.294449, 34.126659, 35.760307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.652348, 34.718262, 35.175373>,  <47.062969, 34.242619, 35.109947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.652348, 34.718262, 35.175373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.688961, 34.418602, 35.437794>,  <47.710930, 34.238808, 35.595245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.688961, 34.418602, 35.437794>,  <47.652348, 34.718262, 35.175373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.688961, 34.418602, 35.437794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939240, -0.153924, -0.306815,
		0.330831, 0.644273, 0.689538,
		0.091536, -0.749146, 0.656050,
		47.716423, 34.193859, 35.634609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.037796, 35.334438, 34.993755>,  <47.652348, 34.718262, 35.175373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.037796, 35.334438, 34.993755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766277, 35.123348, 34.789505>,  <47.603367, 34.996693, 34.666954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766277, 35.123348, 34.789505>,  <48.037796, 35.334438, 34.993755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.766277, 35.123348, 34.789505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717715, -0.329708, -0.613333,
		0.155316, -0.782812, 0.602563,
		-0.678795, -0.527729, -0.510626,
		47.562637, 34.965031, 34.636318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.386375, 38.700039, 45.389000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.025501, 38.556519, 45.484768>,  <34.808975, 38.470406, 45.542229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.025501, 38.556519, 45.484768>,  <35.386375, 38.700039, 45.389000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025501, 38.556519, 45.484768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181669, -0.187357, -0.965346,
		0.391226, -0.914417, 0.103847,
		-0.902185, -0.358803, 0.239420,
		34.754845, 38.448879, 45.556595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396572, 37.958210, 45.084198>,  <35.386375, 38.700039, 45.389000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396572, 37.958210, 45.084198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.022926, 38.097450, 45.115829>,  <34.798737, 38.180992, 45.134808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.022926, 38.097450, 45.115829>,  <35.396572, 37.958210, 45.084198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022926, 38.097450, 45.115829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275419, -0.561890, -0.780016,
		-0.227087, -0.750406, 0.620743,
		-0.934118, 0.348096, 0.079078,
		34.742691, 38.201878, 45.139553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983391, 37.404446, 45.054138>,  <35.396572, 37.958210, 45.084198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983391, 37.404446, 45.054138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.750149, 37.708679, 44.939945>,  <34.610203, 37.891220, 44.871429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.750149, 37.708679, 44.939945>,  <34.983391, 37.404446, 45.054138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750149, 37.708679, 44.939945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089166, -0.409203, -0.908076,
		-0.807491, -0.504046, 0.306426,
		-0.583102, 0.760586, -0.285483,
		34.575218, 37.936855, 44.854301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528866, 37.050648, 44.687557>,  <34.983391, 37.404446, 45.054138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528866, 37.050648, 44.687557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.479107, 37.435364, 44.589993>,  <34.449253, 37.666191, 44.531456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.479107, 37.435364, 44.589993>,  <34.528866, 37.050648, 44.687557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479107, 37.435364, 44.589993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179963, -0.263611, -0.947693,
		-0.975776, -0.073994, 0.205878,
		-0.124395, 0.961787, -0.243910,
		34.441788, 37.723900, 44.516819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004635, 37.022667, 44.155609>,  <34.528866, 37.050648, 44.687557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004635, 37.022667, 44.155609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214336, 37.362778, 44.136921>,  <34.340157, 37.566845, 44.125710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214336, 37.362778, 44.136921>,  <34.004635, 37.022667, 44.155609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214336, 37.362778, 44.136921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108798, -0.121291, -0.986637,
		-0.844584, 0.512164, -0.156096,
		0.524253, 0.850280, -0.046718,
		34.371613, 37.617863, 44.122906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706741, 37.307938, 43.522053>,  <34.004635, 37.022667, 44.155609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706741, 37.307938, 43.522053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.050140, 37.507378, 43.570026>,  <34.256180, 37.627041, 43.598812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.050140, 37.507378, 43.570026>,  <33.706741, 37.307938, 43.522053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050140, 37.507378, 43.570026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160138, -0.038465, -0.986345,
		-0.487174, 0.865981, -0.112866,
		0.858497, 0.498595, 0.119937,
		34.307690, 37.656956, 43.606007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720367, 37.845234, 42.972858>,  <33.706741, 37.307938, 43.522053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720367, 37.845234, 42.972858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.095284, 37.788361, 43.100147>,  <34.320232, 37.754238, 43.176521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.095284, 37.788361, 43.100147>,  <33.720367, 37.845234, 42.972858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095284, 37.788361, 43.100147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304170, -0.112097, -0.946000,
		0.170174, 0.983473, -0.061820,
		0.937295, -0.142181, 0.318219,
		34.376472, 37.745705, 43.195614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013405, 37.924618, 42.427986>,  <33.720367, 37.845234, 42.972858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013405, 37.924618, 42.427986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.317608, 37.765797, 42.633503>,  <34.500130, 37.670502, 42.756813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.317608, 37.765797, 42.633503>,  <34.013405, 37.924618, 42.427986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317608, 37.765797, 42.633503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439800, -0.267150, -0.857442,
		0.477711, 0.878053, -0.028544,
		0.760505, -0.397055, 0.513788,
		34.545761, 37.646679, 42.787640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651428, 38.129982, 42.049675>,  <34.013405, 37.924618, 42.427986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651428, 38.129982, 42.049675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.722076, 37.789497, 42.247356>,  <34.764465, 37.585205, 42.365967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.722076, 37.789497, 42.247356>,  <34.651428, 38.129982, 42.049675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722076, 37.789497, 42.247356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425286, -0.386813, -0.818234,
		0.887658, 0.354695, 0.293691,
		0.176620, -0.851215, 0.494205,
		34.775063, 37.534134, 42.395618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360023, 37.946209, 41.964283>,  <34.651428, 38.129982, 42.049675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360023, 37.946209, 41.964283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225449, 37.593357, 42.096134>,  <35.144703, 37.381645, 42.175243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225449, 37.593357, 42.096134>,  <35.360023, 37.946209, 41.964283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225449, 37.593357, 42.096134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596790, -0.470494, -0.649983,
		0.728456, -0.021963, 0.684740,
		-0.336442, -0.882130, 0.329626,
		35.124516, 37.328716, 42.195023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916264, 37.435032, 42.158581>,  <35.360023, 37.946209, 41.964283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916264, 37.435032, 42.158581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.576229, 37.258751, 42.043243>,  <35.372208, 37.152981, 41.974041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.576229, 37.258751, 42.043243>,  <35.916264, 37.435032, 42.158581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576229, 37.258751, 42.043243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477497, -0.414015, -0.774976,
		0.222156, -0.796476, 0.562382,
		-0.850084, -0.440702, -0.288339,
		35.321205, 37.126541, 41.956741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017586, 36.689404, 42.101307>,  <35.916264, 37.435032, 42.158581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017586, 36.689404, 42.101307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.702000, 36.757427, 41.865131>,  <35.512650, 36.798241, 41.723427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.702000, 36.757427, 41.865131>,  <36.017586, 36.689404, 42.101307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702000, 36.757427, 41.865131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480446, -0.428287, -0.765338,
		-0.383024, -0.887498, 0.256202,
		-0.788964, 0.170052, -0.590439,
		35.465309, 36.808445, 41.688000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020802, 36.151749, 41.671513>,  <36.017586, 36.689404, 42.101307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020802, 36.151749, 41.671513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.781498, 36.417995, 41.493057>,  <35.637917, 36.577744, 41.385983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.781498, 36.417995, 41.493057>,  <36.020802, 36.151749, 41.671513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781498, 36.417995, 41.493057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421869, -0.211723, -0.881589,
		-0.681258, -0.715632, -0.154138,
		-0.598259, 0.665616, -0.446141,
		35.602020, 36.617680, 41.359215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715015, 35.696152, 41.084354>,  <36.020802, 36.151749, 41.671513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715015, 35.696152, 41.084354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.688766, 36.080502, 40.976707>,  <35.673016, 36.311111, 40.912121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.688766, 36.080502, 40.976707>,  <35.715015, 35.696152, 41.084354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688766, 36.080502, 40.976707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252050, -0.244986, -0.936190,
		-0.965486, -0.129267, -0.226111,
		-0.065625, 0.960870, -0.269113,
		35.669079, 36.368763, 40.895973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524002, 35.693821, 40.393780>,  <35.715015, 35.696152, 41.084354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524002, 35.693821, 40.393780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646523, 36.072075, 40.437511>,  <35.720036, 36.299026, 40.463749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646523, 36.072075, 40.437511>,  <35.524002, 35.693821, 40.393780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646523, 36.072075, 40.437511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413163, -0.028593, -0.910208,
		-0.857601, 0.323965, -0.399459,
		0.306297, 0.945637, 0.109329,
		35.738411, 36.355766, 40.470310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338749, 35.956139, 39.778736>,  <35.524002, 35.693821, 40.393780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338749, 35.956139, 39.778736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627071, 36.195362, 39.918888>,  <35.800064, 36.338898, 40.002979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627071, 36.195362, 39.918888>,  <35.338749, 35.956139, 39.778736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627071, 36.195362, 39.918888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289325, 0.199759, -0.936156,
		-0.629867, 0.776159, -0.029046,
		0.720804, 0.598058, 0.350383,
		35.843311, 36.374779, 40.024002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251797, 36.630692, 39.409515>,  <35.338749, 35.956139, 39.778736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251797, 36.630692, 39.409515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627636, 36.584457, 39.538383>,  <35.853138, 36.556717, 39.615704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627636, 36.584457, 39.538383>,  <35.251797, 36.630692, 39.409515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627636, 36.584457, 39.538383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341897, 0.272297, -0.899423,
		0.016236, 0.955245, 0.295369,
		0.939597, -0.115589, 0.322174,
		35.909515, 36.549782, 39.635036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612667, 37.009270, 38.915241>,  <35.251797, 36.630692, 39.409515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612667, 37.009270, 38.915241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908260, 36.812431, 39.099300>,  <36.085617, 36.694328, 39.209736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908260, 36.812431, 39.099300>,  <35.612667, 37.009270, 38.915241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908260, 36.812431, 39.099300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490558, -0.075126, -0.868164,
		0.461792, 0.867291, 0.185886,
		0.738986, -0.492099, 0.460150,
		36.129955, 36.664803, 39.237347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216560, 37.354534, 38.670113>,  <35.612667, 37.009270, 38.915241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216560, 37.354534, 38.670113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.309349, 36.988926, 38.803230>,  <36.365021, 36.769562, 38.883102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.309349, 36.988926, 38.803230>,  <36.216560, 37.354534, 38.670113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309349, 36.988926, 38.803230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669751, -0.098033, -0.736086,
		0.705424, 0.393641, 0.589426,
		0.231971, -0.914022, 0.332796,
		36.378941, 36.714718, 38.903069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926556, 37.229321, 38.524086>,  <36.216560, 37.354534, 38.670113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926556, 37.229321, 38.524086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.768448, 36.864651, 38.568993>,  <36.673584, 36.645847, 38.595936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.768448, 36.864651, 38.568993>,  <36.926556, 37.229321, 38.524086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768448, 36.864651, 38.568993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663220, -0.367811, -0.651809,
		0.635532, -0.183184, 0.750028,
		-0.395269, -0.911679, 0.112265,
		36.649868, 36.591148, 38.602673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495609, 36.805492, 38.553574>,  <36.926556, 37.229321, 38.524086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495609, 36.805492, 38.553574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.200024, 36.551968, 38.462177>,  <37.022671, 36.399853, 38.407341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.200024, 36.551968, 38.462177>,  <37.495609, 36.805492, 38.553574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200024, 36.551968, 38.462177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606057, -0.477192, -0.636383,
		0.294317, -0.608742, 0.736757,
		-0.738967, -0.633815, -0.228487,
		36.978333, 36.361824, 38.393631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851387, 36.123096, 38.615841>,  <37.495609, 36.805492, 38.553574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851387, 36.123096, 38.615841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.526825, 36.070522, 38.388035>,  <37.332088, 36.038979, 38.251350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.526825, 36.070522, 38.388035>,  <37.851387, 36.123096, 38.615841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526825, 36.070522, 38.388035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524801, -0.592797, -0.610881,
		-0.257318, -0.794554, 0.549974,
		-0.811401, -0.131436, -0.569520,
		37.283405, 36.031090, 38.217178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211788, 35.612770, 38.288094>,  <37.851387, 36.123096, 38.615841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211788, 35.612770, 38.288094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601788, 35.628380, 38.200592>,  <38.835789, 35.637745, 38.148090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601788, 35.628380, 38.200592>,  <38.211788, 35.612770, 38.288094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601788, 35.628380, 38.200592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154633, 0.587811, 0.794082,
		0.159572, -0.808057, 0.567082,
		0.975000, 0.039024, -0.218750,
		38.894287, 35.640087, 38.134968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594559, 35.294460, 38.862888>,  <38.211788, 35.612770, 38.288094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594559, 35.294460, 38.862888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834435, 35.561607, 38.686562>,  <38.978359, 35.721897, 38.580765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834435, 35.561607, 38.686562>,  <38.594559, 35.294460, 38.862888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834435, 35.561607, 38.686562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118864, 0.470406, 0.874408,
		0.791353, -0.576773, 0.202713,
		0.599693, 0.667871, -0.440815,
		39.014343, 35.761967, 38.554317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053730, 35.411537, 39.292103>,  <38.594559, 35.294460, 38.862888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053730, 35.411537, 39.292103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.159962, 35.705387, 39.042370>,  <39.223701, 35.881699, 38.892529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.159962, 35.705387, 39.042370>,  <39.053730, 35.411537, 39.292103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159962, 35.705387, 39.042370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145883, 0.609511, 0.779240,
		0.952988, -0.298030, 0.054705,
		0.265580, 0.734625, -0.624334,
		39.239635, 35.925774, 38.855068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619606, 35.670830, 39.529381>,  <39.053730, 35.411537, 39.292103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619606, 35.670830, 39.529381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494621, 35.985428, 39.316292>,  <39.419632, 36.174187, 39.188438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494621, 35.985428, 39.316292>,  <39.619606, 35.670830, 39.529381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494621, 35.985428, 39.316292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175985, 0.599016, 0.781158,
		0.933487, 0.150331, -0.325581,
		-0.312460, 0.786498, -0.532718,
		39.400883, 36.221378, 39.156475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140556, 36.261421, 39.693920>,  <39.619606, 35.670830, 39.529381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140556, 36.261421, 39.693920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.793015, 36.415279, 39.569252>,  <39.584492, 36.507595, 39.494450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.793015, 36.415279, 39.569252>,  <40.140556, 36.261421, 39.693920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793015, 36.415279, 39.569252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002019, 0.632303, 0.774718,
		0.495067, 0.672486, -0.550155,
		-0.868852, 0.384649, -0.311675,
		39.532360, 36.530674, 39.475750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197571, 37.045090, 39.537685>,  <40.140556, 36.261421, 39.693920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197571, 37.045090, 39.537685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.821407, 36.943954, 39.628643>,  <39.595711, 36.883274, 39.683220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.821407, 36.943954, 39.628643>,  <40.197571, 37.045090, 39.537685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821407, 36.943954, 39.628643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020471, 0.625410, 0.780028,
		-0.339434, 0.738199, -0.582964,
		-0.940407, -0.252834, 0.227397,
		39.539284, 36.868103, 39.696861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970833, 37.641537, 39.834663>,  <40.197571, 37.045090, 39.537685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970833, 37.641537, 39.834663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.672680, 37.389973, 39.923100>,  <39.493790, 37.239037, 39.976162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.672680, 37.389973, 39.923100>,  <39.970833, 37.641537, 39.834663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672680, 37.389973, 39.923100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367769, 0.664553, 0.650473,
		-0.556017, 0.403538, -0.726638,
		-0.745380, -0.628908, 0.221094,
		39.449066, 37.201302, 39.989429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347538, 38.095261, 39.989746>,  <39.970833, 37.641537, 39.834663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347538, 38.095261, 39.989746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.261795, 37.748276, 40.169331>,  <39.210350, 37.540085, 40.277081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.261795, 37.748276, 40.169331>,  <39.347538, 38.095261, 39.989746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261795, 37.748276, 40.169331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328126, 0.496882, 0.803394,
		-0.919991, 0.024900, -0.391148,
		-0.214358, -0.867461, 0.448957,
		39.197487, 37.488037, 40.304016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694118, 38.161774, 40.196877>,  <39.347538, 38.095261, 39.989746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694118, 38.161774, 40.196877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.833969, 37.863377, 40.423592>,  <38.917877, 37.684338, 40.559620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.833969, 37.863377, 40.423592>,  <38.694118, 38.161774, 40.196877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833969, 37.863377, 40.423592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439650, 0.403585, 0.802388,
		-0.827328, -0.529724, -0.186874,
		0.349624, -0.745997, 0.566790,
		38.938858, 37.639576, 40.593628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083958, 37.856358, 40.574181>,  <38.694118, 38.161774, 40.196877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083958, 37.856358, 40.574181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386471, 37.709850, 40.791023>,  <38.567978, 37.621948, 40.921127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386471, 37.709850, 40.791023>,  <38.083958, 37.856358, 40.574181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386471, 37.709850, 40.791023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500265, 0.210237, 0.839961,
		-0.421621, -0.906448, -0.024231,
		0.756288, -0.366267, 0.542105,
		38.613358, 37.599972, 40.953655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769032, 37.481689, 41.120670>,  <38.083958, 37.856358, 40.574181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769032, 37.481689, 41.120670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.146191, 37.533791, 41.243298>,  <38.372486, 37.565052, 41.316875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.146191, 37.533791, 41.243298>,  <37.769032, 37.481689, 41.120670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146191, 37.533791, 41.243298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332679, 0.322499, 0.886182,
		0.016563, -0.937565, 0.347416,
		0.942894, 0.130256, 0.306566,
		38.429058, 37.572868, 41.335266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746716, 37.080334, 41.732239>,  <37.769032, 37.481689, 41.120670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746716, 37.080334, 41.732239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.069511, 37.310417, 41.785748>,  <38.263191, 37.448467, 41.817852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.069511, 37.310417, 41.785748>,  <37.746716, 37.080334, 41.732239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069511, 37.310417, 41.785748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350456, 0.284122, 0.892443,
		0.475337, -0.767075, 0.430871,
		0.806991, 0.575213, 0.133773,
		38.311607, 37.482983, 41.825878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040539, 37.000866, 42.457844>,  <37.746716, 37.080334, 41.732239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040539, 37.000866, 42.457844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122952, 37.352646, 42.286201>,  <38.172398, 37.563713, 42.183216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122952, 37.352646, 42.286201>,  <38.040539, 37.000866, 42.457844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122952, 37.352646, 42.286201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436850, 0.475048, 0.763866,
		0.875622, 0.030075, 0.482059,
		0.206028, 0.879446, -0.429101,
		38.184761, 37.616478, 42.157471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448811, 37.371155, 43.011932>,  <38.040539, 37.000866, 42.457844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448811, 37.371155, 43.011932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.284393, 37.644260, 42.770309>,  <38.185745, 37.808125, 42.625336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.284393, 37.644260, 42.770309>,  <38.448811, 37.371155, 43.011932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284393, 37.644260, 42.770309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313112, 0.516572, 0.796941,
		0.856159, 0.516711, 0.001450,
		-0.411039, 0.682762, -0.604056,
		38.161083, 37.849091, 42.589092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711224, 37.963116, 43.226135>,  <38.448811, 37.371155, 43.011932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711224, 37.963116, 43.226135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392761, 38.087025, 43.018219>,  <38.201683, 38.161369, 42.893471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392761, 38.087025, 43.018219>,  <38.711224, 37.963116, 43.226135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392761, 38.087025, 43.018219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267922, 0.589761, 0.761840,
		0.542548, 0.745804, -0.386545,
		-0.796153, 0.309771, -0.519791,
		38.153915, 38.179955, 42.862282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693264, 38.624828, 43.389793>,  <38.711224, 37.963116, 43.226135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693264, 38.624828, 43.389793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326469, 38.535233, 43.257759>,  <38.106392, 38.481476, 43.178539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326469, 38.535233, 43.257759>,  <38.693264, 38.624828, 43.389793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326469, 38.535233, 43.257759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398814, 0.532867, 0.746325,
		0.008725, 0.816016, -0.577963,
		-0.916990, -0.223988, -0.330088,
		38.051373, 38.468037, 43.158733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293262, 39.229965, 43.425468>,  <38.693264, 38.624828, 43.389793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293262, 39.229965, 43.425468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.018509, 38.939682, 43.409832>,  <37.853657, 38.765511, 43.400452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.018509, 38.939682, 43.409832>,  <38.293262, 39.229965, 43.425468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018509, 38.939682, 43.409832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585141, 0.520337, 0.621980,
		-0.431041, 0.450101, -0.782057,
		-0.686887, -0.725712, -0.039086,
		37.812443, 38.721970, 43.398106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565174, 39.488369, 43.308281>,  <38.293262, 39.229965, 43.425468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565174, 39.488369, 43.308281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.514996, 39.140961, 43.500084>,  <37.484886, 38.932514, 43.615166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.514996, 39.140961, 43.500084>,  <37.565174, 39.488369, 43.308281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514996, 39.140961, 43.500084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627401, 0.443859, 0.639810,
		-0.768525, -0.220582, -0.600593,
		-0.125448, -0.868523, 0.479511,
		37.477360, 38.880405, 43.643936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.550385, 39.323551, 43.867634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.795727, 39.028755, 43.981216>,  <36.942932, 38.851875, 44.049366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.795727, 39.028755, 43.981216>,  <36.550385, 39.323551, 43.867634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795727, 39.028755, 43.981216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256357, 0.154289, 0.954188,
		-0.747042, -0.658055, -0.094299,
		0.613359, -0.736993, 0.283958,
		36.979736, 38.807659, 44.066402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273941, 39.089161, 44.520000>,  <36.550385, 39.323551, 43.867634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273941, 39.089161, 44.520000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643951, 38.937233, 44.522980>,  <36.865959, 38.846077, 44.524769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643951, 38.937233, 44.522980>,  <36.273941, 39.089161, 44.520000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643951, 38.937233, 44.522980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031120, -0.056220, 0.997933,
		-0.378619, -0.923350, -0.063825,
		0.925030, -0.379822, 0.007449,
		36.921459, 38.823288, 44.525215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294346, 38.421597, 44.921314>,  <36.273941, 39.089161, 44.520000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294346, 38.421597, 44.921314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673691, 38.548473, 44.921974>,  <36.901299, 38.624599, 44.922371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673691, 38.548473, 44.921974>,  <36.294346, 38.421597, 44.921314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673691, 38.548473, 44.921974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006068, 0.012938, 0.999898,
		0.317143, -0.948272, 0.014195,
		0.948358, 0.317197, 0.001650,
		36.958199, 38.643631, 44.922470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701813, 38.070114, 45.477051>,  <36.294346, 38.421597, 44.921314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701813, 38.070114, 45.477051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.908558, 38.401928, 45.392456>,  <37.032604, 38.601017, 45.341702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.908558, 38.401928, 45.392456>,  <36.701813, 38.070114, 45.477051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908558, 38.401928, 45.392456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051847, 0.276922, 0.959493,
		0.854495, -0.484963, 0.186140,
		0.516865, 0.829533, -0.211485,
		37.063618, 38.650787, 45.329010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153076, 38.069946, 46.003311>,  <36.701813, 38.070114, 45.477051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153076, 38.069946, 46.003311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.133259, 38.442123, 45.858082>,  <37.121368, 38.665428, 45.770947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.133259, 38.442123, 45.858082>,  <37.153076, 38.069946, 46.003311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133259, 38.442123, 45.858082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033850, 0.361745, 0.931663,
		0.998198, 0.058446, 0.013575,
		-0.049541, 0.930443, -0.363071,
		37.118397, 38.721256, 45.749161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698570, 38.456600, 46.505131>,  <37.153076, 38.069946, 46.003311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698570, 38.456600, 46.505131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.476818, 38.732586, 46.318962>,  <37.343765, 38.898178, 46.207260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.476818, 38.732586, 46.318962>,  <37.698570, 38.456600, 46.505131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476818, 38.732586, 46.318962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165788, 0.456464, 0.874160,
		0.815584, 0.561778, -0.138667,
		-0.554380, 0.689961, -0.465420,
		37.310505, 38.939575, 46.179337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994179, 39.196045, 46.586475>,  <37.698570, 38.456600, 46.505131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994179, 39.196045, 46.586475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.601551, 39.209198, 46.511177>,  <37.365974, 39.217091, 46.465996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.601551, 39.209198, 46.511177>,  <37.994179, 39.196045, 46.586475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601551, 39.209198, 46.511177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139801, 0.548061, 0.824673,
		0.130286, 0.835792, -0.533364,
		-0.981571, 0.032879, -0.188249,
		37.307079, 39.219063, 46.454700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793980, 39.879200, 46.625191>,  <37.994179, 39.196045, 46.586475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793980, 39.879200, 46.625191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478703, 39.642723, 46.693596>,  <37.289536, 39.500835, 46.734638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478703, 39.642723, 46.693596>,  <37.793980, 39.879200, 46.625191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478703, 39.642723, 46.693596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125093, 0.425976, 0.896045,
		-0.602583, 0.684862, -0.409704,
		-0.788191, -0.591192, 0.171015,
		37.242245, 39.465366, 46.744900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303791, 40.271622, 46.813858>,  <37.793980, 39.879200, 46.625191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303791, 40.271622, 46.813858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.146519, 39.942440, 46.977882>,  <37.052155, 39.744930, 47.076298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.146519, 39.942440, 46.977882>,  <37.303791, 40.271622, 46.813858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146519, 39.942440, 46.977882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056627, 0.466811, 0.882543,
		-0.917716, 0.323778, -0.230143,
		-0.393180, -0.822956, 0.410065,
		37.028564, 39.695553, 47.100903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763561, 40.494938, 47.303455>,  <37.303791, 40.271622, 46.813858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763561, 40.494938, 47.303455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.858681, 40.120453, 47.406960>,  <36.915752, 39.895760, 47.469063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.858681, 40.120453, 47.406960>,  <36.763561, 40.494938, 47.303455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858681, 40.120453, 47.406960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050238, 0.277896, 0.959297,
		-0.970016, -0.215116, 0.113115,
		0.237794, -0.936215, 0.258757,
		36.930019, 39.839588, 47.484585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411011, 40.365356, 47.937489>,  <36.763561, 40.494938, 47.303455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411011, 40.365356, 47.937489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.660831, 40.052967, 47.935917>,  <36.810722, 39.865532, 47.934975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.660831, 40.052967, 47.935917>,  <36.411011, 40.365356, 47.937489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660831, 40.052967, 47.935917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022362, -0.022907, 0.999488,
		-0.780667, -0.624139, -0.031771,
		0.624547, -0.780977, -0.003926,
		36.848194, 39.818672, 47.934738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140068, 39.922634, 48.491417>,  <36.411011, 40.365356, 47.937489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140068, 39.922634, 48.491417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.519653, 39.806412, 48.442352>,  <36.747406, 39.736679, 48.412914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.519653, 39.806412, 48.442352>,  <36.140068, 39.922634, 48.491417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519653, 39.806412, 48.442352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127336, -0.002842, 0.991856,
		-0.288535, -0.956855, 0.034300,
		0.948964, -0.290553, -0.122662,
		36.804344, 39.719246, 48.405552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273178, 39.181850, 48.856258>,  <36.140068, 39.922634, 48.491417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273178, 39.181850, 48.856258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607422, 39.397732, 48.815315>,  <36.807968, 39.527260, 48.790749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607422, 39.397732, 48.815315>,  <36.273178, 39.181850, 48.856258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607422, 39.397732, 48.815315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194076, -0.115741, 0.974135,
		0.513896, -0.833862, -0.201457,
		0.835611, 0.539701, -0.102354,
		36.858105, 39.559643, 48.784611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678329, 38.756016, 49.130550>,  <36.273178, 39.181850, 48.856258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678329, 38.756016, 49.130550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.894646, 39.091549, 49.105526>,  <37.024433, 39.292870, 49.090511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.894646, 39.091549, 49.105526>,  <36.678329, 38.756016, 49.130550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894646, 39.091549, 49.105526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278783, -0.108570, 0.954197,
		0.793617, -0.533459, -0.292565,
		0.540789, 0.838829, -0.062557,
		37.056881, 39.343197, 49.086758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313358, 38.601482, 49.497501>,  <36.678329, 38.756016, 49.130550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313358, 38.601482, 49.497501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299030, 39.000278, 49.469971>,  <37.290432, 39.239555, 49.453453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299030, 39.000278, 49.469971>,  <37.313358, 38.601482, 49.497501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299030, 39.000278, 49.469971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302662, 0.076457, 0.950026,
		0.952424, 0.013202, -0.304489,
		-0.035823, 0.996986, -0.068824,
		37.288284, 39.299374, 49.449322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921162, 38.790737, 49.816288>,  <37.313358, 38.601482, 49.497501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921162, 38.790737, 49.816288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717865, 39.134758, 49.834160>,  <37.595886, 39.341171, 49.844883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717865, 39.134758, 49.834160>,  <37.921162, 38.790737, 49.816288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717865, 39.134758, 49.834160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419753, 0.202077, 0.884857,
		0.751997, 0.468475, -0.463715,
		-0.508240, 0.860056, 0.044683,
		37.565392, 39.392776, 49.847565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435795, 39.438385, 49.846260>,  <37.921162, 38.790737, 49.816288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435795, 39.438385, 49.846260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.090881, 39.558624, 50.009281>,  <37.883934, 39.630768, 50.107094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.090881, 39.558624, 50.009281>,  <38.435795, 39.438385, 49.846260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090881, 39.558624, 50.009281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451950, 0.093697, 0.887109,
		0.228478, 0.949137, -0.216649,
		-0.862287, 0.300599, 0.407555,
		37.832195, 39.648804, 50.131546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579735, 39.941414, 50.270889>,  <38.435795, 39.438385, 49.846260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579735, 39.941414, 50.270889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214409, 39.854328, 50.408554>,  <37.995213, 39.802074, 50.491154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214409, 39.854328, 50.408554>,  <38.579735, 39.941414, 50.270889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214409, 39.854328, 50.408554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349161, 0.016338, 0.936920,
		-0.209606, 0.975875, 0.061096,
		-0.913319, -0.217717, 0.344163,
		37.940414, 39.789013, 50.511803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351227, 40.445366, 50.732628>,  <38.579735, 39.941414, 50.270889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351227, 40.445366, 50.732628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132046, 40.130962, 50.847122>,  <38.000538, 39.942318, 50.915817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132046, 40.130962, 50.847122>,  <38.351227, 40.445366, 50.732628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132046, 40.130962, 50.847122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364314, 0.083784, 0.927500,
		-0.753008, 0.612507, 0.240445,
		-0.547955, -0.786012, 0.286235,
		37.967659, 39.895157, 50.932991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938343, 40.658997, 51.320301>,  <38.351227, 40.445366, 50.732628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938343, 40.658997, 51.320301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926163, 40.260609, 51.354046>,  <37.918854, 40.021576, 51.374290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926163, 40.260609, 51.354046>,  <37.938343, 40.658997, 51.320301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926163, 40.260609, 51.354046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156307, 0.078615, 0.984575,
		-0.987239, 0.043171, 0.153283,
		-0.030455, -0.995970, 0.084360,
		37.917027, 39.961819, 51.379353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404640, 40.429726, 51.812710>,  <37.938343, 40.658997, 51.320301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404640, 40.429726, 51.812710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672787, 40.133308, 51.797398>,  <37.833675, 39.955460, 51.788212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672787, 40.133308, 51.797398>,  <37.404640, 40.429726, 51.812710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672787, 40.133308, 51.797398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113508, 0.051428, 0.992205,
		-0.733295, -0.669488, 0.118590,
		0.670369, -0.741040, -0.038281,
		37.873898, 39.910995, 51.785912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403210, 40.046421, 52.481735>,  <37.404640, 40.429726, 51.812710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403210, 40.046421, 52.481735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746014, 39.967766, 52.291214>,  <37.951698, 39.920574, 52.176903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746014, 39.967766, 52.291214>,  <37.403210, 40.046421, 52.481735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746014, 39.967766, 52.291214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481441, -0.023962, 0.876151,
		-0.183695, -0.980184, 0.074132,
		0.857012, -0.196635, -0.476303,
		38.003117, 39.908775, 52.148323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714054, 40.254299, 52.295734>,  <37.403210, 40.046421, 52.481735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714054, 40.254299, 52.295734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855473, 40.285229, 52.668621>,  <36.940323, 40.303787, 52.892353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855473, 40.285229, 52.668621>,  <36.714054, 40.254299, 52.295734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855473, 40.285229, 52.668621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612383, 0.772466, 0.168174,
		-0.707103, -0.630331, 0.320450,
		0.353542, 0.077322, 0.932217,
		36.961536, 40.308426, 52.948288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220238, 40.178112, 52.923946>,  <36.714054, 40.254299, 52.295734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220238, 40.178112, 52.923946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.487743, 40.466476, 52.996655>,  <36.648247, 40.639496, 53.040279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.487743, 40.466476, 52.996655>,  <36.220238, 40.178112, 52.923946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487743, 40.466476, 52.996655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742856, 0.637967, 0.202889,
		0.030304, -0.270712, 0.962183,
		0.668765, 0.720912, 0.181767,
		36.688374, 40.682751, 53.051186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198540, 39.570480, 53.262798>,  <36.220238, 40.178112, 52.923946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198540, 39.570480, 53.262798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.841518, 39.422173, 53.365459>,  <35.627304, 39.333187, 53.427055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.841518, 39.422173, 53.365459>,  <36.198540, 39.570480, 53.262798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841518, 39.422173, 53.365459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108627, -0.375607, -0.920391,
		0.437654, -0.849381, 0.294975,
		-0.892557, -0.370771, 0.256652,
		35.573750, 39.310940, 53.442455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210438, 38.908802, 53.026211>,  <36.198540, 39.570480, 53.262798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210438, 38.908802, 53.026211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.820324, 38.979820, 53.078815>,  <35.586254, 39.022430, 53.110378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.820324, 38.979820, 53.078815>,  <36.210438, 38.908802, 53.026211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820324, 38.979820, 53.078815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194745, -0.409594, -0.891239,
		-0.104367, -0.894824, 0.434047,
		-0.975286, 0.177544, 0.131515,
		35.527737, 39.033085, 53.118271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668850, 38.292526, 52.856701>,  <36.210438, 38.908802, 53.026211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668850, 38.292526, 52.856701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.468723, 38.637108, 52.821865>,  <35.348648, 38.843857, 52.800964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.468723, 38.637108, 52.821865>,  <35.668850, 38.292526, 52.856701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468723, 38.637108, 52.821865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350672, -0.293571, -0.889295,
		-0.791652, -0.414387, 0.448966,
		-0.500316, 0.861452, -0.087092,
		35.318630, 38.895542, 52.795738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084579, 38.024399, 52.710545>,  <35.668850, 38.292526, 52.856701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084579, 38.024399, 52.710545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.106480, 38.405430, 52.590813>,  <35.119617, 38.634048, 52.518974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.106480, 38.405430, 52.590813>,  <35.084579, 38.024399, 52.710545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106480, 38.405430, 52.590813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211973, -0.281854, -0.935749,
		-0.975741, 0.114680, 0.186490,
		0.054749, 0.952579, -0.299325,
		35.122906, 38.691204, 52.501015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451660, 38.181011, 52.223915>,  <35.084579, 38.024399, 52.710545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451660, 38.181011, 52.223915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723400, 38.467117, 52.158325>,  <34.886444, 38.638779, 52.118973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723400, 38.467117, 52.158325>,  <34.451660, 38.181011, 52.223915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723400, 38.467117, 52.158325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100394, -0.130757, -0.986318,
		-0.726916, 0.686515, -0.017022,
		0.679348, 0.715262, -0.163972,
		34.927204, 38.681694, 52.109135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218082, 38.347324, 51.642284>,  <34.451660, 38.181011, 52.223915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218082, 38.347324, 51.642284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.571857, 38.533985, 51.640839>,  <34.784122, 38.645981, 51.639969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.571857, 38.533985, 51.640839>,  <34.218082, 38.347324, 51.642284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571857, 38.533985, 51.640839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028510, -0.061771, -0.997683,
		-0.465791, 0.882283, -0.067937,
		0.884435, 0.466649, -0.003618,
		34.837189, 38.673981, 51.639751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134258, 38.973492, 51.262924>,  <34.218082, 38.347324, 51.642284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134258, 38.973492, 51.262924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526421, 38.895557, 51.251347>,  <34.761719, 38.848797, 51.244400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526421, 38.895557, 51.251347>,  <34.134258, 38.973492, 51.262924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526421, 38.895557, 51.251347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018209, 0.056692, -0.998226,
		0.196127, 0.979197, 0.052034,
		0.980409, -0.194832, -0.028949,
		34.820545, 38.837109, 51.242661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481155, 39.504005, 50.957214>,  <34.134258, 38.973492, 51.262924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481155, 39.504005, 50.957214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723545, 39.193855, 50.886120>,  <34.868980, 39.007767, 50.843464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723545, 39.193855, 50.886120>,  <34.481155, 39.504005, 50.957214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723545, 39.193855, 50.886120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056845, 0.180654, -0.981903,
		0.793451, 0.605111, 0.065396,
		0.605974, -0.775374, -0.177738,
		34.905338, 38.961243, 50.832798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960033, 39.762066, 50.471535>,  <34.481155, 39.504005, 50.957214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960033, 39.762066, 50.471535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.003460, 39.364838, 50.453545>,  <35.029514, 39.126499, 50.442749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.003460, 39.364838, 50.453545>,  <34.960033, 39.762066, 50.471535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003460, 39.364838, 50.453545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067696, 0.052522, -0.996323,
		0.991782, 0.105122, 0.072929,
		0.108566, -0.993071, -0.044974,
		35.036030, 39.066917, 50.440052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531914, 39.427975, 50.094154>,  <34.960033, 39.762066, 50.471535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531914, 39.427975, 50.094154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226337, 39.170612, 50.074425>,  <35.042992, 39.016197, 50.062588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226337, 39.170612, 50.074425>,  <35.531914, 39.427975, 50.094154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226337, 39.170612, 50.074425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021966, 0.050459, -0.998484,
		0.644916, -0.763863, -0.024415,
		-0.763937, -0.643403, -0.049321,
		34.997158, 38.977592, 50.059628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841896, 38.831715, 49.647579>,  <35.531914, 39.427975, 50.094154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841896, 38.831715, 49.647579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449783, 38.753235, 49.638172>,  <35.214516, 38.706146, 49.632526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449783, 38.753235, 49.638172>,  <35.841896, 38.831715, 49.647579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449783, 38.753235, 49.638172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024013, -0.000130, -0.999712,
		0.196137, -0.980565, 0.004838,
		-0.980282, -0.196197, -0.023521,
		35.155697, 38.694378, 49.631115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842636, 38.384769, 49.186794>,  <35.841896, 38.831715, 49.647579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842636, 38.384769, 49.186794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472702, 38.536880, 49.190052>,  <35.250740, 38.628147, 49.192009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472702, 38.536880, 49.190052>,  <35.842636, 38.384769, 49.186794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472702, 38.536880, 49.190052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015589, -0.016494, -0.999742,
		-0.380049, -0.924724, 0.021182,
		-0.924835, 0.380281, 0.008147,
		35.195251, 38.650967, 49.192497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369686, 37.868050, 48.878323>,  <35.842636, 38.384769, 49.186794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369686, 37.868050, 48.878323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.209316, 38.232357, 48.838799>,  <35.113094, 38.450939, 48.815083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.209316, 38.232357, 48.838799>,  <35.369686, 37.868050, 48.878323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209316, 38.232357, 48.838799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061332, -0.134305, -0.989040,
		-0.914054, -0.390473, 0.109706,
		-0.400928, 0.910765, -0.098814,
		35.089039, 38.505585, 48.809155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913605, 37.707928, 48.365959>,  <35.369686, 37.868050, 48.878323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913605, 37.707928, 48.365959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.903790, 38.107803, 48.364475>,  <34.897900, 38.347729, 48.363586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.903790, 38.107803, 48.364475>,  <34.913605, 37.707928, 48.365959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903790, 38.107803, 48.364475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203020, -0.008616, -0.979137,
		-0.978867, -0.023274, 0.203168,
		-0.024539, 0.999692, -0.003708,
		34.896427, 38.407711, 48.363361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216175, 37.920689, 48.149117>,  <34.913605, 37.707928, 48.365959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216175, 37.920689, 48.149117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.478851, 38.206833, 48.053604>,  <34.636456, 38.378521, 47.996296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.478851, 38.206833, 48.053604>,  <34.216175, 37.920689, 48.149117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478851, 38.206833, 48.053604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356998, 0.015966, -0.933969,
		-0.664312, 0.698573, 0.265867,
		0.656690, 0.715361, -0.238782,
		34.675858, 38.421440, 47.981968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789326, 38.455292, 47.828880>,  <34.216175, 37.920689, 48.149117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789326, 38.455292, 47.828880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.167488, 38.544331, 47.733669>,  <34.394386, 38.597755, 47.676544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.167488, 38.544331, 47.733669>,  <33.789326, 38.455292, 47.828880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167488, 38.544331, 47.733669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233681, -0.046061, -0.971222,
		-0.227159, 0.973821, 0.008471,
		0.945406, 0.222601, -0.238027,
		34.451111, 38.611111, 47.662262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704395, 38.973225, 47.344772>,  <33.789326, 38.455292, 47.828880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704395, 38.973225, 47.344772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.064129, 38.811153, 47.279007>,  <34.279968, 38.713909, 47.239548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.064129, 38.811153, 47.279007>,  <33.704395, 38.973225, 47.344772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064129, 38.811153, 47.279007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176969, 0.006574, -0.984194,
		0.399858, 0.914213, -0.065792,
		0.899331, -0.405181, -0.164416,
		34.333927, 38.689598, 47.229683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138386, 39.411282, 46.890892>,  <33.704395, 38.973225, 47.344772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138386, 39.411282, 46.890892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283218, 39.042408, 46.836529>,  <34.370117, 38.821083, 46.803909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283218, 39.042408, 46.836529>,  <34.138386, 39.411282, 46.890892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283218, 39.042408, 46.836529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026079, 0.135722, -0.990404,
		0.931781, 0.362153, 0.025093,
		0.362083, -0.922185, -0.135908,
		34.391842, 38.765751, 46.795757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479240, 39.529980, 46.340176>,  <34.138386, 39.411282, 46.890892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479240, 39.529980, 46.340176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.468483, 39.130142, 46.344021>,  <34.462029, 38.890240, 46.346329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.468483, 39.130142, 46.344021>,  <34.479240, 39.529980, 46.340176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468483, 39.130142, 46.344021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004389, -0.009732, -0.999943,
		0.999629, -0.026854, 0.004649,
		-0.026898, -0.999592, 0.009611,
		34.460415, 38.830265, 46.346905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975254, 39.363445, 45.880436>,  <34.479240, 39.529980, 46.340176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975254, 39.363445, 45.880436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744511, 39.036991, 45.894054>,  <34.606064, 38.841118, 45.902225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744511, 39.036991, 45.894054>,  <34.975254, 39.363445, 45.880436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744511, 39.036991, 45.894054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097101, 0.027125, -0.994905,
		0.811054, -0.577223, -0.094894,
		-0.576856, -0.816136, 0.034049,
		34.571453, 38.792149, 45.904270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.825520, 42.050961, 39.276836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.529861, 42.134171, 39.020588>,  <45.352467, 42.184097, 38.866837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.529861, 42.134171, 39.020588>,  <45.825520, 42.050961, 39.276836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.529861, 42.134171, 39.020588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331785, -0.940165, 0.077519,
		-0.586165, 0.269846, 0.763933,
		-0.739141, 0.208022, -0.640623,
		45.308121, 42.196579, 38.828400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248249, 41.777901, 39.428307>,  <45.825520, 42.050961, 39.276836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248249, 41.777901, 39.428307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.101955, 41.834000, 39.060268>,  <45.014179, 41.867657, 38.839447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.101955, 41.834000, 39.060268>,  <45.248249, 41.777901, 39.428307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101955, 41.834000, 39.060268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391206, -0.920177, 0.015245,
		-0.844511, 0.365522, 0.391400,
		-0.365729, 0.140244, -0.920094,
		44.992237, 41.876072, 38.784241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556053, 41.440407, 39.396923>,  <45.248249, 41.777901, 39.428307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556053, 41.440407, 39.396923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.678101, 41.488831, 39.019089>,  <44.751328, 41.517887, 38.792389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.678101, 41.488831, 39.019089>,  <44.556053, 41.440407, 39.396923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678101, 41.488831, 39.019089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472835, -0.841729, -0.260613,
		-0.826639, 0.526152, -0.199582,
		0.305116, 0.121064, -0.944589,
		44.769634, 41.525150, 38.735714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958954, 41.439220, 38.990631>,  <44.556053, 41.440407, 39.396923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958954, 41.439220, 38.990631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.269878, 41.331444, 38.763233>,  <44.456432, 41.266777, 38.626793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.269878, 41.331444, 38.763233>,  <43.958954, 41.439220, 38.990631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269878, 41.331444, 38.763233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463258, -0.856537, -0.227458,
		-0.425649, 0.440165, -0.790619,
		0.777313, -0.269443, -0.568494,
		44.503071, 41.250610, 38.592686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683563, 41.115269, 38.328758>,  <43.958954, 41.439220, 38.990631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683563, 41.115269, 38.328758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.062466, 40.987282, 38.336021>,  <44.289806, 40.910492, 38.340378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.062466, 40.987282, 38.336021>,  <43.683563, 41.115269, 38.328758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062466, 40.987282, 38.336021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312384, -0.934501, -0.170656,
		0.071574, 0.155982, -0.985163,
		0.947256, -0.319964, 0.018159,
		44.346642, 40.891293, 38.341469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760674, 40.556797, 37.760166>,  <43.683563, 41.115269, 38.328758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760674, 40.556797, 37.760166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.098724, 40.530396, 37.972355>,  <44.301556, 40.514557, 38.099667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.098724, 40.530396, 37.972355>,  <43.760674, 40.556797, 37.760166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098724, 40.530396, 37.972355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118528, -0.944511, -0.306350,
		0.521253, 0.321781, -0.790413,
		0.845131, -0.066000, 0.530469,
		44.352264, 40.510597, 38.131496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286217, 40.259892, 37.344543>,  <43.760674, 40.556797, 37.760166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286217, 40.259892, 37.344543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.391884, 40.184597, 37.722916>,  <44.455284, 40.139420, 37.949940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.391884, 40.184597, 37.722916>,  <44.286217, 40.259892, 37.344543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391884, 40.184597, 37.722916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094965, -0.970927, -0.219733,
		0.959789, 0.147877, -0.238614,
		0.264170, -0.188238, 0.945929,
		44.471134, 40.128124, 38.006695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646797, 39.739273, 37.163818>,  <44.286217, 40.259892, 37.344543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646797, 39.739273, 37.163818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.612045, 39.723171, 37.561981>,  <44.591194, 39.713509, 37.800877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.612045, 39.723171, 37.561981>,  <44.646797, 39.739273, 37.163818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612045, 39.723171, 37.561981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108353, -0.992874, -0.049609,
		0.990309, -0.112165, 0.081902,
		-0.086882, -0.040254, 0.995405,
		44.585979, 39.711094, 37.860603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272667, 39.362553, 37.528503>,  <44.646797, 39.739273, 37.163818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272667, 39.362553, 37.528503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.939873, 39.320625, 37.746426>,  <44.740196, 39.295467, 37.877178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.939873, 39.320625, 37.746426>,  <45.272667, 39.362553, 37.528503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939873, 39.320625, 37.746426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023593, -0.974417, -0.223507,
		0.554293, -0.198808, 0.808229,
		-0.831987, -0.104819, 0.544803,
		44.690277, 39.289181, 37.909866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315716, 38.660423, 37.934326>,  <45.272667, 39.362553, 37.528503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315716, 38.660423, 37.934326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.929703, 38.758839, 37.970493>,  <44.698093, 38.817890, 37.992195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.929703, 38.758839, 37.970493>,  <45.315716, 38.660423, 37.934326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.929703, 38.758839, 37.970493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260115, -0.941527, -0.214165,
		0.032441, -0.230196, 0.972603,
		-0.965033, 0.246041, 0.090422,
		44.640194, 38.832649, 37.997620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.050510, 38.027779, 38.252899>,  <45.315716, 38.660423, 37.934326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.050510, 38.027779, 38.252899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.726604, 38.209774, 38.104698>,  <44.532261, 38.318970, 38.015778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.726604, 38.209774, 38.104698>,  <45.050510, 38.027779, 38.252899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726604, 38.209774, 38.104698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411591, -0.890487, -0.193972,
		-0.418186, -0.004574, 0.908350,
		-0.809761, 0.454985, -0.370507,
		44.483677, 38.346268, 37.993546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492363, 37.660358, 38.524158>,  <45.050510, 38.027779, 38.252899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492363, 37.660358, 38.524158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339485, 37.852898, 38.208630>,  <44.247761, 37.968422, 38.019314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339485, 37.852898, 38.208630>,  <44.492363, 37.660358, 38.524158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339485, 37.852898, 38.208630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523895, -0.816049, -0.244126,
		-0.761225, 0.319956, 0.564061,
		-0.382192, 0.481344, -0.788820,
		44.224827, 37.997299, 37.971985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769482, 37.528748, 38.548336>,  <44.492363, 37.660358, 38.524158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769482, 37.528748, 38.548336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.840694, 37.614437, 38.164165>,  <43.883423, 37.665852, 37.933662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.840694, 37.614437, 38.164165>,  <43.769482, 37.528748, 38.548336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840694, 37.614437, 38.164165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514344, -0.811816, -0.276416,
		-0.838901, 0.543200, -0.034345,
		0.178031, 0.214220, -0.960424,
		43.894104, 37.678703, 37.876038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165195, 37.453125, 38.188473>,  <43.769482, 37.528748, 38.548336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165195, 37.453125, 38.188473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.440556, 37.452644, 37.898342>,  <43.605770, 37.452354, 37.724262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.440556, 37.452644, 37.898342>,  <43.165195, 37.453125, 38.188473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.440556, 37.452644, 37.898342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415689, -0.820136, -0.393166,
		-0.594396, 0.572167, -0.565082,
		0.688401, -0.001202, -0.725329,
		43.647076, 37.452282, 37.680744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745987, 37.395054, 37.527702>,  <43.165195, 37.453125, 38.188473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745987, 37.395054, 37.527702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.125450, 37.292828, 37.453163>,  <43.353130, 37.231491, 37.408440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.125450, 37.292828, 37.453163>,  <42.745987, 37.395054, 37.527702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125450, 37.292828, 37.453163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311193, -0.859517, -0.405449,
		-0.056549, 0.442624, -0.894923,
		0.948663, -0.255566, -0.186347,
		43.410049, 37.216156, 37.397259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765484, 37.132263, 36.872040>,  <42.745987, 37.395054, 37.527702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765484, 37.132263, 36.872040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.105679, 36.970875, 37.007027>,  <43.309795, 36.874043, 37.088017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.105679, 36.970875, 37.007027>,  <42.765484, 37.132263, 36.872040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105679, 36.970875, 37.007027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228494, -0.861268, -0.453881,
		0.473775, 0.308911, -0.824688,
		0.850487, -0.403474, 0.337463,
		43.360825, 36.849834, 37.108265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092831, 36.773098, 36.298237>,  <42.765484, 37.132263, 36.872040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092831, 36.773098, 36.298237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.271976, 36.628609, 36.625389>,  <43.379463, 36.541916, 36.821682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.271976, 36.628609, 36.625389>,  <43.092831, 36.773098, 36.298237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271976, 36.628609, 36.625389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142963, -0.931920, -0.333297,
		0.882597, 0.032345, -0.469017,
		0.447867, -0.361219, 0.817885,
		43.406338, 36.520245, 36.870754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331139, 36.195889, 35.988583>,  <43.092831, 36.773098, 36.298237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331139, 36.195889, 35.988583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.355293, 36.113060, 36.379166>,  <43.369785, 36.063362, 36.613518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.355293, 36.113060, 36.379166>,  <43.331139, 36.195889, 35.988583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355293, 36.113060, 36.379166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107033, -0.973948, -0.199924,
		0.992420, -0.092440, -0.080980,
		0.060389, -0.207076, 0.976459,
		43.373409, 36.050938, 36.672104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839951, 35.731987, 36.017529>,  <43.331139, 36.195889, 35.988583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839951, 35.731987, 36.017529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.612743, 35.678600, 36.342377>,  <43.476418, 35.646568, 36.537285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.612743, 35.678600, 36.342377>,  <43.839951, 35.731987, 36.017529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612743, 35.678600, 36.342377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079674, -0.973211, -0.215668,
		0.819148, -0.187209, 0.542171,
		-0.568022, -0.133467, 0.812119,
		43.442337, 35.638561, 36.586014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066311, 35.083275, 36.224964>,  <43.839951, 35.731987, 36.017529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066311, 35.083275, 36.224964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725395, 35.114143, 36.431904>,  <43.520847, 35.132664, 36.556068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725395, 35.114143, 36.431904>,  <44.066311, 35.083275, 36.224964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725395, 35.114143, 36.431904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221095, -0.949509, -0.222597,
		0.474054, -0.304100, 0.826315,
		-0.852285, 0.077171, 0.517354,
		43.469711, 35.137295, 36.587109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164135, 34.562241, 36.796455>,  <44.066311, 35.083275, 36.224964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164135, 34.562241, 36.796455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.772736, 34.607906, 36.727741>,  <43.537895, 34.635307, 36.686512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.772736, 34.607906, 36.727741>,  <44.164135, 34.562241, 36.796455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772736, 34.607906, 36.727741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071136, -0.968537, -0.238487,
		-0.193610, -0.221138, 0.955831,
		-0.978496, 0.114168, -0.171787,
		43.479187, 34.642159, 36.676205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503975, 34.529465, 36.225487>,  <44.164135, 34.562241, 36.796455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503975, 34.529465, 36.225487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867561, 34.368507, 36.181919>,  <45.085712, 34.271931, 36.155777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867561, 34.368507, 36.181919>,  <44.503975, 34.529465, 36.225487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867561, 34.368507, 36.181919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270916, 0.371605, 0.887983,
		-0.316846, -0.836652, 0.446791,
		0.908963, -0.402397, -0.108920,
		45.140251, 34.247787, 36.149242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.754936, 34.100456, 36.855991>,  <44.503975, 34.529465, 36.225487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.754936, 34.100456, 36.855991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.095402, 34.220070, 36.683437>,  <45.299683, 34.291836, 36.579906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.095402, 34.220070, 36.683437>,  <44.754936, 34.100456, 36.855991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095402, 34.220070, 36.683437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357873, 0.270606, 0.893700,
		0.383981, -0.915069, 0.123315,
		0.851167, 0.299033, -0.431386,
		45.350754, 34.309780, 36.554020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241280, 33.823486, 37.327435>,  <44.754936, 34.100456, 36.855991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241280, 33.823486, 37.327435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.416336, 34.114784, 37.116486>,  <45.521370, 34.289562, 36.989914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.416336, 34.114784, 37.116486>,  <45.241280, 33.823486, 37.327435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416336, 34.114784, 37.116486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527218, 0.267283, 0.806599,
		0.728362, -0.631043, -0.266971,
		0.437642, 0.728248, -0.527376,
		45.547630, 34.333260, 36.958271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855915, 33.732746, 37.547436>,  <45.241280, 33.823486, 37.327435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855915, 33.732746, 37.547436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.818287, 34.097275, 37.387112>,  <45.795712, 34.315990, 37.290916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.818287, 34.097275, 37.387112>,  <45.855915, 33.732746, 37.547436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818287, 34.097275, 37.387112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451984, 0.397811, 0.798409,
		0.887052, -0.106055, -0.449323,
		-0.094071, 0.911317, -0.400814,
		45.790066, 34.370670, 37.266869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.404373, 34.182228, 37.811596>,  <45.855915, 33.732746, 37.547436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.404373, 34.182228, 37.811596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.150192, 34.454033, 37.664921>,  <45.997684, 34.617115, 37.576916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.150192, 34.454033, 37.664921>,  <46.404373, 34.182228, 37.811596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.150192, 34.454033, 37.664921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416570, 0.701558, 0.578174,
		0.650131, 0.214651, -0.728872,
		-0.635452, 0.679515, -0.366687,
		45.959557, 34.657887, 37.554916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.807461, 34.716099, 37.768356>,  <46.404373, 34.182228, 37.811596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.807461, 34.716099, 37.768356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.446823, 34.885151, 37.731457>,  <46.230438, 34.986580, 37.709316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.446823, 34.885151, 37.731457>,  <46.807461, 34.716099, 37.768356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.446823, 34.885151, 37.731457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282690, 0.737055, 0.613869,
		0.327428, 0.527386, -0.783999,
		-0.901597, 0.422627, -0.092246,
		46.176346, 35.011940, 37.703781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.969212, 35.469509, 37.743229>,  <46.807461, 34.716099, 37.768356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.969212, 35.469509, 37.743229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.583076, 35.446205, 37.844990>,  <46.351395, 35.432224, 37.906048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.583076, 35.446205, 37.844990>,  <46.969212, 35.469509, 37.743229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.583076, 35.446205, 37.844990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142132, 0.700201, 0.699655,
		-0.218895, 0.711565, -0.667653,
		-0.965341, -0.058256, 0.254406,
		46.293472, 35.428730, 37.921310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612297, 36.150352, 37.729542>,  <46.969212, 35.469509, 37.743229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612297, 36.150352, 37.729542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.412971, 35.926334, 37.994278>,  <46.293377, 35.791924, 38.153118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.412971, 35.926334, 37.994278>,  <46.612297, 36.150352, 37.729542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.412971, 35.926334, 37.994278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005221, 0.765292, 0.643662,
		-0.866981, 0.317291, -0.384279,
		-0.498314, -0.560049, 0.661837,
		46.263477, 35.758320, 38.192829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.172955, 36.617672, 38.079205>,  <46.612297, 36.150352, 37.729542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.172955, 36.617672, 38.079205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.157017, 36.306911, 38.330547>,  <46.147453, 36.120453, 38.481354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.157017, 36.306911, 38.330547>,  <46.172955, 36.617672, 38.079205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.157017, 36.306911, 38.330547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198400, 0.610184, 0.767016,
		-0.979311, 0.155226, 0.129827,
		-0.039842, -0.776905, 0.628357,
		46.145065, 36.073841, 38.519054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718090, 36.826691, 38.526718>,  <46.172955, 36.617672, 38.079205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718090, 36.826691, 38.526718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.904453, 36.528400, 38.717220>,  <46.016270, 36.349426, 38.831520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.904453, 36.528400, 38.717220>,  <45.718090, 36.826691, 38.526718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.904453, 36.528400, 38.717220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110926, 0.583223, 0.804703,
		-0.877852, -0.322089, 0.354449,
		0.465908, -0.745728, 0.476256,
		46.044228, 36.304684, 38.860096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367596, 36.740768, 39.179989>,  <45.718090, 36.826691, 38.526718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367596, 36.740768, 39.179989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.747093, 36.618134, 39.210678>,  <45.974792, 36.544552, 39.229092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.747093, 36.618134, 39.210678>,  <45.367596, 36.740768, 39.179989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747093, 36.618134, 39.210678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141162, 0.628289, 0.765066,
		-0.282767, -0.715022, 0.639365,
		0.948745, -0.306589, 0.076726,
		46.031715, 36.526157, 39.233696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434952, 36.667580, 39.925369>,  <45.367596, 36.740768, 39.179989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434952, 36.667580, 39.925369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.792568, 36.707771, 39.750744>,  <46.007137, 36.731888, 39.645969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.792568, 36.707771, 39.750744>,  <45.434952, 36.667580, 39.925369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792568, 36.707771, 39.750744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300587, 0.588026, 0.750915,
		0.332167, -0.802576, 0.495516,
		0.894043, 0.100483, -0.436567,
		46.060780, 36.737915, 39.619774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918640, 36.542198, 40.498577>,  <45.434952, 36.667580, 39.925369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918640, 36.542198, 40.498577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.123718, 36.748798, 40.224243>,  <46.246765, 36.872757, 40.059643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.123718, 36.748798, 40.224243>,  <45.918640, 36.542198, 40.498577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.123718, 36.748798, 40.224243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378427, 0.581087, 0.720507,
		0.770674, -0.628938, 0.102461,
		0.512693, 0.516502, -0.685836,
		46.277527, 36.903748, 40.018494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.462685, 36.703400, 40.833084>,  <45.918640, 36.542198, 40.498577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.462685, 36.703400, 40.833084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.460342, 36.945107, 40.514378>,  <46.458939, 37.090130, 40.323154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.460342, 36.945107, 40.514378>,  <46.462685, 36.703400, 40.833084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.460342, 36.945107, 40.514378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165034, 0.786435, 0.595217,
		0.986270, -0.128007, -0.104330,
		-0.005856, 0.604263, -0.796763,
		46.458584, 37.126385, 40.275349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.123295, 37.179077, 41.017250>,  <46.462685, 36.703400, 40.833084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.123295, 37.179077, 41.017250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.902889, 37.355537, 40.733910>,  <46.770645, 37.461414, 40.563904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.902889, 37.355537, 40.733910>,  <47.123295, 37.179077, 41.017250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.902889, 37.355537, 40.733910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324648, 0.895295, 0.305042,
		0.768757, -0.061883, -0.636540,
		-0.551014, 0.441155, -0.708355,
		46.737587, 37.487885, 40.521404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.469067, 37.738289, 40.872108>,  <47.123295, 37.179077, 41.017250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.469067, 37.738289, 40.872108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.112247, 37.834034, 40.718769>,  <46.898155, 37.891483, 40.626766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.112247, 37.834034, 40.718769>,  <47.469067, 37.738289, 40.872108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.112247, 37.834034, 40.718769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134235, 0.950274, 0.280999,
		0.431545, 0.199206, -0.879822,
		-0.892048, 0.239366, -0.383346,
		46.844631, 37.905846, 40.603764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.517426, 38.351982, 40.641514>,  <47.469067, 37.738289, 40.872108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.517426, 38.351982, 40.641514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.117889, 38.370827, 40.645481>,  <46.878166, 38.382133, 40.647861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.117889, 38.370827, 40.645481>,  <47.517426, 38.351982, 40.641514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.117889, 38.370827, 40.645481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047853, 0.994190, 0.096413,
		-0.005314, 0.096776, -0.995292,
		-0.998840, 0.047115, 0.009914,
		46.818237, 38.384960, 40.648457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.328327, 38.954987, 40.210049>,  <47.517426, 38.351982, 40.641514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.328327, 38.954987, 40.210049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.002846, 38.887318, 40.432495>,  <46.807556, 38.846714, 40.565964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.002846, 38.887318, 40.432495>,  <47.328327, 38.954987, 40.210049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.002846, 38.887318, 40.432495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132305, 0.985502, 0.106211,
		-0.566022, 0.012848, -0.824290,
		-0.813704, -0.169175, 0.556116,
		46.758736, 38.836567, 40.599331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.805763, 39.431934, 39.950394>,  <47.328327, 38.954987, 40.210049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.805763, 39.431934, 39.950394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.675476, 39.315311, 40.310150>,  <46.597301, 39.245338, 40.526005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.675476, 39.315311, 40.310150>,  <46.805763, 39.431934, 39.950394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.675476, 39.315311, 40.310150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250880, 0.943817, 0.215101,
		-0.911573, -0.155576, -0.380566,
		-0.325721, -0.291557, 0.899389,
		46.577759, 39.227844, 40.579967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.081509, 39.746887, 40.044777>,  <46.805763, 39.431934, 39.950394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.081509, 39.746887, 40.044777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.263645, 39.658398, 40.389736>,  <46.372925, 39.605305, 40.596710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.263645, 39.658398, 40.389736>,  <46.081509, 39.746887, 40.044777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.263645, 39.658398, 40.389736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121904, 0.944024, 0.306527,
		-0.881934, -0.244703, 0.402881,
		0.455338, -0.221224, 0.862396,
		46.400246, 39.592030, 40.648457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575680, 40.093513, 40.462032>,  <46.081509, 39.746887, 40.044777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575680, 40.093513, 40.462032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.922520, 40.050735, 40.656643>,  <46.130623, 40.025066, 40.773407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.922520, 40.050735, 40.656643>,  <45.575680, 40.093513, 40.462032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922520, 40.050735, 40.656643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049514, 0.990348, 0.129458,
		-0.495673, -0.088163, 0.864023,
		0.867096, -0.106950, 0.486524,
		46.182648, 40.018650, 40.802601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.235115, 38.474922, 41.873913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951641, 38.195541, 41.834042>,  <38.781559, 38.027912, 41.810120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951641, 38.195541, 41.834042>,  <39.235115, 38.474922, 41.873913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951641, 38.195541, 41.834042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643325, -0.581714, -0.497737,
		0.289662, -0.416862, 0.861581,
		-0.708681, -0.698452, -0.099678,
		38.739037, 37.986008, 41.804138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604321, 37.887341, 41.668316>,  <39.235115, 38.474922, 41.873913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604321, 37.887341, 41.668316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235149, 37.746357, 41.606377>,  <39.013649, 37.661766, 41.569214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235149, 37.746357, 41.606377>,  <39.604321, 37.887341, 41.668316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235149, 37.746357, 41.606377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343005, -0.570211, -0.746463,
		0.174803, -0.742044, 0.647159,
		-0.922926, -0.352462, -0.154850,
		38.958271, 37.640617, 41.559921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629841, 37.195950, 41.671162>,  <39.604321, 37.887341, 41.668316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629841, 37.195950, 41.671162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335644, 37.328457, 41.434750>,  <39.159126, 37.407959, 41.292904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335644, 37.328457, 41.434750>,  <39.629841, 37.195950, 41.671162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335644, 37.328457, 41.434750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379916, -0.520642, -0.764589,
		-0.561000, -0.786888, 0.257072,
		-0.735488, 0.331269, -0.591031,
		39.114998, 37.427837, 41.257439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283325, 36.636143, 41.390110>,  <39.629841, 37.195950, 41.671162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283325, 36.636143, 41.390110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180710, 36.926472, 41.134808>,  <39.119141, 37.100670, 40.981625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180710, 36.926472, 41.134808>,  <39.283325, 36.636143, 41.390110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180710, 36.926472, 41.134808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212928, -0.601691, -0.769825,
		-0.942788, -0.333394, -0.000190,
		-0.256540, 0.725822, -0.638255,
		39.103748, 37.144218, 40.943333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913582, 36.360050, 40.902695>,  <39.283325, 36.636143, 41.390110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913582, 36.360050, 40.902695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005802, 36.694843, 40.704182>,  <39.061134, 36.895721, 40.585072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005802, 36.694843, 40.704182>,  <38.913582, 36.360050, 40.902695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005802, 36.694843, 40.704182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078157, -0.524308, -0.847934,
		-0.969915, 0.156708, -0.186298,
		0.230556, 0.836985, -0.496287,
		39.074970, 36.945938, 40.555294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453266, 36.412697, 40.243179>,  <38.913582, 36.360050, 40.902695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453266, 36.412697, 40.243179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757965, 36.661423, 40.170425>,  <38.940784, 36.810658, 40.126774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757965, 36.661423, 40.170425>,  <38.453266, 36.412697, 40.243179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757965, 36.661423, 40.170425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167292, -0.460009, -0.872012,
		-0.625898, 0.633829, -0.454437,
		0.761751, 0.621815, -0.181884,
		38.986492, 36.847965, 40.115860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225475, 36.716015, 39.644428>,  <38.453266, 36.412697, 40.243179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225475, 36.716015, 39.644428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620293, 36.745319, 39.701538>,  <38.857182, 36.762901, 39.735806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620293, 36.745319, 39.701538>,  <38.225475, 36.716015, 39.644428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620293, 36.745319, 39.701538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160227, -0.499485, -0.851376,
		0.008946, 0.863219, -0.504750,
		0.987040, 0.073258, 0.142779,
		38.916405, 36.767296, 39.744373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380402, 36.889183, 38.981567>,  <38.225475, 36.716015, 39.644428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380402, 36.889183, 38.981567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734715, 36.794460, 39.141228>,  <38.947300, 36.737625, 39.237022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734715, 36.794460, 39.141228>,  <38.380402, 36.889183, 38.981567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734715, 36.794460, 39.141228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244502, -0.492909, -0.835021,
		0.394483, 0.837236, -0.378708,
		0.885778, -0.236806, 0.399149,
		39.000446, 36.723419, 39.260971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870728, 37.135540, 38.478889>,  <38.380402, 36.889183, 38.981567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870728, 37.135540, 38.478889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008217, 36.833435, 38.702114>,  <39.090710, 36.652172, 38.836048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008217, 36.833435, 38.702114>,  <38.870728, 37.135540, 38.478889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008217, 36.833435, 38.702114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179189, -0.530601, -0.828465,
		0.921817, 0.384760, -0.047044,
		0.343722, -0.755263, 0.558062,
		39.111332, 36.606857, 38.869534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568050, 36.993576, 38.197975>,  <38.870728, 37.135540, 38.478889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568050, 36.993576, 38.197975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453476, 36.663486, 38.392689>,  <39.384731, 36.465435, 38.509518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453476, 36.663486, 38.392689>,  <39.568050, 36.993576, 38.197975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453476, 36.663486, 38.392689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188246, -0.546648, -0.815928,
		0.939423, -0.142078, 0.311927,
		-0.286440, -0.825221, 0.486788,
		39.367542, 36.415920, 38.538727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772621, 36.507027, 37.821529>,  <39.568050, 36.993576, 38.197975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772621, 36.507027, 37.821529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564518, 36.249912, 38.046440>,  <39.439655, 36.095642, 38.181389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564518, 36.249912, 38.046440>,  <39.772621, 36.507027, 37.821529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564518, 36.249912, 38.046440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045302, -0.678242, -0.733441,
		0.852809, -0.356103, 0.381978,
		-0.520254, -0.642790, 0.562279,
		39.408443, 36.057076, 38.215122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118877, 35.789959, 37.814056>,  <39.772621, 36.507027, 37.821529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118877, 35.789959, 37.814056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731186, 35.743412, 37.900826>,  <39.498569, 35.715485, 37.952885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731186, 35.743412, 37.900826>,  <40.118877, 35.789959, 37.814056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731186, 35.743412, 37.900826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064386, -0.730689, -0.679668,
		0.237592, -0.672720, 0.700712,
		-0.969229, -0.116368, 0.216920,
		39.440418, 35.708500, 37.965900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199570, 35.575283, 37.076443>,  <40.118877, 35.789959, 37.814056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199570, 35.575283, 37.076443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527264, 35.603779, 36.848835>,  <40.723881, 35.620876, 36.712273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527264, 35.603779, 36.848835>,  <40.199570, 35.575283, 37.076443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527264, 35.603779, 36.848835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231712, 0.866526, 0.442088,
		0.524561, -0.494022, 0.693381,
		0.819235, 0.071237, -0.569017,
		40.773033, 35.625149, 36.678131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435638, 35.089428, 36.451969>,  <40.199570, 35.575283, 37.076443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435638, 35.089428, 36.451969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557896, 34.710186, 36.487019>,  <40.631252, 34.482639, 36.508049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557896, 34.710186, 36.487019>,  <40.435638, 35.089428, 36.451969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557896, 34.710186, 36.487019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443299, -0.060256, 0.894346,
		-0.842655, -0.312194, -0.438711,
		0.305645, -0.948105, 0.087620,
		40.649590, 34.425755, 36.513306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937263, 34.591709, 36.670353>,  <40.435638, 35.089428, 36.451969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937263, 34.591709, 36.670353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274940, 34.448997, 36.830376>,  <40.477547, 34.363369, 36.926388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274940, 34.448997, 36.830376>,  <39.937263, 34.591709, 36.670353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274940, 34.448997, 36.830376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426942, 0.003743, 0.904271,
		-0.324121, -0.934182, -0.149164,
		0.844195, -0.356778, 0.400055,
		40.528198, 34.341965, 36.950394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706230, 34.062950, 36.969501>,  <39.937263, 34.591709, 36.670353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706230, 34.062950, 36.969501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058792, 34.140049, 37.141998>,  <40.270329, 34.186310, 37.245495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058792, 34.140049, 37.141998>,  <39.706230, 34.062950, 36.969501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058792, 34.140049, 37.141998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392081, -0.210593, 0.895501,
		0.263422, -0.958384, -0.110046,
		0.881409, 0.192748, 0.431239,
		40.323215, 34.197872, 37.271370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758175, 33.567421, 37.370953>,  <39.706230, 34.062950, 36.969501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758175, 33.567421, 37.370953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029850, 33.824417, 37.512882>,  <40.192856, 33.978615, 37.598042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029850, 33.824417, 37.512882>,  <39.758175, 33.567421, 37.370953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029850, 33.824417, 37.512882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305646, -0.191941, 0.932598,
		0.667293, -0.741864, 0.066011,
		0.679191, 0.642493, 0.354829,
		40.233608, 34.017166, 37.619331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075443, 33.254276, 37.986267>,  <39.758175, 33.567421, 37.370953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075443, 33.254276, 37.986267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151920, 33.639980, 38.059635>,  <40.197807, 33.871403, 38.103657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151920, 33.639980, 38.059635>,  <40.075443, 33.254276, 37.986267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151920, 33.639980, 38.059635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380015, -0.099578, 0.919605,
		0.905005, -0.245527, 0.347395,
		0.191194, 0.964262, 0.183423,
		40.209278, 33.929260, 38.114662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544827, 33.347000, 38.556557>,  <40.075443, 33.254276, 37.986267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544827, 33.347000, 38.556557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364159, 33.703030, 38.532040>,  <40.255756, 33.916649, 38.517330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364159, 33.703030, 38.532040>,  <40.544827, 33.347000, 38.556557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364159, 33.703030, 38.532040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272018, -0.071953, 0.959598,
		0.849704, 0.450100, 0.274615,
		-0.451674, 0.890075, -0.061297,
		40.228657, 33.970051, 38.513649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655289, 33.609028, 39.161297>,  <40.544827, 33.347000, 38.556557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655289, 33.609028, 39.161297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351353, 33.847561, 39.057732>,  <40.168991, 33.990681, 38.995594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351353, 33.847561, 39.057732>,  <40.655289, 33.609028, 39.161297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351353, 33.847561, 39.057732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275853, 0.064888, 0.959007,
		0.588685, 0.800113, 0.115195,
		-0.759839, 0.596330, -0.258912,
		40.123402, 34.026459, 38.980057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718796, 33.989231, 39.675350>,  <40.655289, 33.609028, 39.161297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718796, 33.989231, 39.675350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355537, 34.022148, 39.511158>,  <40.137581, 34.041897, 39.412643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355537, 34.022148, 39.511158>,  <40.718796, 33.989231, 39.675350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355537, 34.022148, 39.511158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409358, 0.030832, 0.911853,
		0.087693, 0.996131, 0.005686,
		-0.908150, 0.082291, -0.410478,
		40.083092, 34.046837, 39.388016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461189, 34.579185, 39.954861>,  <40.718796, 33.989231, 39.675350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461189, 34.579185, 39.954861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136700, 34.389099, 39.818577>,  <39.942005, 34.275047, 39.736809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136700, 34.389099, 39.818577>,  <40.461189, 34.579185, 39.954861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136700, 34.389099, 39.818577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403141, 0.032497, 0.914561,
		-0.423539, 0.879270, -0.217940,
		-0.811229, -0.475213, -0.340706,
		39.893330, 34.246536, 39.716366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910381, 35.050987, 40.019749>,  <40.461189, 34.579185, 39.954861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910381, 35.050987, 40.019749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743530, 34.689007, 40.053383>,  <39.643421, 34.471817, 40.073563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743530, 34.689007, 40.053383>,  <39.910381, 35.050987, 40.019749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743530, 34.689007, 40.053383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476341, 0.296482, 0.827767,
		-0.774018, 0.305229, -0.554735,
		-0.417128, -0.904949, 0.084089,
		39.618393, 34.417522, 40.078609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126015, 35.122719, 40.078251>,  <39.910381, 35.050987, 40.019749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126015, 35.122719, 40.078251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208195, 34.757011, 40.217915>,  <39.257504, 34.537586, 40.301712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208195, 34.757011, 40.217915>,  <39.126015, 35.122719, 40.078251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208195, 34.757011, 40.217915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592580, 0.167721, 0.787857,
		-0.778870, -0.368769, -0.507317,
		0.205450, -0.914264, 0.349158,
		39.269829, 34.482731, 40.322662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627613, 35.069519, 40.655666>,  <39.126015, 35.122719, 40.078251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627613, 35.069519, 40.655666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853344, 34.741268, 40.691681>,  <38.988781, 34.544319, 40.713291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853344, 34.741268, 40.691681>,  <38.627613, 35.069519, 40.655666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853344, 34.741268, 40.691681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349337, -0.138554, 0.926697,
		-0.747998, -0.554411, -0.364865,
		0.564324, -0.820629, 0.090038,
		39.022640, 34.495079, 40.718693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214645, 34.512066, 40.809406>,  <38.627613, 35.069519, 40.655666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214645, 34.512066, 40.809406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581146, 34.431164, 40.947723>,  <38.801048, 34.382622, 41.030712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581146, 34.431164, 40.947723>,  <38.214645, 34.512066, 40.809406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581146, 34.431164, 40.947723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358601, -0.029354, 0.933029,
		-0.178563, -0.978892, -0.099426,
		0.916253, -0.202259, 0.345791,
		38.856022, 34.370487, 41.051460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098473, 33.987175, 41.359509>,  <38.214645, 34.512066, 40.809406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098473, 33.987175, 41.359509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460938, 34.134918, 41.441921>,  <38.678417, 34.223564, 41.491367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460938, 34.134918, 41.441921>,  <38.098473, 33.987175, 41.359509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460938, 34.134918, 41.441921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188046, -0.084488, 0.978519,
		0.378836, -0.925436, -0.007102,
		0.906158, 0.369363, 0.206032,
		38.732784, 34.245728, 41.503731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433296, 33.491238, 41.852608>,  <38.098473, 33.987175, 41.359509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433296, 33.491238, 41.852608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598145, 33.852615, 41.899845>,  <38.697052, 34.069443, 41.928188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598145, 33.852615, 41.899845>,  <38.433296, 33.491238, 41.852608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598145, 33.852615, 41.899845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189040, -0.042002, 0.981071,
		0.891303, -0.426643, 0.153477,
		0.412121, 0.903444, 0.118089,
		38.721779, 34.123650, 41.935272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362289, 32.771938, 41.853615>,  <38.433296, 33.491238, 41.852608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362289, 32.771938, 41.853615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046875, 32.571934, 41.996838>,  <37.857628, 32.451931, 42.082771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046875, 32.571934, 41.996838>,  <38.362289, 32.771938, 41.853615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046875, 32.571934, 41.996838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361262, -0.094569, -0.927657,
		0.497700, -0.860839, -0.106064,
		-0.788533, -0.500012, 0.358055,
		37.810314, 32.421928, 42.104256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343559, 32.116806, 41.465492>,  <38.362289, 32.771938, 41.853615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343559, 32.116806, 41.465492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975807, 32.190937, 41.604282>,  <37.755157, 32.235416, 41.687557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975807, 32.190937, 41.604282>,  <38.343559, 32.116806, 41.465492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975807, 32.190937, 41.604282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392058, -0.359802, -0.846660,
		-0.032071, -0.914437, 0.403456,
		-0.919381, 0.185331, 0.346973,
		37.699993, 32.246536, 41.708374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957428, 31.886040, 40.893864>,  <38.343559, 32.116806, 41.465492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957428, 31.886040, 40.893864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662605, 32.023846, 41.126434>,  <37.485710, 32.106529, 41.265976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662605, 32.023846, 41.126434>,  <37.957428, 31.886040, 40.893864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662605, 32.023846, 41.126434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646011, -0.106425, -0.755873,
		-0.198534, -0.932728, 0.301004,
		-0.737058, 0.344518, 0.581423,
		37.441486, 32.127201, 41.300861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398113, 31.347040, 40.821617>,  <37.957428, 31.886040, 40.893864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398113, 31.347040, 40.821617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245838, 31.708618, 40.899544>,  <37.154472, 31.925566, 40.946301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245838, 31.708618, 40.899544>,  <37.398113, 31.347040, 40.821617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245838, 31.708618, 40.899544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524026, -0.037309, -0.850885,
		-0.761886, -0.426014, 0.487895,
		-0.380691, 0.903947, 0.194817,
		37.131630, 31.979803, 40.957989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764771, 31.362249, 40.755474>,  <37.398113, 31.347040, 40.821617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764771, 31.362249, 40.755474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792980, 31.760733, 40.735096>,  <36.809906, 31.999823, 40.722870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792980, 31.760733, 40.735096>,  <36.764771, 31.362249, 40.755474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792980, 31.760733, 40.735096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597919, 0.001338, -0.801556,
		-0.798448, 0.086993, 0.595746,
		0.070527, 0.996208, -0.050946,
		36.814137, 32.059593, 40.719810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102840, 31.550173, 40.551472>,  <36.764771, 31.362249, 40.755474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102840, 31.550173, 40.551472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332664, 31.856529, 40.436028>,  <36.470558, 32.040344, 40.366760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332664, 31.856529, 40.436028>,  <36.102840, 31.550173, 40.551472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332664, 31.856529, 40.436028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532619, 0.082138, -0.842360,
		-0.621452, 0.637701, 0.455121,
		0.574556, 0.765892, -0.288607,
		36.505032, 32.086296, 40.349445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646534, 32.049549, 40.081852>,  <36.102840, 31.550173, 40.551472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646534, 32.049549, 40.081852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015808, 32.180500, 40.001293>,  <36.237373, 32.259071, 39.952957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015808, 32.180500, 40.001293>,  <35.646534, 32.049549, 40.081852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015808, 32.180500, 40.001293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308799, 0.319723, -0.895779,
		-0.228867, 0.889158, 0.396256,
		0.923181, 0.327377, -0.201397,
		36.292763, 32.278713, 39.940876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591385, 32.728500, 39.698090>,  <35.646534, 32.049549, 40.081852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591385, 32.728500, 39.698090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934162, 32.564526, 39.573124>,  <36.139828, 32.466141, 39.498146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934162, 32.564526, 39.573124>,  <35.591385, 32.728500, 39.698090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934162, 32.564526, 39.573124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177581, 0.334193, -0.925624,
		0.483857, 0.848684, 0.213586,
		0.856941, -0.409941, -0.312411,
		36.191246, 32.441544, 39.479401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893150, 33.264744, 39.237228>,  <35.591385, 32.728500, 39.698090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893150, 33.264744, 39.237228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036415, 32.899906, 39.157421>,  <36.122375, 32.681004, 39.109535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036415, 32.899906, 39.157421>,  <35.893150, 33.264744, 39.237228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036415, 32.899906, 39.157421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037742, 0.227664, -0.973008,
		0.932896, 0.340965, 0.115965,
		0.358162, -0.912092, -0.199518,
		36.143864, 32.626278, 39.097565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357460, 33.446411, 38.736973>,  <35.893150, 33.264744, 39.237228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357460, 33.446411, 38.736973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296535, 33.054821, 38.682697>,  <36.259979, 32.819866, 38.650131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296535, 33.054821, 38.682697>,  <36.357460, 33.446411, 38.736973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296535, 33.054821, 38.682697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060040, 0.127869, -0.989972,
		0.986507, -0.158929, 0.039302,
		-0.152310, -0.978974, -0.135686,
		36.250843, 32.761127, 38.641991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809128, 33.215210, 38.171009>,  <36.357460, 33.446411, 38.736973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809128, 33.215210, 38.171009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519024, 32.940205, 38.185539>,  <36.344959, 32.775200, 38.194256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519024, 32.940205, 38.185539>,  <36.809128, 33.215210, 38.171009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519024, 32.940205, 38.185539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153843, 0.110412, -0.981907,
		0.671065, -0.717728, -0.185847,
		-0.725262, -0.687515, 0.036323,
		36.301445, 32.733952, 38.196438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925194, 32.599823, 37.728691>,  <36.809128, 33.215210, 38.171009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925194, 32.599823, 37.728691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531734, 32.655102, 37.774872>,  <36.295658, 32.688271, 37.802582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531734, 32.655102, 37.774872>,  <36.925194, 32.599823, 37.728691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531734, 32.655102, 37.774872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115838, 0.005303, -0.993254,
		-0.137880, -0.990390, 0.010792,
		-0.983652, 0.138201, 0.115456,
		36.236637, 32.696560, 37.809509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.763008, 31.677738, 46.111511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.395065, 31.808760, 46.025181>,  <38.174301, 31.887373, 45.973385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.395065, 31.808760, 46.025181>,  <38.763008, 31.677738, 46.111511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395065, 31.808760, 46.025181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079003, -0.384224, -0.919854,
		-0.384224, -0.863181, 0.327552,
		0.919854, -0.327552, 0.215822,
		38.119110, 31.907024, 45.960434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535213, 31.181677, 45.534653>,  <38.763008, 31.677738, 46.111511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535213, 31.181677, 45.534653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.275463, 31.483650, 45.498009>,  <38.119614, 31.664833, 45.476021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.275463, 31.483650, 45.498009>,  <38.535213, 31.181677, 45.534653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275463, 31.483650, 45.498009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085874, -0.192490, -0.977534,
		-0.755606, -0.626917, 0.189827,
		-0.649373, 0.754932, -0.091611,
		38.080650, 31.710131, 45.470524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070076, 30.982883, 44.925407>,  <38.535213, 31.181677, 45.534653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070076, 30.982883, 44.925407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.979702, 31.368187, 44.983486>,  <37.925476, 31.599369, 45.018333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.979702, 31.368187, 44.983486>,  <38.070076, 30.982883, 44.925407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979702, 31.368187, 44.983486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033434, 0.141296, -0.989403,
		-0.973568, -0.228396, 0.000282,
		-0.225936, 0.963260, 0.145198,
		37.911922, 31.657166, 45.027046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527092, 31.088640, 44.541271>,  <38.070076, 30.982883, 44.925407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527092, 31.088640, 44.541271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.676861, 31.458843, 44.564060>,  <37.766724, 31.680965, 44.577732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.676861, 31.458843, 44.564060>,  <37.527092, 31.088640, 44.541271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676861, 31.458843, 44.564060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110005, 0.105343, -0.988333,
		-0.920709, 0.363788, 0.141254,
		0.374424, 0.925506, 0.056972,
		37.789188, 31.736494, 44.581150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070316, 31.496458, 44.108524>,  <37.527092, 31.088640, 44.541271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070316, 31.496458, 44.108524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.429768, 31.669170, 44.139618>,  <37.645439, 31.772797, 44.158276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.429768, 31.669170, 44.139618>,  <37.070316, 31.496458, 44.108524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429768, 31.669170, 44.139618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047421, 0.271745, -0.961200,
		-0.436150, 0.860071, 0.264672,
		0.898624, 0.431779, 0.077736,
		37.699356, 31.798704, 44.162937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011200, 32.155991, 43.708748>,  <37.070316, 31.496458, 44.108524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011200, 32.155991, 43.708748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.409611, 32.127827, 43.730534>,  <37.648659, 32.110928, 43.743607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.409611, 32.127827, 43.730534>,  <37.011200, 32.155991, 43.708748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409611, 32.127827, 43.730534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067148, 0.192575, -0.978982,
		0.058437, 0.978753, 0.196538,
		0.996030, -0.070406, 0.054468,
		37.708420, 32.106705, 43.746876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379501, 32.809006, 43.573555>,  <37.011200, 32.155991, 43.708748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379501, 32.809006, 43.573555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634102, 32.521881, 43.460690>,  <37.786861, 32.349606, 43.392971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634102, 32.521881, 43.460690>,  <37.379501, 32.809006, 43.573555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634102, 32.521881, 43.460690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118778, 0.270254, -0.955434,
		0.762076, 0.641649, 0.086757,
		0.636500, -0.717808, -0.282168,
		37.825050, 32.306538, 43.376038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725445, 33.107208, 43.092545>,  <37.379501, 32.809006, 43.573555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725445, 33.107208, 43.092545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.760166, 32.713806, 43.029060>,  <37.780998, 32.477764, 42.990971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.760166, 32.713806, 43.029060>,  <37.725445, 33.107208, 43.092545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760166, 32.713806, 43.029060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049346, 0.154867, -0.986702,
		0.995003, 0.093478, -0.035089,
		0.086801, -0.983503, -0.158706,
		37.786205, 32.418755, 42.981449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084251, 33.146690, 42.524761>,  <37.725445, 33.107208, 43.092545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084251, 33.146690, 42.524761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.945889, 32.771751, 42.541420>,  <37.862869, 32.546787, 42.551414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.945889, 32.771751, 42.541420>,  <38.084251, 33.146690, 42.524761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945889, 32.771751, 42.541420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290330, 0.064723, -0.954735,
		0.892220, -0.342341, -0.294528,
		-0.345908, -0.937344, 0.041645,
		37.842117, 32.490547, 42.553913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852589, 33.473946, 42.495609>,  <38.084251, 33.146690, 42.524761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852589, 33.473946, 42.495609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.798283, 33.868172, 42.455139>,  <38.765697, 34.104706, 42.430859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.798283, 33.868172, 42.455139>,  <38.852589, 33.473946, 42.495609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798283, 33.868172, 42.455139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025296, 0.098635, 0.994802,
		0.990418, 0.137620, 0.011540,
		-0.135766, 0.985562, -0.101171,
		38.757553, 34.163841, 42.424789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185684, 33.676384, 42.981956>,  <38.852589, 33.473946, 42.495609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185684, 33.676384, 42.981956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.014187, 34.021599, 42.875114>,  <38.911289, 34.228729, 42.811008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.014187, 34.021599, 42.875114>,  <39.185684, 33.676384, 42.981956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014187, 34.021599, 42.875114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151382, 0.222846, 0.963028,
		0.890652, 0.453329, 0.035104,
		-0.428746, 0.863037, -0.267104,
		38.885563, 34.280510, 42.794983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485054, 34.181297, 43.424149>,  <39.185684, 33.676384, 42.981956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485054, 34.181297, 43.424149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.132439, 34.338951, 43.320187>,  <38.920872, 34.433544, 43.257809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.132439, 34.338951, 43.320187>,  <39.485054, 34.181297, 43.424149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132439, 34.338951, 43.320187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144803, 0.298267, 0.943435,
		0.449363, 0.869307, -0.205861,
		-0.881536, 0.394135, -0.259908,
		38.867977, 34.457191, 43.242214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479240, 34.901657, 43.593372>,  <39.485054, 34.181297, 43.424149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479240, 34.901657, 43.593372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.087780, 34.819836, 43.585434>,  <38.852901, 34.770744, 43.580673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.087780, 34.819836, 43.585434>,  <39.479240, 34.901657, 43.593372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087780, 34.819836, 43.585434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116521, 0.472747, 0.873460,
		-0.169288, 0.857128, -0.486491,
		-0.978654, -0.204553, -0.019843,
		38.794182, 34.758469, 43.579479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171764, 35.537807, 43.639393>,  <39.479240, 34.901657, 43.593372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171764, 35.537807, 43.639393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.901356, 35.274540, 43.771946>,  <38.739113, 35.116581, 43.851479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.901356, 35.274540, 43.771946>,  <39.171764, 35.537807, 43.639393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901356, 35.274540, 43.771946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119943, 0.541989, 0.831782,
		-0.727057, 0.522554, -0.445338,
		-0.676019, -0.658168, 0.331381,
		38.698551, 35.077091, 43.871361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765854, 35.966030, 43.872345>,  <39.171764, 35.537807, 43.639393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765854, 35.966030, 43.872345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.686363, 35.627251, 44.069599>,  <38.638668, 35.423981, 44.187950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.686363, 35.627251, 44.069599>,  <38.765854, 35.966030, 43.872345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686363, 35.627251, 44.069599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159399, 0.524402, 0.836417,
		-0.967005, 0.087613, -0.239216,
		-0.198727, -0.846951, 0.493135,
		38.626743, 35.373165, 44.217541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240276, 36.185024, 44.369080>,  <38.765854, 35.966030, 43.872345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240276, 36.185024, 44.369080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.361610, 35.831165, 44.510723>,  <38.434410, 35.618851, 44.595711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.361610, 35.831165, 44.510723>,  <38.240276, 36.185024, 44.369080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361610, 35.831165, 44.510723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138390, 0.326777, 0.934915,
		-0.942780, -0.332601, -0.023301,
		0.303339, -0.884643, 0.354107,
		38.452614, 35.565773, 44.616955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765324, 36.046146, 44.938671>,  <38.240276, 36.185024, 44.369080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765324, 36.046146, 44.938671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.065216, 35.788601, 44.999775>,  <38.245152, 35.634071, 45.036438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.065216, 35.788601, 44.999775>,  <37.765324, 36.046146, 44.938671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065216, 35.788601, 44.999775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025720, 0.202323, 0.978981,
		-0.661242, -0.737902, 0.135127,
		0.749731, -0.643868, 0.152763,
		38.290134, 35.595440, 45.045605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544647, 35.533966, 45.478405>,  <37.765324, 36.046146, 44.938671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544647, 35.533966, 45.478405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944221, 35.546028, 45.464401>,  <38.183964, 35.553265, 45.456001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944221, 35.546028, 45.464401>,  <37.544647, 35.533966, 45.478405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944221, 35.546028, 45.464401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036207, -0.040188, 0.998536,
		0.028711, -0.998737, -0.041237,
		0.998932, 0.030162, -0.035007,
		38.243900, 35.555077, 45.453899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720303, 35.006859, 45.916454>,  <37.544647, 35.533966, 45.478405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720303, 35.006859, 45.916454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.053192, 35.224644, 45.874565>,  <38.252926, 35.355316, 45.849430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.053192, 35.224644, 45.874565>,  <37.720303, 35.006859, 45.916454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053192, 35.224644, 45.874565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142983, -0.028265, 0.989321,
		0.535689, -0.838309, -0.101372,
		0.832222, 0.544463, -0.104722,
		38.302860, 35.387981, 45.843147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238300, 34.790226, 46.386314>,  <37.720303, 35.006859, 45.916454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238300, 34.790226, 46.386314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.319241, 35.174221, 46.308884>,  <38.367805, 35.404617, 46.262424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.319241, 35.174221, 46.308884>,  <38.238300, 34.790226, 46.386314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319241, 35.174221, 46.308884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173037, 0.159503, 0.971914,
		0.963904, -0.230167, -0.133837,
		0.202355, 0.959991, -0.193573,
		38.379948, 35.462219, 46.250813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760830, 34.901852, 46.863392>,  <38.238300, 34.790226, 46.386314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760830, 34.901852, 46.863392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.655464, 35.271519, 46.752739>,  <38.592247, 35.493320, 46.686348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.655464, 35.271519, 46.752739>,  <38.760830, 34.901852, 46.863392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655464, 35.271519, 46.752739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263014, 0.344694, 0.901116,
		0.928137, 0.164607, -0.333866,
		-0.263412, 0.924170, -0.276629,
		38.576439, 35.548771, 46.669750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365967, 35.405670, 46.856209>,  <38.760830, 34.901852, 46.863392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365967, 35.405670, 46.856209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.031433, 35.621906, 46.892662>,  <38.830715, 35.751648, 46.914536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.031433, 35.621906, 46.892662>,  <39.365967, 35.405670, 46.856209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031433, 35.621906, 46.892662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298087, 0.308899, 0.903175,
		0.460100, 0.782521, -0.419486,
		-0.836332, 0.540595, 0.091135,
		38.780533, 35.784084, 46.920002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619347, 36.040092, 47.100460>,  <39.365967, 35.405670, 46.856209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619347, 36.040092, 47.100460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.228390, 36.045609, 47.184849>,  <38.993816, 36.048920, 47.235481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.228390, 36.045609, 47.184849>,  <39.619347, 36.040092, 47.100460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228390, 36.045609, 47.184849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193530, 0.460146, 0.866494,
		-0.085130, 0.887736, -0.452412,
		-0.977394, 0.013791, 0.210976,
		38.935173, 36.049747, 47.248142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.334713, 36.233067, 47.539894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.709072, 36.094582, 47.565929>,  <33.933689, 36.011490, 47.581551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.709072, 36.094582, 47.565929>,  <33.334713, 36.233067, 47.539894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709072, 36.094582, 47.565929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078065, 0.023663, -0.996667,
		0.343517, 0.937858, 0.049173,
		0.935896, -0.346211, 0.065085,
		33.989841, 35.990719, 47.585457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670181, 36.667736, 47.059933>,  <33.334713, 36.233067, 47.539894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670181, 36.667736, 47.059933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919922, 36.362194, 47.125298>,  <34.069767, 36.178867, 47.164516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919922, 36.362194, 47.125298>,  <33.670181, 36.667736, 47.059933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919922, 36.362194, 47.125298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202188, -0.044044, -0.978356,
		0.754524, 0.643878, 0.126945,
		0.624351, -0.763859, 0.163416,
		34.107227, 36.133038, 47.174324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075577, 36.700005, 46.459831>,  <33.670181, 36.667736, 47.059933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075577, 36.700005, 46.459831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.192230, 36.355145, 46.625553>,  <34.262222, 36.148228, 46.724987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.192230, 36.355145, 46.625553>,  <34.075577, 36.700005, 46.459831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192230, 36.355145, 46.625553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448009, -0.259570, -0.855518,
		0.845124, 0.435114, 0.310550,
		0.291638, -0.862148, 0.414304,
		34.279720, 36.096500, 46.749844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800255, 36.660004, 46.272957>,  <34.075577, 36.700005, 46.459831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800255, 36.660004, 46.272957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.634785, 36.302731, 46.343494>,  <34.535503, 36.088367, 46.385818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.634785, 36.302731, 46.343494>,  <34.800255, 36.660004, 46.272957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634785, 36.302731, 46.343494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166522, -0.264659, -0.949856,
		0.895068, -0.363561, 0.258216,
		-0.413670, -0.893184, 0.176347,
		34.510685, 36.034775, 46.396400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247734, 36.232075, 45.987011>,  <34.800255, 36.660004, 46.272957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247734, 36.232075, 45.987011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.893967, 36.045643, 45.996647>,  <34.681705, 35.933784, 46.002430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.893967, 36.045643, 45.996647>,  <35.247734, 36.232075, 45.987011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893967, 36.045643, 45.996647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060910, -0.166447, -0.984167,
		0.462711, -0.868945, 0.175597,
		-0.884414, -0.466080, 0.024089,
		34.628643, 35.905819, 46.003872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366493, 35.666595, 45.429832>,  <35.247734, 36.232075, 45.987011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366493, 35.666595, 45.429832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.974987, 35.658260, 45.511395>,  <34.740082, 35.653259, 45.560333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.974987, 35.658260, 45.511395>,  <35.366493, 35.666595, 45.429832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974987, 35.658260, 45.511395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192396, -0.249628, -0.949036,
		0.070677, -0.968117, 0.240319,
		-0.978769, -0.020839, 0.203905,
		34.681355, 35.652008, 45.572567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230099, 34.929939, 45.252907>,  <35.366493, 35.666595, 45.429832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230099, 34.929939, 45.252907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.889782, 35.138523, 45.226856>,  <34.685593, 35.263672, 45.211224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.889782, 35.138523, 45.226856>,  <35.230099, 34.929939, 45.252907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889782, 35.138523, 45.226856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150042, -0.359817, -0.920880,
		-0.503634, -0.773701, 0.384368,
		-0.850788, 0.521458, -0.065129,
		34.634544, 35.294960, 45.207317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652210, 34.514648, 44.985764>,  <35.230099, 34.929939, 45.252907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652210, 34.514648, 44.985764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.515079, 34.885872, 44.927559>,  <34.432800, 35.108608, 44.892635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.515079, 34.885872, 44.927559>,  <34.652210, 34.514648, 44.985764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515079, 34.885872, 44.927559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333329, -0.264995, -0.904803,
		-0.878273, -0.261687, 0.400197,
		-0.342825, 0.928061, -0.145510,
		34.412231, 35.164291, 44.883907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962162, 34.390343, 44.689396>,  <34.652210, 34.514648, 44.985764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962162, 34.390343, 44.689396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.075195, 34.762112, 44.594471>,  <34.143017, 34.985172, 44.537514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.075195, 34.762112, 44.594471>,  <33.962162, 34.390343, 44.689396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075195, 34.762112, 44.594471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177149, -0.192580, -0.965159,
		-0.942744, 0.314777, 0.110227,
		0.282582, 0.929424, -0.237316,
		34.159969, 35.040939, 44.523277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658386, 34.421810, 44.171883>,  <33.962162, 34.390343, 44.689396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658386, 34.421810, 44.171883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898846, 34.740360, 44.145344>,  <34.043121, 34.931492, 44.129421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898846, 34.740360, 44.145344>,  <33.658386, 34.421810, 44.171883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898846, 34.740360, 44.145344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271620, 0.125534, -0.954182,
		-0.751562, 0.591626, 0.291777,
		0.601147, 0.796379, -0.066351,
		34.079189, 34.979275, 44.125439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212379, 35.047611, 44.061794>,  <33.658386, 34.421810, 44.171883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212379, 35.047611, 44.061794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586899, 35.060970, 43.921947>,  <33.811611, 35.068985, 43.838039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586899, 35.060970, 43.921947>,  <33.212379, 35.047611, 44.061794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586899, 35.060970, 43.921947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351143, 0.108317, -0.930035,
		0.006811, 0.993555, 0.113143,
		0.936297, 0.033395, -0.349618,
		33.867786, 35.070988, 43.817062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097042, 35.099636, 43.413982>,  <33.212379, 35.047611, 44.061794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097042, 35.099636, 43.413982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.491844, 35.117180, 43.352142>,  <33.728725, 35.127705, 43.315037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.491844, 35.117180, 43.352142>,  <33.097042, 35.099636, 43.413982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491844, 35.117180, 43.352142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160181, 0.191149, -0.968403,
		-0.012923, 0.980581, 0.195690,
		0.987003, 0.043861, -0.154600,
		33.787945, 35.130337, 43.305763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228382, 35.819164, 42.983631>,  <33.097042, 35.099636, 43.413982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228382, 35.819164, 42.983631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.497070, 35.525024, 42.947735>,  <33.658283, 35.348541, 42.926197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.497070, 35.525024, 42.947735>,  <33.228382, 35.819164, 42.983631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497070, 35.525024, 42.947735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120847, 0.010745, -0.992613,
		0.730885, 0.677600, -0.081648,
		0.671717, -0.735353, -0.089739,
		33.698586, 35.304420, 42.920815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841667, 36.061180, 42.536873>,  <33.228382, 35.819164, 42.983631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841667, 36.061180, 42.536873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.802700, 35.663219, 42.526424>,  <33.779320, 35.424442, 42.520153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.802700, 35.663219, 42.526424>,  <33.841667, 36.061180, 42.536873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802700, 35.663219, 42.526424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009090, 0.027138, -0.999590,
		0.995203, -0.097136, -0.011687,
		-0.097413, -0.994901, -0.026125,
		33.773476, 35.364750, 42.518585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555878, 36.191811, 42.450020>,  <33.841667, 36.061180, 42.536873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555878, 36.191811, 42.450020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.740486, 36.540428, 42.383797>,  <34.851250, 36.749599, 42.344063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.740486, 36.540428, 42.383797>,  <34.555878, 36.191811, 42.450020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740486, 36.540428, 42.383797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323545, 0.339126, 0.883353,
		0.826026, -0.354120, 0.438497,
		0.461518, 0.871546, -0.165553,
		34.878941, 36.801891, 42.334129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016666, 36.384705, 42.973137>,  <34.555878, 36.191811, 42.450020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016666, 36.384705, 42.973137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.950245, 36.744740, 42.812004>,  <34.910393, 36.960758, 42.715324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.950245, 36.744740, 42.812004>,  <35.016666, 36.384705, 42.973137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950245, 36.744740, 42.812004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174040, 0.375341, 0.910400,
		0.970638, 0.221281, 0.094326,
		-0.166050, 0.900085, -0.402832,
		34.900429, 37.014767, 42.691154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406303, 36.884384, 43.372841>,  <35.016666, 36.384705, 42.973137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406303, 36.884384, 43.372841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.140114, 37.125813, 43.197186>,  <34.980400, 37.270668, 43.091793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.140114, 37.125813, 43.197186>,  <35.406303, 36.884384, 43.372841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140114, 37.125813, 43.197186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051436, 0.549846, 0.833680,
		0.744643, 0.577383, -0.334865,
		-0.665478, 0.603571, -0.439138,
		34.940472, 37.306885, 43.065445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601349, 37.633480, 43.449581>,  <35.406303, 36.884384, 43.372841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601349, 37.633480, 43.449581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.211395, 37.674171, 43.370323>,  <34.977425, 37.698586, 43.322769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.211395, 37.674171, 43.370323>,  <35.601349, 37.633480, 43.449581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211395, 37.674171, 43.370323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104542, 0.576546, 0.810349,
		0.196676, 0.810707, -0.551428,
		-0.974879, 0.101729, -0.198145,
		34.918930, 37.704689, 43.310879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470814, 38.231415, 43.739426>,  <35.601349, 37.633480, 43.449581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470814, 38.231415, 43.739426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106564, 38.070744, 43.700607>,  <34.888012, 37.974342, 43.677315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106564, 38.070744, 43.700607>,  <35.470814, 38.231415, 43.739426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106564, 38.070744, 43.700607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307308, 0.501256, 0.808891,
		-0.276265, 0.766420, -0.579894,
		-0.910626, -0.401674, -0.097048,
		34.833374, 37.950241, 43.671494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996185, 38.733265, 43.970947>,  <35.470814, 38.231415, 43.739426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996185, 38.733265, 43.970947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.776447, 38.403732, 44.026852>,  <34.644604, 38.206013, 44.060394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.776447, 38.403732, 44.026852>,  <34.996185, 38.733265, 43.970947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776447, 38.403732, 44.026852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351358, 0.379490, 0.855883,
		-0.758137, 0.421065, -0.497928,
		-0.549341, -0.823827, 0.139761,
		34.611645, 38.156586, 44.068779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262253, 38.955982, 44.191242>,  <34.996185, 38.733265, 43.970947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262253, 38.955982, 44.191242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.304787, 38.570381, 44.288727>,  <34.330307, 38.339020, 44.347218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.304787, 38.570381, 44.288727>,  <34.262253, 38.955982, 44.191242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304787, 38.570381, 44.288727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241328, 0.212756, 0.946835,
		-0.964601, -0.159494, -0.210018,
		0.106332, -0.964000, 0.243715,
		34.336685, 38.281181, 44.361843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686626, 38.814892, 44.601135>,  <34.262253, 38.955982, 44.191242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686626, 38.814892, 44.601135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.969177, 38.546494, 44.691288>,  <34.138710, 38.385456, 44.745380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.969177, 38.546494, 44.691288>,  <33.686626, 38.814892, 44.601135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969177, 38.546494, 44.691288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210409, 0.104968, 0.971962,
		-0.675838, -0.733995, -0.067036,
		0.706379, -0.670994, 0.225380,
		34.181091, 38.345196, 44.758904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502628, 38.569088, 45.274216>,  <33.686626, 38.814892, 44.601135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502628, 38.569088, 45.274216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877590, 38.433594, 45.241917>,  <34.102570, 38.352295, 45.222538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877590, 38.433594, 45.241917>,  <33.502628, 38.569088, 45.274216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877590, 38.433594, 45.241917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092532, 0.018747, 0.995533,
		-0.335712, -0.940693, 0.048918,
		0.937409, -0.338739, -0.080751,
		34.158813, 38.331970, 45.217690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525261, 38.023617, 45.725346>,  <33.502628, 38.569088, 45.274216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525261, 38.023617, 45.725346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900436, 38.147972, 45.663860>,  <34.125542, 38.222584, 45.626968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900436, 38.147972, 45.663860>,  <33.525261, 38.023617, 45.725346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900436, 38.147972, 45.663860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193323, -0.100699, 0.975954,
		0.287933, -0.945097, -0.154550,
		0.937934, 0.310887, -0.153714,
		34.181816, 38.241238, 45.617744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933567, 37.653690, 46.099003>,  <33.525261, 38.023617, 45.725346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933567, 37.653690, 46.099003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.134621, 37.994289, 46.039242>,  <34.255253, 38.198647, 46.003384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.134621, 37.994289, 46.039242>,  <33.933567, 37.653690, 46.099003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134621, 37.994289, 46.039242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366526, -0.053379, 0.928876,
		0.782956, -0.521642, -0.338924,
		0.502632, 0.851493, -0.149401,
		34.285412, 38.249737, 45.994423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491085, 37.545288, 46.409088>,  <33.933567, 37.653690, 46.099003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491085, 37.545288, 46.409088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476490, 37.944481, 46.388268>,  <34.467731, 38.183994, 46.375774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476490, 37.944481, 46.388268>,  <34.491085, 37.545288, 46.409088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476490, 37.944481, 46.388268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294142, 0.060504, 0.953844,
		0.955065, 0.019497, -0.295755,
		-0.036492, 0.997977, -0.052051,
		34.465542, 38.243874, 46.372654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136417, 37.763153, 46.618061>,  <34.491085, 37.545288, 46.409088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136417, 37.763153, 46.618061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.867535, 38.052837, 46.679577>,  <34.706203, 38.226650, 46.716488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.867535, 38.052837, 46.679577>,  <35.136417, 37.763153, 46.618061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867535, 38.052837, 46.679577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367258, 0.145807, 0.918620,
		0.642854, 0.673983, -0.363986,
		-0.672206, 0.724215, 0.153793,
		34.665874, 38.270103, 46.725716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569386, 38.230709, 46.926533>,  <35.136417, 37.763153, 46.618061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569386, 38.230709, 46.926533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.201103, 38.352810, 47.023796>,  <34.980133, 38.426071, 47.082153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.201103, 38.352810, 47.023796>,  <35.569386, 38.230709, 46.926533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201103, 38.352810, 47.023796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331899, 0.284669, 0.899337,
		0.205304, 0.908727, -0.363408,
		-0.920703, 0.305253, 0.243162,
		34.924892, 38.444386, 47.096745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052998, 38.888531, 46.747501>,  <35.569386, 38.230709, 46.926533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052998, 38.888531, 46.747501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.403114, 39.081913, 46.752254>,  <36.613182, 39.197941, 46.755108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.403114, 39.081913, 46.752254>,  <36.052998, 38.888531, 46.747501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403114, 39.081913, 46.752254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104142, -0.164433, -0.980875,
		-0.472252, 0.859788, -0.194274,
		0.875290, 0.483452, 0.011886,
		36.665703, 39.226948, 46.755821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038239, 39.298576, 46.133678>,  <36.052998, 38.888531, 46.747501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038239, 39.298576, 46.133678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.424068, 39.273312, 46.236130>,  <36.655567, 39.258152, 46.297600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.424068, 39.273312, 46.236130>,  <36.038239, 39.298576, 46.133678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424068, 39.273312, 46.236130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245345, -0.142006, -0.958979,
		0.096947, 0.987848, -0.121478,
		0.964576, -0.063166, 0.256131,
		36.713440, 39.254360, 46.312969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470421, 39.824940, 45.705940>,  <36.038239, 39.298576, 46.133678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470421, 39.824940, 45.705940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.740719, 39.554150, 45.822609>,  <36.902897, 39.391678, 45.892609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.740719, 39.554150, 45.822609>,  <36.470421, 39.824940, 45.705940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740719, 39.554150, 45.822609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265846, -0.145239, -0.953012,
		0.687526, 0.721535, 0.081826,
		0.675747, -0.676973, 0.291673,
		36.943443, 39.351059, 45.910110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008114, 39.933544, 45.202103>,  <36.470421, 39.824940, 45.705940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008114, 39.933544, 45.202103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.066757, 39.579796, 45.379372>,  <37.101944, 39.367546, 45.485733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.066757, 39.579796, 45.379372>,  <37.008114, 39.933544, 45.202103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066757, 39.579796, 45.379372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226048, -0.406201, -0.885383,
		0.963020, 0.229986, 0.140355,
		0.146613, -0.884368, 0.443168,
		37.110741, 39.314484, 45.512321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759598, 39.710407, 45.059147>,  <37.008114, 39.933544, 45.202103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759598, 39.710407, 45.059147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.546486, 39.386417, 45.157196>,  <37.418617, 39.192024, 45.216026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.546486, 39.386417, 45.157196>,  <37.759598, 39.710407, 45.059147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546486, 39.386417, 45.157196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094116, -0.344569, -0.934031,
		0.841005, -0.474562, 0.259811,
		-0.532779, -0.809977, 0.245120,
		37.386654, 39.143425, 45.230732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120461, 39.116425, 44.730820>,  <37.759598, 39.710407, 45.059147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120461, 39.116425, 44.730820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.747665, 39.000050, 44.817318>,  <37.523991, 38.930225, 44.869217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.747665, 39.000050, 44.817318>,  <38.120461, 39.116425, 44.730820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747665, 39.000050, 44.817318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102179, -0.361520, -0.926748,
		0.347803, -0.885810, 0.307203,
		-0.931983, -0.290936, 0.216249,
		37.468071, 38.912769, 44.882191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137020, 38.382034, 44.726997>,  <38.120461, 39.116425, 44.730820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137020, 38.382034, 44.726997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.771835, 38.525688, 44.649506>,  <37.552727, 38.611881, 44.603012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.771835, 38.525688, 44.649506>,  <38.137020, 38.382034, 44.726997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771835, 38.525688, 44.649506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043910, -0.385540, -0.921646,
		-0.405687, -0.849929, 0.336212,
		-0.912956, 0.359137, -0.193729,
		37.497948, 38.633427, 44.591389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677692, 37.834106, 44.487087>,  <38.137020, 38.382034, 44.726997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677692, 37.834106, 44.487087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.480366, 38.150173, 44.341606>,  <37.361969, 38.339813, 44.254318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.480366, 38.150173, 44.341606>,  <37.677692, 37.834106, 44.487087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480366, 38.150173, 44.341606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026781, -0.431718, -0.901611,
		-0.869437, -0.435041, 0.234135,
		-0.493318, 0.790164, -0.363701,
		37.332371, 38.387222, 44.232494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233807, 37.621387, 43.950897>,  <37.677692, 37.834106, 44.487087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233807, 37.621387, 43.950897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293888, 38.011192, 43.884247>,  <37.329937, 38.245075, 43.844257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293888, 38.011192, 43.884247>,  <37.233807, 37.621387, 43.950897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293888, 38.011192, 43.884247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205649, -0.195652, -0.958869,
		-0.967031, 0.109757, -0.229794,
		0.150202, 0.974512, -0.166630,
		37.338947, 38.303547, 43.834259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876572, 37.733635, 43.364483>,  <37.233807, 37.621387, 43.950897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876572, 37.733635, 43.364483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.158573, 38.015705, 43.394707>,  <37.327774, 38.184944, 43.412842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.158573, 38.015705, 43.394707>,  <36.876572, 37.733635, 43.364483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158573, 38.015705, 43.394707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244755, -0.141920, -0.959142,
		-0.665635, 0.694689, -0.272647,
		0.705000, 0.705171, 0.075562,
		37.370071, 38.227257, 43.417374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836910, 38.243042, 42.841988>,  <36.876572, 37.733635, 43.364483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836910, 38.243042, 42.841988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.224468, 38.288067, 42.930145>,  <37.457005, 38.315083, 42.983040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.224468, 38.288067, 42.930145>,  <36.836910, 38.243042, 42.841988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224468, 38.288067, 42.930145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224810, -0.028056, -0.973999,
		-0.103450, 0.993249, -0.052488,
		0.968895, 0.112560, 0.220390,
		37.515137, 38.321835, 42.996262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150211, 38.753277, 42.288765>,  <36.836910, 38.243042, 42.841988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150211, 38.753277, 42.288765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.452511, 38.543346, 42.445435>,  <37.633888, 38.417389, 42.539436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.452511, 38.543346, 42.445435>,  <37.150211, 38.753277, 42.288765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452511, 38.543346, 42.445435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323509, -0.220815, -0.920099,
		0.569377, 0.822071, 0.002905,
		0.755746, -0.524823, 0.391674,
		37.679234, 38.385899, 42.562939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713917, 38.768536, 41.774673>,  <37.150211, 38.753277, 42.288765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713917, 38.768536, 41.774673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848946, 38.472286, 42.007061>,  <37.929962, 38.294537, 42.146492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848946, 38.472286, 42.007061>,  <37.713917, 38.768536, 41.774673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848946, 38.472286, 42.007061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510210, -0.374705, -0.774133,
		0.791033, 0.557738, 0.251386,
		0.337567, -0.740624, 0.580968,
		37.950214, 38.250099, 42.181351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467110, 38.830742, 41.686810>,  <37.713917, 38.768536, 41.774673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467110, 38.830742, 41.686810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368408, 38.462093, 41.806622>,  <38.309189, 38.240902, 41.878510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368408, 38.462093, 41.806622>,  <38.467110, 38.830742, 41.686810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368408, 38.462093, 41.806622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620343, -0.387681, -0.681819,
		0.744505, 0.017571, 0.667386,
		-0.246753, -0.921626, 0.299531,
		38.294384, 38.185604, 41.896481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.428131, 37.010059, 43.078003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.550945, 37.351978, 42.910645>,  <25.624634, 37.557129, 42.810230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.550945, 37.351978, 42.910645>,  <25.428131, 37.010059, 43.078003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550945, 37.351978, 42.910645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265403, -0.345287, -0.900188,
		-0.913943, 0.387432, 0.120850,
		0.307034, 0.854794, -0.418399,
		25.643055, 37.608418, 42.785126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.928583, 37.162926, 42.571220>,  <25.428131, 37.010059, 43.078003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.928583, 37.162926, 42.571220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.242838, 37.385506, 42.463039>,  <25.431391, 37.519054, 42.398132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.242838, 37.385506, 42.463039>,  <24.928583, 37.162926, 42.571220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.242838, 37.385506, 42.463039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242165, -0.125683, -0.962060,
		-0.569327, 0.821322, 0.036011,
		0.785635, 0.556447, -0.270450,
		25.478529, 37.552441, 42.381905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.665749, 37.706245, 42.082203>,  <24.928583, 37.162926, 42.571220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.665749, 37.706245, 42.082203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.057604, 37.652153, 42.022846>,  <25.292717, 37.619698, 41.987232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.057604, 37.652153, 42.022846>,  <24.665749, 37.706245, 42.082203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.057604, 37.652153, 42.022846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152428, -0.019944, -0.988113,
		0.130665, 0.990613, -0.040151,
		0.979639, -0.135232, -0.148391,
		25.351496, 37.611584, 41.978329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.776857, 37.982311, 41.412914>,  <24.665749, 37.706245, 42.082203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.776857, 37.982311, 41.412914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.127550, 37.794815, 41.456036>,  <25.337965, 37.682316, 41.481907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.127550, 37.794815, 41.456036>,  <24.776857, 37.982311, 41.412914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.127550, 37.794815, 41.456036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042158, -0.148377, -0.988032,
		0.479129, 0.870783, -0.110325,
		0.876732, -0.468744, 0.107802,
		25.390570, 37.654190, 41.488377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.135378, 38.154499, 40.824677>,  <24.776857, 37.982311, 41.412914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.135378, 38.154499, 40.824677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.334452, 37.832954, 40.954975>,  <25.453896, 37.640026, 41.033154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.334452, 37.832954, 40.954975>,  <25.135378, 38.154499, 40.824677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334452, 37.832954, 40.954975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121916, -0.306998, -0.943869,
		0.858747, 0.509463, -0.054784,
		0.497685, -0.803866, 0.325745,
		25.483757, 37.591793, 41.052700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813494, 38.109138, 40.494373>,  <25.135378, 38.154499, 40.824677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813494, 38.109138, 40.494373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.730593, 37.732872, 40.601845>,  <25.680853, 37.507111, 40.666328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.730593, 37.732872, 40.601845>,  <25.813494, 38.109138, 40.494373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.730593, 37.732872, 40.601845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261754, -0.317945, -0.911260,
		0.942619, -0.118534, 0.312119,
		-0.207252, -0.940670, 0.268674,
		25.668417, 37.450672, 40.682446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.268459, 37.696175, 40.232918>,  <25.813494, 38.109138, 40.494373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.268459, 37.696175, 40.232918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.967331, 37.438644, 40.287682>,  <25.786654, 37.284126, 40.320538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.967331, 37.438644, 40.287682>,  <26.268459, 37.696175, 40.232918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.967331, 37.438644, 40.287682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136576, -0.356256, -0.924353,
		0.643899, -0.677175, 0.356129,
		-0.752822, -0.643829, 0.136907,
		25.741484, 37.245495, 40.328754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465227, 37.005714, 40.119095>,  <26.268459, 37.696175, 40.232918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465227, 37.005714, 40.119095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.068329, 36.983311, 40.074711>,  <25.830191, 36.969868, 40.048080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.068329, 36.983311, 40.074711>,  <26.465227, 37.005714, 40.119095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068329, 36.983311, 40.074711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124185, -0.409392, -0.903867,
		0.005200, -0.910638, 0.413173,
		-0.992246, -0.056010, -0.110959,
		25.770655, 36.966507, 40.041424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366301, 36.363338, 39.986229>,  <26.465227, 37.005714, 40.119095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366301, 36.363338, 39.986229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.032213, 36.548576, 39.867599>,  <25.831760, 36.659718, 39.796421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.032213, 36.548576, 39.867599>,  <26.366301, 36.363338, 39.986229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032213, 36.548576, 39.867599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011220, -0.553538, -0.832749,
		-0.549772, -0.692217, 0.467532,
		-0.835239, 0.463068, -0.296553,
		25.781649, 36.687504, 39.778629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046867, 35.843269, 39.753071>,  <26.366301, 36.363338, 39.986229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046867, 35.843269, 39.753071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.856205, 36.153843, 39.588169>,  <25.741808, 36.340187, 39.489227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.856205, 36.153843, 39.588169>,  <26.046867, 35.843269, 39.753071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.856205, 36.153843, 39.588169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055720, -0.494692, -0.867280,
		-0.877324, -0.390422, 0.279060,
		-0.476654, 0.776435, -0.412251,
		25.713209, 36.386772, 39.464493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446037, 35.587929, 39.508801>,  <26.046867, 35.843269, 39.753071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446037, 35.587929, 39.508801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.543186, 35.917397, 39.303825>,  <25.601475, 36.115078, 39.180840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.543186, 35.917397, 39.303825>,  <25.446037, 35.587929, 39.508801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543186, 35.917397, 39.303825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066017, -0.541061, -0.838388,
		-0.967810, 0.169790, -0.185783,
		0.242870, 0.823665, -0.512435,
		25.616047, 36.164497, 39.150093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005659, 35.537106, 38.922604>,  <25.446037, 35.587929, 39.508801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005659, 35.537106, 38.922604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.271299, 35.810184, 38.800690>,  <25.430683, 35.974033, 38.727539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.271299, 35.810184, 38.800690>,  <25.005659, 35.537106, 38.922604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271299, 35.810184, 38.800690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023641, -0.426635, -0.904115,
		-0.747269, 0.593218, -0.299469,
		0.664101, 0.682696, -0.304787,
		25.470530, 36.014992, 38.709255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.699713, 35.845943, 38.413410>,  <25.005659, 35.537106, 38.922604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.699713, 35.845943, 38.413410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.091743, 35.880646, 38.341942>,  <25.326962, 35.901466, 38.299061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.091743, 35.880646, 38.341942>,  <24.699713, 35.845943, 38.413410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.091743, 35.880646, 38.341942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139493, -0.339733, -0.930120,
		-0.141393, 0.936512, -0.320863,
		0.980076, 0.086754, -0.178673,
		25.385767, 35.906673, 38.288342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.732409, 35.970848, 37.711403>,  <24.699713, 35.845943, 38.413410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.732409, 35.970848, 37.711403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.111050, 35.880547, 37.803471>,  <25.338234, 35.826366, 37.858711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.111050, 35.880547, 37.803471>,  <24.732409, 35.970848, 37.711403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111050, 35.880547, 37.803471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161526, -0.285754, -0.944592,
		0.279017, 0.931332, -0.234030,
		0.946604, -0.225755, 0.230165,
		25.395031, 35.812820, 37.872520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.112389, 36.165016, 37.198261>,  <24.732409, 35.970848, 37.711403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.112389, 36.165016, 37.198261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.365940, 35.911266, 37.375244>,  <25.518072, 35.759018, 37.481434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.365940, 35.911266, 37.375244>,  <25.112389, 36.165016, 37.198261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.365940, 35.911266, 37.375244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413392, -0.205609, -0.887036,
		0.653685, 0.745181, 0.131913,
		0.633880, -0.634374, 0.442455,
		25.556105, 35.720955, 37.507980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608902, 36.275856, 36.804955>,  <25.112389, 36.165016, 37.198261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608902, 36.275856, 36.804955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.706537, 35.933895, 36.988071>,  <25.765118, 35.728718, 37.097942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.706537, 35.933895, 36.988071>,  <25.608902, 36.275856, 36.804955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706537, 35.933895, 36.988071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546930, -0.268465, -0.792965,
		0.800805, 0.443931, 0.402041,
		0.244088, -0.854899, 0.457788,
		25.779764, 35.677425, 37.125408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316271, 36.245811, 36.802780>,  <25.608902, 36.275856, 36.804955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316271, 36.245811, 36.802780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.143652, 35.884975, 36.802670>,  <26.040081, 35.668472, 36.802601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.143652, 35.884975, 36.802670>,  <26.316271, 36.245811, 36.802780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143652, 35.884975, 36.802670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432103, -0.206439, -0.877878,
		0.791867, -0.378967, 0.478885,
		-0.431547, -0.902090, -0.000280,
		26.014187, 35.614349, 36.802586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801155, 35.790665, 36.444931>,  <26.316271, 36.245811, 36.802780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801155, 35.790665, 36.444931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.450567, 35.598103, 36.447754>,  <26.240215, 35.482567, 36.449448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.450567, 35.598103, 36.447754>,  <26.801155, 35.790665, 36.444931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450567, 35.598103, 36.447754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168298, -0.320080, -0.932322,
		0.451083, -0.815965, 0.361560,
		-0.876470, -0.481405, 0.007058,
		26.187626, 35.453682, 36.449871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975576, 35.074158, 36.361649>,  <26.801155, 35.790665, 36.444931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975576, 35.074158, 36.361649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.608524, 35.156807, 36.225849>,  <26.388292, 35.206398, 36.144371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.608524, 35.156807, 36.225849>,  <26.975576, 35.074158, 36.361649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608524, 35.156807, 36.225849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244568, -0.379758, -0.892172,
		-0.313270, -0.901716, 0.297944,
		-0.917632, 0.206623, -0.339498,
		26.333235, 35.218796, 36.124001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714012, 35.029537, 36.635571>,  <26.975576, 35.074158, 36.361649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714012, 35.029537, 36.635571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.979071, 34.730103, 36.626442>,  <28.138105, 34.550442, 36.620964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.979071, 34.730103, 36.626442>,  <27.714012, 35.029537, 36.635571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979071, 34.730103, 36.626442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181300, -0.189903, 0.964918,
		-0.726659, -0.635260, -0.261557,
		0.662644, -0.748587, -0.022822,
		28.177864, 34.505527, 36.619595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499861, 34.290497, 36.819683>,  <27.714012, 35.029537, 36.635571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499861, 34.290497, 36.819683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882549, 34.366619, 36.907742>,  <28.112162, 34.412292, 36.960579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882549, 34.366619, 36.907742>,  <27.499861, 34.290497, 36.819683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882549, 34.366619, 36.907742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194267, -0.145584, 0.970085,
		0.216666, -0.970870, -0.102313,
		0.956721, 0.190308, 0.220151,
		28.169565, 34.423710, 36.973785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654432, 33.717854, 37.367249>,  <27.499861, 34.290497, 36.819683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654432, 33.717854, 37.367249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.930561, 34.003620, 37.412956>,  <28.096239, 34.175079, 37.440380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.930561, 34.003620, 37.412956>,  <27.654432, 33.717854, 37.367249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930561, 34.003620, 37.412956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076354, -0.085118, 0.993441,
		0.719460, -0.694521, -0.004210,
		0.690324, 0.714420, 0.114269,
		28.137659, 34.217945, 37.447235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091673, 33.504551, 38.053848>,  <27.654432, 33.717854, 37.367249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091673, 33.504551, 38.053848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.141769, 33.896374, 37.990883>,  <28.171827, 34.131470, 37.953102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.141769, 33.896374, 37.990883>,  <28.091673, 33.504551, 38.053848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141769, 33.896374, 37.990883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068577, 0.166830, 0.983598,
		0.989753, -0.112392, 0.088069,
		0.125241, 0.979559, -0.157413,
		28.179342, 34.190243, 37.943661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576609, 33.686363, 38.530945>,  <28.091673, 33.504551, 38.053848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576609, 33.686363, 38.530945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404667, 34.037758, 38.447536>,  <28.301502, 34.248596, 38.397491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404667, 34.037758, 38.447536>,  <28.576609, 33.686363, 38.530945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404667, 34.037758, 38.447536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062956, 0.201227, 0.977520,
		0.900700, 0.433320, -0.031192,
		-0.429855, 0.878488, -0.208525,
		28.275711, 34.301304, 38.384979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837503, 34.128567, 39.071770>,  <28.576609, 33.686363, 38.530945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837503, 34.128567, 39.071770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.538012, 34.359875, 38.942150>,  <28.358316, 34.498657, 38.864376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.538012, 34.359875, 38.942150>,  <28.837503, 34.128567, 39.071770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538012, 34.359875, 38.942150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137238, 0.343041, 0.929241,
		0.648512, 0.740223, -0.177486,
		-0.748731, 0.578266, -0.324053,
		28.313393, 34.533356, 38.844933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936678, 34.887657, 39.421402>,  <28.837503, 34.128567, 39.071770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936678, 34.887657, 39.421402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.554344, 34.829674, 39.319134>,  <28.324944, 34.794884, 39.257774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.554344, 34.829674, 39.319134>,  <28.936678, 34.887657, 39.421402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554344, 34.829674, 39.319134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292888, 0.397698, 0.869513,
		-0.024362, 0.905994, -0.422589,
		-0.955836, -0.144954, -0.255666,
		28.267593, 34.786186, 39.242435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617630, 35.595745, 39.494629>,  <28.936678, 34.887657, 39.421402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617630, 35.595745, 39.494629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.350172, 35.298504, 39.505302>,  <28.189697, 35.120159, 39.511707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.350172, 35.298504, 39.505302>,  <28.617630, 35.595745, 39.494629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350172, 35.298504, 39.505302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197473, 0.212056, 0.957098,
		-0.716883, 0.634687, -0.288533,
		-0.668643, -0.743105, 0.026686,
		28.149580, 35.075573, 39.513309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201488, 35.836018, 40.020065>,  <28.617630, 35.595745, 39.494629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201488, 35.836018, 40.020065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.037012, 35.476151, 39.961372>,  <27.938326, 35.260231, 39.926159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.037012, 35.476151, 39.961372>,  <28.201488, 35.836018, 40.020065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037012, 35.476151, 39.961372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349890, 0.007137, 0.936764,
		-0.841725, 0.436526, -0.317717,
		-0.411189, -0.899663, -0.146729,
		27.913656, 35.206253, 39.917355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444321, 35.935925, 40.227310>,  <28.201488, 35.836018, 40.020065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444321, 35.935925, 40.227310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.551300, 35.553089, 40.271957>,  <27.615488, 35.323387, 40.298744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.551300, 35.553089, 40.271957>,  <27.444321, 35.935925, 40.227310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551300, 35.553089, 40.271957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225234, 0.050534, 0.972993,
		-0.936879, -0.285364, -0.202053,
		0.267447, -0.957086, 0.111618,
		27.631535, 35.265965, 40.305443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047577, 35.653111, 40.724239>,  <27.444321, 35.935925, 40.227310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047577, 35.653111, 40.724239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.336493, 35.376602, 40.715836>,  <27.509842, 35.210697, 40.710793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.336493, 35.376602, 40.715836>,  <27.047577, 35.653111, 40.724239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336493, 35.376602, 40.715836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021056, -0.052339, 0.998407,
		-0.691273, -0.720694, -0.052359,
		0.722287, -0.691275, -0.021005,
		27.553179, 35.169220, 40.709534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811193, 35.043816, 41.174603>,  <27.047577, 35.653111, 40.724239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811193, 35.043816, 41.174603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.207306, 35.081207, 41.133404>,  <27.444973, 35.103642, 41.108685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.207306, 35.081207, 41.133404>,  <26.811193, 35.043816, 41.174603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207306, 35.081207, 41.133404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096032, 0.076138, 0.992462,
		0.100626, -0.992705, 0.066420,
		0.990279, 0.093489, -0.102993,
		27.504391, 35.109249, 41.102505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108326, 34.734322, 41.781345>,  <26.811193, 35.043816, 41.174603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108326, 34.734322, 41.781345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.409031, 34.958942, 41.643066>,  <27.589455, 35.093716, 41.560097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.409031, 34.958942, 41.643066>,  <27.108326, 34.734322, 41.781345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409031, 34.958942, 41.643066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365762, 0.081124, 0.927166,
		0.548701, -0.823452, -0.144409,
		0.751762, 0.561556, -0.345700,
		27.634560, 35.127411, 41.539356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614372, 34.635674, 42.297382>,  <27.108326, 34.734322, 41.781345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614372, 34.635674, 42.297382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.765989, 34.956890, 42.113449>,  <27.856958, 35.149620, 42.003090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.765989, 34.956890, 42.113449>,  <27.614372, 34.635674, 42.297382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765989, 34.956890, 42.113449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234640, 0.397273, 0.887197,
		0.895138, -0.444180, -0.037843,
		0.379041, 0.803043, -0.459836,
		27.879702, 35.197803, 41.975498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311808, 34.762512, 42.623848>,  <27.614372, 34.635674, 42.297382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311808, 34.762512, 42.623848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.163391, 35.091656, 42.451694>,  <28.074341, 35.289143, 42.348404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.163391, 35.091656, 42.451694>,  <28.311808, 34.762512, 42.623848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163391, 35.091656, 42.451694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215829, 0.527191, 0.821881,
		0.903186, 0.212065, -0.373207,
		-0.371043, 0.822860, -0.430382,
		28.052078, 35.338512, 42.322578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743065, 35.226463, 42.888748>,  <28.311808, 34.762512, 42.623848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743065, 35.226463, 42.888748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.423023, 35.422886, 42.750938>,  <28.230999, 35.540741, 42.668251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.423023, 35.422886, 42.750938>,  <28.743065, 35.226463, 42.888748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423023, 35.422886, 42.750938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120760, 0.694438, 0.709347,
		0.587579, 0.525948, -0.614923,
		-0.800105, 0.491055, -0.344524,
		28.182991, 35.570202, 42.647583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971844, 35.943859, 42.894386>,  <28.743065, 35.226463, 42.888748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971844, 35.943859, 42.894386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572079, 35.956696, 42.889568>,  <28.332220, 35.964397, 42.886677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572079, 35.956696, 42.889568>,  <28.971844, 35.943859, 42.894386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572079, 35.956696, 42.889568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010359, 0.617777, 0.786285,
		0.032677, 0.785698, -0.617747,
		-0.999412, 0.032093, -0.012048,
		28.272255, 35.966324, 42.885952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760950, 36.608017, 42.891994>,  <28.971844, 35.943859, 42.894386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760950, 36.608017, 42.891994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.435349, 36.429443, 43.040634>,  <28.239986, 36.322300, 43.129818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.435349, 36.429443, 43.040634>,  <28.760950, 36.608017, 42.891994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435349, 36.429443, 43.040634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030602, 0.605901, 0.794951,
		-0.580051, 0.658466, -0.479544,
		-0.814005, -0.446437, 0.371603,
		28.191147, 36.295513, 43.152115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345066, 37.192089, 43.117336>,  <28.760950, 36.608017, 42.891994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345066, 37.192089, 43.117336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.197651, 36.864826, 43.293884>,  <28.109201, 36.668468, 43.399811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.197651, 36.864826, 43.293884>,  <28.345066, 37.192089, 43.117336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197651, 36.864826, 43.293884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281044, 0.550627, 0.786018,
		-0.886112, 0.165633, -0.432864,
		-0.368537, -0.818154, 0.441367,
		28.087090, 36.619381, 43.426296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738792, 37.341526, 43.212967>,  <28.345066, 37.192089, 43.117336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738792, 37.341526, 43.212967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.842348, 37.065884, 43.483700>,  <27.904482, 36.900497, 43.646141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.842348, 37.065884, 43.483700>,  <27.738792, 37.341526, 43.212967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842348, 37.065884, 43.483700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239071, 0.633208, 0.736133,
		-0.935853, -0.352390, -0.000814,
		0.258890, -0.689107, 0.676836,
		27.920015, 36.859150, 43.686752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295271, 37.468666, 43.649048>,  <27.738792, 37.341526, 43.212967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295271, 37.468666, 43.649048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.552843, 37.255383, 43.868519>,  <27.707386, 37.127411, 44.000202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.552843, 37.255383, 43.868519>,  <27.295271, 37.468666, 43.649048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552843, 37.255383, 43.868519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014131, 0.725306, 0.688282,
		-0.764955, -0.435451, 0.474579,
		0.643928, -0.533211, 0.548673,
		27.746021, 37.095421, 44.033119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058937, 37.476604, 44.357281>,  <27.295271, 37.468666, 43.649048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058937, 37.476604, 44.357281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.448910, 37.402157, 44.406052>,  <27.682894, 37.357491, 44.435314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.448910, 37.402157, 44.406052>,  <27.058937, 37.476604, 44.357281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448910, 37.402157, 44.406052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050886, 0.719978, 0.692128,
		-0.216602, -0.668574, 0.711401,
		0.974933, -0.186117, 0.121928,
		27.741390, 37.346321, 44.442631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165911, 37.295120, 45.103725>,  <27.058937, 37.476604, 44.357281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165911, 37.295120, 45.103725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.503321, 37.423161, 44.931213>,  <27.705767, 37.499985, 44.827705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.503321, 37.423161, 44.931213>,  <27.165911, 37.295120, 45.103725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503321, 37.423161, 44.931213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056279, 0.745893, 0.663684,
		0.534130, -0.584108, 0.611166,
		0.843527, 0.320098, -0.431277,
		27.756378, 37.519192, 44.801830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.512016, 36.694313, 47.424847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.207523, 36.454960, 47.524815>,  <39.024826, 36.311348, 47.584797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.207523, 36.454960, 47.524815>,  <39.512016, 36.694313, 47.424847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207523, 36.454960, 47.524815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085199, 0.289771, 0.953296,
		-0.642854, 0.746976, -0.169603,
		-0.761236, -0.598380, 0.249922,
		38.979153, 36.275444, 47.599792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151844, 37.180943, 47.766308>,  <39.512016, 36.694313, 47.424847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151844, 37.180943, 47.766308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.020767, 36.828262, 47.902088>,  <38.942120, 36.616653, 47.983559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.020767, 36.828262, 47.902088>,  <39.151844, 37.180943, 47.766308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020767, 36.828262, 47.902088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042439, 0.372666, 0.926995,
		-0.943830, 0.289365, -0.159539,
		-0.327695, -0.881696, 0.339453,
		38.922459, 36.563755, 48.003925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614635, 37.266602, 48.281044>,  <39.151844, 37.180943, 47.766308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614635, 37.266602, 48.281044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.700291, 36.885712, 48.368141>,  <38.751686, 36.657177, 48.420399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.700291, 36.885712, 48.368141>,  <38.614635, 37.266602, 48.281044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700291, 36.885712, 48.368141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078203, 0.238908, 0.967888,
		-0.973667, -0.190236, 0.125626,
		0.214140, -0.952225, 0.217741,
		38.764534, 36.600044, 48.433464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137897, 37.020233, 48.843849>,  <38.614635, 37.266602, 48.281044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137897, 37.020233, 48.843849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.483295, 36.819382, 48.824883>,  <38.690533, 36.698872, 48.813503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.483295, 36.819382, 48.824883>,  <38.137897, 37.020233, 48.843849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483295, 36.819382, 48.824883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101623, 0.081132, 0.991509,
		-0.494020, -0.860978, 0.121084,
		0.863491, -0.502130, -0.047414,
		38.742344, 36.668743, 48.810658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050907, 36.358227, 49.272884>,  <38.137897, 37.020233, 48.843849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050907, 36.358227, 49.272884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.449032, 36.394077, 49.258366>,  <38.687908, 36.415588, 49.249653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.449032, 36.394077, 49.258366>,  <38.050907, 36.358227, 49.272884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449032, 36.394077, 49.258366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059309, -0.269367, 0.961210,
		0.076374, -0.958858, -0.273421,
		0.995313, 0.089628, -0.036297,
		38.747627, 36.420967, 49.247478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391132, 35.696621, 49.417652>,  <38.050907, 36.358227, 49.272884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391132, 35.696621, 49.417652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.668827, 35.971161, 49.504333>,  <38.835445, 36.135883, 49.556343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.668827, 35.971161, 49.504333>,  <38.391132, 35.696621, 49.417652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668827, 35.971161, 49.504333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129955, -0.415672, 0.900182,
		0.707918, -0.596777, -0.377769,
		0.694237, 0.686348, 0.216707,
		38.877098, 36.177067, 49.569347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854248, 35.344208, 49.798584>,  <38.391132, 35.696621, 49.417652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854248, 35.344208, 49.798584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.001633, 35.705982, 49.884594>,  <39.090061, 35.923046, 49.936199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.001633, 35.705982, 49.884594>,  <38.854248, 35.344208, 49.798584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001633, 35.705982, 49.884594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258598, -0.321881, 0.910779,
		0.892953, -0.279979, -0.352485,
		0.368458, 0.904436, 0.215023,
		39.112171, 35.977314, 49.949100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502956, 35.255497, 50.096405>,  <38.854248, 35.344208, 49.798584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502956, 35.255497, 50.096405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.355865, 35.606518, 50.219482>,  <39.267609, 35.817131, 50.293327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.355865, 35.606518, 50.219482>,  <39.502956, 35.255497, 50.096405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355865, 35.606518, 50.219482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331012, -0.185683, 0.925177,
		0.869025, 0.442066, -0.222199,
		-0.367731, 0.877553, 0.307693,
		39.245544, 35.869785, 50.311790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819714, 35.292667, 50.709198>,  <39.502956, 35.255497, 50.096405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819714, 35.292667, 50.709198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.577545, 35.610615, 50.725433>,  <39.432243, 35.801384, 50.735176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.577545, 35.610615, 50.725433>,  <39.819714, 35.292667, 50.709198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577545, 35.610615, 50.725433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109184, 0.032425, 0.993492,
		0.788381, 0.605914, -0.106418,
		-0.605421, 0.794869, 0.040593,
		39.395920, 35.849075, 50.737610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142086, 35.749474, 51.225651>,  <39.819714, 35.292667, 50.709198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142086, 35.749474, 51.225651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.763927, 35.876953, 51.198349>,  <39.537033, 35.953442, 51.181969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.763927, 35.876953, 51.198349>,  <40.142086, 35.749474, 51.225651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763927, 35.876953, 51.198349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044887, 0.080112, 0.995775,
		0.322822, 0.944464, -0.061432,
		-0.945395, 0.318700, -0.068256,
		39.480309, 35.972565, 51.177872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183968, 36.426414, 51.498844>,  <40.142086, 35.749474, 51.225651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183968, 36.426414, 51.498844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.819454, 36.267715, 51.542923>,  <39.600746, 36.172497, 51.569370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.819454, 36.267715, 51.542923>,  <40.183968, 36.426414, 51.498844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819454, 36.267715, 51.542923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107804, 0.028398, 0.993767,
		-0.397407, 0.917487, 0.016893,
		-0.911288, -0.396751, 0.110194,
		39.546066, 36.148689, 51.575981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725414, 36.951962, 51.810925>,  <40.183968, 36.426414, 51.498844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725414, 36.951962, 51.810925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.569092, 36.594704, 51.899975>,  <39.475296, 36.380348, 51.953403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.569092, 36.594704, 51.899975>,  <39.725414, 36.951962, 51.810925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569092, 36.594704, 51.899975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080006, 0.273905, 0.958423,
		-0.916988, 0.356749, -0.178502,
		-0.390809, -0.893144, 0.222625,
		39.451851, 36.326759, 51.966763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164116, 37.001690, 52.391289>,  <39.725414, 36.951962, 51.810925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164116, 37.001690, 52.391289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798264, 37.049915, 52.236935>,  <38.578751, 37.078850, 52.144321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798264, 37.049915, 52.236935>,  <39.164116, 37.001690, 52.391289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798264, 37.049915, 52.236935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075092, 0.887222, 0.455189,
		0.397245, 0.445309, -0.802431,
		-0.914635, 0.120565, -0.385884,
		38.523872, 37.086086, 52.121170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161396, 37.743958, 52.046574>,  <39.164116, 37.001690, 52.391289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161396, 37.743958, 52.046574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811401, 37.601318, 52.177567>,  <38.601406, 37.515736, 52.256161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811401, 37.601318, 52.177567>,  <39.161396, 37.743958, 52.046574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811401, 37.601318, 52.177567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194503, 0.878317, 0.436724,
		-0.443367, 0.318430, -0.837871,
		-0.874983, -0.356597, 0.327481,
		38.548908, 37.494339, 52.275810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626465, 38.140900, 51.706902>,  <39.161396, 37.743958, 52.046574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626465, 38.140900, 51.706902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.525818, 38.000500, 52.067677>,  <38.465431, 37.916260, 52.284142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.525818, 38.000500, 52.067677>,  <38.626465, 38.140900, 51.706902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525818, 38.000500, 52.067677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136068, 0.935493, 0.326095,
		-0.958214, -0.040674, -0.283147,
		-0.251618, -0.350996, 0.901937,
		38.450333, 37.895203, 52.338257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625969, 38.898621, 51.547081>,  <38.626465, 38.140900, 51.706902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625969, 38.898621, 51.547081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.386913, 39.210068, 51.623592>,  <38.243481, 39.396935, 51.669498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.386913, 39.210068, 51.623592>,  <38.625969, 38.898621, 51.547081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386913, 39.210068, 51.623592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408186, -0.090134, -0.908438,
		-0.690084, -0.620992, 0.371688,
		-0.597635, 0.778617, 0.191280,
		38.207623, 39.443653, 51.680977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938549, 38.678246, 51.500725>,  <38.625969, 38.898621, 51.547081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938549, 38.678246, 51.500725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.959217, 39.073341, 51.441803>,  <37.971619, 39.310398, 51.406452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.959217, 39.073341, 51.441803>,  <37.938549, 38.678246, 51.500725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959217, 39.073341, 51.441803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541796, -0.096179, -0.834989,
		-0.838920, 0.122951, 0.530184,
		0.051670, 0.987741, -0.147301,
		37.974716, 39.369663, 51.397614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228809, 38.838997, 51.254986>,  <37.938549, 38.678246, 51.500725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228809, 38.838997, 51.254986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463470, 39.145950, 51.151474>,  <37.604267, 39.330120, 51.089367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463470, 39.145950, 51.151474>,  <37.228809, 38.838997, 51.254986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463470, 39.145950, 51.151474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394413, -0.008357, -0.918895,
		-0.707306, 0.641136, 0.297762,
		0.586648, 0.767382, -0.258783,
		37.639465, 39.376163, 51.073837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811573, 39.326973, 50.911808>,  <37.228809, 38.838997, 51.254986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811573, 39.326973, 50.911808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.157597, 39.484795, 50.787868>,  <37.365211, 39.579487, 50.713505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.157597, 39.484795, 50.787868>,  <36.811573, 39.326973, 50.911808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157597, 39.484795, 50.787868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434121, 0.279197, -0.856497,
		-0.251426, 0.875430, 0.412805,
		0.865057, 0.394553, -0.309845,
		37.417114, 39.603161, 50.694916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626709, 39.971733, 50.583267>,  <36.811573, 39.326973, 50.911808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626709, 39.971733, 50.583267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.983253, 39.858925, 50.441311>,  <37.197178, 39.791241, 50.356136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.983253, 39.858925, 50.441311>,  <36.626709, 39.971733, 50.583267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983253, 39.858925, 50.441311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331644, 0.127989, -0.934682,
		0.309022, 0.950833, 0.020553,
		0.891357, -0.282021, -0.354890,
		37.250660, 39.774319, 50.334843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701004, 40.409115, 50.026169>,  <36.626709, 39.971733, 50.583267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701004, 40.409115, 50.026169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964687, 40.121819, 49.937099>,  <37.122898, 39.949440, 49.883659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964687, 40.121819, 49.937099>,  <36.701004, 40.409115, 50.026169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964687, 40.121819, 49.937099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359991, -0.041451, -0.932034,
		0.660193, 0.694561, -0.285884,
		0.659205, -0.718239, -0.222670,
		37.162449, 39.906345, 49.870300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047699, 40.601425, 49.412071>,  <36.701004, 40.409115, 50.026169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047699, 40.601425, 49.412071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.120647, 40.208168, 49.417133>,  <37.164417, 39.972214, 49.420170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.120647, 40.208168, 49.417133>,  <37.047699, 40.601425, 49.412071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120647, 40.208168, 49.417133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016778, -0.015981, -0.999732,
		0.983086, 0.182114, -0.019409,
		0.182375, -0.983148, 0.012656,
		37.175362, 39.913223, 49.420929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485367, 40.535297, 48.934364>,  <37.047699, 40.601425, 49.412071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485367, 40.535297, 48.934364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339851, 40.166786, 48.989361>,  <37.252541, 39.945679, 49.022358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339851, 40.166786, 48.989361>,  <37.485367, 40.535297, 48.934364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339851, 40.166786, 48.989361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015526, -0.153584, -0.988014,
		0.931351, -0.357296, 0.070176,
		-0.363791, -0.921277, 0.137493,
		37.230713, 39.890404, 49.030609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014351, 40.061626, 48.582371>,  <37.485367, 40.535297, 48.934364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014351, 40.061626, 48.582371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644070, 39.919498, 48.634243>,  <37.421902, 39.834221, 48.665367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644070, 39.919498, 48.634243>,  <38.014351, 40.061626, 48.582371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644070, 39.919498, 48.634243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129009, -0.025695, -0.991311,
		0.355567, -0.934390, -0.022054,
		-0.925705, -0.355323, 0.129681,
		37.366360, 39.812901, 48.673149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049076, 39.483425, 48.220673>,  <38.014351, 40.061626, 48.582371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049076, 39.483425, 48.220673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661148, 39.556576, 48.285175>,  <37.428391, 39.600468, 48.323875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661148, 39.556576, 48.285175>,  <38.049076, 39.483425, 48.220673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661148, 39.556576, 48.285175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185508, -0.124259, -0.974755,
		-0.158227, -0.975251, 0.154435,
		-0.969820, 0.182881, 0.161255,
		37.370201, 39.611439, 48.333553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755436, 38.849106, 47.909439>,  <38.049076, 39.483425, 48.220673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755436, 38.849106, 47.909439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.483315, 39.141953, 47.923225>,  <37.320042, 39.317661, 47.931499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.483315, 39.141953, 47.923225>,  <37.755436, 38.849106, 47.909439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483315, 39.141953, 47.923225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242962, -0.180898, -0.953019,
		-0.691490, -0.656715, 0.300943,
		-0.680302, 0.732121, 0.034468,
		37.279224, 39.361588, 47.933567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050873, 38.579113, 47.877117>,  <37.755436, 38.849106, 47.909439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050873, 38.579113, 47.877117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.026249, 38.960014, 47.757496>,  <37.011475, 39.188553, 47.685722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.026249, 38.960014, 47.757496>,  <37.050873, 38.579113, 47.877117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026249, 38.960014, 47.757496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453642, -0.293575, -0.841441,
		-0.889056, 0.083865, 0.450052,
		-0.061556, 0.952250, -0.299049,
		37.007782, 39.245689, 47.667782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374306, 38.681553, 47.597069>,  <37.050873, 38.579113, 47.877117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374306, 38.681553, 47.597069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608521, 38.972061, 47.453026>,  <36.749050, 39.146366, 47.366600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608521, 38.972061, 47.453026>,  <36.374306, 38.681553, 47.597069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608521, 38.972061, 47.453026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400798, -0.126765, -0.907354,
		-0.704634, 0.675620, 0.216862,
		0.585536, 0.726270, -0.360110,
		36.784180, 39.189941, 47.344994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699585, 38.841026, 47.379250>,  <36.374306, 38.681553, 47.597069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699585, 38.841026, 47.379250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.311096, 38.771946, 47.444862>,  <35.078003, 38.730499, 47.484230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.311096, 38.771946, 47.444862>,  <35.699585, 38.841026, 47.379250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311096, 38.771946, 47.444862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126408, 0.209970, 0.969502,
		-0.201876, 0.962334, -0.182096,
		-0.971219, -0.172701, 0.164034,
		35.019730, 38.720135, 47.494072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331150, 39.503620, 47.752846>,  <35.699585, 38.841026, 47.379250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331150, 39.503620, 47.752846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137192, 39.160892, 47.822975>,  <35.020817, 38.955257, 47.865051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137192, 39.160892, 47.822975>,  <35.331150, 39.503620, 47.752846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137192, 39.160892, 47.822975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024954, 0.213941, 0.976528,
		-0.874217, 0.469137, -0.125119,
		-0.484893, -0.856820, 0.175324,
		34.991722, 38.903847, 47.875572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797573, 39.656708, 48.159794>,  <35.331150, 39.503620, 47.752846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797573, 39.656708, 48.159794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833797, 39.266560, 48.240246>,  <34.855530, 39.032471, 48.288517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833797, 39.266560, 48.240246>,  <34.797573, 39.656708, 48.159794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833797, 39.266560, 48.240246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102591, 0.191748, 0.976067,
		-0.990593, -0.109023, -0.082700,
		0.090556, -0.975370, 0.201129,
		34.860966, 38.973949, 48.300583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444695, 39.665867, 48.794182>,  <34.797573, 39.656708, 48.159794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444695, 39.665867, 48.794182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645332, 39.320580, 48.771351>,  <34.765713, 39.113407, 48.757652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645332, 39.320580, 48.771351>,  <34.444695, 39.665867, 48.794182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645332, 39.320580, 48.771351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124975, -0.137590, 0.982573,
		-0.856030, -0.485717, -0.176895,
		0.501592, -0.863219, -0.057079,
		34.795811, 39.061615, 48.754227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043076, 39.226215, 49.195564>,  <34.444695, 39.665867, 48.794182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043076, 39.226215, 49.195564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.399879, 39.045429, 49.198032>,  <34.613964, 38.936958, 49.199512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.399879, 39.045429, 49.198032>,  <34.043076, 39.226215, 49.195564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399879, 39.045429, 49.198032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094666, -0.173450, 0.980282,
		-0.441985, -0.875009, -0.197505,
		0.892013, -0.451967, 0.006171,
		34.667484, 38.909840, 49.199883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894974, 38.516052, 49.514565>,  <34.043076, 39.226215, 49.195564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894974, 38.516052, 49.514565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286522, 38.583725, 49.560497>,  <34.521450, 38.624329, 49.588058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286522, 38.583725, 49.560497>,  <33.894974, 38.516052, 49.514565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286522, 38.583725, 49.560497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107868, -0.049821, 0.992916,
		0.173704, -0.984325, -0.030519,
		0.978872, 0.169181, 0.114831,
		34.580185, 38.634480, 49.594948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095398, 38.030602, 49.929379>,  <33.894974, 38.516052, 49.514565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095398, 38.030602, 49.929379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366447, 38.322601, 49.965019>,  <34.529076, 38.497799, 49.986404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366447, 38.322601, 49.965019>,  <34.095398, 38.030602, 49.929379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366447, 38.322601, 49.965019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053295, -0.169583, 0.984074,
		0.733479, -0.662079, -0.153818,
		0.677619, 0.729995, 0.089100,
		34.569733, 38.541599, 49.991749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616646, 37.424915, 50.070259>,  <34.095398, 38.030602, 49.929379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616646, 37.424915, 50.070259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374516, 37.121262, 50.166012>,  <34.229237, 36.939072, 50.223461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374516, 37.121262, 50.166012>,  <34.616646, 37.424915, 50.070259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374516, 37.121262, 50.166012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139343, -0.397153, -0.907113,
		0.783688, -0.515740, 0.346186,
		-0.605323, -0.759132, 0.239379,
		34.192917, 36.893520, 50.237827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981903, 36.769463, 49.907722>,  <34.616646, 37.424915, 50.070259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981903, 36.769463, 49.907722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.594379, 36.681816, 49.954025>,  <34.361866, 36.629230, 49.981808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.594379, 36.681816, 49.954025>,  <34.981903, 36.769463, 49.907722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594379, 36.681816, 49.954025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014822, -0.517526, -0.855539,
		0.247369, -0.827137, 0.504631,
		-0.968808, -0.219113, 0.115760,
		34.303738, 36.616081, 49.988754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952579, 36.060043, 49.779770>,  <34.981903, 36.769463, 49.907722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952579, 36.060043, 49.779770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590595, 36.222424, 49.728771>,  <34.373405, 36.319851, 49.698174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590595, 36.222424, 49.728771>,  <34.952579, 36.060043, 49.779770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590595, 36.222424, 49.728771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048283, -0.395671, -0.917122,
		-0.422758, -0.823799, 0.377665,
		-0.904955, 0.405955, -0.127497,
		34.319107, 36.344208, 49.690521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529377, 35.477135, 49.574940>,  <34.952579, 36.060043, 49.779770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529377, 35.477135, 49.574940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366985, 35.816227, 49.438396>,  <34.269550, 36.019684, 49.356472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366985, 35.816227, 49.438396>,  <34.529377, 35.477135, 49.574940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366985, 35.816227, 49.438396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071500, -0.342914, -0.936642,
		-0.911079, -0.404668, 0.078605,
		-0.405984, 0.847734, -0.341356,
		34.245190, 36.070549, 49.335991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096085, 35.269173, 49.066158>,  <34.529377, 35.477135, 49.574940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096085, 35.269173, 49.066158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136539, 35.657593, 48.979588>,  <34.160812, 35.890644, 48.927643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136539, 35.657593, 48.979588>,  <34.096085, 35.269173, 49.066158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136539, 35.657593, 48.979588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068010, -0.210287, -0.975271,
		-0.992545, 0.113356, 0.044773,
		0.101137, 0.971046, -0.216429,
		34.166882, 35.948906, 48.914658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864567, 35.170242, 48.380562>,  <34.096085, 35.269173, 49.066158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864567, 35.170242, 48.380562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.001385, 35.546078, 48.385979>,  <34.083473, 35.771580, 48.389229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.001385, 35.546078, 48.385979>,  <33.864567, 35.170242, 48.380562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001385, 35.546078, 48.385979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146838, 0.067679, -0.986843,
		-0.928141, 0.335552, 0.161116,
		0.342042, 0.939587, 0.013544,
		34.103996, 35.827953, 48.390041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303410, 35.632446, 48.096939>,  <33.864567, 35.170242, 48.380562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303410, 35.632446, 48.096939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682034, 35.756001, 48.059795>,  <33.909206, 35.830132, 48.037510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682034, 35.756001, 48.059795>,  <33.303410, 35.632446, 48.096939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682034, 35.756001, 48.059795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098288, 0.002028, -0.995156,
		-0.307199, 0.951098, 0.032279,
		0.946556, 0.308883, -0.092858,
		33.966000, 35.848667, 48.031937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.745087, 33.724461, 52.605118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.071056, 33.875702, 52.429420>,  <37.266636, 33.966446, 52.324001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.071056, 33.875702, 52.429420>,  <36.745087, 33.724461, 52.605118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071056, 33.875702, 52.429420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307689, -0.360011, -0.880749,
		-0.491150, 0.852893, -0.177042,
		0.814922, 0.378106, -0.439246,
		37.315533, 33.989132, 52.297646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566090, 34.067097, 51.973167>,  <36.745087, 33.724461, 52.605118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566090, 34.067097, 51.973167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.955021, 33.999634, 51.908508>,  <37.188381, 33.959156, 51.869713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.955021, 33.999634, 51.908508>,  <36.566090, 34.067097, 51.973167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955021, 33.999634, 51.908508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197467, -0.223600, -0.954468,
		0.124836, 0.959978, -0.250717,
		0.972329, -0.168660, -0.161651,
		37.246719, 33.949036, 51.860012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636669, 34.284592, 51.235371>,  <36.566090, 34.067097, 51.973167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636669, 34.284592, 51.235371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936707, 34.045998, 51.349613>,  <37.116730, 33.902843, 51.418159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936707, 34.045998, 51.349613>,  <36.636669, 34.284592, 51.235371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936707, 34.045998, 51.349613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083681, -0.342783, -0.935680,
		0.656017, 0.725747, -0.207205,
		0.750093, -0.596483, 0.285602,
		37.161736, 33.867054, 51.435295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076797, 34.481335, 50.816647>,  <36.636669, 34.284592, 51.235371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076797, 34.481335, 50.816647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.222637, 34.128246, 50.935223>,  <37.310143, 33.916393, 51.006367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.222637, 34.128246, 50.935223>,  <37.076797, 34.481335, 50.816647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222637, 34.128246, 50.935223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190630, -0.240851, -0.951657,
		0.911441, 0.403487, 0.080457,
		0.364603, -0.882717, 0.296438,
		37.332020, 33.863430, 51.024155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724304, 34.487518, 50.623508>,  <37.076797, 34.481335, 50.816647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724304, 34.487518, 50.623508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.649769, 34.098351, 50.678211>,  <37.605049, 33.864849, 50.711033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.649769, 34.098351, 50.678211>,  <37.724304, 34.487518, 50.623508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649769, 34.098351, 50.678211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327737, -0.192780, -0.924892,
		0.926211, -0.127520, 0.354784,
		-0.186338, -0.972921, 0.136762,
		37.593868, 33.806473, 50.719238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309238, 34.198307, 50.511646>,  <37.724304, 34.487518, 50.623508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309238, 34.198307, 50.511646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.022388, 33.926342, 50.450394>,  <37.850277, 33.763165, 50.413643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.022388, 33.926342, 50.450394>,  <38.309238, 34.198307, 50.511646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022388, 33.926342, 50.450394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465375, -0.303595, -0.831418,
		0.518800, -0.667496, 0.534130,
		-0.717128, -0.679910, -0.153131,
		37.807251, 33.722370, 50.404453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622662, 33.628529, 50.059551>,  <38.309238, 34.198307, 50.511646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622662, 33.628529, 50.059551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.228287, 33.573746, 50.021229>,  <37.991661, 33.540878, 49.998234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.228287, 33.573746, 50.021229>,  <38.622662, 33.628529, 50.059551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228287, 33.573746, 50.021229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137667, -0.340371, -0.930159,
		0.094779, -0.930264, 0.354438,
		-0.985933, -0.136954, -0.095806,
		37.932507, 33.532661, 49.992485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544891, 32.919495, 49.775082>,  <38.622662, 33.628529, 50.059551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544891, 32.919495, 49.775082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.184853, 33.073227, 49.693005>,  <37.968830, 33.165466, 49.643757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.184853, 33.073227, 49.693005>,  <38.544891, 32.919495, 49.775082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184853, 33.073227, 49.693005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102158, -0.271668, -0.956954,
		-0.423537, -0.882317, 0.205265,
		-0.900100, 0.384336, -0.205197,
		37.914822, 33.188526, 49.631447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098080, 32.388420, 49.608311>,  <38.544891, 32.919495, 49.775082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098080, 32.388420, 49.608311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.905411, 32.702145, 49.451931>,  <37.789810, 32.890381, 49.358101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.905411, 32.702145, 49.451931>,  <38.098080, 32.388420, 49.608311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905411, 32.702145, 49.451931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092484, -0.489117, -0.867301,
		-0.871456, -0.381600, 0.308131,
		-0.481675, 0.784312, -0.390952,
		37.760910, 32.937439, 49.334644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544430, 32.125801, 49.349548>,  <38.098080, 32.388420, 49.608311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544430, 32.125801, 49.349548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.600986, 32.472263, 49.157806>,  <37.634922, 32.680141, 49.042763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.600986, 32.472263, 49.157806>,  <37.544430, 32.125801, 49.349548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600986, 32.472263, 49.157806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082285, -0.492824, -0.866229,
		-0.986528, 0.083034, -0.140953,
		0.141391, 0.866158, -0.479352,
		37.643402, 32.732109, 49.014000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045639, 32.182899, 48.863579>,  <37.544430, 32.125801, 49.349548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045639, 32.182899, 48.863579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.328514, 32.426876, 48.720547>,  <37.498238, 32.573261, 48.634727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.328514, 32.426876, 48.720547>,  <37.045639, 32.182899, 48.863579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328514, 32.426876, 48.720547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138502, -0.376447, -0.916027,
		-0.693330, 0.697327, -0.181740,
		0.707185, 0.609937, -0.357583,
		37.540668, 32.609856, 48.613274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718506, 32.609608, 48.365517>,  <37.045639, 32.182899, 48.863579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718506, 32.609608, 48.365517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.110294, 32.632397, 48.288174>,  <37.345367, 32.646072, 48.241768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.110294, 32.632397, 48.288174>,  <36.718506, 32.609608, 48.365517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110294, 32.632397, 48.288174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190204, -0.056409, -0.980123,
		-0.066751, 0.996781, -0.044413,
		0.979473, 0.056976, -0.193357,
		37.404137, 32.649490, 48.230167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084385, 32.808002, 48.011406>,  <36.718506, 32.609608, 48.365517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084385, 32.808002, 48.011406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.748734, 32.602989, 48.084259>,  <35.547340, 32.479980, 48.127972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.748734, 32.602989, 48.084259>,  <36.084385, 32.808002, 48.011406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748734, 32.602989, 48.084259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002361, 0.331417, 0.943482,
		-0.543925, 0.792134, -0.276892,
		-0.839130, -0.512530, 0.182136,
		35.496994, 32.449230, 48.138901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541405, 33.220036, 48.371265>,  <36.084385, 32.808002, 48.011406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541405, 33.220036, 48.371265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.417007, 32.851555, 48.464790>,  <35.342369, 32.630466, 48.520905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.417007, 32.851555, 48.464790>,  <35.541405, 33.220036, 48.371265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417007, 32.851555, 48.464790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104732, 0.277726, 0.954934,
		-0.944625, 0.272487, -0.182850,
		-0.310989, -0.921205, 0.233809,
		35.323711, 32.575191, 48.534931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971046, 33.283379, 48.818825>,  <35.541405, 33.220036, 48.371265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971046, 33.283379, 48.818825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.067963, 32.897537, 48.860466>,  <35.126114, 32.666031, 48.885448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.067963, 32.897537, 48.860466>,  <34.971046, 33.283379, 48.818825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067963, 32.897537, 48.860466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170142, 0.063388, 0.983379,
		-0.955168, -0.255976, -0.148761,
		0.242291, -0.964603, 0.104098,
		35.140652, 32.608158, 48.891697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398159, 32.955723, 49.191608>,  <34.971046, 33.283379, 48.818825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398159, 32.955723, 49.191608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.725132, 32.737381, 49.265202>,  <34.921314, 32.606377, 49.309357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.725132, 32.737381, 49.265202>,  <34.398159, 32.955723, 49.191608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725132, 32.737381, 49.265202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188737, 0.047964, 0.980855,
		-0.544232, -0.836504, -0.063817,
		0.817429, -0.545858, 0.183983,
		34.970360, 32.573624, 49.320396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149975, 32.557877, 49.723736>,  <34.398159, 32.955723, 49.191608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149975, 32.557877, 49.723736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.547997, 32.528679, 49.750698>,  <34.786808, 32.511158, 49.766876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.547997, 32.528679, 49.750698>,  <34.149975, 32.557877, 49.723736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547997, 32.528679, 49.750698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063691, 0.052021, 0.996613,
		-0.076258, -0.995974, 0.047114,
		0.995052, -0.072999, 0.067402,
		34.846512, 32.506779, 49.770920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161411, 32.221455, 50.304699>,  <34.149975, 32.557877, 49.723736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161411, 32.221455, 50.304699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.524048, 32.381207, 50.250164>,  <34.741631, 32.477058, 50.217442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.524048, 32.381207, 50.250164>,  <34.161411, 32.221455, 50.304699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524048, 32.381207, 50.250164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013508, 0.350368, 0.936515,
		0.421792, -0.847195, 0.323035,
		0.906592, 0.399378, -0.136338,
		34.796024, 32.501019, 50.209263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483540, 32.072769, 50.886501>,  <34.161411, 32.221455, 50.304699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483540, 32.072769, 50.886501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.729958, 32.351482, 50.739544>,  <34.877808, 32.518711, 50.651371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.729958, 32.351482, 50.739544>,  <34.483540, 32.072769, 50.886501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729958, 32.351482, 50.739544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168763, 0.338824, 0.925590,
		0.769420, -0.632207, 0.091139,
		0.616045, 0.696787, -0.367391,
		34.914772, 32.560520, 50.629326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096188, 32.178371, 51.342003>,  <34.483540, 32.072769, 50.886501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096188, 32.178371, 51.342003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.053345, 32.521992, 51.141781>,  <35.027641, 32.728165, 51.021648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.053345, 32.521992, 51.141781>,  <35.096188, 32.178371, 51.342003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053345, 32.521992, 51.141781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002443, 0.503227, 0.864151,
		0.994245, 0.093777, -0.051799,
		-0.107104, 0.859051, -0.500559,
		35.021214, 32.779709, 50.991611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628395, 32.727535, 51.562386>,  <35.096188, 32.178371, 51.342003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628395, 32.727535, 51.562386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.306553, 32.934055, 51.445053>,  <35.113449, 33.057968, 51.374653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.306553, 32.934055, 51.445053>,  <35.628395, 32.727535, 51.562386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306553, 32.934055, 51.445053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028843, 0.459421, 0.887750,
		0.593110, 0.722748, -0.354760,
		-0.804604, 0.516301, -0.293334,
		35.065170, 33.088947, 51.357052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722538, 33.372147, 51.900650>,  <35.628395, 32.727535, 51.562386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722538, 33.372147, 51.900650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.355534, 33.434597, 51.754341>,  <35.135330, 33.472069, 51.666553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.355534, 33.434597, 51.754341>,  <35.722538, 33.372147, 51.900650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355534, 33.434597, 51.754341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221112, 0.564213, 0.795470,
		0.330571, 0.810733, -0.483151,
		-0.917514, 0.156128, -0.365775,
		35.080280, 33.481434, 51.644608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597401, 34.147923, 51.879044>,  <35.722538, 33.372147, 51.900650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597401, 34.147923, 51.879044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.271198, 33.921013, 51.924911>,  <35.075478, 33.784866, 51.952435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.271198, 33.921013, 51.924911>,  <35.597401, 34.147923, 51.879044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271198, 33.921013, 51.924911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207012, 0.470950, 0.857527,
		-0.540455, 0.675582, -0.501496,
		-0.815509, -0.567270, 0.114674,
		35.026546, 33.750832, 51.959312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106552, 34.661484, 51.943928>,  <35.597401, 34.147923, 51.879044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106552, 34.661484, 51.943928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.909088, 34.340694, 52.078476>,  <34.790611, 34.148220, 52.159206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.909088, 34.340694, 52.078476>,  <35.106552, 34.661484, 51.943928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909088, 34.340694, 52.078476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216872, 0.488091, 0.845419,
		-0.842180, 0.344401, -0.414876,
		-0.493660, -0.801970, 0.336369,
		34.760990, 34.100105, 52.179386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555279, 34.938129, 52.271652>,  <35.106552, 34.661484, 51.943928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555279, 34.938129, 52.271652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.618248, 34.566795, 52.406361>,  <34.656029, 34.343994, 52.487186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.618248, 34.566795, 52.406361>,  <34.555279, 34.938129, 52.271652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618248, 34.566795, 52.406361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152548, 0.314067, 0.937065,
		-0.975678, -0.198889, -0.092174,
		0.157423, -0.928334, 0.336769,
		34.665474, 34.288296, 52.507393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978691, 34.773224, 52.781593>,  <34.555279, 34.938129, 52.271652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978691, 34.773224, 52.781593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.313519, 34.560570, 52.833263>,  <34.514416, 34.432980, 52.864265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.313519, 34.560570, 52.833263>,  <33.978691, 34.773224, 52.781593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313519, 34.560570, 52.833263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055428, 0.152481, 0.986751,
		-0.544285, -0.833136, 0.098169,
		0.837067, -0.531632, 0.129172,
		34.564640, 34.401081, 52.872017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936676, 35.539249, 52.744633>,  <33.978691, 34.773224, 52.781593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936676, 35.539249, 52.744633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.870636, 35.906658, 52.888329>,  <33.831013, 36.127106, 52.974545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.870636, 35.906658, 52.888329>,  <33.936676, 35.539249, 52.744633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870636, 35.906658, 52.888329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133049, 0.340168, -0.930905,
		-0.977261, -0.201491, 0.066046,
		-0.165103, 0.918525, 0.359241,
		33.821106, 36.182217, 52.996101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356358, 35.842716, 52.450634>,  <33.936676, 35.539249, 52.744633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356358, 35.842716, 52.450634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.603184, 36.141972, 52.548218>,  <33.751282, 36.321526, 52.606766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.603184, 36.141972, 52.548218>,  <33.356358, 35.842716, 52.450634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603184, 36.141972, 52.548218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083176, 0.370290, -0.925185,
		-0.782502, 0.550611, 0.290722,
		0.617068, 0.748140, 0.243955,
		33.788303, 36.366413, 52.621403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062687, 36.467113, 52.102962>,  <33.356358, 35.842716, 52.450634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062687, 36.467113, 52.102962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.440750, 36.554798, 52.199818>,  <33.667587, 36.607410, 52.257931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.440750, 36.554798, 52.199818>,  <33.062687, 36.467113, 52.102962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440750, 36.554798, 52.199818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112562, 0.477309, -0.871496,
		-0.306618, 0.850953, 0.426455,
		0.945154, 0.219213, 0.242136,
		33.724297, 36.620564, 52.272457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115768, 37.178871, 51.965408>,  <33.062687, 36.467113, 52.102962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115768, 37.178871, 51.965408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.464001, 36.985458, 51.928982>,  <33.672939, 36.869411, 51.907124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.464001, 36.985458, 51.928982>,  <33.115768, 37.178871, 51.965408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464001, 36.985458, 51.928982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129673, 0.404020, -0.905513,
		0.474634, 0.776511, 0.414431,
		0.870579, -0.483528, -0.091069,
		33.725174, 36.840401, 51.901661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218414, 37.286194, 51.382977>,  <33.115768, 37.178871, 51.965408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218414, 37.286194, 51.382977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.569016, 37.113113, 51.467361>,  <33.779377, 37.009266, 51.517990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.569016, 37.113113, 51.467361>,  <33.218414, 37.286194, 51.382977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569016, 37.113113, 51.467361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286896, 0.117644, -0.950711,
		0.386557, 0.893828, 0.227257,
		0.876507, -0.432703, 0.210959,
		33.831966, 36.983303, 51.530651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718540, 37.711308, 51.062614>,  <33.218414, 37.286194, 51.382977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718540, 37.711308, 51.062614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.862823, 37.339447, 51.092655>,  <33.949394, 37.116329, 51.110680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.862823, 37.339447, 51.092655>,  <33.718540, 37.711308, 51.062614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862823, 37.339447, 51.092655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291937, 0.036060, -0.955758,
		0.885813, 0.366671, 0.284406,
		0.360704, -0.929652, 0.075102,
		33.971035, 37.060551, 51.115185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403492, 37.716427, 50.694084>,  <33.718540, 37.711308, 51.062614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403492, 37.716427, 50.694084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249939, 37.348248, 50.723499>,  <34.157806, 37.127338, 50.741150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249939, 37.348248, 50.723499>,  <34.403492, 37.716427, 50.694084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249939, 37.348248, 50.723499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159425, -0.144513, -0.976575,
		0.909516, -0.363165, 0.202219,
		-0.383881, -0.920449, 0.073539,
		34.134773, 37.072113, 50.745560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206394, 37.835152, 50.585266>,  <34.403492, 37.716427, 50.694084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206394, 37.835152, 50.585266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.184914, 38.223640, 50.492455>,  <35.172024, 38.456734, 50.436768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.184914, 38.223640, 50.492455>,  <35.206394, 37.835152, 50.585266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184914, 38.223640, 50.492455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327043, 0.236653, 0.914898,
		0.943482, -0.026751, -0.330342,
		-0.053702, 0.971226, -0.232026,
		35.168804, 38.515007, 50.422848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820774, 38.116604, 50.896221>,  <35.206394, 37.835152, 50.585266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820774, 38.116604, 50.896221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.548271, 38.406136, 50.852482>,  <35.384769, 38.579853, 50.826237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.548271, 38.406136, 50.852482>,  <35.820774, 38.116604, 50.896221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548271, 38.406136, 50.852482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123176, 0.260590, 0.957560,
		0.721605, 0.638877, -0.266688,
		-0.681259, 0.723830, -0.109348,
		35.343895, 38.623283, 50.819675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105545, 38.571308, 51.365341>,  <35.820774, 38.116604, 50.896221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105545, 38.571308, 51.365341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.717834, 38.659271, 51.321262>,  <35.485207, 38.712048, 51.294815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.717834, 38.659271, 51.321262>,  <36.105545, 38.571308, 51.365341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717834, 38.659271, 51.321262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017815, 0.384056, 0.923138,
		0.245326, 0.896739, -0.368339,
		-0.969277, 0.219908, -0.110194,
		35.427052, 38.725243, 51.288204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951012, 39.261024, 51.735146>,  <36.105545, 38.571308, 51.365341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951012, 39.261024, 51.735146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.581989, 39.118576, 51.675724>,  <35.360577, 39.033108, 51.640072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.581989, 39.118576, 51.675724>,  <35.951012, 39.261024, 51.735146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581989, 39.118576, 51.675724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214063, 0.152031, 0.964916,
		-0.321038, 0.921991, -0.216489,
		-0.922557, -0.356117, -0.148556,
		35.305222, 39.011742, 51.631157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529137, 39.751987, 51.849361>,  <35.951012, 39.261024, 51.735146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529137, 39.751987, 51.849361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.333004, 39.412159, 51.927128>,  <35.215324, 39.208260, 51.973785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.333004, 39.412159, 51.927128>,  <35.529137, 39.751987, 51.849361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333004, 39.412159, 51.927128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051499, 0.250924, 0.966636,
		-0.870012, 0.463963, -0.166789,
		-0.490334, -0.849574, 0.194413,
		35.185905, 39.157288, 51.985451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940418, 39.951855, 52.205864>,  <35.529137, 39.751987, 51.849361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940418, 39.951855, 52.205864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.997082, 39.568333, 52.304348>,  <35.031082, 39.338219, 52.363438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.997082, 39.568333, 52.304348>,  <34.940418, 39.951855, 52.205864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997082, 39.568333, 52.304348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060777, 0.256673, 0.964586,
		-0.988048, -0.121680, 0.094634,
		0.141661, -0.958808, 0.246210,
		35.039581, 39.280689, 52.378212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430099, 39.788177, 52.835892>,  <34.940418, 39.951855, 52.205864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430099, 39.788177, 52.835892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.714310, 39.507679, 52.812542>,  <34.884834, 39.339378, 52.798531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.714310, 39.507679, 52.812542>,  <34.430099, 39.788177, 52.835892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714310, 39.507679, 52.812542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111845, 0.030639, 0.993253,
		-0.694728, -0.712259, 0.100200,
		0.710523, -0.701247, -0.058377,
		34.927467, 39.297306, 52.795029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236366, 39.167492, 53.201534>,  <34.430099, 39.788177, 52.835892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236366, 39.167492, 53.201534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.635792, 39.149513, 53.189842>,  <34.875446, 39.138725, 53.182827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.635792, 39.149513, 53.189842>,  <34.236366, 39.167492, 53.201534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635792, 39.149513, 53.189842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022845, -0.136596, 0.990364,
		-0.048504, -0.989607, -0.135372,
		0.998562, -0.044944, -0.029233,
		34.935360, 39.136028, 53.181072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473923, 38.684826, 53.716370>,  <34.236366, 39.167492, 53.201534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473923, 38.684826, 53.716370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.813660, 38.880157, 53.636211>,  <35.017502, 38.997356, 53.588116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.813660, 38.880157, 53.636211>,  <34.473923, 38.684826, 53.716370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813660, 38.880157, 53.636211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225442, 0.007685, 0.974226,
		0.477285, -0.872625, -0.103563,
		0.849338, 0.488331, -0.200394,
		35.068462, 39.026657, 53.576092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.234680, 35.975487, 37.446060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544529, 35.959183, 37.698502>,  <36.730438, 35.949398, 37.849968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544529, 35.959183, 37.698502>,  <36.234680, 35.975487, 37.446060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544529, 35.959183, 37.698502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622598, 0.126067, 0.772321,
		-0.111045, -0.991184, 0.072275,
		0.774624, -0.040764, 0.631108,
		36.776917, 35.946953, 37.887833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991169, 35.602341, 38.102093>,  <36.234680, 35.975487, 37.446060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991169, 35.602341, 38.102093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310421, 35.826023, 38.191772>,  <36.501972, 35.960232, 38.245583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310421, 35.826023, 38.191772>,  <35.991169, 35.602341, 38.102093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310421, 35.826023, 38.191772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464963, 0.335069, 0.819474,
		0.383137, -0.758294, 0.527443,
		0.798132, 0.559213, 0.224201,
		36.549862, 35.993786, 38.259033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223923, 35.389336, 38.767750>,  <35.991169, 35.602341, 38.102093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223923, 35.389336, 38.767750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360123, 35.762772, 38.723080>,  <36.441841, 35.986832, 38.696278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360123, 35.762772, 38.723080>,  <36.223923, 35.389336, 38.767750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360123, 35.762772, 38.723080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498914, 0.280069, 0.820150,
		0.796960, -0.223543, 0.561144,
		0.340498, 0.933590, -0.111676,
		36.462273, 36.042847, 38.689575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668022, 35.527168, 39.366016>,  <36.223923, 35.389336, 38.767750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668022, 35.527168, 39.366016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568569, 35.885708, 39.219185>,  <36.508896, 36.100830, 39.131084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568569, 35.885708, 39.219185>,  <36.668022, 35.527168, 39.366016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568569, 35.885708, 39.219185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298762, 0.289534, 0.909347,
		0.921370, 0.335763, 0.195806,
		-0.248633, 0.896344, -0.367081,
		36.493980, 36.154610, 39.109062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052769, 35.972778, 39.779564>,  <36.668022, 35.527168, 39.366016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052769, 35.972778, 39.779564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752003, 36.181446, 39.618328>,  <36.571541, 36.306648, 39.521587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752003, 36.181446, 39.618328>,  <37.052769, 35.972778, 39.779564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752003, 36.181446, 39.618328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188841, 0.415372, 0.889834,
		0.631632, 0.745201, -0.213813,
		-0.751917, 0.521672, -0.403087,
		36.526428, 36.337948, 39.497402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135223, 36.568115, 40.014885>,  <37.052769, 35.972778, 39.779564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135223, 36.568115, 40.014885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750465, 36.573513, 39.905651>,  <36.519611, 36.576752, 39.840111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750465, 36.573513, 39.905651>,  <37.135223, 36.568115, 40.014885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750465, 36.573513, 39.905651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244540, 0.404304, 0.881328,
		0.122304, 0.914525, -0.385597,
		-0.961895, 0.013496, -0.273086,
		36.461899, 36.577560, 39.823727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851376, 37.165119, 40.395348>,  <37.135223, 36.568115, 40.014885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851376, 37.165119, 40.395348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527393, 36.959961, 40.281567>,  <36.333004, 36.836864, 40.213299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527393, 36.959961, 40.281567>,  <36.851376, 37.165119, 40.395348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527393, 36.959961, 40.281567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483153, 0.308569, 0.819359,
		-0.332471, 0.801077, -0.497733,
		-0.809954, -0.512895, -0.284453,
		36.284409, 36.806091, 40.196232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283634, 37.542191, 40.661842>,  <36.851376, 37.165119, 40.395348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283634, 37.542191, 40.661842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118401, 37.184086, 40.595078>,  <36.019260, 36.969223, 40.555019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118401, 37.184086, 40.595078>,  <36.283634, 37.542191, 40.661842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118401, 37.184086, 40.595078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706631, 0.199476, 0.678883,
		-0.574486, 0.398383, -0.715023,
		-0.413085, -0.895266, -0.166914,
		35.994476, 36.915504, 40.545002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585754, 37.623871, 40.641415>,  <36.283634, 37.542191, 40.661842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585754, 37.623871, 40.641415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594593, 37.233315, 40.727367>,  <35.599895, 36.998981, 40.778938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594593, 37.233315, 40.727367>,  <35.585754, 37.623871, 40.641415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594593, 37.233315, 40.727367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697028, 0.139034, 0.703436,
		-0.716704, -0.165318, -0.677499,
		0.022096, -0.976391, 0.214877,
		35.601223, 36.940395, 40.791832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807194, 37.446411, 40.737431>,  <35.585754, 37.623871, 40.641415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807194, 37.446411, 40.737431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046623, 37.183693, 40.920879>,  <35.190281, 37.026062, 41.030949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046623, 37.183693, 40.920879>,  <34.807194, 37.446411, 40.737431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046623, 37.183693, 40.920879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619072, -0.015936, 0.785173,
		-0.508386, -0.753904, -0.416140,
		0.598576, -0.656791, 0.458619,
		35.226196, 36.986656, 41.058464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384892, 36.906158, 40.996887>,  <34.807194, 37.446411, 40.737431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384892, 36.906158, 40.996887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711155, 36.891079, 41.227810>,  <34.906914, 36.882030, 41.366364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711155, 36.891079, 41.227810>,  <34.384892, 36.906158, 40.996887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711155, 36.891079, 41.227810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573166, 0.083035, 0.815221,
		-0.078670, -0.995833, 0.046119,
		0.815654, -0.037700, 0.577310,
		34.955853, 36.879768, 41.401005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223740, 36.515003, 41.615326>,  <34.384892, 36.906158, 40.996887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223740, 36.515003, 41.615326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546173, 36.724442, 41.725651>,  <34.739632, 36.850105, 41.791847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546173, 36.724442, 41.725651>,  <34.223740, 36.515003, 41.615326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546173, 36.724442, 41.725651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447919, 0.235190, 0.862586,
		0.386783, -0.818857, 0.424113,
		0.806082, 0.523602, 0.275814,
		34.787998, 36.881523, 41.808395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160343, 35.854610, 41.909321>,  <34.223740, 36.515003, 41.615326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160343, 35.854610, 41.909321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934395, 35.537384, 42.000507>,  <33.798824, 35.347050, 42.055218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934395, 35.537384, 42.000507>,  <34.160343, 35.854610, 41.909321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934395, 35.537384, 42.000507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382971, 0.007253, -0.923732,
		0.730927, -0.609092, -0.307819,
		-0.564870, -0.793066, 0.227963,
		33.764935, 35.299465, 42.068897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161915, 35.523190, 41.268875>,  <34.160343, 35.854610, 41.909321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161915, 35.523190, 41.268875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859600, 35.362686, 41.475861>,  <33.678211, 35.266384, 41.600052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859600, 35.362686, 41.475861>,  <34.161915, 35.523190, 41.268875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859600, 35.362686, 41.475861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458818, -0.239311, -0.855696,
		0.467189, -0.884152, -0.003234,
		-0.755791, -0.401255, 0.517468,
		33.632862, 35.242310, 41.631100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189537, 34.786739, 41.112946>,  <34.161915, 35.523190, 41.268875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189537, 34.786739, 41.112946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832668, 34.933811, 41.217903>,  <33.618549, 35.022053, 41.280880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832668, 34.933811, 41.217903>,  <34.189537, 34.786739, 41.112946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832668, 34.933811, 41.217903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388175, -0.327003, -0.861620,
		-0.230992, -0.870566, 0.434463,
		-0.892168, 0.367675, 0.262397,
		33.565018, 35.044113, 41.296623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744331, 34.385178, 40.807755>,  <34.189537, 34.786739, 41.112946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744331, 34.385178, 40.807755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482231, 34.675518, 40.891464>,  <33.324970, 34.849720, 40.941689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482231, 34.675518, 40.891464>,  <33.744331, 34.385178, 40.807755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482231, 34.675518, 40.891464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483290, -0.189889, -0.854618,
		-0.580585, -0.661126, 0.475220,
		-0.655249, 0.725847, 0.209269,
		33.285656, 34.893272, 40.954247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240959, 34.138012, 40.438698>,  <33.744331, 34.385178, 40.807755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240959, 34.138012, 40.438698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104500, 34.506535, 40.513332>,  <33.022625, 34.727646, 40.558113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104500, 34.506535, 40.513332>,  <33.240959, 34.138012, 40.438698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104500, 34.506535, 40.513332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552324, -0.035844, -0.832859,
		-0.760628, -0.387188, 0.521086,
		-0.341151, 0.921304, 0.186589,
		33.002155, 34.782925, 40.569309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550049, 34.140629, 40.366154>,  <33.240959, 34.138012, 40.438698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550049, 34.140629, 40.366154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654259, 34.521832, 40.304310>,  <32.716785, 34.750553, 40.267204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654259, 34.521832, 40.304310>,  <32.550049, 34.140629, 40.366154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654259, 34.521832, 40.304310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390040, -0.042604, -0.919812,
		-0.883175, 0.299936, 0.360611,
		0.260521, 0.953007, -0.154614,
		32.732414, 34.807735, 40.257927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985313, 34.525642, 40.228630>,  <32.550049, 34.140629, 40.366154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985313, 34.525642, 40.228630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281769, 34.718433, 40.041695>,  <32.459644, 34.834110, 39.929535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281769, 34.718433, 40.041695>,  <31.985313, 34.525642, 40.228630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281769, 34.718433, 40.041695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485028, -0.096882, -0.869115,
		-0.464174, 0.870808, 0.161972,
		0.741141, 0.481982, -0.467337,
		32.504112, 34.863029, 39.901493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650631, 34.747799, 39.640549>,  <31.985313, 34.525642, 40.228630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650631, 34.747799, 39.640549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035477, 34.807743, 39.549438>,  <32.266384, 34.843712, 39.494774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035477, 34.807743, 39.549438>,  <31.650631, 34.747799, 39.640549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035477, 34.807743, 39.549438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207031, -0.142065, -0.967965,
		-0.177420, 0.978447, -0.105656,
		0.962112, 0.149862, -0.227774,
		32.324112, 34.852703, 39.481106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745518, 35.328785, 39.079109>,  <31.650631, 34.747799, 39.640549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745518, 35.328785, 39.079109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074986, 35.103508, 39.052620>,  <32.272667, 34.968342, 39.036724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074986, 35.103508, 39.052620>,  <31.745518, 35.328785, 39.079109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074986, 35.103508, 39.052620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156972, -0.114216, -0.980976,
		0.544913, 0.818395, -0.182481,
		0.823668, -0.563191, -0.066227,
		32.322086, 34.934551, 39.032753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139233, 35.415611, 38.423119>,  <31.745518, 35.328785, 39.079109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139233, 35.415611, 38.423119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234344, 35.052349, 38.560940>,  <32.291412, 34.834393, 38.643631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234344, 35.052349, 38.560940>,  <32.139233, 35.415611, 38.423119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234344, 35.052349, 38.560940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154416, -0.385558, -0.909671,
		0.958966, 0.163097, -0.231911,
		0.237780, -0.908154, 0.344553,
		32.305679, 34.779903, 38.664307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443378, 35.119766, 37.822884>,  <32.139233, 35.415611, 38.423119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443378, 35.119766, 37.822884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315895, 34.841690, 38.080608>,  <32.239403, 34.674843, 38.235241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315895, 34.841690, 38.080608>,  <32.443378, 35.119766, 37.822884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315895, 34.841690, 38.080608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274194, -0.583073, -0.764751,
		0.907326, -0.420401, -0.004785,
		-0.318712, -0.695190, 0.644309,
		32.220280, 34.633133, 38.273899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902313, 34.594196, 37.618637>,  <32.443378, 35.119766, 37.822884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902313, 34.594196, 37.618637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589573, 34.423927, 37.800850>,  <32.401928, 34.321766, 37.910179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589573, 34.423927, 37.800850>,  <32.902313, 34.594196, 37.618637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589573, 34.423927, 37.800850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100718, -0.634822, -0.766065,
		0.615274, -0.644831, 0.453465,
		-0.781853, -0.425668, 0.455536,
		32.355019, 34.296227, 37.937511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119125, 33.896667, 37.706837>,  <32.902313, 34.594196, 37.618637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119125, 33.896667, 37.706837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725708, 33.896008, 37.779106>,  <32.489658, 33.895611, 37.822468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725708, 33.896008, 37.779106>,  <33.119125, 33.896667, 37.706837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725708, 33.896008, 37.779106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100150, -0.827330, -0.552716,
		0.150390, -0.561713, 0.813549,
		-0.983541, -0.001646, 0.180678,
		32.430645, 33.895515, 37.833309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866100, 33.195175, 37.869297>,  <33.119125, 33.896667, 37.706837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866100, 33.195175, 37.869297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563503, 33.402363, 37.709587>,  <32.381943, 33.526676, 37.613762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563503, 33.402363, 37.709587>,  <32.866100, 33.195175, 37.869297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563503, 33.402363, 37.709587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103031, -0.697275, -0.709361,
		-0.645830, -0.495492, 0.580853,
		-0.756497, 0.517972, -0.399270,
		32.336555, 33.557755, 37.589806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387470, 32.730724, 38.188568>,  <32.866100, 33.195175, 37.869297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387470, 32.730724, 38.188568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551067, 32.437069, 37.971767>,  <32.649227, 32.260876, 37.841686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551067, 32.437069, 37.971767>,  <32.387470, 32.730724, 38.188568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551067, 32.437069, 37.971767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498918, -0.317423, 0.806426,
		-0.764071, -0.600239, 0.236450,
		0.408994, -0.734136, -0.542004,
		32.673767, 32.216827, 37.809166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260330, 32.074291, 38.400951>,  <32.387470, 32.730724, 38.188568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260330, 32.074291, 38.400951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625088, 32.080017, 38.236881>,  <32.843941, 32.083450, 38.138439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625088, 32.080017, 38.236881>,  <32.260330, 32.074291, 38.400951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625088, 32.080017, 38.236881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380857, -0.401985, 0.832680,
		-0.152968, -0.915535, -0.372018,
		0.911893, 0.014312, -0.410179,
		32.898655, 32.084309, 38.113827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530071, 31.435736, 38.470238>,  <32.260330, 32.074291, 38.400951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530071, 31.435736, 38.470238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837631, 31.681917, 38.400955>,  <33.022167, 31.829626, 38.359386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837631, 31.681917, 38.400955>,  <32.530071, 31.435736, 38.470238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837631, 31.681917, 38.400955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491838, -0.396277, 0.775280,
		0.408511, -0.681307, -0.607403,
		0.768904, 0.615455, -0.173209,
		33.068302, 31.866554, 38.348991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203777, 31.001442, 38.300339>,  <32.530071, 31.435736, 38.470238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203777, 31.001442, 38.300339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321430, 31.361177, 38.429752>,  <33.392021, 31.577019, 38.507401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321430, 31.361177, 38.429752>,  <33.203777, 31.001442, 38.300339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321430, 31.361177, 38.429752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541220, -0.435732, 0.719179,
		0.787761, -0.036428, -0.614902,
		0.294131, 0.899339, 0.323537,
		33.409668, 31.630980, 38.526814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887180, 30.825733, 38.356953>,  <33.203777, 31.001442, 38.300339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887180, 30.825733, 38.356953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791180, 31.150200, 38.570274>,  <33.733582, 31.344879, 38.698265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791180, 31.150200, 38.570274>,  <33.887180, 30.825733, 38.356953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791180, 31.150200, 38.570274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505251, -0.364714, 0.782116,
		0.828928, 0.457159, -0.322311,
		-0.240000, 0.811166, 0.533301,
		33.719181, 31.393549, 38.730267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516769, 30.954821, 38.598835>,  <33.887180, 30.825733, 38.356953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516769, 30.954821, 38.598835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266644, 31.150398, 38.842117>,  <34.116570, 31.267746, 38.988087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266644, 31.150398, 38.842117>,  <34.516769, 30.954821, 38.598835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266644, 31.150398, 38.842117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463190, -0.394697, 0.793517,
		0.628045, 0.777911, 0.020333,
		-0.625311, 0.488946, 0.608208,
		34.079052, 31.297083, 39.024578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942398, 31.327925, 39.223301>,  <34.516769, 30.954821, 38.598835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942398, 31.327925, 39.223301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569664, 31.284334, 39.361759>,  <34.346024, 31.258181, 39.444832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569664, 31.284334, 39.361759>,  <34.942398, 31.327925, 39.223301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569664, 31.284334, 39.361759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361036, -0.182033, 0.914613,
		-0.036662, 0.977235, 0.208969,
		-0.931831, -0.108977, 0.346143,
		34.290115, 31.251640, 39.465603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024132, 31.585882, 39.994625>,  <34.942398, 31.327925, 39.223301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024132, 31.585882, 39.994625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664310, 31.412085, 39.976662>,  <34.448418, 31.307806, 39.965885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664310, 31.412085, 39.976662>,  <35.024132, 31.585882, 39.994625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664310, 31.412085, 39.976662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025349, -0.050702, 0.998392,
		-0.436070, 0.899248, 0.034596,
		-0.899556, -0.434492, -0.044904,
		34.394444, 31.281736, 39.963192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667984, 31.909872, 40.465961>,  <35.024132, 31.585882, 39.994625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667984, 31.909872, 40.465961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480961, 31.561237, 40.407001>,  <34.368748, 31.352057, 40.371628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480961, 31.561237, 40.407001>,  <34.667984, 31.909872, 40.465961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480961, 31.561237, 40.407001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160141, -0.080467, 0.983809,
		-0.869334, 0.483595, -0.101953,
		-0.467562, -0.871585, -0.147396,
		34.340691, 31.299763, 40.362782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142269, 31.911968, 40.947033>,  <34.667984, 31.909872, 40.465961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142269, 31.911968, 40.947033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169296, 31.520126, 40.871346>,  <34.185513, 31.285021, 40.825932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169296, 31.520126, 40.871346>,  <34.142269, 31.911968, 40.947033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169296, 31.520126, 40.871346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034030, -0.191807, 0.980842,
		-0.997134, -0.059838, -0.046296,
		0.067572, -0.979607, -0.189221,
		34.189568, 31.226244, 40.814579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636700, 31.699726, 41.325752>,  <34.142269, 31.911968, 40.947033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636700, 31.699726, 41.325752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885254, 31.397432, 41.243053>,  <34.034386, 31.216055, 41.193436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885254, 31.397432, 41.243053>,  <33.636700, 31.699726, 41.325752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885254, 31.397432, 41.243053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133490, -0.157902, 0.978390,
		-0.772051, -0.635555, 0.002765,
		0.621384, -0.755736, -0.206748,
		34.071671, 31.170712, 41.181030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419365, 31.041010, 41.624950>,  <33.636700, 31.699726, 41.325752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419365, 31.041010, 41.624950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813812, 31.012550, 41.564941>,  <34.050480, 30.995474, 41.528938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813812, 31.012550, 41.564941>,  <33.419365, 31.041010, 41.624950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813812, 31.012550, 41.564941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143375, -0.090773, 0.985497,
		-0.083699, -0.993329, -0.079318,
		0.986123, -0.071113, -0.150017,
		34.109650, 30.991205, 41.519936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619778, 30.539618, 42.155575>,  <33.419365, 31.041010, 41.624950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619778, 30.539618, 42.155575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948349, 30.737768, 42.042534>,  <34.145493, 30.856659, 41.974709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948349, 30.737768, 42.042534>,  <33.619778, 30.539618, 42.155575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948349, 30.737768, 42.042534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277627, 0.085514, 0.956875,
		0.498179, -0.864460, -0.067286,
		0.821426, 0.495376, -0.282599,
		34.194778, 30.886381, 41.957756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098442, 30.238508, 42.575764>,  <33.619778, 30.539618, 42.155575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098442, 30.238508, 42.575764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290833, 30.569107, 42.458759>,  <34.406265, 30.767467, 42.388557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290833, 30.569107, 42.458759>,  <34.098442, 30.238508, 42.575764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290833, 30.569107, 42.458759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526864, -0.005794, 0.849930,
		0.700772, -0.562908, -0.438240,
		0.480971, 0.826499, -0.292516,
		34.435123, 30.817057, 42.371006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816441, 30.093071, 42.607529>,  <34.098442, 30.238508, 42.575764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816441, 30.093071, 42.607529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776745, 30.488436, 42.653473>,  <34.752926, 30.725655, 42.681038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776745, 30.488436, 42.653473>,  <34.816441, 30.093071, 42.607529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776745, 30.488436, 42.653473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489828, -0.051952, 0.870270,
		0.866153, 0.142627, -0.478996,
		-0.099240, 0.988412, 0.114861,
		34.746971, 30.784960, 42.687931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349773, 30.239719, 42.982811>,  <34.816441, 30.093071, 42.607529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349773, 30.239719, 42.982811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155029, 30.585440, 43.033337>,  <35.038181, 30.792871, 43.063652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155029, 30.585440, 43.033337>,  <35.349773, 30.239719, 42.982811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155029, 30.585440, 43.033337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462856, 0.132633, 0.876454,
		0.740764, 0.485177, -0.464620,
		-0.486860, 0.864298, 0.126318,
		35.008972, 30.844728, 43.071232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775429, 30.654203, 43.405437>,  <35.349773, 30.239719, 42.982811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775429, 30.654203, 43.405437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427017, 30.847921, 43.438328>,  <35.217968, 30.964153, 43.458061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427017, 30.847921, 43.438328>,  <35.775429, 30.654203, 43.405437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427017, 30.847921, 43.438328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262029, 0.316475, 0.911693,
		0.415507, 0.815659, -0.402559,
		-0.871031, 0.484297, 0.082229,
		35.165707, 30.993210, 43.462997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953819, 31.360798, 43.593651>,  <35.775429, 30.654203, 43.405437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953819, 31.360798, 43.593651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585060, 31.299076, 43.735802>,  <35.363804, 31.262043, 43.821091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585060, 31.299076, 43.735802>,  <35.953819, 31.360798, 43.593651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585060, 31.299076, 43.735802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292457, 0.324455, 0.899554,
		-0.254108, 0.933231, -0.253988,
		-0.921899, -0.154303, 0.355377,
		35.308491, 31.252785, 43.842415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896114, 31.900288, 44.041519>,  <35.953819, 31.360798, 43.593651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896114, 31.900288, 44.041519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581615, 31.669664, 44.130421>,  <35.392918, 31.531290, 44.183762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581615, 31.669664, 44.130421>,  <35.896114, 31.900288, 44.041519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581615, 31.669664, 44.130421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012637, 0.374618, 0.927093,
		-0.617784, 0.726115, -0.301828,
		-0.786246, -0.576557, 0.222257,
		35.345741, 31.496696, 44.197098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451969, 32.366447, 44.175045>,  <35.896114, 31.900288, 44.041519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451969, 32.366447, 44.175045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300392, 32.033627, 44.337078>,  <35.209446, 31.833935, 44.434299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300392, 32.033627, 44.337078>,  <35.451969, 32.366447, 44.175045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300392, 32.033627, 44.337078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018055, 0.431001, 0.902171,
		-0.925243, 0.349187, -0.148303,
		-0.378945, -0.832050, 0.405085,
		35.186710, 31.784012, 44.458603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756615, 32.524357, 44.664722>,  <35.451969, 32.366447, 44.175045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756615, 32.524357, 44.664722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900257, 32.170582, 44.783928>,  <34.986443, 31.958317, 44.855450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900257, 32.170582, 44.783928>,  <34.756615, 32.524357, 44.664722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900257, 32.170582, 44.783928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129780, 0.268885, 0.954389,
		-0.924228, -0.381406, -0.018223,
		0.359110, -0.884438, 0.298010,
		35.007992, 31.905251, 44.873329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259537, 32.277813, 45.111980>,  <34.756615, 32.524357, 44.664722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259537, 32.277813, 45.111980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620464, 32.127956, 45.197266>,  <34.837021, 32.038044, 45.248436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620464, 32.127956, 45.197266>,  <34.259537, 32.277813, 45.111980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620464, 32.127956, 45.197266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113538, 0.270609, 0.955971,
		-0.415844, -0.886801, 0.201640,
		0.902321, -0.374641, 0.213217,
		34.891159, 32.015564, 45.261230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126213, 31.859995, 45.733772>,  <34.259537, 32.277813, 45.111980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126213, 31.859995, 45.733772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520332, 31.926992, 45.720333>,  <34.756805, 31.967192, 45.712269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520332, 31.926992, 45.720333>,  <34.126213, 31.859995, 45.733772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520332, 31.926992, 45.720333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013827, 0.117814, 0.992940,
		0.170272, -0.978808, 0.113766,
		0.985300, 0.167496, -0.033594,
		34.815922, 31.977240, 45.710255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407318, 31.380711, 46.208500>,  <34.126213, 31.859995, 45.733772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407318, 31.380711, 46.208500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703434, 31.648901, 46.188755>,  <34.881104, 31.809814, 46.176907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703434, 31.648901, 46.188755>,  <34.407318, 31.380711, 46.208500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703434, 31.648901, 46.188755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167045, -0.112322, 0.979530,
		0.651208, -0.733379, -0.195150,
		0.740287, 0.670477, -0.049362,
		34.925522, 31.850044, 46.173946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950302, 31.055130, 46.551716>,  <34.407318, 31.380711, 46.208500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950302, 31.055130, 46.551716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046112, 31.443027, 46.532860>,  <35.103600, 31.675766, 46.521545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046112, 31.443027, 46.532860>,  <34.950302, 31.055130, 46.551716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046112, 31.443027, 46.532860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385543, -0.050441, 0.921310,
		0.891058, -0.238851, -0.385960,
		0.239524, 0.969745, -0.047141,
		35.117970, 31.733952, 46.518719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651905, 31.088099, 46.941715>,  <34.950302, 31.055130, 46.551716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651905, 31.088099, 46.941715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472763, 31.444256, 46.974274>,  <35.365276, 31.657949, 46.993809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472763, 31.444256, 46.974274>,  <35.651905, 31.088099, 46.941715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472763, 31.444256, 46.974274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301965, 0.064934, 0.951105,
		0.841571, 0.450539, -0.297949,
		-0.447857, 0.890392, 0.081401,
		35.338406, 31.711374, 46.998695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868671, 31.293604, 47.610256>,  <35.651905, 31.088099, 46.941715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868671, 31.293604, 47.610256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607151, 31.587875, 47.539463>,  <35.450237, 31.764439, 47.496986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607151, 31.587875, 47.539463>,  <35.868671, 31.293604, 47.610256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607151, 31.587875, 47.539463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094268, 0.311270, 0.945634,
		0.750771, 0.601572, -0.272860,
		-0.653801, 0.735677, -0.176984,
		35.411011, 31.808578, 47.486366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275982, 31.943716, 47.726242>,  <35.868671, 31.293604, 47.610256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275982, 31.943716, 47.726242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881935, 31.968916, 47.790211>,  <35.645508, 31.984035, 47.828590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881935, 31.968916, 47.790211>,  <36.275982, 31.943716, 47.726242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881935, 31.968916, 47.790211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171591, 0.414474, 0.893738,
		-0.009978, 0.907878, -0.419115,
		-0.985118, 0.062999, 0.159919,
		35.586399, 31.987816, 47.838188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759403, 32.547016, 47.612507>,  <36.275982, 31.943716, 47.726242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759403, 32.547016, 47.612507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147327, 32.510864, 47.703106>,  <37.380081, 32.489174, 47.757465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147327, 32.510864, 47.703106>,  <36.759403, 32.547016, 47.612507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147327, 32.510864, 47.703106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231446, 0.048572, -0.971634,
		0.076819, 0.994722, 0.068025,
		0.969810, -0.090384, 0.226493,
		37.438271, 32.483749, 47.771053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102154, 33.062664, 47.305294>,  <36.759403, 32.547016, 47.612507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102154, 33.062664, 47.305294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360367, 32.762512, 47.362160>,  <37.515293, 32.582420, 47.396278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360367, 32.762512, 47.362160>,  <37.102154, 33.062664, 47.305294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360367, 32.762512, 47.362160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200233, -0.013348, -0.979657,
		0.737016, 0.660869, 0.141635,
		0.645534, -0.750383, 0.142166,
		37.554028, 32.537395, 47.404808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764923, 33.255558, 46.996910>,  <37.102154, 33.062664, 47.305294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764923, 33.255558, 46.996910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750706, 32.857048, 47.028328>,  <37.742176, 32.617943, 47.047176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750706, 32.857048, 47.028328>,  <37.764923, 33.255558, 46.996910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750706, 32.857048, 47.028328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358494, -0.086069, -0.929556,
		0.932855, -0.004881, 0.360218,
		-0.035541, -0.996277, 0.078540,
		37.740044, 32.558167, 47.051891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318157, 33.052975, 46.553017>,  <37.764923, 33.255558, 46.996910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318157, 33.052975, 46.553017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097195, 32.726036, 46.618488>,  <37.964619, 32.529873, 46.657772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097195, 32.726036, 46.618488>,  <38.318157, 33.052975, 46.553017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097195, 32.726036, 46.618488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180082, -0.308732, -0.933946,
		0.813893, -0.486439, 0.317734,
		-0.552402, -0.817351, 0.163676,
		37.931473, 32.480831, 46.667591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667191, 32.429829, 46.282337>,  <38.318157, 33.052975, 46.553017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667191, 32.429829, 46.282337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286987, 32.306160, 46.270004>,  <38.058865, 32.231960, 46.262604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286987, 32.306160, 46.270004>,  <38.667191, 32.429829, 46.282337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286987, 32.306160, 46.270004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113550, -0.253291, -0.960703,
		0.289215, -0.916654, 0.275861,
		-0.950505, -0.309174, -0.030831,
		38.001835, 32.213409, 46.260754>
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
