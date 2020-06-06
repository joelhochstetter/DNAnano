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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.399776, 16.955620, -2.149841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.640045, 16.647820, -2.063068>,  <22.784206, 16.463139, -2.011005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.640045, 16.647820, -2.063068>,  <22.399776, 16.955620, -2.149841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.640045, 16.647820, -2.063068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679285, 0.634304, 0.369093,
		-0.421618, -0.074346, 0.903720,
		0.600674, -0.769501, 0.216932,
		22.820248, 16.416969, -1.997989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.894575, 17.437632, -2.570669>,  <22.399776, 16.955620, -2.149841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.894575, 17.437632, -2.570669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.862404, 17.050831, -2.667363>,  <21.843102, 16.818750, -2.725380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.862404, 17.050831, -2.667363>,  <21.894575, 17.437632, -2.570669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.862404, 17.050831, -2.667363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164820, -0.252086, 0.953566,
		-0.983039, 0.036850, 0.179656,
		-0.080428, -0.967003, -0.241736,
		21.838276, 16.760731, -2.739884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.520960, 17.085443, -2.095569>,  <21.894575, 17.437632, -2.570669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.520960, 17.085443, -2.095569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.719730, 16.781338, -2.262930>,  <21.838993, 16.598873, -2.363346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.719730, 16.781338, -2.262930>,  <21.520960, 17.085443, -2.095569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.719730, 16.781338, -2.262930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244390, -0.340024, 0.908107,
		-0.832668, -0.553516, 0.016834,
		0.496927, -0.760266, -0.418401,
		21.868809, 16.553257, -2.388450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.437449, 16.552158, -1.651213>,  <21.520960, 17.085443, -2.095569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.437449, 16.552158, -1.651213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.764889, 16.458069, -1.860810>,  <21.961353, 16.401615, -1.986568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.764889, 16.458069, -1.860810>,  <21.437449, 16.552158, -1.651213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.764889, 16.458069, -1.860810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364345, -0.492593, 0.790320,
		-0.444017, -0.837867, -0.317533,
		0.818597, -0.235224, -0.523992,
		22.010468, 16.387503, -2.018008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.955130, 17.193449, -1.609535>,  <21.437449, 16.552158, -1.651213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.955130, 17.193449, -1.609535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.289768, 17.283119, -1.409593>,  <21.490551, 17.336922, -1.289628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.289768, 17.283119, -1.409593>,  <20.955130, 17.193449, -1.609535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.289768, 17.283119, -1.409593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094066, 0.840105, -0.534204,
		-0.539686, 0.493932, 0.681741,
		0.836595, 0.224174, 0.499855,
		21.540747, 17.350370, -1.259636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.149147, 17.817488, -1.987179>,  <20.955130, 17.193449, -1.609535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.149147, 17.817488, -1.987179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.426449, 17.837223, -1.699579>,  <21.592831, 17.849064, -1.527018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.426449, 17.837223, -1.699579>,  <21.149147, 17.817488, -1.987179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.426449, 17.837223, -1.699579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215795, 0.937670, -0.272411,
		-0.687626, 0.344007, 0.639397,
		0.693255, 0.049338, 0.719002,
		21.634426, 17.852024, -1.483878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.918306, 18.287354, -1.445230>,  <21.149147, 17.817488, -1.987179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.918306, 18.287354, -1.445230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.315578, 18.266216, -1.486793>,  <21.553942, 18.253534, -1.511730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.315578, 18.266216, -1.486793>,  <20.918306, 18.287354, -1.445230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.315578, 18.266216, -1.486793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030186, 0.977533, -0.208610,
		0.112595, 0.204052, 0.972463,
		0.993182, -0.052843, -0.103906,
		21.613533, 18.250364, -1.517965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.386263, 18.760927, -0.935889>,  <20.918306, 18.287354, -1.445230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.386263, 18.760927, -0.935889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.544964, 18.717617, -1.300496>,  <21.640184, 18.691631, -1.519260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.544964, 18.717617, -1.300496>,  <21.386263, 18.760927, -0.935889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.544964, 18.717617, -1.300496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021550, 0.991646, -0.127176,
		0.917672, 0.070101, 0.391106,
		0.396754, -0.108277, -0.911516,
		21.663990, 18.685133, -1.573951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.052969, 19.127132, -0.998572>,  <21.386263, 18.760927, -0.935889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.052969, 19.127132, -0.998572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.886795, 19.081955, -1.359606>,  <21.787090, 19.054848, -1.576226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.886795, 19.081955, -1.359606>,  <22.052969, 19.127132, -0.998572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.886795, 19.081955, -1.359606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218273, 0.975648, -0.021622,
		0.883046, 0.188027, -0.429971,
		-0.415435, -0.112944, -0.902584,
		21.762165, 19.048071, -1.630381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.441666, 19.472792, -1.443796>,  <22.052969, 19.127132, -0.998572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.441666, 19.472792, -1.443796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.051811, 19.462997, -1.532778>,  <21.817898, 19.457121, -1.586167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.051811, 19.462997, -1.532778>,  <22.441666, 19.472792, -1.443796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.051811, 19.462997, -1.532778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006040, 0.996513, -0.083218,
		0.223716, -0.079764, -0.971385,
		-0.974635, -0.024484, -0.222455,
		21.759420, 19.455652, -1.599514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.240589, 19.780285, -2.093966>,  <22.441666, 19.472792, -1.443796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.240589, 19.780285, -2.093966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.936367, 19.805199, -1.835456>,  <21.753834, 19.820147, -1.680350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.936367, 19.805199, -1.835456>,  <22.240589, 19.780285, -2.093966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.936367, 19.805199, -1.835456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118338, 0.992013, 0.043657,
		-0.638395, 0.109683, -0.761854,
		-0.760557, 0.062286, 0.646276,
		21.708200, 19.823885, -1.641573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.726906, 20.263760, -2.306197>,  <22.240589, 19.780285, -2.093966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.726906, 20.263760, -2.306197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.771839, 20.234882, -1.909780>,  <21.798800, 20.217556, -1.671929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.771839, 20.234882, -1.909780>,  <21.726906, 20.263760, -2.306197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.771839, 20.234882, -1.909780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369363, 0.928927, 0.025802,
		-0.922471, 0.363157, 0.131015,
		0.112333, -0.072194, 0.991044,
		21.805538, 20.213224, -1.612466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.433418, 20.826529, -1.982838>,  <21.726906, 20.263760, -2.306197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.433418, 20.826529, -1.982838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.754402, 20.736416, -1.761820>,  <21.946993, 20.682348, -1.629209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.754402, 20.736416, -1.761820>,  <21.433418, 20.826529, -1.982838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.754402, 20.736416, -1.761820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364866, 0.917961, -0.155629,
		-0.472154, 0.326491, 0.818825,
		0.802461, -0.225280, 0.552545,
		21.995140, 20.668831, -1.596056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.456718, 21.207045, -1.291788>,  <21.433418, 20.826529, -1.982838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.456718, 21.207045, -1.291788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.814968, 21.113945, -1.443413>,  <22.029917, 21.058084, -1.534389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.814968, 21.113945, -1.443413>,  <21.456718, 21.207045, -1.291788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.814968, 21.113945, -1.443413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094319, 0.932171, -0.349516,
		0.434702, 0.277281, 0.856825,
		0.895622, -0.232750, -0.379063,
		22.083654, 21.044121, -1.557132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.177509, 21.428894, -0.984884>,  <21.456718, 21.207045, -1.291788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.177509, 21.428894, -0.984884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.044010, 21.453518, -1.361144>,  <21.963911, 21.468292, -1.586900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.044010, 21.453518, -1.361144>,  <22.177509, 21.428894, -0.984884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.044010, 21.453518, -1.361144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120863, 0.992424, 0.022064,
		0.934882, -0.106326, -0.338661,
		-0.333749, 0.061559, -0.940650,
		21.943886, 21.471985, -1.643339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.869968, 20.636688, -0.846776>,  <22.177509, 21.428894, -0.984884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.869968, 20.636688, -0.846776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.957256, 20.686604, -0.459621>,  <22.009630, 20.716553, -0.227328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.957256, 20.686604, -0.459621>,  <21.869968, 20.636688, -0.846776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.957256, 20.686604, -0.459621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137047, -0.985882, 0.096207,
		0.966228, 0.111652, -0.232242,
		0.218222, 0.124786, 0.967888,
		22.022722, 20.724039, -0.169255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.537893, 20.412798, -0.630661>,  <21.869968, 20.636688, -0.846776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.537893, 20.412798, -0.630661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.338436, 20.358994, -0.288138>,  <22.218761, 20.326712, -0.082624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.338436, 20.358994, -0.288138>,  <22.537893, 20.412798, -0.630661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.338436, 20.358994, -0.288138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062366, -0.990893, -0.119335,
		0.864562, -0.006101, 0.502490,
		-0.498642, -0.134511, 0.856308,
		22.188843, 20.318640, -0.031245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.954317, 19.969212, -0.212029>,  <22.537893, 20.412798, -0.630661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.954317, 19.969212, -0.212029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.573971, 19.893127, -0.114317>,  <22.345762, 19.847477, -0.055690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.573971, 19.893127, -0.114317>,  <22.954317, 19.969212, -0.212029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.573971, 19.893127, -0.114317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235989, -0.956017, 0.174187,
		0.200403, 0.223275, 0.953932,
		-0.950867, -0.190210, 0.244279,
		22.288712, 19.836065, -0.041034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.628262, 19.613482, -0.022766>,  <22.954317, 19.969212, -0.212029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.628262, 19.613482, -0.022766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.860046, 19.703861, 0.290454>,  <23.999117, 19.758089, 0.478386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.860046, 19.703861, 0.290454>,  <23.628262, 19.613482, -0.022766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.860046, 19.703861, 0.290454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290110, -0.955054, 0.060897,
		0.761616, 0.191883, -0.618969,
		0.579463, 0.225950, 0.783051,
		24.033886, 19.771646, 0.525369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.319592, 19.365808, -0.045259>,  <23.628262, 19.613482, -0.022766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.319592, 19.365808, -0.045259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188770, 19.373093, 0.332673>,  <24.110277, 19.377462, 0.559432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188770, 19.373093, 0.332673>,  <24.319592, 19.365808, -0.045259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188770, 19.373093, 0.332673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371495, -0.916841, 0.146264,
		0.868922, 0.398836, 0.293093,
		-0.327055, 0.018209, 0.944830,
		24.090654, 19.378555, 0.616122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.797665, 19.403133, 0.550031>,  <24.319592, 19.365808, -0.045259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.797665, 19.403133, 0.550031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460876, 19.193027, 0.599310>,  <24.258802, 19.066963, 0.628877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460876, 19.193027, 0.599310>,  <24.797665, 19.403133, 0.550031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.460876, 19.193027, 0.599310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538940, -0.829429, 0.146941,
		0.025000, 0.190116, 0.981443,
		-0.841973, -0.525266, 0.123197,
		24.208284, 19.035448, 0.636269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.807821, 19.716665, 1.252582>,  <24.797665, 19.403133, 0.550031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.807821, 19.716665, 1.252582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494102, 19.494370, 1.362880>,  <24.305872, 19.360992, 1.429059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494102, 19.494370, 1.362880>,  <24.807821, 19.716665, 1.252582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.494102, 19.494370, 1.362880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045518, 0.494822, 0.867801,
		-0.618715, 0.668062, -0.413383,
		-0.784296, -0.555738, 0.275745,
		24.258814, 19.327648, 1.445604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.257057, 20.248720, 1.489827>,  <24.807821, 19.716665, 1.252582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.257057, 20.248720, 1.489827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.224133, 19.895683, 1.674979>,  <24.204378, 19.683861, 1.786070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.224133, 19.895683, 1.674979>,  <24.257057, 20.248720, 1.489827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.224133, 19.895683, 1.674979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261046, 0.429147, 0.864689,
		-0.961811, 0.192006, 0.195074,
		-0.082311, -0.882591, 0.462880,
		24.199440, 19.630905, 1.813843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.908018, 20.402309, 2.107547>,  <24.257057, 20.248720, 1.489827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.908018, 20.402309, 2.107547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.119373, 20.065384, 2.150084>,  <24.246187, 19.863228, 2.175607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.119373, 20.065384, 2.150084>,  <23.908018, 20.402309, 2.107547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.119373, 20.065384, 2.150084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215021, 0.253942, 0.943016,
		-0.821322, -0.475414, 0.315295,
		0.528390, -0.842316, 0.106344,
		24.277891, 19.812689, 2.181988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.746819, 20.247385, 2.786834>,  <23.908018, 20.402309, 2.107547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.746819, 20.247385, 2.786834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.091373, 20.062843, 2.701823>,  <24.298105, 19.952118, 2.650816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.091373, 20.062843, 2.701823>,  <23.746819, 20.247385, 2.786834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.091373, 20.062843, 2.701823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227183, -0.024311, 0.973549,
		-0.454317, -0.886883, 0.083871,
		0.861385, -0.461354, -0.212529,
		24.349789, 19.924437, 2.638064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.877121, 19.641802, 3.248824>,  <23.746819, 20.247385, 2.786834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.877121, 19.641802, 3.248824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211613, 19.822231, 3.124082>,  <24.412308, 19.930489, 3.049236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211613, 19.822231, 3.124082>,  <23.877121, 19.641802, 3.248824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.211613, 19.822231, 3.124082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317837, 0.064757, 0.945931,
		0.446880, -0.890134, -0.089217,
		0.836228, 0.451074, -0.311856,
		24.462481, 19.957554, 3.030525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.288956, 19.353842, 3.663995>,  <23.877121, 19.641802, 3.248824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.288956, 19.353842, 3.663995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496658, 19.653221, 3.498975>,  <24.621281, 19.832850, 3.399963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496658, 19.653221, 3.498975>,  <24.288956, 19.353842, 3.663995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.496658, 19.653221, 3.498975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495365, 0.129778, 0.858936,
		0.696409, -0.650371, -0.303367,
		0.519257, 0.748448, -0.412549,
		24.652435, 19.877756, 3.375210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.955868, 19.461821, 3.936685>,  <24.288956, 19.353842, 3.663995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.955868, 19.461821, 3.936685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898914, 19.825382, 3.779909>,  <24.864742, 20.043520, 3.685843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898914, 19.825382, 3.779909>,  <24.955868, 19.461821, 3.936685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898914, 19.825382, 3.779909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262137, 0.416461, 0.870542,
		0.954469, 0.021209, -0.297555,
		-0.142384, 0.908906, -0.391940,
		24.856199, 20.098055, 3.662327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582417, 20.001427, 4.112392>,  <24.955868, 19.461821, 3.936685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582417, 20.001427, 4.112392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229019, 20.181145, 4.059370>,  <25.016981, 20.288975, 4.027556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229019, 20.181145, 4.059370>,  <25.582417, 20.001427, 4.112392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.229019, 20.181145, 4.059370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127386, 0.502747, 0.854996,
		0.450786, 0.738499, -0.501408,
		-0.883496, 0.449293, -0.132557,
		24.963970, 20.315933, 4.019603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748522, 20.686834, 4.245090>,  <25.582417, 20.001427, 4.112392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748522, 20.686834, 4.245090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360638, 20.607731, 4.302430>,  <25.127907, 20.560268, 4.336834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360638, 20.607731, 4.302430>,  <25.748522, 20.686834, 4.245090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.360638, 20.607731, 4.302430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022794, 0.511069, 0.859237,
		-0.243186, 0.836480, -0.491082,
		-0.969712, -0.197760, 0.143352,
		25.069725, 20.548403, 4.345436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311232, 21.245846, 4.471572>,  <25.748522, 20.686834, 4.245090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311232, 21.245846, 4.471572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084835, 20.945053, 4.606732>,  <24.948997, 20.764578, 4.687829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084835, 20.945053, 4.606732>,  <25.311232, 21.245846, 4.471572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.084835, 20.945053, 4.606732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237434, 0.541189, 0.806684,
		-0.789480, 0.376348, -0.484854,
		-0.565992, -0.751982, 0.337900,
		24.915037, 20.719460, 4.708102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.607300, 21.472210, 4.636350>,  <25.311232, 21.245846, 4.471572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.607300, 21.472210, 4.636350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708199, 21.155220, 4.858469>,  <24.768738, 20.965027, 4.991742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708199, 21.155220, 4.858469>,  <24.607300, 21.472210, 4.636350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.708199, 21.155220, 4.858469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334983, 0.466862, 0.818429,
		-0.907832, -0.392461, -0.147702,
		0.252245, -0.792474, 0.555300,
		24.783873, 20.917479, 5.025059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.989744, 21.148912, 4.963330>,  <24.607300, 21.472210, 4.636350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.989744, 21.148912, 4.963330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304764, 21.077053, 5.199124>,  <24.493776, 21.033937, 5.340600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304764, 21.077053, 5.199124>,  <23.989744, 21.148912, 4.963330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.304764, 21.077053, 5.199124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501661, 0.368671, 0.782571,
		-0.357913, -0.912035, 0.200225,
		0.787550, -0.179647, 0.589485,
		24.541029, 21.023159, 5.375970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.867968, 20.672199, 5.605116>,  <23.989744, 21.148912, 4.963330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.867968, 20.672199, 5.605116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.185982, 20.904018, 5.676712>,  <24.376791, 21.043110, 5.719670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.185982, 20.904018, 5.676712>,  <23.867968, 20.672199, 5.605116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.185982, 20.904018, 5.676712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328002, 0.162554, 0.930586,
		0.510226, -0.798560, 0.319330,
		0.795037, 0.579550, 0.178990,
		24.424494, 21.077883, 5.730409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.179190, 20.343084, 6.274040>,  <23.867968, 20.672199, 5.605116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.179190, 20.343084, 6.274040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223969, 20.739002, 6.238770>,  <24.250835, 20.976553, 6.217607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223969, 20.739002, 6.238770>,  <24.179190, 20.343084, 6.274040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.223969, 20.739002, 6.238770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235910, 0.112669, 0.965221,
		0.965306, -0.087250, 0.246115,
		0.111945, 0.989795, -0.088177,
		24.257551, 21.035940, 6.212317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.687088, 20.611696, 6.799929>,  <24.179190, 20.343084, 6.274040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.687088, 20.611696, 6.799929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438892, 20.897152, 6.669877>,  <24.289974, 21.068426, 6.591846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438892, 20.897152, 6.669877>,  <24.687088, 20.611696, 6.799929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.438892, 20.897152, 6.669877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233628, 0.227549, 0.945325,
		0.748604, 0.662525, 0.025534,
		-0.620491, 0.713640, -0.325129,
		24.252745, 21.111244, 6.572339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782698, 21.127375, 7.254600>,  <24.687088, 20.611696, 6.799929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.782698, 21.127375, 7.254600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.423203, 21.205769, 7.097702>,  <24.207504, 21.252806, 7.003563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.423203, 21.205769, 7.097702>,  <24.782698, 21.127375, 7.254600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.423203, 21.205769, 7.097702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356325, 0.194882, 0.913812,
		0.255535, 0.961046, -0.105314,
		-0.898740, 0.195985, -0.392244,
		24.153580, 21.264565, 6.980029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.582235, 21.657211, 7.732463>,  <24.782698, 21.127375, 7.254600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.582235, 21.657211, 7.732463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.244980, 21.513943, 7.572048>,  <24.042627, 21.427982, 7.475799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.244980, 21.513943, 7.572048>,  <24.582235, 21.657211, 7.732463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.244980, 21.513943, 7.572048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443176, 0.040545, 0.895517,
		-0.304489, 0.932775, -0.192917,
		-0.843138, -0.358171, -0.401038,
		23.992039, 21.406492, 7.451737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.206179, 22.027809, 8.150369>,  <24.582235, 21.657211, 7.732463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.206179, 22.027809, 8.150369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.972176, 21.742588, 7.995800>,  <23.831774, 21.571455, 7.903059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.972176, 21.742588, 7.995800>,  <24.206179, 22.027809, 8.150369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.972176, 21.742588, 7.995800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498254, -0.059961, 0.864955,
		-0.639930, 0.698540, -0.320204,
		-0.585006, -0.713054, -0.386421,
		23.796673, 21.528671, 7.879874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.575912, 22.210045, 8.339927>,  <24.206179, 22.027809, 8.150369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.575912, 22.210045, 8.339927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.509964, 21.819744, 8.282345>,  <23.470394, 21.585564, 8.247796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.509964, 21.819744, 8.282345>,  <23.575912, 22.210045, 8.339927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.509964, 21.819744, 8.282345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359409, -0.076481, 0.930041,
		-0.918500, 0.205075, -0.338085,
		-0.164871, -0.975754, -0.143954,
		23.460503, 21.527018, 8.239159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.892124, 22.026361, 8.492784>,  <23.575912, 22.210045, 8.339927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.892124, 22.026361, 8.492784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.102627, 21.693359, 8.562048>,  <23.228930, 21.493557, 8.603606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.102627, 21.693359, 8.562048>,  <22.892124, 22.026361, 8.492784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.102627, 21.693359, 8.562048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470937, -0.115795, 0.874534,
		-0.708004, -0.541779, -0.452997,
		0.526259, -0.832506, 0.173160,
		23.260504, 21.443607, 8.613997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.363190, 21.619665, 8.838968>,  <22.892124, 22.026361, 8.492784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.363190, 21.619665, 8.838968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.719837, 21.463451, 8.930623>,  <22.933825, 21.369724, 8.985616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.719837, 21.463451, 8.930623>,  <22.363190, 21.619665, 8.838968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.719837, 21.463451, 8.930623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353221, -0.283293, 0.891616,
		-0.283293, -0.875916, -0.390533,
		-0.891616, 0.390533, -0.229137,
		22.987322, 21.346291, 8.999364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.196115, 20.921612, 9.090394>,  <22.363190, 21.619665, 8.838968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.196115, 20.921612, 9.090394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.552486, 21.041325, 9.227029>,  <22.766308, 21.113153, 9.309010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.552486, 21.041325, 9.227029>,  <22.196115, 20.921612, 9.090394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.552486, 21.041325, 9.227029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249166, -0.306717, 0.918608,
		0.379694, -0.903523, -0.198691,
		0.890926, 0.299283, 0.341586,
		22.819763, 21.131109, 9.329505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.390600, 20.357456, 9.514990>,  <22.196115, 20.921612, 9.090394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.390600, 20.357456, 9.514990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.616932, 20.665321, 9.633280>,  <22.752731, 20.850040, 9.704254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.616932, 20.665321, 9.633280>,  <22.390600, 20.357456, 9.514990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.616932, 20.665321, 9.633280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027974, -0.340537, 0.939815,
		0.824046, -0.540049, -0.171156,
		0.565831, 0.769663, 0.295726,
		22.786682, 20.896221, 9.721997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.922251, 20.077763, 9.980509>,  <22.390600, 20.357456, 9.514990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.922251, 20.077763, 9.980509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.901485, 20.469749, 10.057422>,  <22.889027, 20.704941, 10.103569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.901485, 20.469749, 10.057422>,  <22.922251, 20.077763, 9.980509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.901485, 20.469749, 10.057422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134045, -0.197636, 0.971067,
		0.989614, 0.024636, 0.141620,
		-0.051912, 0.979966, 0.192282,
		22.885912, 20.763739, 10.115107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.353611, 20.186890, 10.678382>,  <22.922251, 20.077763, 9.980509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.353611, 20.186890, 10.678382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.108166, 20.499725, 10.634904>,  <22.960899, 20.687428, 10.608817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.108166, 20.499725, 10.634904>,  <23.353611, 20.186890, 10.678382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.108166, 20.499725, 10.634904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149942, 0.019739, 0.988498,
		0.775241, 0.622851, 0.105156,
		-0.613611, 0.782091, -0.108694,
		22.924082, 20.734352, 10.602296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.728134, 20.740841, 11.139630>,  <23.353611, 20.186890, 10.678382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.728134, 20.740841, 11.139630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.341370, 20.838547, 11.110202>,  <23.109310, 20.897171, 11.092545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.341370, 20.838547, 11.110202>,  <23.728134, 20.740841, 11.139630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.341370, 20.838547, 11.110202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108641, -0.133351, 0.985096,
		0.230814, 0.960496, 0.155476,
		-0.966914, 0.244265, -0.073570,
		23.051296, 20.911827, 11.088131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.623968, 21.202475, 11.686026>,  <23.728134, 20.740841, 11.139630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.623968, 21.202475, 11.686026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.259289, 21.067558, 11.592183>,  <23.040482, 20.986609, 11.535878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.259289, 21.067558, 11.592183>,  <23.623968, 21.202475, 11.686026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.259289, 21.067558, 11.592183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234311, -0.042214, 0.971245,
		-0.337495, 0.940454, -0.040544,
		-0.911699, -0.337290, -0.234606,
		22.985779, 20.966372, 11.521801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.155653, 21.689194, 12.028250>,  <23.623968, 21.202475, 11.686026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.155653, 21.689194, 12.028250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.937477, 21.364956, 11.942989>,  <22.806572, 21.170414, 11.891833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.937477, 21.364956, 11.942989>,  <23.155653, 21.689194, 12.028250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.937477, 21.364956, 11.942989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357847, -0.004747, 0.933768,
		-0.757917, 0.585592, -0.287479,
		-0.545442, -0.810592, -0.213150,
		22.773844, 21.121778, 11.879045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.598719, 21.895027, 12.264489>,  <23.155653, 21.689194, 12.028250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.598719, 21.895027, 12.264489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.562889, 21.496658, 12.260214>,  <22.541391, 21.257637, 12.257648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.562889, 21.496658, 12.260214>,  <22.598719, 21.895027, 12.264489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.562889, 21.496658, 12.260214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359041, 0.022278, 0.933056,
		-0.929014, 0.087414, -0.359573,
		-0.089572, -0.995923, -0.010689,
		22.536016, 21.197882, 12.257008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.867954, 21.646042, 12.567573>,  <22.598719, 21.895027, 12.264489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.867954, 21.646042, 12.567573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.106865, 21.329227, 12.618064>,  <22.250212, 21.139139, 12.648359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.106865, 21.329227, 12.618064>,  <21.867954, 21.646042, 12.567573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.106865, 21.329227, 12.618064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256706, -0.039681, 0.965675,
		-0.759842, -0.609180, -0.227022,
		0.597278, -0.792039, 0.126229,
		22.286049, 21.091616, 12.655932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.424070, 21.277990, 12.898028>,  <21.867954, 21.646042, 12.567573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.424070, 21.277990, 12.898028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.792511, 21.136051, 12.962099>,  <22.013575, 21.050888, 13.000542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.792511, 21.136051, 12.962099>,  <21.424070, 21.277990, 12.898028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.792511, 21.136051, 12.962099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211559, -0.110821, 0.971062,
		-0.326828, -0.928333, -0.177149,
		0.921100, -0.354847, 0.160178,
		22.068842, 21.029596, 13.010153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.315723, 20.776182, 13.443485>,  <21.424070, 21.277990, 12.898028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.315723, 20.776182, 13.443485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.711159, 20.835201, 13.455654>,  <21.948420, 20.870613, 13.462955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.711159, 20.835201, 13.455654>,  <21.315723, 20.776182, 13.443485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.711159, 20.835201, 13.455654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009251, -0.142102, 0.989809,
		0.150367, -0.978793, -0.139115,
		0.988587, 0.147547, 0.030422,
		22.007734, 20.879465, 13.464781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.603180, 20.238049, 13.943925>,  <21.315723, 20.776182, 13.443485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.603180, 20.238049, 13.943925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.848930, 20.553524, 13.934843>,  <21.996380, 20.742809, 13.929394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.848930, 20.553524, 13.934843>,  <21.603180, 20.238049, 13.943925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.848930, 20.553524, 13.934843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147291, -0.086371, 0.985315,
		0.775144, -0.608698, -0.169231,
		0.614376, 0.788687, -0.022706,
		22.033243, 20.790131, 13.928031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.172096, 20.004131, 14.375368>,  <21.603180, 20.238049, 13.943925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.172096, 20.004131, 14.375368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.216713, 20.401566, 14.367889>,  <22.243483, 20.640026, 14.363402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.216713, 20.401566, 14.367889>,  <22.172096, 20.004131, 14.375368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.216713, 20.401566, 14.367889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049628, 0.013220, 0.998680,
		0.992520, -0.112322, -0.047835,
		0.111541, 0.993584, -0.018696,
		22.250175, 20.699640, 14.362281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.784887, 20.186584, 14.861423>,  <22.172096, 20.004131, 14.375368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.784887, 20.186584, 14.861423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.540962, 20.498032, 14.802254>,  <22.394608, 20.684900, 14.766751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.540962, 20.498032, 14.802254>,  <22.784887, 20.186584, 14.861423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.540962, 20.498032, 14.802254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156795, 0.064433, 0.985527,
		0.776881, 0.624181, 0.082792,
		-0.609813, 0.778618, -0.147925,
		22.358019, 20.731617, 14.757876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.045109, 20.641926, 15.273898>,  <22.784887, 20.186584, 14.861423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.045109, 20.641926, 15.273898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.688320, 20.816303, 15.226002>,  <22.474247, 20.920931, 15.197264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.688320, 20.816303, 15.226002>,  <23.045109, 20.641926, 15.273898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.688320, 20.816303, 15.226002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055257, 0.157747, 0.985932,
		0.448701, 0.886041, -0.116617,
		-0.891972, 0.435945, -0.119741,
		22.420729, 20.947086, 15.190080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.049582, 21.256023, 15.744284>,  <23.045109, 20.641926, 15.273898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.049582, 21.256023, 15.744284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.662189, 21.186256, 15.673151>,  <22.429754, 21.144396, 15.630471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.662189, 21.186256, 15.673151>,  <23.049582, 21.256023, 15.744284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.662189, 21.186256, 15.673151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201288, 0.127470, 0.971203,
		-0.146727, 0.976386, -0.158560,
		-0.968481, -0.174418, -0.177831,
		22.371645, 21.133930, 15.619802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.770838, 21.631212, 16.194483>,  <23.049582, 21.256023, 15.744284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.770838, 21.631212, 16.194483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.457207, 21.395275, 16.117222>,  <22.269028, 21.253714, 16.070866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.457207, 21.395275, 16.117222>,  <22.770838, 21.631212, 16.194483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.457207, 21.395275, 16.117222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257820, 0.026442, 0.965831,
		-0.564580, 0.807085, -0.172806,
		-0.784078, -0.589842, -0.193154,
		22.221983, 21.218323, 16.059277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.299753, 22.002737, 16.483833>,  <22.770838, 21.631212, 16.194483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.299753, 22.002737, 16.483833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.158039, 21.630051, 16.451870>,  <22.073009, 21.406439, 16.432692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.158039, 21.630051, 16.451870>,  <22.299753, 22.002737, 16.483833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.158039, 21.630051, 16.451870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329586, 0.044444, 0.943079,
		-0.875131, 0.360457, -0.322827,
		-0.354287, -0.931717, -0.079908,
		22.051754, 21.350536, 16.427898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.684307, 22.113167, 16.761520>,  <22.299753, 22.002737, 16.483833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.684307, 22.113167, 16.761520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.755547, 21.721821, 16.803623>,  <21.798290, 21.487013, 16.828886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.755547, 21.721821, 16.803623>,  <21.684307, 22.113167, 16.761520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.755547, 21.721821, 16.803623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451049, 0.013902, 0.892391,
		-0.874549, -0.206409, -0.438816,
		0.178097, -0.978367, 0.105259,
		21.808975, 21.428310, 16.835201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004847, 21.804613, 16.877426>,  <21.684307, 22.113167, 16.761520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.004847, 21.804613, 16.877426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.262589, 21.542217, 17.034645>,  <21.417233, 21.384779, 17.128977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.262589, 21.542217, 17.034645>,  <21.004847, 21.804613, 16.877426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.262589, 21.542217, 17.034645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602212, -0.118491, 0.789494,
		-0.471329, -0.745409, -0.471396,
		0.644352, -0.655992, 0.393046,
		21.455894, 21.345421, 17.152559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.537373, 21.275368, 17.141500>,  <21.004847, 21.804613, 16.877426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.537373, 21.275368, 17.141500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.890377, 21.200512, 17.314081>,  <21.102180, 21.155600, 17.417629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.890377, 21.200512, 17.314081>,  <20.537373, 21.275368, 17.141500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.890377, 21.200512, 17.314081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469599, -0.300979, 0.829993,
		-0.025463, -0.935089, -0.353497,
		0.882512, -0.187136, 0.431454,
		21.155130, 21.144371, 17.443518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.424845, 20.645838, 17.557869>,  <20.537373, 21.275368, 17.141500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.424845, 20.645838, 17.557869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.755291, 20.829742, 17.688194>,  <20.953558, 20.940084, 17.766390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.755291, 20.829742, 17.688194>,  <20.424845, 20.645838, 17.557869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.755291, 20.829742, 17.688194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264180, -0.194719, 0.944613,
		0.497738, -0.866432, -0.039401,
		0.826115, 0.459761, 0.325813,
		21.003126, 20.967670, 17.785938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787897, 20.141617, 17.880188>,  <20.424845, 20.645838, 17.557869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.787897, 20.141617, 17.880188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.910320, 20.478783, 18.057196>,  <20.983774, 20.681082, 18.163401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.910320, 20.478783, 18.057196>,  <20.787897, 20.141617, 17.880188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.910320, 20.478783, 18.057196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342694, -0.336120, 0.877260,
		0.888195, -0.420140, 0.185990,
		0.306057, 0.842915, 0.442519,
		21.002138, 20.731657, 18.189951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.071198, 19.916676, 18.408121>,  <20.787897, 20.141617, 17.880188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.071198, 19.916676, 18.408121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.000317, 20.302700, 18.485329>,  <20.957788, 20.534315, 18.531654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.000317, 20.302700, 18.485329>,  <21.071198, 19.916676, 18.408121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.000317, 20.302700, 18.485329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408759, -0.250576, 0.877569,
		0.895274, 0.076609, 0.438880,
		-0.177203, 0.965061, 0.193020,
		20.947155, 20.592218, 18.543234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.387842, 20.005812, 19.029123>,  <21.071198, 19.916676, 18.408121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.387842, 20.005812, 19.029123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.147694, 20.320354, 18.970884>,  <21.003605, 20.509079, 18.935940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.147694, 20.320354, 18.970884>,  <21.387842, 20.005812, 19.029123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.147694, 20.320354, 18.970884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332256, -0.079658, 0.939819,
		0.727434, 0.612617, 0.309096,
		-0.600371, 0.786356, -0.145600,
		20.967583, 20.556261, 18.927204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.553970, 20.564301, 19.562798>,  <21.387842, 20.005812, 19.029123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.553970, 20.564301, 19.562798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.182171, 20.624409, 19.428066>,  <20.959091, 20.660473, 19.347227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.182171, 20.624409, 19.428066>,  <21.553970, 20.564301, 19.562798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.182171, 20.624409, 19.428066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354839, -0.115226, 0.927800,
		0.100609, 0.981907, 0.160424,
		-0.929498, 0.150270, -0.336826,
		20.903322, 20.669489, 19.327019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.255945, 20.977314, 20.087082>,  <21.553970, 20.564301, 19.562798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.255945, 20.977314, 20.087082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.939964, 20.856823, 19.873451>,  <20.750376, 20.784529, 19.745274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.939964, 20.856823, 19.873451>,  <21.255945, 20.977314, 20.087082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.939964, 20.856823, 19.873451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547867, -0.044389, 0.835387,
		-0.275349, 0.952519, -0.129967,
		-0.789953, -0.301227, -0.534075,
		20.702978, 20.766455, 19.713228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.677757, 21.384127, 20.216986>,  <21.255945, 20.977314, 20.087082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.677757, 21.384127, 20.216986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.524040, 21.041050, 20.080347>,  <20.431810, 20.835205, 19.998363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.524040, 21.041050, 20.080347>,  <20.677757, 21.384127, 20.216986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.524040, 21.041050, 20.080347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650959, -0.010643, 0.759038,
		-0.654654, 0.514058, -0.554231,
		-0.384291, -0.857689, -0.341598,
		20.408752, 20.783743, 19.977867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.934046, 21.487295, 20.200857>,  <20.677757, 21.384127, 20.216986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.934046, 21.487295, 20.200857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.972881, 21.089256, 20.208384>,  <19.996181, 20.850433, 20.212900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.972881, 21.089256, 20.208384>,  <19.934046, 21.487295, 20.200857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.972881, 21.089256, 20.208384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699556, -0.054780, 0.712475,
		-0.707951, -0.082334, -0.701445,
		0.097087, -0.995098, 0.018816,
		20.002007, 20.790728, 20.214027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.266890, 21.206842, 20.168299>,  <19.934046, 21.487295, 20.200857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.266890, 21.206842, 20.168299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.487598, 20.909840, 20.320211>,  <19.620024, 20.731638, 20.411358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.487598, 20.909840, 20.320211>,  <19.266890, 21.206842, 20.168299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.487598, 20.909840, 20.320211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610862, -0.049785, 0.790170,
		-0.567799, -0.667986, -0.481039,
		0.551772, -0.742507, 0.379779,
		19.653130, 20.687088, 20.434145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.784527, 20.712116, 20.391251>,  <19.266890, 21.206842, 20.168299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.784527, 20.712116, 20.391251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.108654, 20.586441, 20.589108>,  <19.303129, 20.511036, 20.707823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.108654, 20.586441, 20.589108>,  <18.784527, 20.712116, 20.391251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.108654, 20.586441, 20.589108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558685, -0.159543, 0.813890,
		-0.176812, -0.935853, -0.304822,
		0.810314, -0.314205, 0.494638,
		19.351749, 20.492184, 20.737501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.550081, 20.071808, 20.763302>,  <18.784527, 20.712116, 20.391251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.550081, 20.071808, 20.763302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.890697, 20.172108, 20.947477>,  <19.095068, 20.232288, 21.057981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.890697, 20.172108, 20.947477>,  <18.550081, 20.071808, 20.763302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.890697, 20.172108, 20.947477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384753, -0.297698, 0.873694,
		0.356150, -0.921141, -0.157026,
		0.851542, 0.250750, 0.460437,
		19.146160, 20.247332, 21.085608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.596354, 19.610243, 21.259161>,  <18.550081, 20.071808, 20.763302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.596354, 19.610243, 21.259161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.846836, 19.897705, 21.380089>,  <18.997126, 20.070183, 21.452644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.846836, 19.897705, 21.380089>,  <18.596354, 19.610243, 21.259161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.846836, 19.897705, 21.380089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218852, -0.210141, 0.952861,
		0.748309, -0.662852, 0.025688,
		0.626208, 0.718657, 0.302317,
		19.034698, 20.113302, 21.470783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.935823, 19.393478, 21.825542>,  <18.596354, 19.610243, 21.259161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.935823, 19.393478, 21.825542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.974922, 19.789570, 21.865335>,  <18.998381, 20.027224, 21.889212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.974922, 19.789570, 21.865335>,  <18.935823, 19.393478, 21.825542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.974922, 19.789570, 21.865335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402529, -0.052082, 0.913924,
		0.910174, -0.129376, 0.393505,
		0.097745, 0.990227, 0.099481,
		19.004246, 20.086637, 21.895180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.135353, 19.546122, 22.583248>,  <18.935823, 19.393478, 21.825542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.135353, 19.546122, 22.583248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.973351, 19.878258, 22.430143>,  <18.876150, 20.077539, 22.338280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.973351, 19.878258, 22.430143>,  <19.135353, 19.546122, 22.583248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.973351, 19.878258, 22.430143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531247, 0.127010, 0.837643,
		0.744143, 0.542590, 0.389676,
		-0.405004, 0.830340, -0.382763,
		18.851849, 20.127359, 22.315315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.252121, 20.025938, 23.024628>,  <19.135353, 19.546122, 22.583248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.252121, 20.025938, 23.024628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.922668, 20.135944, 22.826235>,  <18.724997, 20.201948, 22.707199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.922668, 20.135944, 22.826235>,  <19.252121, 20.025938, 23.024628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.922668, 20.135944, 22.826235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485863, 0.108928, 0.867221,
		0.292527, 0.955249, 0.043904,
		-0.823629, 0.275017, -0.495984,
		18.675579, 20.218449, 22.677439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.934454, 20.646112, 23.344870>,  <19.252121, 20.025938, 23.024628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.934454, 20.646112, 23.344870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.644630, 20.473511, 23.129902>,  <18.470737, 20.369949, 23.000921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.644630, 20.473511, 23.129902>,  <18.934454, 20.646112, 23.344870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.644630, 20.473511, 23.129902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635822, 0.117563, 0.762830,
		-0.265983, 0.894418, -0.359540,
		-0.724558, -0.431503, -0.537421,
		18.427263, 20.344059, 22.968676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266134, 21.091187, 23.449661>,  <18.934454, 20.646112, 23.344870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.266134, 21.091187, 23.449661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.215439, 20.703213, 23.366554>,  <18.185022, 20.470428, 23.316690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.215439, 20.703213, 23.366554>,  <18.266134, 21.091187, 23.449661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.215439, 20.703213, 23.366554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612327, -0.088283, 0.785660,
		-0.780380, 0.226795, -0.582728,
		-0.126739, -0.969933, -0.207767,
		18.177418, 20.412233, 23.304224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.537220, 20.835100, 23.354605>,  <18.266134, 21.091187, 23.449661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.537220, 20.835100, 23.354605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.756165, 20.539352, 23.511436>,  <17.887531, 20.361904, 23.605536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.756165, 20.539352, 23.511436>,  <17.537220, 20.835100, 23.354605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.756165, 20.539352, 23.511436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753480, -0.231483, 0.615372,
		-0.364228, -0.632256, -0.683806,
		0.547362, -0.739370, 0.392080,
		17.920374, 20.317541, 23.629061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055452, 20.298723, 23.330780>,  <17.537220, 20.835100, 23.354605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.055452, 20.298723, 23.330780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.305191, 20.227821, 23.635088>,  <17.455034, 20.185280, 23.817673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.305191, 20.227821, 23.635088>,  <17.055452, 20.298723, 23.330780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.305191, 20.227821, 23.635088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768427, -0.314414, 0.557371,
		0.140402, -0.932590, -0.332509,
		0.624345, -0.177253, 0.760772,
		17.492495, 20.174644, 23.863319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.842024, 20.310223, 22.594055>,  <17.055452, 20.298723, 23.330780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.842024, 20.310223, 22.594055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.697411, 20.152443, 22.256130>,  <16.610643, 20.057775, 22.053375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.697411, 20.152443, 22.256130>,  <16.842024, 20.310223, 22.594055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.697411, 20.152443, 22.256130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721329, 0.455773, -0.521493,
		0.590744, -0.797923, 0.119750,
		-0.361532, -0.394449, -0.844811,
		16.588951, 20.034109, 22.002687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.405571, 20.149363, 22.200195>,  <16.842024, 20.310223, 22.594055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.405571, 20.149363, 22.200195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.112263, 20.175728, 21.929502>,  <16.936277, 20.191547, 21.767086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.112263, 20.175728, 21.929502>,  <17.405571, 20.149363, 22.200195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.112263, 20.175728, 21.929502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600056, 0.530796, -0.598489,
		0.319760, -0.844933, -0.428768,
		-0.733271, 0.065912, -0.676734,
		16.892281, 20.195501, 21.726482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.726070, 20.761110, 21.904596>,  <17.405571, 20.149363, 22.200195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.726070, 20.761110, 21.904596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.005238, 20.628063, 22.158298>,  <18.172737, 20.548235, 22.310520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.005238, 20.628063, 22.158298>,  <17.726070, 20.761110, 21.904596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.005238, 20.628063, 22.158298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549958, -0.318382, -0.772127,
		0.458759, 0.887693, -0.039278,
		0.697916, -0.332619, 0.634253,
		18.214613, 20.528278, 22.348574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.033821, 20.731440, 21.820444>,  <17.726070, 20.761110, 21.904596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.033821, 20.731440, 21.820444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.719791, 20.978870, 21.833199>,  <16.531374, 21.127329, 21.840851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.719791, 20.978870, 21.833199>,  <17.033821, 20.731440, 21.820444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.719791, 20.978870, 21.833199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415022, 0.563550, -0.714260,
		-0.459796, -0.547515, -0.699153,
		-0.785076, 0.618578, 0.031887,
		16.484268, 21.164444, 21.842764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625998, 20.683943, 21.164181>,  <17.033821, 20.731440, 21.820444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.625998, 20.683943, 21.164181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.657345, 21.038479, 21.346724>,  <16.676153, 21.251200, 21.456249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.657345, 21.038479, 21.346724>,  <16.625998, 20.683943, 21.164181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.657345, 21.038479, 21.346724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445818, 0.378282, -0.811264,
		-0.891687, 0.267030, -0.365500,
		0.078370, 0.886340, 0.456355,
		16.680857, 21.304380, 21.483629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.230013, 21.213444, 20.726807>,  <16.625998, 20.683943, 21.164181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.230013, 21.213444, 20.726807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.524265, 21.368351, 20.949112>,  <16.700817, 21.461294, 21.082495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.524265, 21.368351, 20.949112>,  <16.230013, 21.213444, 20.726807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.524265, 21.368351, 20.949112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378539, 0.445370, -0.811390,
		-0.561745, 0.807261, 0.181032,
		0.735629, 0.387267, 0.555764,
		16.744955, 21.484531, 21.115841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.198332, 21.995134, 20.636003>,  <16.230013, 21.213444, 20.726807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.198332, 21.995134, 20.636003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.550816, 21.849003, 20.756006>,  <16.762306, 21.761324, 20.828009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.550816, 21.849003, 20.756006>,  <16.198332, 21.995134, 20.636003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.550816, 21.849003, 20.756006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460126, 0.517330, -0.721564,
		0.108404, 0.773890, 0.623973,
		0.881211, -0.365326, 0.300006,
		16.815180, 21.739405, 20.846008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.583000, 22.552685, 20.775686>,  <16.198332, 21.995134, 20.636003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.583000, 22.552685, 20.775686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.836311, 22.256756, 20.684799>,  <16.988298, 22.079199, 20.630268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.836311, 22.256756, 20.684799>,  <16.583000, 22.552685, 20.775686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.836311, 22.256756, 20.684799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387462, 0.557220, -0.734424,
		0.669951, 0.377056, 0.639527,
		0.633276, -0.739821, -0.227216,
		17.026295, 22.034809, 20.616634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029428, 22.884472, 20.305443>,  <16.583000, 22.552685, 20.775686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.029428, 22.884472, 20.305443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.148724, 22.503696, 20.277534>,  <17.220301, 22.275230, 20.260790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.148724, 22.503696, 20.277534>,  <17.029428, 22.884472, 20.305443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.148724, 22.503696, 20.277534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438925, 0.201686, -0.875595,
		0.847584, 0.230513, 0.477980,
		0.298238, -0.951938, -0.069769,
		17.238195, 22.218115, 20.256603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680164, 22.905554, 20.236801>,  <17.029428, 22.884472, 20.305443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.680164, 22.905554, 20.236801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.587227, 22.553879, 20.070408>,  <17.531464, 22.342873, 19.970572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.587227, 22.553879, 20.070408>,  <17.680164, 22.905554, 20.236801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.587227, 22.553879, 20.070408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595881, 0.209354, -0.775304,
		0.768727, -0.428014, 0.475250,
		-0.232345, -0.879190, -0.415982,
		17.517523, 22.290121, 19.945614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250570, 22.525467, 19.959986>,  <17.680164, 22.905554, 20.236801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.250570, 22.525467, 19.959986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.947567, 22.366093, 19.753130>,  <17.765766, 22.270468, 19.629017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.947567, 22.366093, 19.753130>,  <18.250570, 22.525467, 19.959986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.947567, 22.366093, 19.753130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510973, 0.131162, -0.849531,
		0.406315, -0.907768, 0.104236,
		-0.757506, -0.398439, -0.517138,
		17.720316, 22.246561, 19.597988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.590471, 22.071823, 19.511358>,  <18.250570, 22.525467, 19.959986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.590471, 22.071823, 19.511358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.230194, 22.093430, 19.338924>,  <18.014027, 22.106394, 19.235464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.230194, 22.093430, 19.338924>,  <18.590471, 22.071823, 19.511358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.230194, 22.093430, 19.338924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410316, -0.220367, -0.884917,
		-0.142795, -0.973920, 0.176320,
		-0.900695, 0.054014, -0.431083,
		17.959986, 22.109634, 19.209599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.540247, 21.495785, 19.118347>,  <18.590471, 22.071823, 19.511358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.540247, 21.495785, 19.118347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.282753, 21.752190, 18.951155>,  <18.128258, 21.906033, 18.850840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.282753, 21.752190, 18.951155>,  <18.540247, 21.495785, 19.118347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.282753, 21.752190, 18.951155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315512, -0.275296, -0.908111,
		-0.697180, -0.716460, -0.025030,
		-0.643734, 0.641013, -0.417982,
		18.089632, 21.944494, 18.825760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.327105, 21.176451, 18.521507>,  <18.540247, 21.495785, 19.118347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.327105, 21.176451, 18.521507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.208782, 21.551128, 18.446564>,  <18.137789, 21.775934, 18.401598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.208782, 21.551128, 18.446564>,  <18.327105, 21.176451, 18.521507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.208782, 21.551128, 18.446564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092573, -0.167102, -0.981584,
		-0.950752, -0.307701, -0.037283,
		-0.295804, 0.936695, -0.187357,
		18.120041, 21.832136, 18.390356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846344, 21.128916, 17.887171>,  <18.327105, 21.176451, 18.521507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.846344, 21.128916, 17.887171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.998535, 21.495480, 17.936867>,  <18.089849, 21.715418, 17.966684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.998535, 21.495480, 17.936867>,  <17.846344, 21.128916, 17.887171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.998535, 21.495480, 17.936867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153825, 0.069758, -0.985633,
		-0.911908, 0.394121, -0.114425,
		0.380476, 0.916408, 0.124238,
		18.112679, 21.770401, 17.974138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.477299, 21.647652, 17.351812>,  <17.846344, 21.128916, 17.887171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.477299, 21.647652, 17.351812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.814384, 21.826885, 17.471180>,  <18.016636, 21.934425, 17.542801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.814384, 21.826885, 17.471180>,  <17.477299, 21.647652, 17.351812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.814384, 21.826885, 17.471180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266839, 0.133782, -0.954410,
		-0.467580, 0.883924, -0.006827,
		0.842713, 0.448085, 0.298420,
		18.067198, 21.961311, 17.560705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.566490, 22.371920, 16.963924>,  <17.477299, 21.647652, 17.351812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.566490, 22.371920, 16.963924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.915203, 22.227119, 17.095953>,  <18.124432, 22.140240, 17.175171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.915203, 22.227119, 17.095953>,  <17.566490, 22.371920, 16.963924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.915203, 22.227119, 17.095953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418543, 0.200231, -0.885850,
		0.254587, 0.910419, 0.326071,
		0.871784, -0.362001, 0.330074,
		18.176739, 22.118519, 17.194975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.041039, 22.839878, 16.729332>,  <17.566490, 22.371920, 16.963924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.041039, 22.839878, 16.729332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.268761, 22.521030, 16.809822>,  <18.405394, 22.329721, 16.858116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.268761, 22.521030, 16.809822>,  <18.041039, 22.839878, 16.729332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.268761, 22.521030, 16.809822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515555, 0.155497, -0.842629,
		0.640385, 0.583458, 0.499484,
		0.569307, -0.797118, 0.201226,
		18.439552, 22.281895, 16.870190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.792957, 23.061754, 16.744556>,  <18.041039, 22.839878, 16.729332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.792957, 23.061754, 16.744556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800373, 22.662910, 16.715084>,  <18.804823, 22.423605, 16.697401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800373, 22.662910, 16.715084>,  <18.792957, 23.061754, 16.744556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800373, 22.662910, 16.715084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628425, 0.068938, -0.774809,
		0.777649, -0.031935, 0.627887,
		0.018542, -0.997110, -0.073679,
		18.805935, 22.363777, 16.692980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.477680, 22.847382, 16.781281>,  <18.792957, 23.061754, 16.744556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.477680, 22.847382, 16.781281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.268669, 22.575359, 16.575567>,  <19.143263, 22.412146, 16.452139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.268669, 22.575359, 16.575567>,  <19.477680, 22.847382, 16.781281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.268669, 22.575359, 16.575567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578148, 0.160720, -0.799946,
		0.626664, -0.715327, 0.309192,
		-0.522530, -0.680056, -0.514282,
		19.111910, 22.371342, 16.421282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.968004, 22.614811, 16.335575>,  <19.477680, 22.847382, 16.781281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.968004, 22.614811, 16.335575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.630867, 22.472691, 16.173895>,  <19.428585, 22.387419, 16.076887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.630867, 22.472691, 16.173895>,  <19.968004, 22.614811, 16.335575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.630867, 22.472691, 16.173895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488503, -0.189994, -0.851626,
		0.225790, -0.915239, 0.333702,
		-0.842842, -0.355303, -0.404198,
		19.378014, 22.366100, 16.052635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.076010, 21.938631, 16.081259>,  <19.968004, 22.614811, 16.335575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.076010, 21.938631, 16.081259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.760605, 22.056076, 15.865097>,  <19.571362, 22.126543, 15.735399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.760605, 22.056076, 15.865097>,  <20.076010, 21.938631, 16.081259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.760605, 22.056076, 15.865097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522700, -0.143093, -0.840422,
		-0.324089, -0.945153, -0.040642,
		-0.788512, 0.293615, -0.540406,
		19.524052, 22.144159, 15.702975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.007479, 21.489349, 15.585364>,  <20.076010, 21.938631, 16.081259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.007479, 21.489349, 15.585364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.814724, 21.816040, 15.458403>,  <19.699070, 22.012054, 15.382226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.814724, 21.816040, 15.458403>,  <20.007479, 21.489349, 15.585364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.814724, 21.816040, 15.458403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680541, 0.120672, -0.722705,
		-0.551949, -0.564269, -0.613965,
		-0.481888, 0.816725, -0.317403,
		19.670158, 22.061058, 15.363182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.992998, 21.412838, 14.888897>,  <20.007479, 21.489349, 15.585364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.992998, 21.412838, 14.888897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.874321, 21.794525, 14.904081>,  <19.803114, 22.023537, 14.913192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.874321, 21.794525, 14.904081>,  <19.992998, 21.412838, 14.888897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.874321, 21.794525, 14.904081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478129, 0.182839, -0.859047,
		-0.826659, -0.236724, -0.510487,
		-0.296694, 0.954218, 0.037961,
		19.785313, 22.080790, 14.915469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.649900, 21.607365, 14.210281>,  <19.992998, 21.412838, 14.888897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.649900, 21.607365, 14.210281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.782257, 21.941158, 14.386528>,  <19.861671, 22.141436, 14.492276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.782257, 21.941158, 14.386528>,  <19.649900, 21.607365, 14.210281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.782257, 21.941158, 14.386528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330842, 0.334697, -0.882339,
		-0.883772, 0.437734, -0.165335,
		0.330893, 0.834486, 0.440616,
		19.881525, 22.191504, 14.518713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.426062, 22.122005, 13.749725>,  <19.649900, 21.607365, 14.210281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.426062, 22.122005, 13.749725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.734539, 22.272659, 13.955019>,  <19.919624, 22.363052, 14.078196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.734539, 22.272659, 13.955019>,  <19.426062, 22.122005, 13.749725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.734539, 22.272659, 13.955019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395946, 0.347519, -0.849975,
		-0.498488, 0.858707, 0.118877,
		0.771192, 0.376634, 0.513235,
		19.965897, 22.385649, 14.108990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.415266, 22.818657, 13.645808>,  <19.426062, 22.122005, 13.749725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.415266, 22.818657, 13.645808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.786758, 22.726059, 13.761650>,  <20.009653, 22.670500, 13.831156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.786758, 22.726059, 13.761650>,  <19.415266, 22.818657, 13.645808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.786758, 22.726059, 13.761650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339789, 0.218926, -0.914666,
		0.148336, 0.947883, 0.281982,
		0.928730, -0.231493, 0.289605,
		20.065378, 22.656610, 13.848532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.791683, 23.305254, 13.441537>,  <19.415266, 22.818657, 13.645808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.791683, 23.305254, 13.441537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.076054, 23.027473, 13.485941>,  <20.246675, 22.860806, 13.512583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.076054, 23.027473, 13.485941>,  <19.791683, 23.305254, 13.441537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.076054, 23.027473, 13.485941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401462, 0.271146, -0.874819,
		0.577417, 0.666499, 0.471560,
		0.710927, -0.694449, 0.111009,
		20.289331, 22.819139, 13.519244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.335356, 23.529184, 13.112693>,  <19.791683, 23.305254, 13.441537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.335356, 23.529184, 13.112693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.454929, 23.147503, 13.117409>,  <20.526672, 22.918495, 13.120238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.454929, 23.147503, 13.117409>,  <20.335356, 23.529184, 13.112693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454929, 23.147503, 13.117409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546437, 0.161032, -0.821873,
		0.782334, 0.252128, 0.569548,
		0.298933, -0.954201, 0.011791,
		20.544609, 22.861242, 13.120946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.973536, 23.554699, 12.794265>,  <20.335356, 23.529184, 13.112693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.973536, 23.554699, 12.794265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.910133, 23.160183, 12.775914>,  <20.872093, 22.923473, 12.764904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.910133, 23.160183, 12.775914>,  <20.973536, 23.554699, 12.794265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.910133, 23.160183, 12.775914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438700, -0.028724, -0.898174,
		0.884544, -0.162490, 0.437240,
		-0.158503, -0.986292, -0.045876,
		20.862583, 22.864296, 12.762151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.725037, 23.108101, 12.530040>,  <20.973536, 23.554699, 12.794265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.725037, 23.108101, 12.530040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.385166, 22.904823, 12.473773>,  <21.181244, 22.782856, 12.440013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.385166, 22.904823, 12.473773>,  <21.725037, 23.108101, 12.530040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.385166, 22.904823, 12.473773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129681, 0.057182, -0.989905,
		0.511108, -0.859342, 0.017317,
		-0.849677, -0.508194, -0.140667,
		21.130262, 22.752365, 12.431573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.890110, 22.584759, 12.007251>,  <21.725037, 23.108101, 12.530040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.890110, 22.584759, 12.007251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.490219, 22.587524, 11.998362>,  <21.250284, 22.589184, 11.993028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.490219, 22.587524, 11.998362>,  <21.890110, 22.584759, 12.007251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.490219, 22.587524, 11.998362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021371, -0.105527, -0.994187,
		-0.009215, -0.994393, 0.105351,
		-0.999729, 0.006910, -0.022224,
		21.190300, 22.589598, 11.991694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.689611, 21.991346, 11.581190>,  <21.890110, 22.584759, 12.007251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.689611, 21.991346, 11.581190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.378216, 22.242409, 11.580672>,  <21.191378, 22.393045, 11.580361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.378216, 22.242409, 11.580672>,  <21.689611, 21.991346, 11.581190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.378216, 22.242409, 11.580672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052680, -0.067396, -0.996335,
		-0.625442, -0.775568, 0.085532,
		-0.778490, 0.627655, -0.001295,
		21.144669, 22.430706, 11.580284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.237003, 21.700727, 11.177124>,  <21.689611, 21.991346, 11.581190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.237003, 21.700727, 11.177124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.132980, 22.086777, 11.165056>,  <21.070566, 22.318405, 11.157816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.132980, 22.086777, 11.165056>,  <21.237003, 21.700727, 11.177124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.132980, 22.086777, 11.165056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189238, -0.081580, -0.978536,
		-0.946868, -0.248768, 0.203853,
		-0.260059, 0.965121, -0.030170,
		21.054962, 22.376312, 11.156005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.692945, 21.745440, 10.725332>,  <21.237003, 21.700727, 11.177124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.692945, 21.745440, 10.725332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.821571, 22.123718, 10.744306>,  <20.898746, 22.350685, 10.755690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.821571, 22.123718, 10.744306>,  <20.692945, 21.745440, 10.725332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.821571, 22.123718, 10.744306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115834, 0.010429, -0.993214,
		-0.939776, 0.324876, -0.106190,
		0.321564, 0.945699, 0.047432,
		20.918041, 22.407429, 10.758535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.437357, 21.914589, 10.128199>,  <20.692945, 21.745440, 10.725332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.437357, 21.914589, 10.128199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.694611, 22.209038, 10.212582>,  <20.848963, 22.385708, 10.263211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.694611, 22.209038, 10.212582>,  <20.437357, 21.914589, 10.128199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.694611, 22.209038, 10.212582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155075, 0.144578, -0.977266,
		-0.749888, 0.661226, -0.021172,
		0.643133, 0.736123, 0.210957,
		20.887550, 22.429874, 10.275868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.175486, 22.505693, 9.722223>,  <20.437357, 21.914589, 10.128199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.175486, 22.505693, 9.722223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.562439, 22.553715, 9.811446>,  <20.794611, 22.582527, 9.864980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.562439, 22.553715, 9.811446>,  <20.175486, 22.505693, 9.722223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.562439, 22.553715, 9.811446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196662, 0.199074, -0.960049,
		-0.159660, 0.972603, 0.168971,
		0.967384, 0.120051, 0.223058,
		20.852654, 22.589729, 9.878364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.471315, 23.192924, 9.418269>,  <20.175486, 22.505693, 9.722223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.471315, 23.192924, 9.418269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.785332, 22.945286, 9.426534>,  <20.973742, 22.796703, 9.431493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.785332, 22.945286, 9.426534>,  <20.471315, 23.192924, 9.418269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.785332, 22.945286, 9.426534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152203, 0.160452, -0.975238,
		0.600452, 0.768748, 0.220191,
		0.785042, -0.619097, 0.020662,
		21.020844, 22.759556, 9.432733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.852308, 23.546530, 8.968879>,  <20.471315, 23.192924, 9.418269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.852308, 23.546530, 8.968879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049366, 23.201160, 9.012332>,  <21.167601, 22.993938, 9.038404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049366, 23.201160, 9.012332>,  <20.852308, 23.546530, 8.968879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.049366, 23.201160, 9.012332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178163, -0.022118, -0.983752,
		0.851799, 0.503993, 0.142934,
		0.492643, -0.863425, 0.108633,
		21.197159, 22.942133, 9.044922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.486448, 23.684555, 8.663894>,  <20.852308, 23.546530, 8.968879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.486448, 23.684555, 8.663894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.438763, 23.287590, 8.675947>,  <21.410151, 23.049412, 8.683180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.438763, 23.287590, 8.675947>,  <21.486448, 23.684555, 8.663894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.438763, 23.287590, 8.675947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321909, -0.067346, -0.944372,
		0.939235, -0.102883, 0.327495,
		-0.119216, -0.992411, 0.030134,
		21.402998, 22.989866, 8.684987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.106943, 23.371807, 8.305340>,  <21.486448, 23.684555, 8.663894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.106943, 23.371807, 8.305340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.828995, 23.084404, 8.293341>,  <21.662226, 22.911963, 8.286141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.828995, 23.084404, 8.293341>,  <22.106943, 23.371807, 8.305340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.828995, 23.084404, 8.293341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340801, -0.292285, -0.893546,
		0.633252, -0.631123, 0.447969,
		-0.694872, -0.718508, -0.029997,
		21.620533, 22.868851, 8.284342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.401941, 22.638016, 8.034918>,  <22.106943, 23.371807, 8.305340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.401941, 22.638016, 8.034918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.006325, 22.605743, 7.985461>,  <21.768955, 22.586380, 7.955787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.006325, 22.605743, 7.985461>,  <22.401941, 22.638016, 8.034918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.006325, 22.605743, 7.985461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142752, -0.308992, -0.940290,
		0.037658, -0.947636, 0.317123,
		-0.989042, -0.080679, -0.123641,
		21.709612, 22.581539, 7.948369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.251198, 22.013056, 7.722367>,  <22.401941, 22.638016, 8.034918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.251198, 22.013056, 7.722367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.901711, 22.187855, 7.636901>,  <21.692019, 22.292734, 7.585621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.901711, 22.187855, 7.636901>,  <22.251198, 22.013056, 7.722367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.901711, 22.187855, 7.636901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082054, -0.300553, -0.950229,
		-0.479464, -0.847763, 0.226741,
		-0.873717, 0.436995, -0.213666,
		21.639595, 22.318953, 7.572801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.810934, 21.491409, 7.232261>,  <22.251198, 22.013056, 7.722367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.810934, 21.491409, 7.232261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.694614, 21.866749, 7.157491>,  <21.624823, 22.091951, 7.112628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.694614, 21.866749, 7.157491>,  <21.810934, 21.491409, 7.232261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.694614, 21.866749, 7.157491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115400, -0.228340, -0.966718,
		-0.949800, -0.259549, 0.174686,
		-0.290798, 0.938347, -0.186925,
		21.607374, 22.148252, 7.101413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.442221, 21.392834, 6.712070>,  <21.810934, 21.491409, 7.232261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.442221, 21.392834, 6.712070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.499180, 21.788322, 6.693512>,  <21.533356, 22.025616, 6.682377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.499180, 21.788322, 6.693512>,  <21.442221, 21.392834, 6.712070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.499180, 21.788322, 6.693512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096478, -0.032783, -0.994795,
		-0.985096, 0.146134, 0.090722,
		0.142399, 0.988721, -0.046393,
		21.541899, 22.084938, 6.679594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.786718, 21.020529, 6.653616>,  <21.442221, 21.392834, 6.712070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.786718, 21.020529, 6.653616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.511154, 20.784630, 6.485045>,  <20.345816, 20.643089, 6.383903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.511154, 20.784630, 6.485045>,  <20.786718, 21.020529, 6.653616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.511154, 20.784630, 6.485045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603497, 0.144633, 0.784138,
		-0.401492, 0.794530, -0.455551,
		-0.688909, -0.589749, -0.421427,
		20.304482, 20.607706, 6.358617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.159803, 21.391024, 6.737513>,  <20.786718, 21.020529, 6.653616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.159803, 21.391024, 6.737513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.093586, 20.999161, 6.692138>,  <20.053856, 20.764044, 6.664913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.093586, 20.999161, 6.692138>,  <20.159803, 21.391024, 6.737513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093586, 20.999161, 6.692138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398478, -0.038773, 0.916358,
		-0.902115, 0.196898, -0.383953,
		-0.165542, -0.979657, -0.113437,
		20.043922, 20.705263, 6.658107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.473001, 21.297741, 6.907987>,  <20.159803, 21.391024, 6.737513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.473001, 21.297741, 6.907987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.659214, 20.947533, 6.959743>,  <19.770941, 20.737408, 6.990796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.659214, 20.947533, 6.959743>,  <19.473001, 21.297741, 6.907987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.659214, 20.947533, 6.959743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346223, -0.045611, 0.937043,
		-0.814501, -0.481019, -0.324360,
		0.465530, -0.875523, 0.129390,
		19.798874, 20.684875, 6.998559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.932962, 20.917469, 7.033767>,  <19.473001, 21.297741, 6.907987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.932962, 20.917469, 7.033767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.264099, 20.738605, 7.169254>,  <19.462780, 20.631289, 7.250547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.264099, 20.738605, 7.169254>,  <18.932962, 20.917469, 7.033767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.264099, 20.738605, 7.169254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458844, -0.192397, 0.867436,
		-0.322713, -0.873517, -0.364450,
		0.827840, -0.447159, 0.338719,
		19.512451, 20.604458, 7.270870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.703968, 20.292297, 7.374532>,  <18.932962, 20.917469, 7.033767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.703968, 20.292297, 7.374532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.071251, 20.338131, 7.526198>,  <19.291620, 20.365631, 7.617198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.071251, 20.338131, 7.526198>,  <18.703968, 20.292297, 7.374532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.071251, 20.338131, 7.526198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341390, -0.256507, 0.904244,
		0.200872, -0.959726, -0.196409,
		0.918206, 0.114585, 0.379166,
		19.346712, 20.372507, 7.639948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.724226, 19.791843, 7.904349>,  <18.703968, 20.292297, 7.374532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.724226, 19.791843, 7.904349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.028740, 20.025845, 8.016217>,  <19.211449, 20.166246, 8.083338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.028740, 20.025845, 8.016217>,  <18.724226, 19.791843, 7.904349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.028740, 20.025845, 8.016217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262966, -0.115704, 0.957842,
		0.592701, -0.802734, 0.065753,
		0.761285, 0.585005, 0.279670,
		19.257126, 20.201345, 8.100119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.113317, 19.435982, 8.507023>,  <18.724226, 19.791843, 7.904349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.113317, 19.435982, 8.507023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.213787, 19.822895, 8.521303>,  <19.274069, 20.055042, 8.529871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.213787, 19.822895, 8.521303>,  <19.113317, 19.435982, 8.507023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.213787, 19.822895, 8.521303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240030, 0.026513, 0.970403,
		0.937709, -0.252307, 0.238836,
		0.251172, 0.967284, 0.035700,
		19.289139, 20.113081, 8.532013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.492645, 19.632635, 9.124708>,  <19.113317, 19.435982, 8.507023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.492645, 19.632635, 9.124708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.354748, 19.992531, 9.017658>,  <19.272009, 20.208467, 8.953428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.354748, 19.992531, 9.017658>,  <19.492645, 19.632635, 9.124708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.354748, 19.992531, 9.017658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223242, 0.198337, 0.954372,
		0.911765, 0.388758, 0.132484,
		-0.344744, 0.899738, -0.267624,
		19.251326, 20.262453, 8.937371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.735468, 20.037523, 9.583970>,  <19.492645, 19.632635, 9.124708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.735468, 20.037523, 9.583970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.446976, 20.283123, 9.455702>,  <19.273880, 20.430483, 9.378741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.446976, 20.283123, 9.455702>,  <19.735468, 20.037523, 9.583970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.446976, 20.283123, 9.455702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216426, 0.240014, 0.946336,
		0.658017, 0.751928, -0.040220,
		-0.721231, 0.614001, -0.320670,
		19.230606, 20.467323, 9.359501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.816578, 20.578529, 10.063665>,  <19.735468, 20.037523, 9.583970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.816578, 20.578529, 10.063665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.448174, 20.582283, 9.907896>,  <19.227131, 20.584536, 9.814434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.448174, 20.582283, 9.907896>,  <19.816578, 20.578529, 10.063665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.448174, 20.582283, 9.907896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382617, 0.165814, 0.908906,
		0.073102, 0.986112, -0.149126,
		-0.921011, 0.009385, -0.389424,
		19.171871, 20.585098, 9.791069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.490713, 21.088509, 10.316233>,  <19.816578, 20.578529, 10.063665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.490713, 21.088509, 10.316233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.173199, 20.883953, 10.184546>,  <18.982691, 20.761219, 10.105534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.173199, 20.883953, 10.184546>,  <19.490713, 21.088509, 10.316233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.173199, 20.883953, 10.184546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487541, 0.211418, 0.847117,
		-0.363605, 0.832936, -0.417144,
		-0.793786, -0.511391, -0.329218,
		18.935062, 20.730536, 10.085780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.822018, 21.557262, 10.343342>,  <19.490713, 21.088509, 10.316233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.822018, 21.557262, 10.343342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.707375, 21.176640, 10.387868>,  <18.638588, 20.948265, 10.414583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.707375, 21.176640, 10.387868>,  <18.822018, 21.557262, 10.343342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.707375, 21.176640, 10.387868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557021, 0.260042, 0.788737,
		-0.779476, 0.164055, -0.604568,
		-0.286610, -0.951559, 0.111314,
		18.621391, 20.891172, 10.421262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.167173, 21.626005, 10.563500>,  <18.822018, 21.557262, 10.343342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.167173, 21.626005, 10.563500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.257286, 21.245449, 10.647508>,  <18.311354, 21.017117, 10.697912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.257286, 21.245449, 10.647508>,  <18.167173, 21.626005, 10.563500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.257286, 21.245449, 10.647508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572158, 0.045285, 0.818892,
		-0.788596, -0.304646, -0.534142,
		0.225283, -0.951389, 0.210017,
		18.324871, 20.960033, 10.710513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.522038, 21.389187, 10.875714>,  <18.167173, 21.626005, 10.563500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.522038, 21.389187, 10.875714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.812397, 21.141579, 10.995638>,  <17.986612, 20.993013, 11.067592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.812397, 21.141579, 10.995638>,  <17.522038, 21.389187, 10.875714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.812397, 21.141579, 10.995638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414295, -0.045570, 0.909001,
		-0.549030, -0.784050, -0.289537,
		0.725896, -0.619023, 0.299809,
		18.030167, 20.955872, 11.085581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.218313, 20.937546, 11.298119>,  <17.522038, 21.389187, 10.875714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.218313, 20.937546, 11.298119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.602013, 20.879082, 11.394853>,  <17.832232, 20.844004, 11.452893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.602013, 20.879082, 11.394853>,  <17.218313, 20.937546, 11.298119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.602013, 20.879082, 11.394853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274822, -0.283504, 0.918748,
		-0.065720, -0.947768, -0.312117,
		0.959246, -0.146157, 0.241836,
		17.889786, 20.835234, 11.467403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.226704, 20.340942, 11.701488>,  <17.218313, 20.937546, 11.298119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.226704, 20.340942, 11.701488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.564339, 20.525146, 11.811357>,  <17.766920, 20.635668, 11.877278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.564339, 20.525146, 11.811357>,  <17.226704, 20.340942, 11.701488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.564339, 20.525146, 11.811357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192832, -0.217277, 0.956873,
		0.500329, -0.860652, -0.094601,
		0.844089, 0.460509, 0.274672,
		17.817566, 20.663300, 11.893759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.467651, 19.921349, 12.088379>,  <17.226704, 20.340942, 11.701488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.467651, 19.921349, 12.088379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.697678, 20.237801, 12.171719>,  <17.835693, 20.427671, 12.221723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.697678, 20.237801, 12.171719>,  <17.467651, 19.921349, 12.088379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.697678, 20.237801, 12.171719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049726, -0.220401, 0.974141,
		0.816594, -0.570556, -0.087406,
		0.575066, 0.791132, 0.208350,
		17.870197, 20.475140, 12.234223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.767288, 19.746372, 12.660616>,  <17.467651, 19.921349, 12.088379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.767288, 19.746372, 12.660616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.791073, 20.145660, 12.662480>,  <17.805344, 20.385233, 12.663599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.791073, 20.145660, 12.662480>,  <17.767288, 19.746372, 12.660616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.791073, 20.145660, 12.662480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209693, 0.007926, 0.977735,
		0.975958, -0.059113, 0.209791,
		0.059460, 0.998220, 0.004660,
		17.808910, 20.445126, 12.663878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.171972, 19.911388, 13.228962>,  <17.767288, 19.746372, 12.660616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.171972, 19.911388, 13.228962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.010155, 20.268837, 13.151209>,  <17.913065, 20.483307, 13.104557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.010155, 20.268837, 13.151209>,  <18.171972, 19.911388, 13.228962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.010155, 20.268837, 13.151209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092731, 0.171373, 0.980832,
		0.909806, 0.414813, 0.013539,
		-0.404542, 0.893623, -0.194382,
		17.888792, 20.536924, 13.092895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.494835, 20.497328, 13.662621>,  <18.171972, 19.911388, 13.228962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.494835, 20.497328, 13.662621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.136265, 20.649132, 13.571062>,  <17.921124, 20.740215, 13.516127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.136265, 20.649132, 13.571062>,  <18.494835, 20.497328, 13.662621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.136265, 20.649132, 13.571062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085804, 0.358090, 0.929736,
		0.434812, 0.853078, -0.288437,
		-0.896424, 0.379512, -0.228899,
		17.867338, 20.762985, 13.502392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.495661, 21.112597, 13.943298>,  <18.494835, 20.497328, 13.662621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.495661, 21.112597, 13.943298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.109825, 21.031853, 13.875395>,  <17.878323, 20.983406, 13.834653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.109825, 21.031853, 13.875395>,  <18.495661, 21.112597, 13.943298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.109825, 21.031853, 13.875395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180636, 0.036611, 0.982868,
		-0.192187, 0.978729, -0.071778,
		-0.964590, -0.201861, -0.169758,
		17.820448, 20.971294, 13.824468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.147507, 21.586267, 14.400113>,  <18.495661, 21.112597, 13.943298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.147507, 21.586267, 14.400113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.916958, 21.269543, 14.319283>,  <17.778629, 21.079508, 14.270784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.916958, 21.269543, 14.319283>,  <18.147507, 21.586267, 14.400113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.916958, 21.269543, 14.319283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156699, -0.135604, 0.978293,
		-0.802024, 0.595524, -0.045918,
		-0.576370, -0.791810, -0.202076,
		17.744047, 21.032000, 14.258659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.556528, 21.693914, 14.824835>,  <18.147507, 21.586267, 14.400113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.556528, 21.693914, 14.824835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.566574, 21.305038, 14.731701>,  <17.572601, 21.071712, 14.675820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.566574, 21.305038, 14.731701>,  <17.556528, 21.693914, 14.824835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.566574, 21.305038, 14.731701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224594, -0.232442, 0.946323,
		-0.974129, 0.028528, -0.224186,
		0.025114, -0.972192, -0.232836,
		17.574108, 21.013380, 14.661850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.928228, 21.444315, 15.177114>,  <17.556528, 21.693914, 14.824835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.928228, 21.444315, 15.177114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.167320, 21.133141, 15.099617>,  <17.310776, 20.946436, 15.053119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.167320, 21.133141, 15.099617>,  <16.928228, 21.444315, 15.177114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.167320, 21.133141, 15.099617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084379, -0.301368, 0.949767,
		-0.797245, -0.551356, -0.245778,
		0.597730, -0.777936, -0.193741,
		17.346640, 20.899759, 15.041494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.624359, 20.960272, 15.495640>,  <16.928228, 21.444315, 15.177114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.624359, 20.960272, 15.495640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.990452, 20.801857, 15.465958>,  <17.210108, 20.706808, 15.448149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.990452, 20.801857, 15.465958>,  <16.624359, 20.960272, 15.495640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.990452, 20.801857, 15.465958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095211, -0.391518, 0.915232,
		-0.391518, -0.830584, -0.396036,
		-0.915232, 0.396036, 0.074205,
		17.265020, 20.683046, 15.443696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510330, 20.226097, 15.688255>,  <16.624359, 20.960272, 15.495640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.510330, 20.226097, 15.688255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.898956, 20.304459, 15.741447>,  <17.132132, 20.351475, 15.773363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.898956, 20.304459, 15.741447>,  <16.510330, 20.226097, 15.688255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.898956, 20.304459, 15.741447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042206, -0.409353, 0.911400,
		0.232982, -0.891096, -0.389445,
		0.971565, 0.195902, 0.132981,
		17.190426, 20.363230, 15.781342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.896778, 19.585461, 15.836749>,  <16.510330, 20.226097, 15.688255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.896778, 19.585461, 15.836749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.107071, 19.894073, 15.980049>,  <17.233246, 20.079241, 16.066029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.107071, 19.894073, 15.980049>,  <16.896778, 19.585461, 15.836749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.107071, 19.894073, 15.980049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055167, -0.451186, 0.890723,
		0.848859, -0.448518, -0.279766,
		0.525732, 0.771533, 0.358250,
		17.264791, 20.125534, 16.087524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.517450, 19.293377, 16.093676>,  <16.896778, 19.585461, 15.836749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.517450, 19.293377, 16.093676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.477249, 19.651558, 16.267143>,  <17.453129, 19.866467, 16.371223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.477249, 19.651558, 16.267143>,  <17.517450, 19.293377, 16.093676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.477249, 19.651558, 16.267143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035150, -0.432407, 0.900993,
		0.994316, 0.105794, 0.011983,
		-0.100502, 0.895450, 0.433668,
		17.447098, 19.920193, 16.397243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.043768, 19.359766, 16.490019>,  <17.517450, 19.293377, 16.093676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.043768, 19.359766, 16.490019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.780228, 19.620834, 16.639652>,  <17.622103, 19.777475, 16.729431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.780228, 19.620834, 16.639652>,  <18.043768, 19.359766, 16.490019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.780228, 19.620834, 16.639652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080842, -0.432960, 0.897781,
		0.747918, 0.621744, 0.232492,
		-0.658850, 0.652671, 0.374082,
		17.582573, 19.816635, 16.751877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293325, 19.448187, 17.176985>,  <18.043768, 19.359766, 16.490019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293325, 19.448187, 17.176985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.922131, 19.596615, 17.190517>,  <17.699413, 19.685671, 17.198637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.922131, 19.596615, 17.190517>,  <18.293325, 19.448187, 17.176985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.922131, 19.596615, 17.190517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005627, -0.076833, 0.997028,
		0.372566, 0.925421, 0.069212,
		-0.927989, 0.371069, 0.033833,
		17.643734, 19.707935, 17.200666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.254892, 20.065807, 17.725283>,  <18.293325, 19.448187, 17.176985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.254892, 20.065807, 17.725283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885967, 19.915089, 17.690956>,  <17.664612, 19.824657, 17.670361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885967, 19.915089, 17.690956>,  <18.254892, 20.065807, 17.725283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885967, 19.915089, 17.690956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096267, 0.008949, 0.995315,
		-0.374264, 0.926253, -0.044527,
		-0.922312, -0.376798, -0.085818,
		17.609274, 19.802050, 17.665211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.920233, 20.265242, 18.299927>,  <18.254892, 20.065807, 17.725283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.920233, 20.265242, 18.299927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665100, 19.990715, 18.160131>,  <17.512020, 19.826000, 18.076254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665100, 19.990715, 18.160131>,  <17.920233, 20.265242, 18.299927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.665100, 19.990715, 18.160131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223158, -0.269623, 0.936752,
		-0.737136, 0.675482, 0.018818,
		-0.637833, -0.686314, -0.349488,
		17.473751, 19.784821, 18.055285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.333721, 20.247652, 18.817253>,  <17.920233, 20.265242, 18.299927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.333721, 20.247652, 18.817253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.273621, 19.912369, 18.607555>,  <17.237560, 19.711199, 18.481737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.273621, 19.912369, 18.607555>,  <17.333721, 20.247652, 18.817253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.273621, 19.912369, 18.607555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075382, -0.519006, 0.851440,
		-0.985770, 0.167449, 0.014795,
		-0.150251, -0.838209, -0.524243,
		17.228546, 19.660906, 18.450283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.732044, 19.922562, 19.041063>,  <17.333721, 20.247652, 18.817253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.732044, 19.922562, 19.041063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.922230, 19.617317, 18.865978>,  <17.036341, 19.434170, 18.760927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.922230, 19.617317, 18.865978>,  <16.732044, 19.922562, 19.041063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.922230, 19.617317, 18.865978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280667, -0.603132, 0.746631,
		-0.833764, -0.232142, -0.500947,
		0.475461, -0.763113, -0.437716,
		17.064869, 19.388384, 18.734663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263668, 19.433870, 19.041813>,  <16.732044, 19.922562, 19.041063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.263668, 19.433870, 19.041813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.625694, 19.266659, 19.010542>,  <16.842909, 19.166332, 18.991779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.625694, 19.266659, 19.010542>,  <16.263668, 19.433870, 19.041813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.625694, 19.266659, 19.010542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207964, -0.595392, 0.776053,
		-0.370957, -0.686120, -0.625803,
		0.905065, -0.418027, -0.078177,
		16.897213, 19.141251, 18.987089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.043922, 18.684208, 19.038101>,  <16.263668, 19.433870, 19.041813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.043922, 18.684208, 19.038101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.432144, 18.706043, 19.131948>,  <16.665077, 18.719145, 19.188257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.432144, 18.706043, 19.131948>,  <16.043922, 18.684208, 19.038101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.432144, 18.706043, 19.131948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142229, -0.656225, 0.741040,
		0.194415, -0.752589, -0.629137,
		0.970553, 0.054587, 0.234620,
		16.723310, 18.722420, 19.202335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188768, 18.030468, 19.257080>,  <16.043922, 18.684208, 19.038101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.188768, 18.030468, 19.257080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.473404, 18.249771, 19.432831>,  <16.644186, 18.381353, 19.538282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.473404, 18.249771, 19.432831>,  <16.188768, 18.030468, 19.257080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.473404, 18.249771, 19.432831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200064, -0.441361, 0.874743,
		0.673508, -0.710363, -0.204383,
		0.711591, 0.548256, 0.439378,
		16.686882, 18.414248, 19.564644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.770250, 17.606606, 19.725574>,  <16.188768, 18.030468, 19.257080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.770250, 17.606606, 19.725574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722836, 17.982670, 19.853352>,  <16.694386, 18.208309, 19.930017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722836, 17.982670, 19.853352>,  <16.770250, 17.606606, 19.725574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722836, 17.982670, 19.853352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083363, -0.329997, 0.940294,
		0.989444, 0.084832, 0.117492,
		-0.118539, 0.940162, 0.319442,
		16.687273, 18.264719, 19.949184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247511, 17.765207, 20.225067>,  <16.770250, 17.606606, 19.725574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.247511, 17.765207, 20.225067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.452431, 17.428944, 20.295315>,  <17.575382, 17.227186, 20.337463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.452431, 17.428944, 20.295315>,  <17.247511, 17.765207, 20.225067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.452431, 17.428944, 20.295315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202298, -0.080612, -0.976001,
		0.834640, 0.535533, 0.128766,
		0.512301, -0.840658, 0.175619,
		17.606121, 17.176746, 20.348000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.868484, 17.830183, 19.767723>,  <17.247511, 17.765207, 20.225067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.868484, 17.830183, 19.767723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.846569, 17.438923, 19.847940>,  <17.833420, 17.204166, 19.896070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.846569, 17.438923, 19.847940>,  <17.868484, 17.830183, 19.767723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.846569, 17.438923, 19.847940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246876, -0.207880, -0.946487,
		0.967497, -0.002346, 0.252871,
		-0.054787, -0.978152, 0.200544,
		17.830133, 17.145477, 19.908104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.497808, 17.429796, 19.486975>,  <17.868484, 17.830183, 19.767723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.497808, 17.429796, 19.486975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.209736, 17.153187, 19.509367>,  <18.036892, 16.987221, 19.522802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.209736, 17.153187, 19.509367>,  <18.497808, 17.429796, 19.486975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.209736, 17.153187, 19.509367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173086, -0.257222, -0.950725,
		0.671850, -0.675004, 0.304940,
		-0.720180, -0.691525, 0.055981,
		17.993681, 16.945730, 19.526161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.811090, 16.953489, 19.135801>,  <18.497808, 17.429796, 19.486975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.811090, 16.953489, 19.135801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.430183, 16.831631, 19.143578>,  <18.201639, 16.758516, 19.148243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.430183, 16.831631, 19.143578>,  <18.811090, 16.953489, 19.135801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430183, 16.831631, 19.143578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052986, -0.227677, -0.972294,
		0.300631, -0.924854, 0.232951,
		-0.952268, -0.304645, 0.019442,
		18.144503, 16.740238, 19.149410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.796352, 16.198198, 18.824715>,  <18.811090, 16.953489, 19.135801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.796352, 16.198198, 18.824715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.424156, 16.343529, 18.806036>,  <18.200838, 16.430727, 18.794828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.424156, 16.343529, 18.806036>,  <18.796352, 16.198198, 18.824715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.424156, 16.343529, 18.806036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100122, -0.374874, -0.921653,
		-0.352357, -0.852918, 0.385195,
		-0.930495, 0.363318, -0.046694,
		18.145008, 16.452526, 18.792027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.413675, 15.649634, 18.617594>,  <18.796352, 16.198198, 18.824715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.413675, 15.649634, 18.617594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.222462, 15.989864, 18.529953>,  <18.107733, 16.194002, 18.477367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.222462, 15.989864, 18.529953>,  <18.413675, 15.649634, 18.617594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.222462, 15.989864, 18.529953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181422, -0.339690, -0.922874,
		-0.859401, -0.401415, 0.316696,
		-0.478034, 0.850575, -0.219104,
		18.079052, 16.245037, 18.464222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.855181, 15.426523, 18.059057>,  <18.413675, 15.649634, 18.617594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.855181, 15.426523, 18.059057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.891983, 15.823372, 18.025043>,  <17.914064, 16.061481, 18.004635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.891983, 15.823372, 18.025043>,  <17.855181, 15.426523, 18.059057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.891983, 15.823372, 18.025043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102587, -0.075497, -0.991855,
		-0.990460, 0.099980, 0.094832,
		0.092006, 0.992121, -0.085033,
		17.919584, 16.121008, 17.999533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.252842, 15.752305, 17.534134>,  <17.855181, 15.426523, 18.059057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.252842, 15.752305, 17.534134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.553665, 16.015621, 17.547171>,  <17.734159, 16.173611, 17.554993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.553665, 16.015621, 17.547171>,  <17.252842, 15.752305, 17.534134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.553665, 16.015621, 17.547171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038399, 0.093128, -0.994913,
		-0.657977, 0.746982, 0.095316,
		0.752059, 0.658290, 0.032593,
		17.779284, 16.213108, 17.556948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.053539, 16.264242, 17.058325>,  <17.252842, 15.752305, 17.534134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.053539, 16.264242, 17.058325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.448292, 16.312698, 17.101009>,  <17.685144, 16.341772, 17.126621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.448292, 16.312698, 17.101009>,  <17.053539, 16.264242, 17.058325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.448292, 16.312698, 17.101009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073241, 0.253108, -0.964662,
		-0.143868, 0.959824, 0.240916,
		0.986883, 0.121139, 0.106713,
		17.744356, 16.349041, 17.133022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.164392, 16.842270, 16.602907>,  <17.053539, 16.264242, 17.058325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.164392, 16.842270, 16.602907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.518536, 16.666893, 16.664761>,  <17.731022, 16.561666, 16.701872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.518536, 16.666893, 16.664761>,  <17.164392, 16.842270, 16.602907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.518536, 16.666893, 16.664761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318079, 0.328673, -0.889269,
		0.339068, 0.836507, 0.430452,
		0.885358, -0.438441, 0.154633,
		17.784143, 16.535360, 16.711151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750385, 17.365049, 16.596222>,  <17.164392, 16.842270, 16.602907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750385, 17.365049, 16.596222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.929474, 17.015846, 16.518862>,  <18.036926, 16.806324, 16.472446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.929474, 17.015846, 16.518862>,  <17.750385, 17.365049, 16.596222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.929474, 17.015846, 16.518862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301285, 0.350926, -0.886611,
		0.841886, 0.338687, 0.420141,
		0.447722, -0.873008, -0.193398,
		18.063791, 16.753944, 16.460842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.430775, 17.513229, 16.564259>,  <17.750385, 17.365049, 16.596222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.430775, 17.513229, 16.564259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.351017, 17.177200, 16.362459>,  <18.303164, 16.975582, 16.241379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.351017, 17.177200, 16.362459>,  <18.430775, 17.513229, 16.564259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.351017, 17.177200, 16.362459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498674, 0.356198, -0.790219,
		0.843544, -0.409144, 0.347899,
		-0.199393, -0.840073, -0.504499,
		18.291199, 16.925179, 16.211109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.005802, 17.340260, 16.122797>,  <18.430775, 17.513229, 16.564259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.005802, 17.340260, 16.122797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.707043, 17.124180, 15.967709>,  <18.527786, 16.994532, 15.874656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.707043, 17.124180, 15.967709>,  <19.005802, 17.340260, 16.122797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.707043, 17.124180, 15.967709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331728, 0.202629, -0.921356,
		0.576280, -0.816778, 0.027856,
		-0.746899, -0.540200, -0.387719,
		18.482973, 16.962120, 15.851393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.358980, 17.117229, 15.625798>,  <19.005802, 17.340260, 16.122797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.358980, 17.117229, 15.625798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.969505, 17.100349, 15.536222>,  <18.735821, 17.090221, 15.482477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.969505, 17.100349, 15.536222>,  <19.358980, 17.117229, 15.625798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.969505, 17.100349, 15.536222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203699, 0.279377, -0.938326,
		0.102160, -0.959253, -0.263431,
		-0.973689, -0.042199, -0.223940,
		18.677399, 17.087688, 15.469040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.239389, 16.770014, 14.963925>,  <19.358980, 17.117229, 15.625798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.239389, 16.770014, 14.963925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.875393, 16.931820, 15.000319>,  <18.656994, 17.028904, 15.022155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.875393, 16.931820, 15.000319>,  <19.239389, 16.770014, 14.963925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.875393, 16.931820, 15.000319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008552, 0.201080, -0.979538,
		-0.414535, -0.892151, -0.179522,
		-0.909993, 0.404517, 0.090984,
		18.602394, 17.053175, 15.027614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.882170, 16.467012, 14.511990>,  <19.239389, 16.770014, 14.963925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.882170, 16.467012, 14.511990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711094, 16.820576, 14.587662>,  <18.608448, 17.032713, 14.633065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711094, 16.820576, 14.587662>,  <18.882170, 16.467012, 14.511990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.711094, 16.820576, 14.587662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090131, 0.249945, -0.964056,
		-0.899420, -0.395267, -0.186567,
		-0.427691, 0.883907, 0.189180,
		18.582787, 17.085749, 14.644416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.344179, 16.577515, 14.084449>,  <18.882170, 16.467012, 14.511990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.344179, 16.577515, 14.084449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.399574, 16.960609, 14.185293>,  <18.432812, 17.190466, 14.245800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.399574, 16.960609, 14.185293>,  <18.344179, 16.577515, 14.084449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.399574, 16.960609, 14.185293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068866, 0.263260, -0.962264,
		-0.987967, 0.115901, 0.102414,
		0.138489, 0.957737, 0.252111,
		18.441120, 17.247931, 14.260926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.908794, 16.968037, 13.679862>,  <18.344179, 16.577515, 14.084449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.908794, 16.968037, 13.679862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.149292, 17.272556, 13.776962>,  <18.293591, 17.455269, 13.835222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.149292, 17.272556, 13.776962>,  <17.908794, 16.968037, 13.679862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.149292, 17.272556, 13.776962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046811, 0.269715, -0.961802,
		-0.797693, 0.589641, 0.126527,
		0.601244, 0.761300, 0.242751,
		18.329664, 17.500946, 13.849788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.665613, 17.529697, 13.381128>,  <17.908794, 16.968037, 13.679862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.665613, 17.529697, 13.381128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032303, 17.675026, 13.447603>,  <18.252316, 17.762222, 13.487488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032303, 17.675026, 13.447603>,  <17.665613, 17.529697, 13.381128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032303, 17.675026, 13.447603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076172, 0.249391, -0.965402,
		-0.392195, 0.897665, 0.200948,
		0.916723, 0.363320, 0.166187,
		18.307320, 17.784021, 13.497459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.688002, 18.216385, 13.063903>,  <17.665613, 17.529697, 13.381128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.688002, 18.216385, 13.063903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.072063, 18.105015, 13.073605>,  <18.302500, 18.038193, 13.079426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.072063, 18.105015, 13.073605>,  <17.688002, 18.216385, 13.063903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.072063, 18.105015, 13.073605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131535, 0.373617, -0.918210,
		0.246589, 0.884811, 0.395351,
		0.960152, -0.278423, 0.024253,
		18.360109, 18.021488, 13.080880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.043648, 18.767296, 12.789834>,  <17.688002, 18.216385, 13.063903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.043648, 18.767296, 12.789834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.307041, 18.466427, 12.779739>,  <18.465078, 18.285906, 12.773683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.307041, 18.466427, 12.779739>,  <18.043648, 18.767296, 12.789834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.307041, 18.466427, 12.779739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198519, 0.205941, -0.958216,
		0.725939, 0.625961, 0.284929,
		0.658485, -0.752171, -0.025235,
		18.504587, 18.240776, 12.772169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.692932, 19.123768, 12.385002>,  <18.043648, 18.767296, 12.789834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.692932, 19.123768, 12.385002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.710896, 18.725727, 12.349786>,  <18.721674, 18.486902, 12.328656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.710896, 18.725727, 12.349786>,  <18.692932, 19.123768, 12.385002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.710896, 18.725727, 12.349786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355413, 0.098278, -0.929528,
		0.933630, 0.010453, 0.358087,
		0.044909, -0.995104, -0.088040,
		18.724369, 18.427197, 12.323374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.353256, 19.034243, 12.130905>,  <18.692932, 19.123768, 12.385002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.353256, 19.034243, 12.130905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.124180, 18.716343, 12.050511>,  <18.986734, 18.525602, 12.002275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.124180, 18.716343, 12.050511>,  <19.353256, 19.034243, 12.130905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.124180, 18.716343, 12.050511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366180, -0.028653, -0.930103,
		0.733440, -0.606260, 0.307431,
		-0.572693, -0.794750, -0.200985,
		18.952372, 18.477919, 11.990216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.724108, 18.592892, 11.721018>,  <19.353256, 19.034243, 12.130905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.724108, 18.592892, 11.721018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.359001, 18.451542, 11.639060>,  <19.139936, 18.366732, 11.589886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.359001, 18.451542, 11.639060>,  <19.724108, 18.592892, 11.721018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.359001, 18.451542, 11.639060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248432, -0.082076, -0.965166,
		0.324247, -0.931875, 0.162705,
		-0.912768, -0.353373, -0.204895,
		19.085171, 18.345530, 11.577592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.841593, 18.052139, 11.152919>,  <19.724108, 18.592892, 11.721018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.841593, 18.052139, 11.152919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.451962, 18.142612, 11.151687>,  <19.218182, 18.196898, 11.150948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.451962, 18.142612, 11.151687>,  <19.841593, 18.052139, 11.152919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.451962, 18.142612, 11.151687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039327, -0.182742, -0.982374,
		-0.222767, -0.956788, 0.186900,
		-0.974078, 0.226191, -0.003081,
		19.159739, 18.210468, 11.150763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596275, 17.637398, 10.591778>,  <19.841593, 18.052139, 11.152919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.596275, 17.637398, 10.591778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.291759, 17.883881, 10.672503>,  <19.109051, 18.031771, 10.720939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.291759, 17.883881, 10.672503>,  <19.596275, 17.637398, 10.591778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.291759, 17.883881, 10.672503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273492, -0.022951, -0.961601,
		-0.587912, -0.787251, 0.186000,
		-0.761289, 0.616206, 0.201814,
		19.063374, 18.068743, 10.733047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.864630, 17.342777, 10.526488>,  <19.596275, 17.637398, 10.591778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.864630, 17.342777, 10.526488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.821251, 17.731552, 10.442988>,  <18.795223, 17.964817, 10.392888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.821251, 17.731552, 10.442988>,  <18.864630, 17.342777, 10.526488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.821251, 17.731552, 10.442988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128458, -0.221930, -0.966564,
		-0.985767, -0.078007, 0.148921,
		-0.108449, 0.971937, -0.208750,
		18.788715, 18.023134, 10.380363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190168, 17.403133, 10.101691>,  <18.864630, 17.342777, 10.526488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190168, 17.403133, 10.101691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.395336, 17.741531, 10.043439>,  <18.518436, 17.944571, 10.008488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.395336, 17.741531, 10.043439>,  <18.190168, 17.403133, 10.101691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.395336, 17.741531, 10.043439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005750, -0.173029, -0.984900,
		-0.858417, 0.504338, -0.093615,
		0.512921, 0.845993, -0.145631,
		18.549212, 17.995329, 9.999750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.861820, 17.867367, 9.569555>,  <18.190168, 17.403133, 10.101691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.861820, 17.867367, 9.569555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.247150, 17.974613, 9.573902>,  <18.478348, 18.038961, 9.576510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.247150, 17.974613, 9.573902>,  <17.861820, 17.867367, 9.569555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247150, 17.974613, 9.573902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018277, -0.025152, -0.999517,
		-0.267715, 0.963058, -0.029130,
		0.963325, 0.268118, 0.010868,
		18.536148, 18.055048, 9.577163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.944416, 18.231607, 8.962094>,  <17.861820, 17.867367, 9.569555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.944416, 18.231607, 8.962094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.324314, 18.150871, 9.057796>,  <18.552254, 18.102430, 9.115216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.324314, 18.150871, 9.057796>,  <17.944416, 18.231607, 8.962094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.324314, 18.150871, 9.057796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258786, 0.076304, -0.962916,
		0.176098, 0.976442, 0.124703,
		0.949747, -0.201839, 0.239252,
		18.609238, 18.090319, 9.129571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.417036, 18.493887, 8.390479>,  <17.944416, 18.231607, 8.962094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.417036, 18.493887, 8.390479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.626141, 18.203262, 8.568841>,  <18.751604, 18.028889, 8.675858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.626141, 18.203262, 8.568841>,  <18.417036, 18.493887, 8.390479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.626141, 18.203262, 8.568841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354060, -0.290772, -0.888872,
		0.775476, 0.622544, 0.105241,
		0.522761, -0.726560, 0.445905,
		18.782969, 17.985294, 8.702612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.998209, 18.536791, 7.997786>,  <18.417036, 18.493887, 8.390479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.998209, 18.536791, 7.997786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.024895, 18.198097, 8.208914>,  <19.040907, 17.994881, 8.335590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.024895, 18.198097, 8.208914>,  <18.998209, 18.536791, 7.997786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.024895, 18.198097, 8.208914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552858, -0.408997, -0.725996,
		0.830601, 0.340243, 0.440837,
		0.066715, -0.846733, 0.527819,
		19.044909, 17.944077, 8.367259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.688051, 18.322115, 7.921561>,  <18.998209, 18.536791, 7.997786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.688051, 18.322115, 7.921561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.467125, 17.999733, 8.006780>,  <19.334570, 17.806305, 8.057911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.467125, 17.999733, 8.006780>,  <19.688051, 18.322115, 7.921561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.467125, 17.999733, 8.006780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377910, -0.469858, -0.797757,
		0.743057, -0.360101, 0.564088,
		-0.552314, -0.805953, 0.213046,
		19.301430, 17.757948, 8.070693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.061356, 17.757952, 7.610471>,  <19.688051, 18.322115, 7.921561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.061356, 17.757952, 7.610471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.715866, 17.569099, 7.680981>,  <19.508572, 17.455788, 7.723286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.715866, 17.569099, 7.680981>,  <20.061356, 17.757952, 7.610471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.715866, 17.569099, 7.680981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175725, -0.609967, -0.772698,
		0.472335, -0.636423, 0.609808,
		-0.863725, -0.472130, 0.176273,
		19.456749, 17.427460, 7.733863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.195675, 17.034674, 7.531420>,  <20.061356, 17.757952, 7.610471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.195675, 17.034674, 7.531420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.800846, 17.090569, 7.500017>,  <19.563950, 17.124105, 7.481175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.800846, 17.090569, 7.500017>,  <20.195675, 17.034674, 7.531420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.800846, 17.090569, 7.500017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014632, -0.409209, -0.912323,
		-0.159608, -0.901677, 0.401875,
		-0.987072, 0.139734, -0.078506,
		19.504725, 17.132488, 7.476465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.820938, 16.305782, 7.523928>,  <20.195675, 17.034674, 7.531420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.820938, 16.305782, 7.523928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.622810, 16.604164, 7.345847>,  <19.503933, 16.783194, 7.238998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.622810, 16.604164, 7.345847>,  <19.820938, 16.305782, 7.523928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.622810, 16.604164, 7.345847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035437, -0.494710, -0.868335,
		-0.867987, -0.445881, 0.218605,
		-0.495321, 0.745957, -0.445203,
		19.474215, 16.827951, 7.212286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.310745, 15.964917, 7.157635>,  <19.820938, 16.305782, 7.523928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.310745, 15.964917, 7.157635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.342987, 16.326385, 6.989406>,  <19.362331, 16.543266, 6.888468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.342987, 16.326385, 6.989406>,  <19.310745, 15.964917, 7.157635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.342987, 16.326385, 6.989406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166730, -0.428226, -0.888157,
		-0.982703, 0.001466, -0.185185,
		0.080603, 0.903670, -0.420574,
		19.367168, 16.597486, 6.863233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.060438, 15.870090, 6.486873>,  <19.310745, 15.964917, 7.157635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.060438, 15.870090, 6.486873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217594, 16.235504, 6.444754>,  <19.311888, 16.454752, 6.419482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217594, 16.235504, 6.444754>,  <19.060438, 15.870090, 6.486873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.217594, 16.235504, 6.444754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190208, -0.192761, -0.962634,
		-0.899698, 0.358183, -0.249496,
		0.392892, 0.913536, -0.105298,
		19.335463, 16.509565, 6.413165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.747374, 16.154387, 5.970994>,  <19.060438, 15.870090, 6.486873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.747374, 16.154387, 5.970994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.098396, 16.345791, 5.983140>,  <19.309010, 16.460634, 5.990427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.098396, 16.345791, 5.983140>,  <18.747374, 16.154387, 5.970994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.098396, 16.345791, 5.983140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088079, -0.098631, -0.991219,
		-0.471315, 0.872524, -0.128701,
		0.877556, 0.478512, 0.030365,
		19.361664, 16.489344, 5.992249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.763496, 16.609478, 5.380062>,  <18.747374, 16.154387, 5.970994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.763496, 16.609478, 5.380062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.132984, 16.499882, 5.487148>,  <19.354677, 16.434124, 5.551400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.132984, 16.499882, 5.487148>,  <18.763496, 16.609478, 5.380062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.132984, 16.499882, 5.487148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174025, -0.322445, -0.930454,
		0.341260, 0.906067, -0.250168,
		0.923719, -0.273991, 0.267716,
		19.410099, 16.417685, 5.567463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.246696, 17.076975, 5.155416>,  <18.763496, 16.609478, 5.380062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.246696, 17.076975, 5.155416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.383194, 16.702343, 5.187350>,  <19.465092, 16.477564, 5.206511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.383194, 16.702343, 5.187350>,  <19.246696, 17.076975, 5.155416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.383194, 16.702343, 5.187350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143617, -0.031987, -0.989116,
		0.928938, 0.348996, 0.123593,
		0.341245, -0.936578, 0.079836,
		19.485567, 16.421370, 5.211301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.026991, 16.887228, 4.810602>,  <19.246696, 17.076975, 5.155416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.026991, 16.887228, 4.810602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.781975, 16.571144, 4.803009>,  <19.634964, 16.381495, 4.798453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.781975, 16.571144, 4.803009>,  <20.026991, 16.887228, 4.810602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781975, 16.571144, 4.803009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163708, -0.103333, -0.981082,
		0.773299, -0.604062, 0.192660,
		-0.612542, -0.790210, -0.018982,
		19.598211, 16.334082, 4.797314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.315065, 16.262911, 4.592194>,  <20.026991, 16.887228, 4.810602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.315065, 16.262911, 4.592194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.946529, 16.304443, 4.442339>,  <19.725409, 16.329363, 4.352427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.946529, 16.304443, 4.442339>,  <20.315065, 16.262911, 4.592194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.946529, 16.304443, 4.442339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382655, 0.072110, -0.921073,
		-0.068624, -0.991977, -0.106171,
		-0.921339, 0.103835, -0.374636,
		19.670128, 16.335594, 4.329948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.096043, 15.717078, 3.998039>,  <20.315065, 16.262911, 4.592194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.096043, 15.717078, 3.998039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.885654, 16.052990, 3.944184>,  <19.759422, 16.254538, 3.911871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.885654, 16.052990, 3.944184>,  <20.096043, 15.717078, 3.998039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.885654, 16.052990, 3.944184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267079, 0.012789, -0.963590,
		-0.807480, -0.542779, -0.231014,
		-0.525971, 0.839778, -0.134637,
		19.727863, 16.304924, 3.903793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.038513, 15.479376, 4.729456>,  <20.096043, 15.717078, 3.998039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.038513, 15.479376, 4.729456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.007969, 15.165314, 4.483627>,  <19.989641, 14.976876, 4.336130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.007969, 15.165314, 4.483627>,  <20.038513, 15.479376, 4.729456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.007969, 15.165314, 4.483627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950050, -0.244363, 0.194142,
		-0.302611, -0.569050, 0.764597,
		-0.076362, -0.785155, -0.614573,
		19.985060, 14.929768, 4.299255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.268211, 14.872551, 4.976737>,  <20.038513, 15.479376, 4.729456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.268211, 14.872551, 4.976737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.307842, 14.793118, 4.586711>,  <20.331621, 14.745458, 4.352696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.307842, 14.793118, 4.586711>,  <20.268211, 14.872551, 4.976737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.307842, 14.793118, 4.586711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949515, -0.274254, 0.152335,
		-0.297666, -0.940930, 0.161387,
		0.099075, -0.198584, -0.975063,
		20.337564, 14.733542, 4.294192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.142700, 14.649798, 5.743386>,  <20.268211, 14.872551, 4.976737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.142700, 14.649798, 5.743386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.202091, 14.757496, 6.124009>,  <20.237726, 14.822115, 6.352383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.202091, 14.757496, 6.124009>,  <20.142700, 14.649798, 5.743386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.202091, 14.757496, 6.124009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485643, -0.858055, 0.167009,
		0.861455, 0.437320, -0.258160,
		0.148479, 0.269244, 0.951557,
		20.246635, 14.838269, 6.409476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.914064, 14.714964, 5.961702>,  <20.142700, 14.649798, 5.743386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.914064, 14.714964, 5.961702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.654400, 14.589619, 6.238943>,  <20.498600, 14.514411, 6.405288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.654400, 14.589619, 6.238943>,  <20.914064, 14.714964, 5.961702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.654400, 14.589619, 6.238943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483257, -0.873578, 0.057661,
		0.587411, 0.372378, 0.718529,
		-0.649162, -0.313363, 0.693103,
		20.459652, 14.495609, 6.446874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.428568, 14.327302, 5.639874>,  <20.914064, 14.714964, 5.961702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.428568, 14.327302, 5.639874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.616447, 14.533672, 5.926427>,  <21.729176, 14.657495, 6.098359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.616447, 14.533672, 5.926427>,  <21.428568, 14.327302, 5.639874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.616447, 14.533672, 5.926427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533083, 0.481077, -0.695980,
		-0.703708, 0.708792, -0.049069,
		0.469699, 0.515925, 0.716382,
		21.757357, 14.688450, 6.141342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.483162, 14.986279, 5.280978>,  <21.428568, 14.327302, 5.639874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.483162, 14.986279, 5.280978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.761318, 14.946659, 5.565688>,  <21.928211, 14.922887, 5.736514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.761318, 14.946659, 5.565688>,  <21.483162, 14.986279, 5.280978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.761318, 14.946659, 5.565688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616071, 0.592103, -0.519491,
		-0.369989, 0.799752, 0.472764,
		0.695389, -0.099050, 0.711775,
		21.969934, 14.916945, 5.779221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.786427, 15.698517, 5.417569>,  <21.483162, 14.986279, 5.280978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.786427, 15.698517, 5.417569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.024464, 15.386250, 5.493904>,  <22.167286, 15.198889, 5.539705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.024464, 15.386250, 5.493904>,  <21.786427, 15.698517, 5.417569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.024464, 15.386250, 5.493904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777642, 0.499430, -0.381893,
		0.202821, 0.375666, 0.904289,
		0.595094, -0.780669, 0.190839,
		22.202991, 15.152049, 5.551156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.305353, 15.936321, 5.831692>,  <21.786427, 15.698517, 5.417569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.305353, 15.936321, 5.831692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.427269, 15.623550, 5.614182>,  <22.500420, 15.435888, 5.483675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.427269, 15.623550, 5.614182>,  <22.305353, 15.936321, 5.831692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.427269, 15.623550, 5.614182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796378, 0.522384, -0.304790,
		0.522384, -0.340155, 0.781927,
		0.304790, -0.781927, -0.543777,
		22.518705, 15.388972, 5.451048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.080847, 15.899086, 5.856022>,  <22.305353, 15.936321, 5.831692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.080847, 15.899086, 5.856022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.917679, 15.760605, 5.518088>,  <22.819778, 15.677516, 5.315328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.917679, 15.760605, 5.518088>,  <23.080847, 15.899086, 5.856022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.917679, 15.760605, 5.518088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571696, 0.624615, -0.531996,
		0.711875, -0.700000, -0.056870,
		-0.407919, -0.346202, -0.844835,
		22.795303, 15.656744, 5.264638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.588644, 15.861001, 5.451121>,  <23.080847, 15.899086, 5.856022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.588644, 15.861001, 5.451121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.271538, 15.932816, 5.218127>,  <23.081274, 15.975904, 5.078331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.271538, 15.932816, 5.218127>,  <23.588644, 15.861001, 5.451121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.271538, 15.932816, 5.218127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546281, 0.633173, -0.548333,
		0.270368, -0.752900, -0.600036,
		-0.792766, 0.179536, -0.582485,
		23.033709, 15.986676, 5.043382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.602772, 15.569336, 4.768113>,  <23.588644, 15.861001, 5.451121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.602772, 15.569336, 4.768113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.421848, 15.925594, 4.786740>,  <23.313293, 16.139349, 4.797916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.421848, 15.925594, 4.786740>,  <23.602772, 15.569336, 4.768113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.421848, 15.925594, 4.786740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823483, 0.437111, -0.361676,
		-0.342480, -0.125241, -0.931140,
		-0.452308, 0.890645, 0.046567,
		23.286156, 16.192787, 4.800711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.841381, 15.998352, 4.208689>,  <23.602772, 15.569336, 4.768113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.841381, 15.998352, 4.208689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.678139, 16.271019, 4.451597>,  <23.580193, 16.434620, 4.597342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.678139, 16.271019, 4.451597>,  <23.841381, 15.998352, 4.208689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.678139, 16.271019, 4.451597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806445, 0.580956, -0.110169,
		-0.427896, 0.444770, -0.786819,
		-0.408108, 0.681667, 0.607271,
		23.555706, 16.475519, 4.633779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.711409, 16.587471, 3.834950>,  <23.841381, 15.998352, 4.208689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.711409, 16.587471, 3.834950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.785660, 16.654381, 4.222261>,  <23.830210, 16.694527, 4.454648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.785660, 16.654381, 4.222261>,  <23.711409, 16.587471, 3.834950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.785660, 16.654381, 4.222261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718448, 0.649148, -0.249878,
		-0.670354, 0.742042, 0.000320,
		0.185628, 0.167277, 0.968277,
		23.841349, 16.704563, 4.512744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.631310, 17.352711, 3.922305>,  <23.711409, 16.587471, 3.834950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.631310, 17.352711, 3.922305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.831879, 17.181160, 4.222876>,  <23.952219, 17.078230, 4.403218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.831879, 17.181160, 4.222876>,  <23.631310, 17.352711, 3.922305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.831879, 17.181160, 4.222876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680247, 0.732094, -0.036081,
		-0.534640, 0.529247, 0.658830,
		0.501421, -0.428877, 0.751426,
		23.982306, 17.052498, 4.448303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.646626, 17.769161, 4.533681>,  <23.631310, 17.352711, 3.922305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.646626, 17.769161, 4.533681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.989170, 17.564262, 4.507594>,  <24.194696, 17.441324, 4.491941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.989170, 17.564262, 4.507594>,  <23.646626, 17.769161, 4.533681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.989170, 17.564262, 4.507594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515303, 0.855883, 0.043890,
		0.033337, -0.071193, 0.996905,
		0.856359, -0.512245, -0.065219,
		24.246078, 17.410589, 4.488028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.093565, 17.829699, 5.198195>,  <23.646626, 17.769161, 4.533681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.093565, 17.829699, 5.198195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295132, 17.747219, 4.862684>,  <24.416073, 17.697731, 4.661377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295132, 17.747219, 4.862684>,  <24.093565, 17.829699, 5.198195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.295132, 17.747219, 4.862684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608477, 0.773969, 0.175293,
		0.613043, -0.598710, 0.515485,
		0.503919, -0.206199, -0.838777,
		24.446308, 17.685360, 4.611051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.396057, 18.334835, 5.061520>,  <24.093565, 17.829699, 5.198195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.396057, 18.334835, 5.061520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.129517, 18.516335, 5.298193>,  <22.969593, 18.625235, 5.440197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.129517, 18.516335, 5.298193>,  <23.396057, 18.334835, 5.061520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.129517, 18.516335, 5.298193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616344, 0.111401, -0.779557,
		-0.419639, -0.884138, 0.205434,
		-0.666351, 0.453750, 0.591681,
		22.929611, 18.652460, 5.475698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.811701, 17.957634, 4.945405>,  <23.396057, 18.334835, 5.061520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.811701, 17.957634, 4.945405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.730972, 18.324207, 5.083635>,  <22.682535, 18.544151, 5.166574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.730972, 18.324207, 5.083635>,  <22.811701, 17.957634, 4.945405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.730972, 18.324207, 5.083635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744781, 0.085539, -0.661804,
		-0.636058, -0.390943, 0.665277,
		-0.201820, 0.916432, 0.345575,
		22.670425, 18.599136, 5.187308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.032375, 17.962988, 5.236385>,  <22.811701, 17.957634, 4.945405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.032375, 17.962988, 5.236385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.143169, 18.302124, 5.055521>,  <22.209646, 18.505606, 4.947003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.143169, 18.302124, 5.055521>,  <22.032375, 17.962988, 5.236385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.143169, 18.302124, 5.055521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890671, 0.049980, -0.451893,
		-0.360534, 0.527893, 0.768989,
		0.276985, 0.847839, -0.452160,
		22.226265, 18.556477, 4.919873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.451498, 18.563631, 5.449494>,  <22.032375, 17.962988, 5.236385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.451498, 18.563631, 5.449494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.690121, 18.665955, 5.145210>,  <21.833294, 18.727348, 4.962640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.690121, 18.665955, 5.145210>,  <21.451498, 18.563631, 5.449494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.690121, 18.665955, 5.145210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785639, 0.379798, -0.488390,
		0.163982, 0.888997, 0.427545,
		0.596558, 0.255809, -0.760710,
		21.869087, 18.742697, 4.916997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.346439, 19.273949, 5.200222>,  <21.451498, 18.563631, 5.449494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.346439, 19.273949, 5.200222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.489635, 19.027893, 4.919238>,  <21.575552, 18.880260, 4.750648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.489635, 19.027893, 4.919238>,  <21.346439, 19.273949, 5.200222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.489635, 19.027893, 4.919238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677339, 0.346745, -0.648830,
		0.642694, 0.708077, -0.292527,
		0.357989, -0.615139, -0.702459,
		21.597033, 18.843351, 4.708500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.495001, 19.702106, 4.635513>,  <21.346439, 19.273949, 5.200222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.495001, 19.702106, 4.635513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.457096, 19.330105, 4.493466>,  <21.434353, 19.106903, 4.408237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.457096, 19.330105, 4.493466>,  <21.495001, 19.702106, 4.635513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.457096, 19.330105, 4.493466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540833, 0.347584, -0.765954,
		0.835775, 0.119474, -0.535916,
		-0.094764, -0.930006, -0.355118,
		21.428667, 19.051104, 4.386930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.568247, 19.639389, 3.918871>,  <21.495001, 19.702106, 4.635513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.568247, 19.639389, 3.918871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.372471, 19.297840, 3.989696>,  <21.255005, 19.092911, 4.032191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.372471, 19.297840, 3.989696>,  <21.568247, 19.639389, 3.918871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.372471, 19.297840, 3.989696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552597, 0.146614, -0.820451,
		0.674602, -0.499404, -0.543607,
		-0.489437, -0.853873, 0.177063,
		21.225639, 19.041677, 4.042815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.468809, 19.212280, 3.260753>,  <21.568247, 19.639389, 3.918871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.468809, 19.212280, 3.260753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.178429, 19.171783, 3.532855>,  <21.004200, 19.147486, 3.696116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.178429, 19.171783, 3.532855>,  <21.468809, 19.212280, 3.260753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.178429, 19.171783, 3.532855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679611, 0.257291, -0.686971,
		-0.105474, -0.961016, -0.255584,
		-0.725950, -0.101240, 0.680255,
		20.960644, 19.141411, 3.736931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.999071, 18.598110, 3.032820>,  <21.468809, 19.212280, 3.260753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.999071, 18.598110, 3.032820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.848038, 18.923679, 3.209436>,  <20.757418, 19.119020, 3.315405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.848038, 18.923679, 3.209436>,  <20.999071, 18.598110, 3.032820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.848038, 18.923679, 3.209436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492035, 0.227589, -0.840300,
		-0.784430, -0.534537, 0.314545,
		-0.377585, 0.813925, 0.441539,
		20.734762, 19.167856, 3.341898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150087, 18.712553, 3.053292>,  <20.999071, 18.598110, 3.032820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.150087, 18.712553, 3.053292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.353558, 19.054779, 3.014804>,  <20.475639, 19.260115, 2.991711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.353558, 19.054779, 3.014804>,  <20.150087, 18.712553, 3.053292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.353558, 19.054779, 3.014804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658318, 0.314486, -0.683897,
		-0.554859, 0.411225, 0.723205,
		0.508674, 0.855566, -0.096221,
		20.506159, 19.311449, 2.985938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.623226, 19.143122, 2.862798>,  <20.150087, 18.712553, 3.053292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.623226, 19.143122, 2.862798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.962185, 19.302059, 2.721925>,  <20.165560, 19.397423, 2.637401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.962185, 19.302059, 2.721925>,  <19.623226, 19.143122, 2.862798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.962185, 19.302059, 2.721925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487160, 0.318049, -0.813339,
		-0.211164, 0.860792, 0.463085,
		0.847399, 0.397345, -0.352183,
		20.216404, 19.421263, 2.616271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.548784, 19.911383, 2.824497>,  <19.623226, 19.143122, 2.862798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.548784, 19.911383, 2.824497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.761810, 19.692078, 2.566572>,  <19.889626, 19.560495, 2.411816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.761810, 19.692078, 2.566572>,  <19.548784, 19.911383, 2.824497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.761810, 19.692078, 2.566572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622339, 0.262686, -0.737353,
		0.573645, 0.793981, -0.201307,
		0.532564, -0.548260, -0.644815,
		19.921579, 19.527599, 2.373127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.968914, 19.605991, 3.183048>,  <19.548784, 19.911383, 2.824497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.968914, 19.605991, 3.183048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.701641, 19.347702, 3.330870>,  <18.541277, 19.192728, 3.419563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.701641, 19.347702, 3.330870>,  <18.968914, 19.605991, 3.183048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.701641, 19.347702, 3.330870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168108, 0.352834, 0.920461,
		-0.724756, 0.677161, -0.127206,
		-0.668183, -0.645725, 0.369555,
		18.501186, 19.153984, 3.441736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.436386, 20.009947, 3.488204>,  <18.968914, 19.605991, 3.183048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.436386, 20.009947, 3.488204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.506134, 19.641308, 3.626913>,  <18.547983, 19.420124, 3.710139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.506134, 19.641308, 3.626913>,  <18.436386, 20.009947, 3.488204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.506134, 19.641308, 3.626913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001997, 0.352498, 0.935810,
		-0.984679, -0.162482, 0.063305,
		0.174367, -0.921599, 0.346773,
		18.558445, 19.364828, 3.730945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.890739, 20.316036, 3.848120>,  <18.436386, 20.009947, 3.488204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.890739, 20.316036, 3.848120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.914402, 20.300648, 3.449118>,  <17.928600, 20.291414, 3.209716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.914402, 20.300648, 3.449118>,  <17.890739, 20.316036, 3.848120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.914402, 20.300648, 3.449118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807929, 0.585050, -0.070478,
		0.586303, 0.810084, 0.003529,
		0.059158, -0.038470, -0.997507,
		17.932150, 20.289106, 3.149866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<22.745077, 17.315689, 15.695450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.717003, 17.714275, 15.713917>,  <22.700159, 17.953426, 15.724997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.717003, 17.714275, 15.713917>,  <22.745077, 17.315689, 15.695450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.717003, 17.714275, 15.713917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038674, 0.043528, -0.998304,
		-0.996784, -0.071852, 0.035483,
		-0.070185, 0.996465, 0.046167,
		22.695948, 18.013214, 15.727767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.250793, 17.522747, 15.092539>,  <22.745077, 17.315689, 15.695450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.250793, 17.522747, 15.092539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.472054, 17.838776, 15.198227>,  <22.604809, 18.028393, 15.261640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.472054, 17.838776, 15.198227>,  <22.250793, 17.522747, 15.092539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.472054, 17.838776, 15.198227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025614, 0.333139, -0.942530,
		-0.832689, 0.514591, 0.204512,
		0.553149, 0.790072, 0.264221,
		22.637999, 18.075798, 15.277493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.888557, 18.175379, 14.809040>,  <22.250793, 17.522747, 15.092539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.888557, 18.175379, 14.809040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.269394, 18.282646, 14.867842>,  <22.497896, 18.347008, 14.903123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.269394, 18.282646, 14.867842>,  <21.888557, 18.175379, 14.809040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.269394, 18.282646, 14.867842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028265, 0.401467, -0.915437,
		-0.304511, 0.875733, 0.374653,
		0.952089, 0.268171, 0.147004,
		22.555021, 18.363098, 14.911942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.864044, 18.690281, 14.421975>,  <21.888557, 18.175379, 14.809040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.864044, 18.690281, 14.421975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.255169, 18.619057, 14.466125>,  <22.489843, 18.576323, 14.492616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.255169, 18.619057, 14.466125>,  <21.864044, 18.690281, 14.421975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.255169, 18.619057, 14.466125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155205, 0.261827, -0.952554,
		0.140713, 0.948547, 0.283653,
		0.977810, -0.178061, 0.110376,
		22.548512, 18.565638, 14.499238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.174179, 19.320755, 14.177975>,  <21.864044, 18.690281, 14.421975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.174179, 19.320755, 14.177975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.457619, 19.038589, 14.171286>,  <22.627682, 18.869291, 14.167272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.457619, 19.038589, 14.171286>,  <22.174179, 19.320755, 14.177975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.457619, 19.038589, 14.171286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259035, 0.282105, -0.923752,
		0.656344, 0.650239, 0.382626,
		0.708600, -0.705412, -0.016723,
		22.670198, 18.826965, 14.166268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.641851, 19.658407, 13.810494>,  <22.174179, 19.320755, 14.177975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.641851, 19.658407, 13.810494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.749870, 19.274021, 13.786428>,  <22.814682, 19.043390, 13.771989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.749870, 19.274021, 13.786428>,  <22.641851, 19.658407, 13.810494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.749870, 19.274021, 13.786428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176732, 0.110895, -0.977992,
		0.946488, 0.253472, 0.199780,
		0.270048, -0.960965, -0.060164,
		22.830885, 18.985731, 13.768379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.155426, 19.672878, 13.269794>,  <22.641851, 19.658407, 13.810494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.155426, 19.672878, 13.269794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.031200, 19.294842, 13.310484>,  <22.956665, 19.068020, 13.334898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.031200, 19.294842, 13.310484>,  <23.155426, 19.672878, 13.269794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.031200, 19.294842, 13.310484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209437, -0.172422, -0.962500,
		0.927192, -0.277615, 0.251486,
		-0.310566, -0.945093, 0.101726,
		22.938030, 19.011314, 13.341002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.735945, 19.306150, 12.997128>,  <23.155426, 19.672878, 13.269794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.735945, 19.306150, 12.997128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.406204, 19.085331, 12.947033>,  <23.208359, 18.952839, 12.916976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.406204, 19.085331, 12.947033>,  <23.735945, 19.306150, 12.997128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.406204, 19.085331, 12.947033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224277, -0.115375, -0.967672,
		0.519753, -0.825791, 0.218922,
		-0.824353, -0.552049, -0.125239,
		23.158899, 18.919716, 12.909461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.862104, 18.686781, 12.753759>,  <23.735945, 19.306150, 12.997128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.862104, 18.686781, 12.753759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.479187, 18.701786, 12.639088>,  <23.249437, 18.710789, 12.570285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.479187, 18.701786, 12.639088>,  <23.862104, 18.686781, 12.753759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.479187, 18.701786, 12.639088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257477, -0.340436, -0.904328,
		-0.131519, -0.939519, 0.316239,
		-0.957292, 0.037512, -0.286678,
		23.191999, 18.713039, 12.553084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.817163, 18.143572, 12.234319>,  <23.862104, 18.686781, 12.753759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.817163, 18.143572, 12.234319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.496471, 18.374969, 12.174216>,  <23.304056, 18.513807, 12.138155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.496471, 18.374969, 12.174216>,  <23.817163, 18.143572, 12.234319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.496471, 18.374969, 12.174216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007982, -0.241009, -0.970490,
		-0.597635, -0.779269, 0.188606,
		-0.801728, 0.578494, -0.150256,
		23.255953, 18.548517, 12.129140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.388884, 17.765818, 11.785977>,  <23.817163, 18.143572, 12.234319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.388884, 17.765818, 11.785977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.248116, 18.138695, 11.752100>,  <23.163654, 18.362421, 11.731773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.248116, 18.138695, 11.752100>,  <23.388884, 17.765818, 11.785977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.248116, 18.138695, 11.752100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121349, -0.135154, -0.983365,
		-0.928131, -0.335788, 0.160684,
		-0.351919, 0.932191, -0.084693,
		23.142540, 18.418352, 11.726692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.780884, 17.653927, 11.414620>,  <23.388884, 17.765818, 11.785977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.780884, 17.653927, 11.414620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.861774, 18.043777, 11.376229>,  <22.910309, 18.277687, 11.353195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.861774, 18.043777, 11.376229>,  <22.780884, 17.653927, 11.414620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.861774, 18.043777, 11.376229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263781, -0.040174, -0.963746,
		-0.943146, 0.220210, 0.248963,
		0.202225, 0.974625, -0.095977,
		22.922441, 18.336164, 11.347436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.198072, 17.962429, 11.014776>,  <22.780884, 17.653927, 11.414620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.198072, 17.962429, 11.014776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.505398, 18.212532, 10.960009>,  <22.689793, 18.362595, 10.927148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.505398, 18.212532, 10.960009>,  <22.198072, 17.962429, 11.014776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.505398, 18.212532, 10.960009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369540, 0.258651, -0.892491,
		-0.522624, 0.736308, 0.429784,
		0.768312, 0.625260, -0.136918,
		22.735891, 18.400110, 10.918933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.914717, 18.567505, 10.691965>,  <22.198072, 17.962429, 11.014776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.914717, 18.567505, 10.691965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.301250, 18.602409, 10.595145>,  <22.533171, 18.623352, 10.537053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.301250, 18.602409, 10.595145>,  <21.914717, 18.567505, 10.691965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301250, 18.602409, 10.595145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256338, 0.245311, -0.934940,
		-0.022207, 0.965509, 0.259420,
		0.966332, 0.087261, -0.242049,
		22.591150, 18.628588, 10.522531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.889435, 19.139809, 10.225321>,  <21.914717, 18.567505, 10.691965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.889435, 19.139809, 10.225321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.207901, 18.910995, 10.146434>,  <22.398981, 18.773706, 10.099102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.207901, 18.910995, 10.146434>,  <21.889435, 19.139809, 10.225321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.207901, 18.910995, 10.146434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198815, 0.060524, -0.978166,
		0.571482, 0.817993, -0.065543,
		0.796166, -0.572035, -0.197218,
		22.446751, 18.739386, 10.087269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.150980, 19.431398, 9.728946>,  <21.889435, 19.139809, 10.225321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.150980, 19.431398, 9.728946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.338120, 19.080261, 9.687942>,  <22.450403, 18.869579, 9.663339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.338120, 19.080261, 9.687942>,  <22.150980, 19.431398, 9.728946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.338120, 19.080261, 9.687942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200301, 0.007655, -0.979704,
		0.860811, 0.478888, -0.172252,
		0.467851, -0.877842, -0.102511,
		22.478476, 18.816908, 9.657188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.693491, 19.516924, 9.094886>,  <22.150980, 19.431398, 9.728946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.693491, 19.516924, 9.094886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.596844, 19.132599, 9.149231>,  <22.538857, 18.902004, 9.181838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.596844, 19.132599, 9.149231>,  <22.693491, 19.516924, 9.094886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.596844, 19.132599, 9.149231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010547, -0.137403, -0.990459,
		0.970315, -0.240744, 0.023066,
		-0.241616, -0.960814, 0.135864,
		22.524359, 18.844355, 9.189990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.121870, 19.055460, 8.739081>,  <22.693491, 19.516924, 9.094886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.121870, 19.055460, 8.739081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.781723, 18.848831, 8.779138>,  <22.577635, 18.724854, 8.803171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.781723, 18.848831, 8.779138>,  <23.121870, 19.055460, 8.739081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.781723, 18.848831, 8.779138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013114, -0.211061, -0.977385,
		0.526025, -0.829824, 0.186254,
		-0.850368, -0.516571, 0.100141,
		22.526613, 18.693859, 8.809180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.184387, 18.689856, 8.117299>,  <23.121870, 19.055460, 8.739081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.184387, 18.689856, 8.117299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.818821, 18.562355, 8.217819>,  <22.599482, 18.485855, 8.278131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.818821, 18.562355, 8.217819>,  <23.184387, 18.689856, 8.117299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.818821, 18.562355, 8.217819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133855, -0.347806, -0.927962,
		0.383193, -0.881719, 0.275200,
		-0.913918, -0.318752, 0.251300,
		22.544645, 18.466730, 8.293209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.119694, 18.005779, 7.913102>,  <23.184387, 18.689856, 8.117299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.119694, 18.005779, 7.913102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.746284, 18.147877, 7.932441>,  <22.522240, 18.233135, 7.944044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.746284, 18.147877, 7.932441>,  <23.119694, 18.005779, 7.913102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.746284, 18.147877, 7.932441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139374, -0.235349, -0.961866,
		-0.330318, -0.904662, 0.269215,
		-0.933523, 0.355243, 0.048346,
		22.466227, 18.254450, 7.946945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.713871, 17.481646, 7.481249>,  <23.119694, 18.005779, 7.913102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.713871, 17.481646, 7.481249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.489452, 17.807541, 7.539807>,  <22.354801, 18.003078, 7.574942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.489452, 17.807541, 7.539807>,  <22.713871, 17.481646, 7.481249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.489452, 17.807541, 7.539807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209638, 0.031241, -0.977280,
		-0.800800, -0.578988, 0.153273,
		-0.561045, 0.814737, 0.146395,
		22.321138, 18.051962, 7.583726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.987375, 17.393127, 7.135513>,  <22.713871, 17.481646, 7.481249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.987375, 17.393127, 7.135513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.045090, 17.785873, 7.184706>,  <22.079720, 18.021521, 7.214221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.045090, 17.785873, 7.184706>,  <21.987375, 17.393127, 7.135513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.045090, 17.785873, 7.184706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115636, 0.140161, -0.983353,
		-0.982756, 0.127665, 0.133762,
		0.144288, 0.981864, 0.122981,
		22.088375, 18.080433, 7.221600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.962635, 16.701178, 7.352850>,  <21.987375, 17.393127, 7.135513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.962635, 16.701178, 7.352850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.827679, 16.334812, 7.265880>,  <21.746706, 16.114994, 7.213697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.827679, 16.334812, 7.265880>,  <21.962635, 16.701178, 7.352850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.827679, 16.334812, 7.265880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095166, -0.196599, 0.975855,
		-0.936543, 0.349934, -0.020833,
		-0.337389, -0.915912, -0.217425,
		21.726461, 16.060038, 7.200652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.333164, 16.699623, 7.716248>,  <21.962635, 16.701178, 7.352850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.333164, 16.699623, 7.716248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.473801, 16.331467, 7.647817>,  <21.558182, 16.110573, 7.606758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.473801, 16.331467, 7.647817>,  <21.333164, 16.699623, 7.716248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.473801, 16.331467, 7.647817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035053, -0.169674, 0.984877,
		-0.935497, -0.352270, -0.027393,
		0.351591, -0.920389, -0.171078,
		21.579277, 16.055349, 7.596493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.960976, 16.144939, 8.195789>,  <21.333164, 16.699623, 7.716248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.960976, 16.144939, 8.195789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.293957, 15.954884, 8.081759>,  <21.493746, 15.840850, 8.013341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.293957, 15.954884, 8.081759>,  <20.960976, 16.144939, 8.195789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.293957, 15.954884, 8.081759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229988, -0.171788, 0.957912,
		-0.504115, -0.862978, -0.033729,
		0.832451, -0.475140, -0.285075,
		21.543692, 15.812342, 7.996237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.946291, 15.558401, 8.544523>,  <20.960976, 16.144939, 8.195789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.946291, 15.558401, 8.544523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.329609, 15.579582, 8.432188>,  <21.559599, 15.592291, 8.364787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.329609, 15.579582, 8.432188>,  <20.946291, 15.558401, 8.544523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.329609, 15.579582, 8.432188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269478, -0.494644, 0.826262,
		-0.095162, -0.867481, -0.488283,
		0.958293, 0.052953, -0.280839,
		21.617096, 15.595468, 8.347937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.263521, 14.852569, 8.587488>,  <20.946291, 15.558401, 8.544523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.263521, 14.852569, 8.587488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.563129, 15.117588, 8.587248>,  <21.742893, 15.276600, 8.587104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.563129, 15.117588, 8.587248>,  <21.263521, 14.852569, 8.587488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.563129, 15.117588, 8.587248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374608, -0.422751, 0.825197,
		0.546478, -0.618314, -0.564844,
		0.749020, 0.662548, -0.000601,
		21.787836, 15.316352, 8.587068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.785311, 14.435254, 8.843990>,  <21.263521, 14.852569, 8.587488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.785311, 14.435254, 8.843990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.874588, 14.821808, 8.895041>,  <21.928154, 15.053740, 8.925672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.874588, 14.821808, 8.895041>,  <21.785311, 14.435254, 8.843990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.874588, 14.821808, 8.895041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381942, -0.207160, 0.900670,
		0.896831, -0.152275, -0.415338,
		0.223191, 0.966384, 0.127627,
		21.941545, 15.111723, 8.933330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.417566, 14.384973, 9.158864>,  <21.785311, 14.435254, 8.843990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.417566, 14.384973, 9.158864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.241142, 14.735031, 9.238451>,  <22.135288, 14.945066, 9.286203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.241142, 14.735031, 9.238451>,  <22.417566, 14.384973, 9.158864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.241142, 14.735031, 9.238451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359659, -0.030762, 0.932577,
		0.822261, 0.482881, -0.301186,
		-0.441059, 0.875145, 0.198967,
		22.108824, 14.997575, 9.298141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.870766, 14.699230, 9.639081>,  <22.417566, 14.384973, 9.158864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.870766, 14.699230, 9.639081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.538174, 14.920750, 9.656756>,  <22.338619, 15.053661, 9.667362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.538174, 14.920750, 9.656756>,  <22.870766, 14.699230, 9.639081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.538174, 14.920750, 9.656756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093028, 0.060373, 0.993831,
		0.547714, 0.830460, -0.101717,
		-0.831478, 0.553798, 0.044189,
		22.288731, 15.086889, 9.670013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.027052, 15.333942, 10.083858>,  <22.870766, 14.699230, 9.639081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.027052, 15.333942, 10.083858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.627876, 15.308563, 10.080006>,  <22.388371, 15.293336, 10.077694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.627876, 15.308563, 10.080006>,  <23.027052, 15.333942, 10.083858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.627876, 15.308563, 10.080006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008720, -0.014625, 0.999855,
		-0.063581, 0.997878, 0.014042,
		-0.997939, -0.063449, -0.009631,
		22.328495, 15.289529, 10.077116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.819603, 15.875793, 10.530645>,  <23.027052, 15.333942, 10.083858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.819603, 15.875793, 10.530645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.509285, 15.623486, 10.524011>,  <22.323095, 15.472101, 10.520030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.509285, 15.623486, 10.524011>,  <22.819603, 15.875793, 10.530645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.509285, 15.623486, 10.524011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051853, 0.037532, 0.997949,
		-0.628853, 0.775063, -0.061824,
		-0.775793, -0.630769, -0.016588,
		22.276546, 15.434255, 10.519034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.278227, 16.182812, 10.910296>,  <22.819603, 15.875793, 10.530645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.278227, 16.182812, 10.910296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.185654, 15.793873, 10.897761>,  <22.130110, 15.560510, 10.890241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.185654, 15.793873, 10.897761>,  <22.278227, 16.182812, 10.910296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.185654, 15.793873, 10.897761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037003, -0.040986, 0.998474,
		-0.972147, 0.229920, 0.045465,
		-0.231433, -0.972346, -0.031337,
		22.116224, 15.502169, 10.888360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.660835, 16.097355, 11.303955>,  <22.278227, 16.182812, 10.910296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.660835, 16.097355, 11.303955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.829895, 15.735149, 11.288937>,  <21.931330, 15.517825, 11.279925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.829895, 15.735149, 11.288937>,  <21.660835, 16.097355, 11.303955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.829895, 15.735149, 11.288937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051329, -0.065278, 0.996546,
		-0.904840, -0.419260, -0.074069,
		0.422647, -0.905516, -0.037546,
		21.956690, 15.463494, 11.277673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.160452, 15.581578, 11.597381>,  <21.660835, 16.097355, 11.303955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.160452, 15.581578, 11.597381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.551586, 15.506847, 11.635180>,  <21.786266, 15.462008, 11.657861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.551586, 15.506847, 11.635180>,  <21.160452, 15.581578, 11.597381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.551586, 15.506847, 11.635180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122719, -0.145753, 0.981680,
		-0.169639, -0.971519, -0.165451,
		0.977836, -0.186836, 0.094499,
		21.844936, 15.450799, 11.663530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.194599, 15.121259, 12.172739>,  <21.160452, 15.581578, 11.597381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.194599, 15.121259, 12.172739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.583633, 15.201992, 12.126535>,  <21.817053, 15.250432, 12.098813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.583633, 15.201992, 12.126535>,  <21.194599, 15.121259, 12.172739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.583633, 15.201992, 12.126535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146692, -0.147062, 0.978189,
		0.180446, -0.968316, -0.172638,
		0.972584, 0.201835, -0.115508,
		21.875408, 15.262542, 12.091883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.471100, 14.639974, 12.669474>,  <21.194599, 15.121259, 12.172739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.471100, 14.639974, 12.669474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.724190, 14.939602, 12.590934>,  <21.876043, 15.119379, 12.543810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.724190, 14.939602, 12.590934>,  <21.471100, 14.639974, 12.669474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.724190, 14.939602, 12.590934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300041, -0.003391, 0.953920,
		0.713889, -0.662480, -0.226897,
		0.632723, 0.749072, -0.196350,
		21.914007, 15.164324, 12.532029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.034241, 14.507625, 13.028852>,  <21.471100, 14.639974, 12.669474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.034241, 14.507625, 13.028852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.064095, 14.901226, 12.964144>,  <22.082006, 15.137386, 12.925319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.064095, 14.901226, 12.964144>,  <22.034241, 14.507625, 13.028852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.064095, 14.901226, 12.964144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192182, 0.144988, 0.970590,
		0.978517, -0.103527, -0.178286,
		0.074633, 0.984003, -0.161769,
		22.086485, 15.196426, 12.915613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.514605, 14.656274, 13.453033>,  <22.034241, 14.507625, 13.028852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.514605, 14.656274, 13.453033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.352543, 15.014767, 13.380793>,  <22.255306, 15.229862, 13.337448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.352543, 15.014767, 13.380793>,  <22.514605, 14.656274, 13.453033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.352543, 15.014767, 13.380793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269439, 0.305817, 0.913170,
		0.873644, 0.321314, -0.365383,
		-0.405154, 0.896233, -0.180601,
		22.230997, 15.283636, 13.326612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.936357, 15.124815, 13.770854>,  <22.514605, 14.656274, 13.453033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.936357, 15.124815, 13.770854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.597958, 15.335575, 13.738205>,  <22.394918, 15.462031, 13.718616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.597958, 15.335575, 13.738205>,  <22.936357, 15.124815, 13.770854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.597958, 15.335575, 13.738205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126052, 0.346395, 0.929581,
		0.518070, 0.776136, -0.359466,
		-0.845999, 0.526900, -0.081623,
		22.344158, 15.493645, 13.713718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<23.043098, 15.893049, 14.139710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.644524, 15.869244, 14.115801>,  <22.405378, 15.854960, 14.101455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.644524, 15.869244, 14.115801>,  <23.043098, 15.893049, 14.139710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.644524, 15.869244, 14.115801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075343, 0.309376, 0.947950,
		-0.037924, 0.949076, -0.312757,
		-0.996436, -0.059514, -0.059774,
		22.345592, 15.851389, 14.097869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.834023, 16.415365, 14.617224>,  <23.043098, 15.893049, 14.139710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.834023, 16.415365, 14.617224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.489822, 16.218323, 14.565256>,  <22.283302, 16.100098, 14.534076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.489822, 16.218323, 14.565256>,  <22.834023, 16.415365, 14.617224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.489822, 16.218323, 14.565256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235211, 0.157944, 0.959026,
		-0.451901, 0.855800, -0.251777,
		-0.860501, -0.492605, -0.129918,
		22.231672, 16.070541, 14.526280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.299698, 16.822233, 14.808412>,  <22.834023, 16.415365, 14.617224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.299698, 16.822233, 14.808412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.162952, 16.449802, 14.859365>,  <22.080906, 16.226343, 14.889937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.162952, 16.449802, 14.859365>,  <22.299698, 16.822233, 14.808412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.162952, 16.449802, 14.859365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276929, 0.229343, 0.933120,
		-0.898021, 0.283722, -0.336245,
		-0.341862, -0.931077, 0.127384,
		22.060394, 16.170479, 14.897580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.696674, 16.882759, 15.198530>,  <22.299698, 16.822233, 14.808412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.696674, 16.882759, 15.198530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.829670, 16.511707, 15.266592>,  <21.909468, 16.289076, 15.307429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.829670, 16.511707, 15.266592>,  <21.696674, 16.882759, 15.198530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.829670, 16.511707, 15.266592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206432, 0.104462, 0.972869,
		-0.920237, -0.358595, -0.156760,
		0.332491, -0.927630, 0.170155,
		21.929417, 16.233418, 15.317638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.223400, 16.799044, 15.664142>,  <21.696674, 16.882759, 15.198530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.223400, 16.799044, 15.664142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.458221, 16.477249, 15.700298>,  <21.599115, 16.284172, 15.721992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.458221, 16.477249, 15.700298>,  <21.223400, 16.799044, 15.664142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.458221, 16.477249, 15.700298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243055, -0.068646, 0.967581,
		-0.772199, -0.589993, -0.235833,
		0.587054, -0.804486, 0.090393,
		21.634338, 16.235903, 15.727416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.826313, 16.198437, 15.938449>,  <21.223400, 16.799044, 15.664142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.826313, 16.198437, 15.938449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.214569, 16.153408, 16.023476>,  <21.447523, 16.126390, 16.074492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.214569, 16.153408, 16.023476>,  <20.826313, 16.198437, 15.938449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.214569, 16.153408, 16.023476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227116, -0.137862, 0.964060,
		-0.079222, -0.984033, -0.159381,
		0.970640, -0.112573, 0.212568,
		21.505762, 16.119637, 16.087246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.843472, 15.539475, 16.309799>,  <20.826313, 16.198437, 15.938449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.843472, 15.539475, 16.309799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.181385, 15.742817, 16.376633>,  <21.384132, 15.864821, 16.416733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.181385, 15.742817, 16.376633>,  <20.843472, 15.539475, 16.309799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.181385, 15.742817, 16.376633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116970, -0.129264, 0.984687,
		0.522167, -0.851391, -0.049738,
		0.844784, 0.508354, 0.167084,
		21.434820, 15.895323, 16.426758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.146885, 15.110156, 16.886002>,  <20.843472, 15.539475, 16.309799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.146885, 15.110156, 16.886002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.330711, 15.464432, 16.912392>,  <21.441008, 15.676997, 16.928226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.330711, 15.464432, 16.912392>,  <21.146885, 15.110156, 16.886002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.330711, 15.464432, 16.912392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062484, -0.041859, 0.997168,
		0.885943, -0.462387, 0.036105,
		0.459566, 0.885690, 0.065976,
		21.468582, 15.730139, 16.932184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.746719, 14.967534, 17.367212>,  <21.146885, 15.110156, 16.886002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.746719, 14.967534, 17.367212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.629871, 15.348755, 17.335318>,  <21.559763, 15.577487, 17.316181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.629871, 15.348755, 17.335318>,  <21.746719, 14.967534, 17.367212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.629871, 15.348755, 17.335318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178439, 0.027594, 0.983564,
		0.939588, 0.301547, 0.162001,
		-0.292120, 0.953052, -0.079735,
		21.542236, 15.634670, 17.311398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.058292, 15.397386, 17.820936>,  <21.746719, 14.967534, 17.367212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.058292, 15.397386, 17.820936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.730381, 15.620003, 17.766939>,  <21.533634, 15.753573, 17.734541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.730381, 15.620003, 17.766939>,  <22.058292, 15.397386, 17.820936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.730381, 15.620003, 17.766939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113257, 0.073510, 0.990843,
		0.561371, 0.827560, 0.002771,
		-0.819778, 0.556544, -0.134993,
		21.484447, 15.786966, 17.726440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.204325, 15.881558, 18.276928>,  <22.058292, 15.397386, 17.820936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.204325, 15.881558, 18.276928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.808876, 15.874302, 18.217203>,  <21.571606, 15.869948, 18.181368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.808876, 15.874302, 18.217203>,  <22.204325, 15.881558, 18.276928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.808876, 15.874302, 18.217203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149463, 0.007239, 0.988741,
		-0.016856, 0.999809, -0.009868,
		-0.988624, -0.018141, -0.149312,
		21.512289, 15.868859, 18.172409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.955921, 16.116985, 18.880213>,  <22.204325, 15.881558, 18.276928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.955921, 16.116985, 18.880213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.615768, 15.984364, 18.716787>,  <21.411676, 15.904790, 18.618732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.615768, 15.984364, 18.716787>,  <21.955921, 16.116985, 18.880213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.615768, 15.984364, 18.716787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405829, -0.080921, 0.910360,
		-0.334896, 0.939959, -0.065741,
		-0.850381, -0.331556, -0.408562,
		21.360655, 15.884897, 18.594219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.374620, 16.396484, 19.261080>,  <21.955921, 16.116985, 18.880213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.374620, 16.396484, 19.261080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.164371, 16.119942, 19.062788>,  <21.038223, 15.954016, 18.943813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.164371, 16.119942, 19.062788>,  <21.374620, 16.396484, 19.261080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.164371, 16.119942, 19.062788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573635, -0.142283, 0.806659,
		-0.628224, 0.708363, -0.321800,
		-0.525621, -0.691359, -0.495728,
		21.006685, 15.912534, 18.914070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.582937, 16.561743, 19.349209>,  <21.374620, 16.396484, 19.261080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.582937, 16.561743, 19.349209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.677639, 16.176704, 19.296515>,  <20.734461, 15.945682, 19.264898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.677639, 16.176704, 19.296515>,  <20.582937, 16.561743, 19.349209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677639, 16.176704, 19.296515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523394, -0.240601, 0.817417,
		-0.818539, -0.124577, -0.560781,
		0.236756, -0.962596, -0.131738,
		20.748667, 15.887925, 19.256992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.984373, 16.201982, 19.404783>,  <20.582937, 16.561743, 19.349209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.984373, 16.201982, 19.404783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.272118, 15.931023, 19.466293>,  <20.444765, 15.768446, 19.503199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.272118, 15.931023, 19.466293>,  <19.984373, 16.201982, 19.404783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.272118, 15.931023, 19.466293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435256, -0.267038, 0.859792,
		-0.541361, -0.685432, -0.486940,
		0.719361, -0.677402, 0.153775,
		20.487926, 15.727802, 19.512426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.588781, 15.678729, 19.598402>,  <19.984373, 16.201982, 19.404783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.588781, 15.678729, 19.598402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.960976, 15.603973, 19.724428>,  <20.184292, 15.559120, 19.800043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.960976, 15.603973, 19.724428>,  <19.588781, 15.678729, 19.598402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.960976, 15.603973, 19.724428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348563, -0.187134, 0.918414,
		-0.112682, -0.964393, -0.239268,
		0.930487, -0.186889, 0.315065,
		20.240122, 15.547906, 19.818947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.443798, 15.112007, 20.072067>,  <19.588781, 15.678729, 19.598402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.443798, 15.112007, 20.072067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.805641, 15.254368, 20.165894>,  <20.022747, 15.339785, 20.222189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.805641, 15.254368, 20.165894>,  <19.443798, 15.112007, 20.072067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.805641, 15.254368, 20.165894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236018, -0.040012, 0.970925,
		0.354939, -0.933667, 0.047804,
		0.904607, 0.355901, 0.234563,
		20.077023, 15.361138, 20.236263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.648935, 14.685762, 20.791832>,  <19.443798, 15.112007, 20.072067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.648935, 14.685762, 20.791832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.881828, 15.008881, 20.755016>,  <20.021564, 15.202752, 20.732927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.881828, 15.008881, 20.755016>,  <19.648935, 14.685762, 20.791832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.881828, 15.008881, 20.755016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186819, 0.243105, 0.951840,
		0.791268, -0.536996, 0.292455,
		0.582231, 0.807796, -0.092040,
		20.056498, 15.251220, 20.727404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.109373, 14.652851, 21.333767>,  <19.648935, 14.685762, 20.791832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.109373, 14.652851, 21.333767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.103329, 15.039650, 21.232031>,  <20.099703, 15.271729, 21.170990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.103329, 15.039650, 21.232031>,  <20.109373, 14.652851, 21.333767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.103329, 15.039650, 21.232031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190124, 0.246951, 0.950194,
		0.981644, 0.062713, 0.180118,
		-0.015109, 0.966997, -0.254341,
		20.098797, 15.329749, 21.155729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.497507, 14.982249, 21.781723>,  <20.109373, 14.652851, 21.333767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.497507, 14.982249, 21.781723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.295448, 15.300575, 21.648153>,  <20.174213, 15.491571, 21.568012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.295448, 15.300575, 21.648153>,  <20.497507, 14.982249, 21.781723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.295448, 15.300575, 21.648153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279455, 0.215242, 0.935722,
		0.816536, 0.565993, 0.113666,
		-0.505147, 0.795816, -0.333922,
		20.143904, 15.539320, 21.547977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.560841, 15.555653, 22.327471>,  <20.497507, 14.982249, 21.781723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.560841, 15.555653, 22.327471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.259602, 15.679550, 22.095297>,  <20.078859, 15.753889, 21.955992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.259602, 15.679550, 22.095297>,  <20.560841, 15.555653, 22.327471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.259602, 15.679550, 22.095297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448054, 0.404566, 0.797229,
		0.481762, 0.860456, -0.165895,
		-0.753096, 0.309745, -0.580435,
		20.033672, 15.772473, 21.921165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.557280, 16.294312, 22.333771>,  <20.560841, 15.555653, 22.327471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.557280, 16.294312, 22.333771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.186291, 16.166336, 22.256376>,  <19.963697, 16.089550, 22.209940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.186291, 16.166336, 22.256376>,  <20.557280, 16.294312, 22.333771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.186291, 16.166336, 22.256376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329933, 0.456845, 0.826097,
		-0.175908, 0.830018, -0.529269,
		-0.927470, -0.319941, -0.193488,
		19.908051, 16.070354, 22.198330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.014214, 16.616488, 22.783659>,  <20.557280, 16.294312, 22.333771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.014214, 16.616488, 22.783659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.188202, 16.975666, 22.810467>,  <20.292595, 17.191174, 22.826551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.188202, 16.975666, 22.810467>,  <20.014214, 16.616488, 22.783659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.188202, 16.975666, 22.810467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810174, -0.357798, -0.464325,
		-0.392960, 0.256265, -0.883125,
		0.434971, 0.897947, 0.067019,
		20.318693, 17.245050, 22.830572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.502382, 17.076197, 22.439337>,  <20.014214, 16.616488, 22.783659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.502382, 17.076197, 22.439337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.750534, 16.785919, 22.320345>,  <19.899426, 16.611752, 22.248949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.750534, 16.785919, 22.320345>,  <19.502382, 17.076197, 22.439337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.750534, 16.785919, 22.320345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105621, -0.453141, 0.885160,
		-0.777156, -0.517716, -0.357768,
		0.620381, -0.725695, -0.297480,
		19.936649, 16.568211, 22.231102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.753626, 17.006081, 22.551826>,  <19.502382, 17.076197, 22.439337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.753626, 17.006081, 22.551826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.810013, 17.385441, 22.665432>,  <18.843845, 17.613056, 22.733595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.810013, 17.385441, 22.665432>,  <18.753626, 17.006081, 22.551826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.810013, 17.385441, 22.665432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404796, 0.206588, -0.890765,
		-0.903476, 0.240538, -0.354786,
		0.140968, 0.948400, 0.284016,
		18.852303, 17.669960, 22.750637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463148, 17.436842, 21.996964>,  <18.753626, 17.006081, 22.551826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.463148, 17.436842, 21.996964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.715469, 17.663521, 22.208979>,  <18.866861, 17.799528, 22.336187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.715469, 17.663521, 22.208979>,  <18.463148, 17.436842, 21.996964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.715469, 17.663521, 22.208979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543023, 0.165537, -0.823240,
		-0.554268, 0.807126, -0.203308,
		0.630804, 0.566696, 0.530040,
		18.904711, 17.833530, 22.367990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.449913, 18.158369, 21.702909>,  <18.463148, 17.436842, 21.996964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.449913, 18.158369, 21.702909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.793526, 18.070480, 21.887856>,  <18.999693, 18.017746, 21.998823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.793526, 18.070480, 21.887856>,  <18.449913, 18.158369, 21.702909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.793526, 18.070480, 21.887856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492275, 0.106752, -0.863869,
		0.140454, 0.969704, 0.199868,
		0.859033, -0.219724, 0.462367,
		19.051235, 18.004562, 22.026566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.766552, 18.794598, 21.487947>,  <18.449913, 18.158369, 21.702909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.766552, 18.794598, 21.487947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.034657, 18.530354, 21.623209>,  <19.195518, 18.371807, 21.704367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.034657, 18.530354, 21.623209>,  <18.766552, 18.794598, 21.487947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034657, 18.530354, 21.623209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584758, 0.189551, -0.788751,
		0.456958, 0.726407, 0.513345,
		0.670259, -0.660609, 0.338155,
		19.235735, 18.332170, 21.724655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.517075, 19.141834, 21.454531>,  <18.766552, 18.794598, 21.487947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.517075, 19.141834, 21.454531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.568344, 18.745140, 21.452120>,  <19.599106, 18.507124, 21.450674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.568344, 18.745140, 21.452120>,  <19.517075, 19.141834, 21.454531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.568344, 18.745140, 21.452120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609331, 0.083542, -0.788503,
		0.782488, 0.097391, 0.615002,
		0.128172, -0.991734, -0.006027,
		19.606796, 18.447620, 21.450312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.263453, 19.037594, 21.450783>,  <19.517075, 19.141834, 21.454531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.263453, 19.037594, 21.450783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.115391, 18.688362, 21.323839>,  <20.026554, 18.478823, 21.247673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.115391, 18.688362, 21.323839>,  <20.263453, 19.037594, 21.450783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.115391, 18.688362, 21.323839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693146, -0.032122, -0.720081,
		0.618495, -0.486516, 0.617063,
		-0.370152, -0.873081, -0.317359,
		20.004345, 18.426437, 21.228632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.776670, 18.653273, 21.289785>,  <20.263453, 19.037594, 21.450783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.776670, 18.653273, 21.289785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.501148, 18.442616, 21.090509>,  <20.335835, 18.316221, 20.970943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.501148, 18.442616, 21.090509>,  <20.776670, 18.653273, 21.289785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.501148, 18.442616, 21.090509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637421, -0.112643, -0.762237,
		0.345310, -0.842590, 0.413283,
		-0.688807, -0.526644, -0.498188,
		20.294506, 18.284622, 20.941053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.977440, 17.947765, 21.024179>,  <20.776670, 18.653273, 21.289785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.977440, 17.947765, 21.024179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.681377, 18.067860, 20.783504>,  <20.503740, 18.139915, 20.639099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.681377, 18.067860, 20.783504>,  <20.977440, 17.947765, 21.024179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.681377, 18.067860, 20.783504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540609, -0.266438, -0.797968,
		-0.399891, -0.915898, 0.034896,
		-0.740155, 0.300235, -0.601689,
		20.459332, 18.157930, 20.602999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.013880, 17.407467, 20.554976>,  <20.977440, 17.947765, 21.024179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.013880, 17.407467, 20.554976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.816681, 17.719849, 20.401581>,  <20.698360, 17.907278, 20.309544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.816681, 17.719849, 20.401581>,  <21.013880, 17.407467, 20.554976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.816681, 17.719849, 20.401581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382743, -0.201158, -0.901689,
		-0.781319, -0.591309, -0.199734,
		-0.492999, 0.780954, -0.383488,
		20.668781, 17.954134, 20.286535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.675478, 17.174210, 19.915916>,  <21.013880, 17.407467, 20.554976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.675478, 17.174210, 19.915916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.632854, 17.568180, 19.861416>,  <20.607281, 17.804562, 19.828716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.632854, 17.568180, 19.861416>,  <20.675478, 17.174210, 19.915916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.632854, 17.568180, 19.861416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230308, -0.108856, -0.967010,
		-0.967266, -0.134424, -0.215237,
		-0.106559, 0.984927, -0.136252,
		20.600887, 17.863659, 19.820539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.297167, 17.311493, 19.202152>,  <20.675478, 17.174210, 19.915916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.297167, 17.311493, 19.202152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.510891, 17.641075, 19.277636>,  <20.639126, 17.838825, 19.322926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.510891, 17.641075, 19.277636>,  <20.297167, 17.311493, 19.202152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.510891, 17.641075, 19.277636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260862, 0.051620, -0.963995,
		-0.804029, 0.564299, -0.187358,
		0.534310, 0.823955, 0.188708,
		20.671185, 17.888262, 19.334248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.098455, 17.803013, 18.705069>,  <20.297167, 17.311493, 19.202152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.098455, 17.803013, 18.705069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.450836, 17.961578, 18.808435>,  <20.662264, 18.056719, 18.870455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.450836, 17.961578, 18.808435>,  <20.098455, 17.803013, 18.705069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.450836, 17.961578, 18.808435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310726, -0.072726, -0.947713,
		-0.356894, 0.915186, -0.187245,
		0.880952, 0.396415, 0.258417,
		20.715122, 18.080503, 18.885960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.284414, 18.227972, 18.121426>,  <20.098455, 17.803013, 18.705069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.284414, 18.227972, 18.121426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.635689, 18.214127, 18.312254>,  <20.846453, 18.205820, 18.426750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.635689, 18.214127, 18.312254>,  <20.284414, 18.227972, 18.121426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635689, 18.214127, 18.312254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476236, 0.156329, -0.865310,
		-0.044630, 0.987098, 0.153769,
		0.878184, -0.034612, 0.477069,
		20.899143, 18.203743, 18.455374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.574883, 18.821100, 17.959684>,  <20.284414, 18.227972, 18.121426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.574883, 18.821100, 17.959684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.868908, 18.566475, 18.053038>,  <21.045322, 18.413700, 18.109049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.868908, 18.566475, 18.053038>,  <20.574883, 18.821100, 17.959684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.868908, 18.566475, 18.053038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516930, 0.303454, -0.800437,
		0.438708, 0.709015, 0.552117,
		0.735064, -0.636563, 0.233383,
		21.089428, 18.375505, 18.123053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.258760, 19.075161, 17.812244>,  <20.574883, 18.821100, 17.959684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.258760, 19.075161, 17.812244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.393204, 18.699871, 17.845139>,  <21.473869, 18.474697, 17.864876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.393204, 18.699871, 17.845139>,  <21.258760, 19.075161, 17.812244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.393204, 18.699871, 17.845139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622189, 0.155641, -0.767240,
		0.707045, 0.309042, 0.636066,
		0.336107, -0.938227, 0.082238,
		21.494036, 18.418404, 17.869810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.918789, 19.143784, 17.558695>,  <21.258760, 19.075161, 17.812244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.918789, 19.143784, 17.558695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.857655, 18.749630, 17.528599>,  <21.820974, 18.513138, 17.510542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.857655, 18.749630, 17.528599>,  <21.918789, 19.143784, 17.558695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.857655, 18.749630, 17.528599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573235, -0.026376, -0.818966,
		0.805011, -0.168296, 0.568888,
		-0.152834, -0.985384, -0.075240,
		21.811804, 18.454016, 17.506027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.541376, 18.851326, 17.489027>,  <21.918789, 19.143784, 17.558695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.541376, 18.851326, 17.489027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.322102, 18.548550, 17.346739>,  <22.190536, 18.366884, 17.261366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.322102, 18.548550, 17.346739>,  <22.541376, 18.851326, 17.489027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.322102, 18.548550, 17.346739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479533, 0.064007, -0.875187,
		0.685231, -0.650343, 0.327889,
		-0.548185, -0.756939, -0.355720,
		22.157646, 18.321468, 17.240023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.005745, 18.517788, 17.086845>,  <22.541376, 18.851326, 17.489027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.005745, 18.517788, 17.086845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.658005, 18.362560, 16.964449>,  <22.449360, 18.269424, 16.891010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.658005, 18.362560, 16.964449>,  <23.005745, 18.517788, 17.086845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.658005, 18.362560, 16.964449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347231, -0.039067, -0.936966,
		0.351654, -0.920802, 0.168713,
		-0.869351, -0.388070, -0.305993,
		22.397200, 18.246140, 16.872650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.146366, 17.878815, 16.842836>,  <23.005745, 18.517788, 17.086845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.146366, 17.878815, 16.842836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.814537, 18.012646, 16.664009>,  <22.615440, 18.092943, 16.556713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.814537, 18.012646, 16.664009>,  <23.146366, 17.878815, 16.842836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.814537, 18.012646, 16.664009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418754, -0.156896, -0.894443,
		-0.369402, -0.929216, -0.009949,
		-0.829570, 0.334576, -0.447070,
		22.565666, 18.113018, 16.529888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.222536, 17.584301, 16.189518>,  <23.146366, 17.878815, 16.842836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.222536, 17.584301, 16.189518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.947830, 17.872482, 16.150940>,  <22.783007, 18.045391, 16.127792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.947830, 17.872482, 16.150940>,  <23.222536, 17.584301, 16.189518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.947830, 17.872482, 16.150940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253672, 0.113211, -0.960642,
		-0.681178, -0.684202, -0.260507,
		-0.686766, 0.720451, -0.096446,
		22.741800, 18.088617, 16.122005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.313148, 14.222308, 11.324909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.188931, 14.601448, 11.296233>,  <22.114399, 14.828932, 11.279028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.188931, 14.601448, 11.296233>,  <22.313148, 14.222308, 11.324909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.188931, 14.601448, 11.296233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078028, -0.100584, -0.991864,
		-0.947350, -0.302427, 0.105195,
		-0.310547, 0.947851, -0.071690,
		22.095766, 14.885803, 11.274726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.709610, 14.238409, 10.868818>,  <22.313148, 14.222308, 11.324909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.709610, 14.238409, 10.868818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.859154, 14.609283, 10.878244>,  <21.948879, 14.831808, 10.883901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.859154, 14.609283, 10.878244>,  <21.709610, 14.238409, 10.868818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.859154, 14.609283, 10.878244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017650, 0.018291, -0.999677,
		-0.927318, 0.374154, -0.009526,
		0.373858, 0.927186, 0.023566,
		21.971312, 14.887440, 10.885314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.279287, 14.625228, 10.478508>,  <21.709610, 14.238409, 10.868818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.279287, 14.625228, 10.478508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.595535, 14.868965, 10.502584>,  <21.785284, 15.015207, 10.517029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.595535, 14.868965, 10.502584>,  <21.279287, 14.625228, 10.478508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.595535, 14.868965, 10.502584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091491, 0.214757, -0.972373,
		-0.605434, 0.763270, 0.225540,
		0.790619, 0.609342, 0.060189,
		21.832722, 15.051768, 10.520640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.017323, 15.270321, 10.188972>,  <21.279287, 14.625228, 10.478508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.017323, 15.270321, 10.188972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.412788, 15.228123, 10.146246>,  <21.650068, 15.202804, 10.120610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.412788, 15.228123, 10.146246>,  <21.017323, 15.270321, 10.188972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.412788, 15.228123, 10.146246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083890, 0.201852, -0.975817,
		0.124505, 0.973718, 0.190715,
		0.988666, -0.105495, -0.106816,
		21.709389, 15.196474, 10.114201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.163090, 15.784405, 9.662066>,  <21.017323, 15.270321, 10.188972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.163090, 15.784405, 9.662066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.514416, 15.597851, 9.704112>,  <21.725212, 15.485919, 9.729340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.514416, 15.597851, 9.704112>,  <21.163090, 15.784405, 9.662066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.514416, 15.597851, 9.704112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266339, 0.294747, -0.917708,
		0.397022, 0.834032, 0.383097,
		0.878315, -0.466384, 0.105114,
		21.777910, 15.457935, 9.735646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.708284, 16.271164, 9.506018>,  <21.163090, 15.784405, 9.662066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.708284, 16.271164, 9.506018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.839916, 15.898060, 9.447138>,  <21.918896, 15.674198, 9.411810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.839916, 15.898060, 9.447138>,  <21.708284, 16.271164, 9.506018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.839916, 15.898060, 9.447138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105340, 0.191172, -0.975888,
		0.938408, 0.305640, 0.161168,
		0.329081, -0.932758, -0.147201,
		21.938641, 15.618233, 9.402978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.364700, 16.291046, 9.079323>,  <21.708284, 16.271164, 9.506018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.364700, 16.291046, 9.079323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.224300, 15.918980, 9.036251>,  <22.140060, 15.695740, 9.010408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.224300, 15.918980, 9.036251>,  <22.364700, 16.291046, 9.079323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.224300, 15.918980, 9.036251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059147, 0.092741, -0.993932,
		0.934507, -0.355237, 0.022465,
		-0.350998, -0.930165, -0.107678,
		22.119001, 15.639931, 9.003947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.845938, 16.024227, 8.609305>,  <22.364700, 16.291046, 9.079323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.845938, 16.024227, 8.609305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.501034, 15.821743, 8.615747>,  <22.294092, 15.700253, 8.619613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.501034, 15.821743, 8.615747>,  <22.845938, 16.024227, 8.609305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.501034, 15.821743, 8.615747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127454, 0.186103, -0.974229,
		0.490168, -0.842090, -0.224988,
		-0.862259, -0.506211, 0.016106,
		22.242355, 15.669880, 8.620580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.919430, 15.728516, 8.070417>,  <22.845938, 16.024227, 8.609305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.919430, 15.728516, 8.070417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.531235, 15.715897, 8.166046>,  <22.298317, 15.708325, 8.223423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.531235, 15.715897, 8.166046>,  <22.919430, 15.728516, 8.070417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.531235, 15.715897, 8.166046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240055, 0.032259, -0.970223,
		0.022865, -0.998983, -0.038872,
		-0.970490, -0.031516, 0.239073,
		22.240088, 15.706432, 8.237767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.659204, 15.258290, 7.617051>,  <22.919430, 15.728516, 8.070417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.659204, 15.258290, 7.617051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.316196, 15.434361, 7.723564>,  <22.110392, 15.540003, 7.787472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.316196, 15.434361, 7.723564>,  <22.659204, 15.258290, 7.617051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.316196, 15.434361, 7.723564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309204, -0.027305, -0.950604,
		-0.411162, -0.897496, 0.159519,
		-0.857519, 0.440176, 0.266282,
		22.058941, 15.566413, 7.803449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.080431, 14.800832, 7.401107>,  <22.659204, 15.258290, 7.617051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.080431, 14.800832, 7.401107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.945076, 15.173481, 7.454129>,  <21.863863, 15.397071, 7.485942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.945076, 15.173481, 7.454129>,  <22.080431, 14.800832, 7.401107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.945076, 15.173481, 7.454129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448116, -0.035670, -0.893263,
		-0.827458, -0.361668, 0.429546,
		-0.338387, 0.931624, 0.132554,
		21.843559, 15.452969, 7.493896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.433680, 14.834094, 6.949537>,  <22.080431, 14.800832, 7.401107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.433680, 14.834094, 6.949537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.521137, 15.217873, 7.020710>,  <21.573612, 15.448139, 7.063414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.521137, 15.217873, 7.020710>,  <21.433680, 14.834094, 6.949537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.521137, 15.217873, 7.020710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303694, 0.240195, -0.921996,
		-0.927343, 0.147550, 0.343894,
		0.218642, 0.959445, 0.177933,
		21.586729, 15.505706, 7.074090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.765060, 15.289806, 6.784061>,  <21.433680, 14.834094, 6.949537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.765060, 15.289806, 6.784061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.089062, 15.522003, 6.750777>,  <21.283463, 15.661321, 6.730807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.089062, 15.522003, 6.750777>,  <20.765060, 15.289806, 6.784061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.089062, 15.522003, 6.750777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344096, 0.355579, -0.869000,
		-0.474859, 0.732526, 0.487765,
		0.810004, 0.580491, -0.083209,
		21.332064, 15.696151, 6.725814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.470663, 15.828380, 6.481065>,  <20.765060, 15.289806, 6.784061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.470663, 15.828380, 6.481065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.850605, 15.891434, 6.373044>,  <21.078569, 15.929266, 6.308231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.850605, 15.891434, 6.373044>,  <20.470663, 15.828380, 6.481065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.850605, 15.891434, 6.373044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311942, 0.417845, -0.853287,
		-0.021667, 0.894739, 0.446064,
		0.949854, 0.157634, -0.270054,
		21.135561, 15.938724, 6.292028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.578306, 16.349236, 6.002738>,  <20.470663, 15.828380, 6.481065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.578306, 16.349236, 6.002738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.211525, 16.364079, 5.843832>,  <19.991457, 16.372984, 5.748488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.211525, 16.364079, 5.843832>,  <20.578306, 16.349236, 6.002738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.211525, 16.364079, 5.843832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359594, 0.354568, 0.863119,
		0.172884, 0.934294, -0.311779,
		-0.916954, 0.037106, -0.397265,
		19.936440, 16.375210, 5.724652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.493109, 17.060194, 6.115787>,  <20.578306, 16.349236, 6.002738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.493109, 17.060194, 6.115787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.137379, 16.883766, 6.067520>,  <19.923941, 16.777910, 6.038560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.137379, 16.883766, 6.067520>,  <20.493109, 17.060194, 6.115787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.137379, 16.883766, 6.067520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341211, 0.464397, 0.817258,
		-0.304431, 0.767979, -0.563497,
		-0.889324, -0.441070, -0.120666,
		19.870581, 16.751446, 6.031321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.048800, 17.563793, 6.243330>,  <20.493109, 17.060194, 6.115787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.048800, 17.563793, 6.243330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.816902, 17.242912, 6.300415>,  <19.677763, 17.050385, 6.334666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.816902, 17.242912, 6.300415>,  <20.048800, 17.563793, 6.243330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.816902, 17.242912, 6.300415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488577, 0.482429, 0.727018,
		-0.652065, 0.351759, -0.671623,
		-0.579745, -0.802202, 0.142714,
		19.642979, 17.002251, 6.343229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.413450, 17.798582, 6.432497>,  <20.048800, 17.563793, 6.243330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.413450, 17.798582, 6.432497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.379044, 17.412834, 6.532570>,  <19.358400, 17.181385, 6.592614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.379044, 17.412834, 6.532570>,  <19.413450, 17.798582, 6.432497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.379044, 17.412834, 6.532570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528135, 0.257062, 0.809316,
		-0.844793, -0.062517, -0.531429,
		-0.086014, -0.964371, 0.250182,
		19.353239, 17.123524, 6.607625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.687981, 17.713169, 6.659063>,  <19.413450, 17.798582, 6.432497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.687981, 17.713169, 6.659063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.938671, 17.455963, 6.835129>,  <19.089085, 17.301640, 6.940768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.938671, 17.455963, 6.835129>,  <18.687981, 17.713169, 6.659063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.938671, 17.455963, 6.835129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362469, 0.259471, 0.895149,
		-0.689806, -0.720558, -0.070456,
		0.626725, -0.643017, 0.440165,
		19.126688, 17.263058, 6.967178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.257185, 17.336142, 7.234863>,  <18.687981, 17.713169, 6.659063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.257185, 17.336142, 7.234863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.645775, 17.281647, 7.312508>,  <18.878929, 17.248951, 7.359094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.645775, 17.281647, 7.312508>,  <18.257185, 17.336142, 7.234863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.645775, 17.281647, 7.312508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173181, 0.151632, 0.973147,
		-0.162011, -0.979003, 0.123713,
		0.971473, -0.136236, 0.194111,
		18.937218, 17.240776, 7.370741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.257557, 16.886286, 7.783554>,  <18.257185, 17.336142, 7.234863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.257557, 16.886286, 7.783554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.629093, 17.034203, 7.792548>,  <18.852015, 17.122953, 7.797945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.629093, 17.034203, 7.792548>,  <18.257557, 16.886286, 7.783554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.629093, 17.034203, 7.792548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109242, 0.215386, 0.970400,
		0.354004, -0.903804, 0.240456,
		0.928842, 0.369793, 0.022486,
		18.907745, 17.145140, 7.799294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.637302, 16.628910, 8.272766>,  <18.257557, 16.886286, 7.783554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.637302, 16.628910, 8.272766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.844105, 16.968891, 8.232200>,  <18.968185, 17.172880, 8.207860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.844105, 16.968891, 8.232200>,  <18.637302, 16.628910, 8.272766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.844105, 16.968891, 8.232200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180939, 0.224319, 0.957571,
		0.836639, -0.476720, 0.269764,
		0.517006, 0.849952, -0.101416,
		18.999207, 17.223877, 8.201775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.993359, 16.767269, 8.936601>,  <18.637302, 16.628910, 8.272766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.993359, 16.767269, 8.936601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.015255, 17.123352, 8.755698>,  <19.028393, 17.337002, 8.647157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.015255, 17.123352, 8.755698>,  <18.993359, 16.767269, 8.936601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.015255, 17.123352, 8.755698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326225, 0.444025, 0.834517,
		0.943706, 0.101856, 0.314713,
		0.054740, 0.890206, -0.452257,
		19.031677, 17.390413, 8.620021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.457710, 17.160805, 9.411345>,  <18.993359, 16.767269, 8.936601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.457710, 17.160805, 9.411345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.232845, 17.401997, 9.184934>,  <19.097925, 17.546711, 9.049087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.232845, 17.401997, 9.184934>,  <19.457710, 17.160805, 9.411345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.232845, 17.401997, 9.184934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290204, 0.497072, 0.817742,
		0.774438, 0.623969, -0.104449,
		-0.562164, 0.602978, -0.566029,
		19.064196, 17.582890, 9.015125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.844324, 17.750132, 9.483006>,  <19.457710, 17.160805, 9.411345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.844324, 17.750132, 9.483006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.469810, 17.847206, 9.381438>,  <19.245102, 17.905451, 9.320498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.469810, 17.847206, 9.381438>,  <19.844324, 17.750132, 9.483006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.469810, 17.847206, 9.381438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045946, 0.632082, 0.773538,
		0.348226, 0.735917, -0.580658,
		-0.936284, 0.242687, -0.253920,
		19.188925, 17.920012, 9.305263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.721395, 18.463036, 9.734224>,  <19.844324, 17.750132, 9.483006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.721395, 18.463036, 9.734224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.347435, 18.340439, 9.662643>,  <19.123058, 18.266880, 9.619695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.347435, 18.340439, 9.662643>,  <19.721395, 18.463036, 9.734224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.347435, 18.340439, 9.662643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323198, 0.526878, 0.786094,
		-0.146647, 0.792756, -0.591636,
		-0.934900, -0.306494, -0.178952,
		19.066965, 18.248491, 9.608957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.242388, 19.084194, 9.792254>,  <19.721395, 18.463036, 9.734224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.242388, 19.084194, 9.792254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.035038, 18.750069, 9.865506>,  <18.910627, 18.549593, 9.909457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.035038, 18.750069, 9.865506>,  <19.242388, 19.084194, 9.792254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.035038, 18.750069, 9.865506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240780, 0.348052, 0.906027,
		-0.820557, 0.425567, -0.381549,
		-0.518374, -0.835316, 0.183128,
		18.879526, 18.499474, 9.920444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.812822, 19.300056, 10.223103>,  <19.242388, 19.084194, 9.792254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.812822, 19.300056, 10.223103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.772049, 18.904148, 10.263032>,  <18.747585, 18.666603, 10.286989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.772049, 18.904148, 10.263032>,  <18.812822, 19.300056, 10.223103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.772049, 18.904148, 10.263032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183802, 0.117357, 0.975932,
		-0.977664, 0.081132, -0.193885,
		-0.101933, -0.989770, 0.099823,
		18.741468, 18.607218, 10.292979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.233389, 19.708702, 10.336653>,  <18.812822, 19.300056, 10.223103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.233389, 19.708702, 10.336653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.348911, 20.090679, 10.363990>,  <18.418224, 20.319866, 10.380392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.348911, 20.090679, 10.363990>,  <18.233389, 19.708702, 10.336653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.348911, 20.090679, 10.363990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233477, -0.001022, -0.972362,
		-0.928482, 0.296781, -0.223253,
		0.288807, 0.954945, 0.068343,
		18.435553, 20.377163, 10.384493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.845917, 20.155519, 9.779460>,  <18.233389, 19.708702, 10.336653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.845917, 20.155519, 9.779460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.198269, 20.323341, 9.867112>,  <18.409681, 20.424034, 9.919703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.198269, 20.323341, 9.867112>,  <17.845917, 20.155519, 9.779460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.198269, 20.323341, 9.867112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199780, 0.090142, -0.975686,
		-0.429108, 0.903243, -0.004414,
		0.880883, 0.419556, 0.219131,
		18.462534, 20.449207, 9.932851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.913843, 20.768196, 9.384299>,  <17.845917, 20.155519, 9.779460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.913843, 20.768196, 9.384299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.297047, 20.722054, 9.489305>,  <18.526968, 20.694368, 9.552309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.297047, 20.722054, 9.489305>,  <17.913843, 20.768196, 9.384299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.297047, 20.722054, 9.489305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281002, 0.195410, -0.939603,
		0.057090, 0.973914, 0.219619,
		0.958008, -0.115355, 0.262516,
		18.584450, 20.687447, 9.568060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.186201, 21.231106, 8.938756>,  <17.913843, 20.768196, 9.384299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.186201, 21.231106, 8.938756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.492313, 21.001053, 9.054388>,  <18.675982, 20.863022, 9.123767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.492313, 21.001053, 9.054388>,  <18.186201, 21.231106, 8.938756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.492313, 21.001053, 9.054388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440159, 0.139870, -0.886959,
		0.469684, 0.806016, 0.360189,
		0.765283, -0.575130, 0.289080,
		18.721899, 20.828514, 9.141112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.827192, 21.496601, 8.677656>,  <18.186201, 21.231106, 8.938756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.827192, 21.496601, 8.677656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.931023, 21.118370, 8.756145>,  <18.993320, 20.891432, 8.803239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.931023, 21.118370, 8.756145>,  <18.827192, 21.496601, 8.677656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.931023, 21.118370, 8.756145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539060, -0.026715, -0.841843,
		0.801270, 0.324300, 0.502789,
		0.259578, -0.945577, 0.196223,
		19.008896, 20.834698, 8.815012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.578484, 21.403200, 8.622165>,  <18.827192, 21.496601, 8.677656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.578484, 21.403200, 8.622165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.454525, 21.026363, 8.570904>,  <19.380150, 20.800261, 8.540147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.454525, 21.026363, 8.570904>,  <19.578484, 21.403200, 8.622165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.454525, 21.026363, 8.570904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549187, -0.067343, -0.832982,
		0.776116, -0.328519, 0.538255,
		-0.309898, -0.942093, -0.128153,
		19.361555, 20.743736, 8.532458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187771, 21.071892, 8.381418>,  <19.578484, 21.403200, 8.622165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.187771, 21.071892, 8.381418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.900772, 20.806236, 8.297399>,  <19.728573, 20.646843, 8.246986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.900772, 20.806236, 8.297399>,  <20.187771, 21.071892, 8.381418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.900772, 20.806236, 8.297399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427075, -0.181208, -0.885873,
		0.550280, -0.725316, 0.413653,
		-0.717495, -0.664139, -0.210049,
		19.685524, 20.606995, 8.234384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.554924, 20.519983, 8.214627>,  <20.187771, 21.071892, 8.381418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.554924, 20.519983, 8.214627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.193462, 20.498581, 8.044666>,  <19.976585, 20.485739, 7.942689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.193462, 20.498581, 8.044666>,  <20.554924, 20.519983, 8.214627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.193462, 20.498581, 8.044666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421336, -0.288759, -0.859706,
		-0.076696, -0.955905, 0.283483,
		-0.903656, -0.053506, -0.424904,
		19.922365, 20.482529, 7.917195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.447289, 19.914339, 7.781363>,  <20.554924, 20.519983, 8.214627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.447289, 19.914339, 7.781363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.145947, 20.132751, 7.634770>,  <19.965141, 20.263800, 7.546815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.145947, 20.132751, 7.634770>,  <20.447289, 19.914339, 7.781363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.145947, 20.132751, 7.634770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261993, -0.261944, -0.928841,
		-0.603174, -0.795761, 0.054281,
		-0.753353, 0.546031, -0.366481,
		19.919941, 20.296560, 7.524826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.183765, 19.491501, 7.150372>,  <20.447289, 19.914339, 7.781363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.183765, 19.491501, 7.150372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.042755, 19.861240, 7.091990>,  <19.958149, 20.083084, 7.056962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.042755, 19.861240, 7.091990>,  <20.183765, 19.491501, 7.150372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.042755, 19.861240, 7.091990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105921, -0.115549, -0.987638,
		-0.929789, -0.363626, -0.057174,
		-0.352525, 0.924351, -0.145952,
		19.936998, 20.138546, 7.048205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.751999, 19.436403, 6.613166>,  <20.183765, 19.491501, 7.150372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.751999, 19.436403, 6.613166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.846119, 19.825172, 6.612383>,  <19.902590, 20.058434, 6.611913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.846119, 19.825172, 6.612383>,  <19.751999, 19.436403, 6.613166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.846119, 19.825172, 6.612383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229901, -0.057616, -0.971507,
		-0.944341, 0.228144, -0.237003,
		0.235298, 0.971921, -0.001959,
		19.916708, 20.116749, 6.611795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.381866, 19.795404, 6.071950>,  <19.751999, 19.436403, 6.613166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.381866, 19.795404, 6.071950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.708416, 20.014065, 6.146463>,  <19.904346, 20.145262, 6.191171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.708416, 20.014065, 6.146463>,  <19.381866, 19.795404, 6.071950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.708416, 20.014065, 6.146463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224752, -0.003599, -0.974409,
		-0.531993, 0.837352, -0.125799,
		0.816376, 0.546653, 0.186282,
		19.953329, 20.178061, 6.202348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.599705, 20.537802, 13.598655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.952271, 20.706245, 13.684238>,  <17.163809, 20.807312, 13.735588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.952271, 20.706245, 13.684238>,  <16.599705, 20.537802, 13.598655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.952271, 20.706245, 13.684238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192364, 0.093685, -0.976842,
		-0.431401, 0.902159, 0.001569,
		0.881413, 0.421108, 0.213959,
		17.216694, 20.832579, 13.748426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.753242, 20.938318, 13.053174>,  <16.599705, 20.537802, 13.598655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.753242, 20.938318, 13.053174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.116692, 20.948582, 13.219906>,  <17.334761, 20.954741, 13.319945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.116692, 20.948582, 13.219906>,  <16.753242, 20.938318, 13.053174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.116692, 20.948582, 13.219906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416200, 0.026568, -0.908885,
		-0.034396, 0.999318, 0.013461,
		0.908623, 0.025659, 0.416829,
		17.389278, 20.956280, 13.344954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.163788, 21.518969, 12.744153>,  <16.753242, 20.938318, 13.053174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.163788, 21.518969, 12.744153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.400768, 21.221397, 12.867812>,  <17.542955, 21.042854, 12.942007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.400768, 21.221397, 12.867812>,  <17.163788, 21.518969, 12.744153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.400768, 21.221397, 12.867812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418816, -0.043391, -0.907034,
		0.688184, 0.666848, 0.285863,
		0.592450, -0.743930, 0.309147,
		17.578503, 20.998219, 12.960556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.821873, 21.749475, 12.561282>,  <17.163788, 21.518969, 12.744153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.821873, 21.749475, 12.561282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783051, 21.351540, 12.573132>,  <17.759758, 21.112778, 12.580241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783051, 21.351540, 12.573132>,  <17.821873, 21.749475, 12.561282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.783051, 21.351540, 12.573132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468863, -0.071954, -0.880335,
		0.877923, -0.071550, 0.473426,
		-0.097053, -0.994838, 0.029623,
		17.753935, 21.053087, 12.582019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.455387, 21.555311, 12.539828>,  <17.821873, 21.749475, 12.561282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.455387, 21.555311, 12.539828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265957, 21.217129, 12.441093>,  <18.152298, 21.014219, 12.381852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265957, 21.217129, 12.441093>,  <18.455387, 21.555311, 12.539828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.265957, 21.217129, 12.441093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560853, -0.073393, -0.824656,
		0.679096, -0.528976, 0.508934,
		-0.473575, -0.845457, -0.246837,
		18.123884, 20.963491, 12.367043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.974386, 21.163919, 12.185186>,  <18.455387, 21.555311, 12.539828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.974386, 21.163919, 12.185186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.614635, 21.015942, 12.092012>,  <18.398785, 20.927155, 12.036108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.614635, 21.015942, 12.092012>,  <18.974386, 21.163919, 12.185186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.614635, 21.015942, 12.092012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276501, -0.068652, -0.958558,
		0.338623, -0.926513, 0.164035,
		-0.899379, -0.369946, -0.232934,
		18.344822, 20.904959, 12.022132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.167042, 20.777174, 11.732626>,  <18.974386, 21.163919, 12.185186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.167042, 20.777174, 11.732626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.772377, 20.772243, 11.667704>,  <18.535578, 20.769285, 11.628750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.772377, 20.772243, 11.667704>,  <19.167042, 20.777174, 11.732626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.772377, 20.772243, 11.667704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162650, -0.113514, -0.980132,
		-0.006342, -0.993460, 0.114005,
		-0.986663, -0.012327, -0.162307,
		18.476377, 20.768547, 11.619012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.013578, 20.142529, 11.337564>,  <19.167042, 20.777174, 11.732626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.013578, 20.142529, 11.337564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.725506, 20.407036, 11.253598>,  <18.552662, 20.565741, 11.203218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.725506, 20.407036, 11.253598>,  <19.013578, 20.142529, 11.337564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.725506, 20.407036, 11.253598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043938, -0.258487, -0.965015,
		-0.692393, -0.704209, 0.157103,
		-0.720182, 0.661267, -0.209916,
		18.509451, 20.605415, 11.190623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.662813, 19.752693, 10.924606>,  <19.013578, 20.142529, 11.337564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.662813, 19.752693, 10.924606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.553974, 20.130424, 10.850622>,  <18.488670, 20.357063, 10.806231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.553974, 20.130424, 10.850622>,  <18.662813, 19.752693, 10.924606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.553974, 20.130424, 10.850622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184874, -0.137329, -0.973120,
		-0.944343, -0.298979, -0.137214,
		-0.272099, 0.944326, -0.184960,
		18.472345, 20.413723, 10.795135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293133, 19.073174, 10.888420>,  <18.662813, 19.752693, 10.924606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293133, 19.073174, 10.888420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.512730, 18.747303, 10.813677>,  <18.644487, 18.551781, 10.768831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.512730, 18.747303, 10.813677>,  <18.293133, 19.073174, 10.888420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.512730, 18.747303, 10.813677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157146, -0.320178, 0.934233,
		-0.820924, -0.483520, -0.303797,
		0.548989, -0.814674, -0.186858,
		18.677427, 18.502901, 10.757619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.909019, 18.467247, 10.960109>,  <18.293133, 19.073174, 10.888420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.909019, 18.467247, 10.960109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.296329, 18.388561, 11.021749>,  <18.528715, 18.341351, 11.058733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.296329, 18.388561, 11.021749>,  <17.909019, 18.467247, 10.960109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.296329, 18.388561, 11.021749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235540, -0.512527, 0.825734,
		-0.083452, -0.835835, -0.542601,
		0.968275, -0.196714, 0.154101,
		18.586811, 18.329548, 11.067979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.994890, 17.778809, 11.180192>,  <17.909019, 18.467247, 10.960109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.994890, 17.778809, 11.180192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.318165, 17.975132, 11.310389>,  <18.512129, 18.092926, 11.388506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.318165, 17.975132, 11.310389>,  <17.994890, 17.778809, 11.180192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.318165, 17.975132, 11.310389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062531, -0.478044, 0.876107,
		0.585600, -0.728410, -0.355657,
		0.808185, 0.490809, 0.325491,
		18.560619, 18.122375, 11.408036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240093, 17.397060, 11.734241>,  <17.994890, 17.778809, 11.180192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.240093, 17.397060, 11.734241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.458649, 17.725628, 11.799643>,  <18.589781, 17.922768, 11.838883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.458649, 17.725628, 11.799643>,  <18.240093, 17.397060, 11.734241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.458649, 17.725628, 11.799643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113530, -0.266058, 0.957248,
		0.829802, -0.504465, -0.238627,
		0.546387, 0.821418, 0.163504,
		18.622564, 17.972054, 11.848694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.771038, 17.179062, 12.162072>,  <18.240093, 17.397060, 11.734241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.771038, 17.179062, 12.162072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.739124, 17.574467, 12.213423>,  <18.719976, 17.811708, 12.244233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.739124, 17.574467, 12.213423>,  <18.771038, 17.179062, 12.162072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.739124, 17.574467, 12.213423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102354, -0.119983, 0.987486,
		0.991543, 0.091927, -0.091605,
		-0.079786, 0.988511, 0.128377,
		18.715189, 17.871019, 12.251936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.295418, 17.267752, 12.571265>,  <18.771038, 17.179062, 12.162072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.295418, 17.267752, 12.571265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.054508, 17.580296, 12.636685>,  <18.909964, 17.767822, 12.675938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.054508, 17.580296, 12.636685>,  <19.295418, 17.267752, 12.571265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.054508, 17.580296, 12.636685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047586, -0.169371, 0.984403,
		0.796871, 0.600661, 0.064826,
		-0.602272, 0.781358, 0.163550,
		18.873827, 17.814703, 12.685750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.619120, 17.756229, 13.065729>,  <19.295418, 17.267752, 12.571265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.619120, 17.756229, 13.065729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.223274, 17.810032, 13.086002>,  <18.985767, 17.842314, 13.098166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.223274, 17.810032, 13.086002>,  <19.619120, 17.756229, 13.065729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.223274, 17.810032, 13.086002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039568, -0.084055, 0.995675,
		0.138185, 0.987341, 0.077860,
		-0.989616, 0.134507, 0.050682,
		18.926390, 17.850384, 13.101207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.531147, 18.078892, 13.658594>,  <19.619120, 17.756229, 13.065729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.531147, 18.078892, 13.658594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.143810, 17.998528, 13.599337>,  <18.911407, 17.950308, 13.563783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.143810, 17.998528, 13.599337>,  <19.531147, 18.078892, 13.658594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.143810, 17.998528, 13.599337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151880, 0.003225, 0.988394,
		-0.198103, 0.979604, -0.033637,
		-0.968343, -0.200912, -0.148143,
		18.853308, 17.938253, 13.554893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.075954, 18.458563, 14.233218>,  <19.531147, 18.078892, 13.658594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.075954, 18.458563, 14.233218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.871754, 18.142879, 14.096668>,  <18.749233, 17.953468, 14.014738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.871754, 18.142879, 14.096668>,  <19.075954, 18.458563, 14.233218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.871754, 18.142879, 14.096668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402114, -0.131808, 0.906052,
		-0.760061, 0.599813, -0.250063,
		-0.510501, -0.789209, -0.341375,
		18.718603, 17.906116, 13.994256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.522167, 18.484180, 14.769562>,  <19.075954, 18.458563, 14.233218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.522167, 18.484180, 14.769562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.520271, 18.116745, 14.611488>,  <18.519133, 17.896284, 14.516644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.520271, 18.116745, 14.611488>,  <18.522167, 18.484180, 14.769562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.520271, 18.116745, 14.611488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514693, -0.336582, 0.788546,
		-0.857362, 0.207137, -0.471196,
		-0.004741, -0.918590, -0.395184,
		18.518848, 17.841167, 14.492933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857098, 18.202127, 14.752707>,  <18.522167, 18.484180, 14.769562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.857098, 18.202127, 14.752707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.081623, 17.871357, 14.739351>,  <18.216339, 17.672894, 14.731338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.081623, 17.871357, 14.739351>,  <17.857098, 18.202127, 14.752707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.081623, 17.871357, 14.739351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468184, -0.350552, 0.811121,
		-0.682444, -0.439662, -0.583925,
		0.561315, -0.826929, -0.033389,
		18.250017, 17.623278, 14.729335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.519464, 17.741169, 15.152211>,  <17.857098, 18.202127, 14.752707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.519464, 17.741169, 15.152211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857967, 17.534000, 15.102240>,  <18.061069, 17.409698, 15.072257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857967, 17.534000, 15.102240>,  <17.519464, 17.741169, 15.152211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.857967, 17.534000, 15.102240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199512, -0.525493, 0.827075,
		-0.494001, -0.674997, -0.548034,
		0.846261, -0.517915, -0.124924,
		18.111845, 17.378624, 15.064761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.425224, 17.029928, 15.083850>,  <17.519464, 17.741169, 15.152211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.425224, 17.029928, 15.083850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803596, 17.051876, 15.211729>,  <18.030619, 17.065044, 15.288457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803596, 17.051876, 15.211729>,  <17.425224, 17.029928, 15.083850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.803596, 17.051876, 15.211729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232425, -0.572839, 0.786024,
		0.226265, -0.817829, -0.529112,
		0.945929, 0.054871, 0.319698,
		18.087376, 17.068336, 15.307638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.593630, 16.292110, 15.251439>,  <17.425224, 17.029928, 15.083850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.593630, 16.292110, 15.251439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.862713, 16.507568, 15.454348>,  <18.024162, 16.636843, 15.576093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.862713, 16.507568, 15.454348>,  <17.593630, 16.292110, 15.251439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.862713, 16.507568, 15.454348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110114, -0.605072, 0.788520,
		0.731669, -0.586301, -0.347724,
		0.672708, 0.538646, 0.507272,
		18.064526, 16.669163, 15.606529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.302429, 20.770403, 17.931192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.950615, 20.891388, 17.784258>,  <21.739527, 20.963980, 17.696098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.950615, 20.891388, 17.784258>,  <22.302429, 20.770403, 17.931192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.950615, 20.891388, 17.784258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368749, -0.054651, -0.927921,
		-0.300737, -0.951593, -0.063465,
		-0.879535, 0.302463, -0.367335,
		21.686754, 20.982126, 17.674057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.235640, 20.364965, 17.480381>,  <22.302429, 20.770403, 17.931192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.235640, 20.364965, 17.480381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.978195, 20.654533, 17.381018>,  <21.823729, 20.828274, 17.321400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.978195, 20.654533, 17.381018>,  <22.235640, 20.364965, 17.480381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.978195, 20.654533, 17.381018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215500, -0.140026, -0.966412,
		-0.734388, -0.675525, -0.065883,
		-0.643610, 0.723919, -0.248409,
		21.785112, 20.871710, 17.306496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.970188, 20.130079, 16.819159>,  <22.235640, 20.364965, 17.480381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.970188, 20.130079, 16.819159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.899235, 20.523735, 16.818663>,  <21.856663, 20.759930, 16.818365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.899235, 20.523735, 16.818663>,  <21.970188, 20.130079, 16.819159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.899235, 20.523735, 16.818663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167390, 0.028929, -0.985466,
		-0.969802, -0.175011, -0.169866,
		-0.177382, 0.984141, -0.001240,
		21.846020, 20.818977, 16.818291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.768456, 20.116791, 16.212191>,  <21.970188, 20.130079, 16.819159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.768456, 20.116791, 16.212191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.844120, 20.499004, 16.302673>,  <21.889519, 20.728333, 16.356964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.844120, 20.499004, 16.302673>,  <21.768456, 20.116791, 16.212191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.844120, 20.499004, 16.302673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189816, 0.190439, -0.963173,
		-0.963425, 0.225135, -0.145351,
		0.189164, 0.955535, 0.226208,
		21.900869, 20.785666, 16.370535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.297905, 20.406738, 15.802121>,  <21.768456, 20.116791, 16.212191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.297905, 20.406738, 15.802121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.567375, 20.690273, 15.885752>,  <21.729057, 20.860394, 15.935930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.567375, 20.690273, 15.885752>,  <21.297905, 20.406738, 15.802121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.567375, 20.690273, 15.885752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064705, 0.225248, -0.972150,
		-0.736190, 0.668441, 0.105878,
		0.673674, 0.708837, 0.209077,
		21.769478, 20.902924, 15.948475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.107061, 20.971220, 15.409986>,  <21.297905, 20.406738, 15.802121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.107061, 20.971220, 15.409986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.503407, 20.990585, 15.460333>,  <21.741215, 21.002205, 15.490541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.503407, 20.990585, 15.460333>,  <21.107061, 20.971220, 15.409986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.503407, 20.990585, 15.460333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100292, 0.359414, -0.927773,
		-0.090156, 0.931921, 0.351276,
		0.990865, 0.048414, 0.125868,
		21.800667, 21.005110, 15.498094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.285540, 21.461491, 14.932286>,  <21.107061, 20.971220, 15.409986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.285540, 21.461491, 14.932286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.629032, 21.282124, 15.031485>,  <21.835127, 21.174503, 15.091003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.629032, 21.282124, 15.031485>,  <21.285540, 21.461491, 14.932286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.629032, 21.282124, 15.031485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376145, 0.222946, -0.899339,
		0.347991, 0.865572, 0.360121,
		0.858730, -0.448419, 0.247997,
		21.886652, 21.147598, 15.105884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.816439, 21.892923, 14.637342>,  <21.285540, 21.461491, 14.932286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.816439, 21.892923, 14.637342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.973827, 21.526009, 14.661871>,  <22.068260, 21.305859, 14.676588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.973827, 21.526009, 14.661871>,  <21.816439, 21.892923, 14.637342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.973827, 21.526009, 14.661871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391206, 0.106700, -0.914097,
		0.831947, 0.383663, 0.400833,
		0.393474, -0.917288, 0.061322,
		22.091869, 21.250822, 14.680267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.497421, 21.949263, 14.354305>,  <21.816439, 21.892923, 14.637342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.497421, 21.949263, 14.354305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.378170, 21.568352, 14.328110>,  <22.306620, 21.339806, 14.312392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.378170, 21.568352, 14.328110>,  <22.497421, 21.949263, 14.354305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.378170, 21.568352, 14.328110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515438, -0.102860, -0.850731,
		0.803395, -0.287380, 0.521506,
		-0.298126, -0.952277, -0.065489,
		22.288733, 21.282669, 14.308463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.003696, 21.644648, 13.938274>,  <22.497421, 21.949263, 14.354305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.003696, 21.644648, 13.938274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.694759, 21.390568, 13.937174>,  <22.509398, 21.238119, 13.936513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.694759, 21.390568, 13.937174>,  <23.003696, 21.644648, 13.938274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.694759, 21.390568, 13.937174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156235, -0.185763, -0.970094,
		0.615694, -0.749674, 0.242714,
		-0.772342, -0.635202, -0.002752,
		22.463057, 21.200008, 13.936348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.232092, 21.164221, 13.564498>,  <23.003696, 21.644648, 13.938274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.232092, 21.164221, 13.564498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.839935, 21.092125, 13.532639>,  <22.604641, 21.048866, 13.513523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.839935, 21.092125, 13.532639>,  <23.232092, 21.164221, 13.564498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.839935, 21.092125, 13.532639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129735, -0.286152, -0.949361,
		0.148323, -0.941079, 0.303925,
		-0.980392, -0.180242, -0.079648,
		22.545818, 21.038052, 13.508744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.297047, 20.616070, 13.154051>,  <23.232092, 21.164221, 13.564498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.297047, 20.616070, 13.154051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.912796, 20.719086, 13.112350>,  <22.682245, 20.780895, 13.087330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.912796, 20.719086, 13.112350>,  <23.297047, 20.616070, 13.154051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.912796, 20.719086, 13.112350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065443, -0.154928, -0.985756,
		-0.270022, -0.953767, 0.131974,
		-0.960627, 0.257539, -0.104251,
		22.624607, 20.796347, 13.081075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.075554, 20.120171, 12.695215>,  <23.297047, 20.616070, 13.154051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.075554, 20.120171, 12.695215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.812004, 20.421062, 12.692863>,  <22.653873, 20.601597, 12.691452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.812004, 20.421062, 12.692863>,  <23.075554, 20.120171, 12.695215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.812004, 20.421062, 12.692863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051097, 0.036954, -0.998010,
		-0.750516, -0.657863, -0.062785,
		-0.658874, 0.752230, -0.005880,
		22.614342, 20.646732, 12.691099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.600876, 19.838943, 12.210783>,  <23.075554, 20.120171, 12.695215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.600876, 19.838943, 12.210783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.572601, 20.237644, 12.226241>,  <22.555635, 20.476864, 12.235516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.572601, 20.237644, 12.226241>,  <22.600876, 19.838943, 12.210783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.572601, 20.237644, 12.226241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086669, 0.044732, -0.995233,
		-0.993726, -0.067001, -0.089549,
		-0.070687, 0.996750, 0.038644,
		22.551395, 20.536669, 12.237834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.161945, 19.230738, 11.941274>,  <22.600876, 19.838943, 12.210783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.161945, 19.230738, 11.941274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.502651, 19.028954, 11.997866>,  <22.707075, 18.907883, 12.031821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.502651, 19.028954, 11.997866>,  <22.161945, 19.230738, 11.941274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.502651, 19.028954, 11.997866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185372, -0.037599, 0.981949,
		-0.490036, -0.862615, -0.125538,
		0.851765, -0.504461, 0.141480,
		22.758181, 18.877615, 12.040310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.962460, 18.705008, 12.268993>,  <22.161945, 19.230738, 11.941274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.962460, 18.705008, 12.268993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.354012, 18.701527, 12.350693>,  <22.588943, 18.699438, 12.399713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.354012, 18.701527, 12.350693>,  <21.962460, 18.705008, 12.268993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.354012, 18.701527, 12.350693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200256, -0.241757, 0.949448,
		0.041118, -0.970298, -0.238393,
		0.978880, -0.008701, 0.204249,
		22.647676, 18.698915, 12.411967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.052504, 18.208237, 12.784518>,  <21.962460, 18.705008, 12.268993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.052504, 18.208237, 12.784518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.379990, 18.434761, 12.822460>,  <22.576481, 18.570675, 12.845225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.379990, 18.434761, 12.822460>,  <22.052504, 18.208237, 12.784518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.379990, 18.434761, 12.822460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072848, -0.061417, 0.995450,
		0.569559, -0.821901, -0.009028,
		0.818716, 0.566310, 0.094855,
		22.625605, 18.604654, 12.850917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.516396, 17.823704, 13.321558>,  <22.052504, 18.208237, 12.784518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.516396, 17.823704, 13.321558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.661102, 18.195274, 13.353117>,  <22.747927, 18.418217, 13.372052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.661102, 18.195274, 13.353117>,  <22.516396, 17.823704, 13.321558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.661102, 18.195274, 13.353117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177758, -0.151810, 0.972294,
		0.915165, -0.337718, -0.220044,
		0.361766, 0.928924, 0.078899,
		22.769632, 18.473951, 13.376786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.121164, 17.760391, 13.659047>,  <22.516396, 17.823704, 13.321558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.121164, 17.760391, 13.659047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.015789, 18.143684, 13.703575>,  <22.952564, 18.373659, 13.730292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.015789, 18.143684, 13.703575>,  <23.121164, 17.760391, 13.659047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.015789, 18.143684, 13.703575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084606, -0.092002, 0.992158,
		0.960959, 0.270791, -0.056835,
		-0.263439, 0.958232, 0.111320,
		22.936758, 18.431154, 13.736971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.651688, 17.975065, 14.105637>,  <23.121164, 17.760391, 13.659047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.651688, 17.975065, 14.105637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.347118, 18.234253, 14.113312>,  <23.164377, 18.389765, 14.117917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.347118, 18.234253, 14.113312>,  <23.651688, 17.975065, 14.105637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.347118, 18.234253, 14.113312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007800, -0.020441, 0.999761,
		0.648207, 0.761392, 0.010510,
		-0.761424, 0.647970, 0.019188,
		23.118690, 18.428644, 14.119068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.863995, 18.330988, 14.649721>,  <23.651688, 17.975065, 14.105637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.863995, 18.330988, 14.649721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.473450, 18.411152, 14.617346>,  <23.239122, 18.459249, 14.597920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.473450, 18.411152, 14.617346>,  <23.863995, 18.330988, 14.649721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.473450, 18.411152, 14.617346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063373, 0.092574, 0.993687,
		0.206636, 0.975329, -0.077686,
		-0.976363, 0.200409, -0.080939,
		23.180540, 18.471275, 14.593064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.740404, 18.718372, 15.326437>,  <23.863995, 18.330988, 14.649721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.740404, 18.718372, 15.326437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.384445, 18.616520, 15.175045>,  <23.170870, 18.555408, 15.084210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.384445, 18.616520, 15.175045>,  <23.740404, 18.718372, 15.326437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.384445, 18.616520, 15.175045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407456, 0.070665, 0.910487,
		-0.205094, 0.964453, -0.166635,
		-0.889897, -0.254631, -0.378479,
		23.117476, 18.540131, 15.061502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.307339, 19.203392, 15.628328>,  <23.740404, 18.718372, 15.326437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.307339, 19.203392, 15.628328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.097614, 18.876389, 15.533020>,  <22.971779, 18.680185, 15.475835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.097614, 18.876389, 15.533020>,  <23.307339, 19.203392, 15.628328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.097614, 18.876389, 15.533020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429801, 0.012513, 0.902837,
		-0.735097, 0.575778, -0.357928,
		-0.524312, -0.817510, -0.238272,
		22.940321, 18.631136, 15.461538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.611607, 19.345533, 15.831883>,  <23.307339, 19.203392, 15.628328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.611607, 19.345533, 15.831883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.645836, 18.948227, 15.800648>,  <22.666372, 18.709843, 15.781906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.645836, 18.948227, 15.800648>,  <22.611607, 19.345533, 15.831883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.645836, 18.948227, 15.800648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558768, -0.112734, 0.821626,
		-0.824897, -0.026673, -0.564653,
		0.085571, -0.993267, -0.078090,
		22.671507, 18.650248, 15.777221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.914762, 19.051491, 15.990789>,  <22.611607, 19.345533, 15.831883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.914762, 19.051491, 15.990789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.172279, 18.747044, 16.022360>,  <22.326790, 18.564375, 16.041302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.172279, 18.747044, 16.022360>,  <21.914762, 19.051491, 15.990789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.172279, 18.747044, 16.022360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527500, -0.366720, 0.766329,
		-0.554323, -0.534991, -0.637582,
		0.643793, -0.761118, 0.078927,
		22.365417, 18.518709, 16.046038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.420187, 18.436684, 15.978972>,  <21.914762, 19.051491, 15.990789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.420187, 18.436684, 15.978972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.771179, 18.324654, 16.134706>,  <21.981775, 18.257435, 16.228148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.771179, 18.324654, 16.134706>,  <21.420187, 18.436684, 15.978972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.771179, 18.324654, 16.134706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473117, -0.372368, 0.798438,
		-0.078646, -0.884817, -0.459254,
		0.877482, -0.280075, 0.389336,
		22.034424, 18.240631, 16.251507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.266876, 17.840200, 16.390673>,  <21.420187, 18.436684, 15.978972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.266876, 17.840200, 16.390673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.600075, 17.996044, 16.547808>,  <21.799994, 18.089550, 16.642088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.600075, 17.996044, 16.547808>,  <21.266876, 17.840200, 16.390673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.600075, 17.996044, 16.547808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355544, -0.167058, 0.919608,
		0.423912, -0.905703, -0.000637,
		0.832998, 0.389607, 0.392836,
		21.849974, 18.112926, 16.665659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.420134, 17.320526, 16.863579>,  <21.266876, 17.840200, 16.390673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.420134, 17.320526, 16.863579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.634453, 17.639732, 16.973915>,  <21.763044, 17.831257, 17.040117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.634453, 17.639732, 16.973915>,  <21.420134, 17.320526, 16.863579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.634453, 17.639732, 16.973915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339676, -0.095368, 0.935695,
		0.773007, -0.595041, 0.219968,
		0.535799, 0.798017, 0.275841,
		21.795193, 17.879137, 17.056667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.051922, 16.927240, 16.988077>,  <21.420134, 17.320526, 16.863579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.051922, 16.927240, 16.988077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.888046, 16.562557, 16.975771>,  <21.789721, 16.343748, 16.968388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.888046, 16.562557, 16.975771>,  <22.051922, 16.927240, 16.988077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.888046, 16.562557, 16.975771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417603, -0.157458, -0.894883,
		0.811025, -0.379473, 0.445240,
		-0.409690, -0.911706, -0.030766,
		21.765139, 16.289045, 16.966541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.590429, 16.434484, 16.761944>,  <22.051922, 16.927240, 16.988077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.590429, 16.434484, 16.761944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.250038, 16.245331, 16.670540>,  <22.045803, 16.131840, 16.615698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.250038, 16.245331, 16.670540>,  <22.590429, 16.434484, 16.761944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.250038, 16.245331, 16.670540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306993, -0.094849, -0.946973,
		0.426133, -0.876006, 0.225886,
		-0.850979, -0.472882, -0.228510,
		21.994743, 16.103466, 16.601988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.735346, 15.840297, 16.335697>,  <22.590429, 16.434484, 16.761944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.735346, 15.840297, 16.335697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.351471, 15.923229, 16.259789>,  <22.121145, 15.972989, 16.214243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.351471, 15.923229, 16.259789>,  <22.735346, 15.840297, 16.335697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.351471, 15.923229, 16.259789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136719, -0.245577, -0.959687,
		-0.245577, -0.946945, 0.207331,
		0.959687, -0.207331, 0.189774,
		22.063564, 15.985429, 16.202856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.551065, 15.317526, 15.905955>,  <22.735346, 15.840297, 16.335697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.551065, 15.317526, 15.905955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.264801, 15.591370, 15.850620>,  <22.093042, 15.755675, 15.817419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.264801, 15.591370, 15.850620>,  <22.551065, 15.317526, 15.905955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.264801, 15.591370, 15.850620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022752, -0.220811, -0.975051,
		-0.698075, -0.694660, 0.173603,
		-0.715663, 0.684609, -0.138338,
		22.050102, 15.796752, 15.809119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.052015, 14.964319, 15.522637>,  <22.551065, 15.317526, 15.905955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.052015, 14.964319, 15.522637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.034420, 15.359413, 15.462713>,  <22.023863, 15.596470, 15.426759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.034420, 15.359413, 15.462713>,  <22.052015, 14.964319, 15.522637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.034420, 15.359413, 15.462713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109497, -0.153819, -0.982013,
		-0.993013, -0.026794, 0.114920,
		-0.043989, 0.987736, -0.149810,
		22.021223, 15.655734, 15.417770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.757257, 14.941425, 14.851282>,  <22.052015, 14.964319, 15.522637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.757257, 14.941425, 14.851282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.807533, 15.337791, 14.870415>,  <21.837698, 15.575611, 14.881894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.807533, 15.337791, 14.870415>,  <21.757257, 14.941425, 14.851282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.807533, 15.337791, 14.870415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025497, 0.044972, -0.998663,
		-0.991742, 0.126740, -0.019613,
		0.125689, 0.990916, 0.047832,
		21.845240, 15.635066, 14.884765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.212572, 15.240458, 14.485932>,  <21.757257, 14.941425, 14.851282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.212572, 15.240458, 14.485932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.527782, 15.486656, 14.480488>,  <21.716908, 15.634375, 14.477221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.527782, 15.486656, 14.480488>,  <21.212572, 15.240458, 14.485932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.527782, 15.486656, 14.480488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101952, 0.108663, -0.988837,
		-0.607145, 0.780614, 0.148380,
		0.788024, 0.615494, -0.013611,
		21.764189, 15.671305, 14.476404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.075909, 15.872781, 14.016593>,  <21.212572, 15.240458, 14.485932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.075909, 15.872781, 14.016593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.474312, 15.848507, 14.042789>,  <21.713354, 15.833942, 14.058507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.474312, 15.848507, 14.042789>,  <21.075909, 15.872781, 14.016593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.474312, 15.848507, 14.042789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065121, -0.008052, -0.997845,
		0.061082, 0.998124, -0.004067,
		0.996006, -0.060685, 0.065490,
		21.773113, 15.830301, 14.062436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.300604, 16.252079, 13.492764>,  <21.075909, 15.872781, 14.016593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.300604, 16.252079, 13.492764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.615906, 16.012386, 13.548731>,  <21.805086, 15.868570, 13.582311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.615906, 16.012386, 13.548731>,  <21.300604, 16.252079, 13.492764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.615906, 16.012386, 13.548731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018670, -0.250559, -0.967921,
		0.615068, 0.760355, -0.208691,
		0.788253, -0.599234, 0.139915,
		21.852381, 15.832616, 13.590705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.735960, 16.430332, 13.023788>,  <21.300604, 16.252079, 13.492764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.735960, 16.430332, 13.023788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.871254, 16.067730, 13.124857>,  <21.952431, 15.850168, 13.185498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.871254, 16.067730, 13.124857>,  <21.735960, 16.430332, 13.023788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.871254, 16.067730, 13.124857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143736, -0.215580, -0.965850,
		0.930020, 0.363003, 0.057381,
		0.338236, -0.906507, 0.252671,
		21.972725, 15.795778, 13.200658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.410782, 16.451862, 12.802402>,  <21.735960, 16.430332, 13.023788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.410782, 16.451862, 12.802402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.299870, 16.067966, 12.820343>,  <22.233322, 15.837628, 12.831108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.299870, 16.067966, 12.820343>,  <22.410782, 16.451862, 12.802402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.299870, 16.067966, 12.820343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293745, -0.129130, -0.947121,
		0.914784, -0.249441, 0.317725,
		-0.277279, -0.959742, 0.044854,
		22.216686, 15.780044, 12.833799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.926668, 16.054184, 12.394823>,  <22.410782, 16.451862, 12.802402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.926668, 16.054184, 12.394823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.629898, 15.786980, 12.417840>,  <22.451836, 15.626657, 12.431650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.629898, 15.786980, 12.417840>,  <22.926668, 16.054184, 12.394823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.629898, 15.786980, 12.417840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031322, -0.120261, -0.992248,
		0.669751, -0.734371, 0.110148,
		-0.741925, -0.668010, 0.057543,
		22.407320, 15.586576, 12.435102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.076181, 15.624116, 11.900941>,  <22.926668, 16.054184, 12.394823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.076181, 15.624116, 11.900941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.701229, 15.493793, 11.950203>,  <22.476257, 15.415600, 11.979760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.701229, 15.493793, 11.950203>,  <23.076181, 15.624116, 11.900941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.701229, 15.493793, 11.950203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040013, -0.250515, -0.967285,
		0.346001, -0.911642, 0.221791,
		-0.937380, -0.325807, 0.123156,
		22.420015, 15.396051, 11.987149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.085295, 14.897560, 11.624132>,  <23.076181, 15.624116, 11.900941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.085295, 14.897560, 11.624132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.720249, 15.061073, 11.626438>,  <22.501223, 15.159182, 11.627822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.720249, 15.061073, 11.626438>,  <23.085295, 14.897560, 11.624132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.720249, 15.061073, 11.626438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097451, -0.203822, -0.974146,
		-0.397041, -0.889580, 0.225847,
		-0.912613, 0.408785, 0.005765,
		22.446465, 15.183708, 11.628168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<18.190969, 15.737533, 15.630478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.189598, 16.096798, 15.806337>,  <18.188776, 16.312357, 15.911853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.189598, 16.096798, 15.806337>,  <18.190969, 15.737533, 15.630478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.189598, 16.096798, 15.806337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183521, -0.431619, 0.883191,
		0.983010, 0.083713, -0.163352,
		-0.003429, 0.898163, 0.439648,
		18.188570, 16.366247, 15.938231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.561762, 15.565706, 16.286676>,  <18.190969, 15.737533, 15.630478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.561762, 15.565706, 16.286676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.426083, 15.938885, 16.334934>,  <18.344675, 16.162792, 16.363888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.426083, 15.938885, 16.334934>,  <18.561762, 15.565706, 16.286676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.426083, 15.938885, 16.334934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069823, -0.152860, 0.985778,
		0.938121, 0.325949, 0.116991,
		-0.339197, 0.932947, 0.120643,
		18.324324, 16.218769, 16.371126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.969490, 16.077738, 16.785686>,  <18.561762, 15.565706, 16.286676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.969490, 16.077738, 16.785686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.591640, 16.208939, 16.781662>,  <18.364931, 16.287659, 16.779247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.591640, 16.208939, 16.781662>,  <18.969490, 16.077738, 16.785686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.591640, 16.208939, 16.781662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032600, -0.063291, 0.997463,
		0.326534, 0.942554, 0.070480,
		-0.944623, 0.328003, -0.010061,
		18.308254, 16.307339, 16.778645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.992575, 16.548397, 17.351141>,  <18.969490, 16.077738, 16.785686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.992575, 16.548397, 17.351141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.604397, 16.487125, 17.276552>,  <18.371490, 16.450363, 17.231798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.604397, 16.487125, 17.276552>,  <18.992575, 16.548397, 17.351141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.604397, 16.487125, 17.276552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193629, 0.033067, 0.980517,
		-0.144029, 0.987645, -0.061750,
		-0.970445, -0.153179, -0.186474,
		18.313263, 16.441172, 17.220610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.575365, 17.188179, 17.415478>,  <18.992575, 16.548397, 17.351141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.575365, 17.188179, 17.415478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.337646, 16.874634, 17.487450>,  <18.195015, 16.686506, 17.530632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.337646, 16.874634, 17.487450>,  <18.575365, 17.188179, 17.415478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337646, 16.874634, 17.487450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117978, 0.306271, 0.944605,
		-0.795547, 0.540147, -0.274494,
		-0.594295, -0.783862, 0.179928,
		18.159357, 16.639475, 17.541428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070644, 17.420303, 17.855145>,  <18.575365, 17.188179, 17.415478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.070644, 17.420303, 17.855145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.022766, 17.024940, 17.892502>,  <17.994040, 16.787722, 17.914917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.022766, 17.024940, 17.892502>,  <18.070644, 17.420303, 17.855145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.022766, 17.024940, 17.892502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196791, 0.115825, 0.973580,
		-0.973112, 0.098154, -0.208373,
		-0.119696, -0.988408, 0.093394,
		17.986856, 16.728418, 17.920521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.490116, 17.349712, 18.190588>,  <18.070644, 17.420303, 17.855145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.490116, 17.349712, 18.190588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.644543, 16.991257, 18.278120>,  <17.737198, 16.776184, 18.330639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.644543, 16.991257, 18.278120>,  <17.490116, 17.349712, 18.190588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.644543, 16.991257, 18.278120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264825, 0.119565, 0.956855,
		-0.883641, -0.427361, -0.191160,
		0.386066, -0.896140, 0.218828,
		17.760363, 16.722414, 18.343769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.966009, 16.925472, 18.718843>,  <17.490116, 17.349712, 18.190588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.966009, 16.925472, 18.718843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.341690, 16.790089, 18.741980>,  <17.567099, 16.708858, 18.755861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.341690, 16.790089, 18.741980>,  <16.966009, 16.925472, 18.718843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.341690, 16.790089, 18.741980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071238, -0.027280, 0.997086,
		-0.335895, -0.940586, -0.049733,
		0.939202, -0.338459, 0.057842,
		17.623451, 16.688551, 18.759333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.928099, 16.361431, 19.157887>,  <16.966009, 16.925472, 18.718843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.928099, 16.361431, 19.157887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.305134, 16.494930, 19.162605>,  <17.531355, 16.575029, 19.165436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.305134, 16.494930, 19.162605>,  <16.928099, 16.361431, 19.157887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.305134, 16.494930, 19.162605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016092, 0.010110, 0.999820,
		0.333569, -0.942608, 0.014901,
		0.942588, 0.333748, 0.011796,
		17.587910, 16.595055, 19.166143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.220810, 15.906735, 19.614714>,  <16.928099, 16.361431, 19.157887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.220810, 15.906735, 19.614714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.449829, 16.232529, 19.577181>,  <17.587240, 16.428005, 19.554661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.449829, 16.232529, 19.577181>,  <17.220810, 15.906735, 19.614714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.449829, 16.232529, 19.577181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074240, 0.062472, 0.995282,
		0.816503, -0.576813, -0.024699,
		0.572549, 0.814484, -0.093831,
		17.621593, 16.476873, 19.549032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.465494, 15.951189, 20.242285>,  <17.220810, 15.906735, 19.614714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.465494, 15.951189, 20.242285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.625053, 16.298920, 20.125561>,  <17.720789, 16.507559, 20.055527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.625053, 16.298920, 20.125561>,  <17.465494, 15.951189, 20.242285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.625053, 16.298920, 20.125561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178493, 0.238528, 0.954591,
		0.899456, -0.432870, -0.060021,
		0.398897, 0.869326, -0.291810,
		17.744722, 16.559717, 20.038017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.214296, 16.086830, 20.677273>,  <17.465494, 15.951189, 20.242285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.214296, 16.086830, 20.677273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.042183, 16.431149, 20.568546>,  <17.938915, 16.637739, 20.503309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.042183, 16.431149, 20.568546>,  <18.214296, 16.086830, 20.677273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.042183, 16.431149, 20.568546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078307, 0.264390, 0.961232,
		0.899291, 0.434888, -0.046356,
		-0.430284, 0.860797, -0.271818,
		17.913097, 16.689388, 20.487001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.347916, 16.466166, 21.203323>,  <18.214296, 16.086830, 20.677273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.347916, 16.466166, 21.203323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.052868, 16.636307, 20.993565>,  <17.875839, 16.738392, 20.867710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.052868, 16.636307, 20.993565>,  <18.347916, 16.466166, 21.203323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.052868, 16.636307, 20.993565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381727, 0.377921, 0.843481,
		0.556956, 0.822345, -0.116394,
		-0.737620, 0.425351, -0.524397,
		17.831581, 16.763912, 20.836245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.337149, 16.447935, 21.905891>,  <18.347916, 16.466166, 21.203323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.337149, 16.447935, 21.905891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.940166, 16.437023, 21.858070>,  <17.701977, 16.430475, 21.829378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.940166, 16.437023, 21.858070>,  <18.337149, 16.447935, 21.905891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.940166, 16.437023, 21.858070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120007, 0.416382, 0.901235,
		0.025194, 0.908780, -0.416513,
		-0.992453, -0.027279, -0.119550,
		17.642431, 16.428839, 21.822205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.667334, 15.838241, 21.804495>,  <18.337149, 16.447935, 21.905891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.667334, 15.838241, 21.804495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.041157, 15.910976, 21.926826>,  <19.265451, 15.954618, 22.000225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.041157, 15.910976, 21.926826>,  <18.667334, 15.838241, 21.804495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.041157, 15.910976, 21.926826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317503, -0.038250, -0.947485,
		-0.160592, 0.982584, -0.093482,
		0.934560, 0.181839, 0.305831,
		19.321526, 15.965528, 22.018576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.968367, 16.071510, 21.256624>,  <18.667334, 15.838241, 21.804495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.968367, 16.071510, 21.256624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.304176, 15.989178, 21.457756>,  <19.505661, 15.939778, 21.578434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.304176, 15.989178, 21.457756>,  <18.968367, 16.071510, 21.256624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304176, 15.989178, 21.457756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482987, -0.141150, -0.864176,
		0.248847, 0.968355, -0.019086,
		0.839523, -0.205830, 0.502828,
		19.556034, 15.927429, 21.608604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.437645, 16.563530, 21.059069>,  <18.968367, 16.071510, 21.256624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.437645, 16.563530, 21.059069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.644135, 16.248917, 21.194643>,  <19.768028, 16.060148, 21.275988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.644135, 16.248917, 21.194643>,  <19.437645, 16.563530, 21.059069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.644135, 16.248917, 21.194643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545238, -0.003376, -0.838275,
		0.660476, 0.617538, 0.427105,
		0.516224, -0.786534, 0.338935,
		19.799002, 16.012957, 21.296324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.176535, 16.589661, 20.821981>,  <19.437645, 16.563530, 21.059069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.176535, 16.589661, 20.821981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.138298, 16.198662, 20.897198>,  <20.115356, 15.964062, 20.942327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.138298, 16.198662, 20.897198>,  <20.176535, 16.589661, 20.821981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.138298, 16.198662, 20.897198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513887, -0.210245, -0.831695,
		0.852516, 0.017129, 0.522421,
		-0.095591, -0.977499, 0.188040,
		20.109621, 15.905413, 20.953609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712357, 16.360119, 20.528179>,  <20.176535, 16.589661, 20.821981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712357, 16.360119, 20.528179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.519848, 16.016262, 20.596758>,  <20.404343, 15.809948, 20.637905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.519848, 16.016262, 20.596758>,  <20.712357, 16.360119, 20.528179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.519848, 16.016262, 20.596758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394460, -0.387057, -0.833419,
		0.782801, -0.333473, 0.525374,
		-0.481273, -0.859641, 0.171447,
		20.375465, 15.758369, 20.648191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.232815, 15.871650, 20.545084>,  <20.712357, 16.360119, 20.528179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.232815, 15.871650, 20.545084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.882412, 15.708462, 20.442190>,  <20.672171, 15.610549, 20.380453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.882412, 15.708462, 20.442190>,  <21.232815, 15.871650, 20.545084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.882412, 15.708462, 20.442190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375324, -0.241702, -0.894825,
		0.302888, -0.880421, 0.364854,
		-0.876009, -0.407971, -0.257234,
		20.619610, 15.586071, 20.365021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.452461, 15.287759, 20.085749>,  <21.232815, 15.871650, 20.545084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.452461, 15.287759, 20.085749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.064587, 15.342606, 20.004848>,  <20.831861, 15.375514, 19.956308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.064587, 15.342606, 20.004848>,  <21.452461, 15.287759, 20.085749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.064587, 15.342606, 20.004848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147292, -0.332416, -0.931560,
		-0.194963, -0.933112, 0.302144,
		-0.969688, 0.137116, -0.202248,
		20.773680, 15.383741, 19.944174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.247860, 14.717437, 19.662685>,  <21.452461, 15.287759, 20.085749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.247860, 14.717437, 19.662685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.051666, 15.060120, 19.598839>,  <20.933950, 15.265729, 19.560532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.051666, 15.060120, 19.598839>,  <21.247860, 14.717437, 19.662685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.051666, 15.060120, 19.598839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144236, -0.100826, -0.984393,
		-0.859430, -0.505853, -0.074114,
		-0.490485, 0.856707, -0.159615,
		20.904520, 15.317132, 19.550955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.817579, 14.593717, 19.091105>,  <21.247860, 14.717437, 19.662685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.817579, 14.593717, 19.091105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.815968, 14.992718, 19.119305>,  <20.815001, 15.232119, 19.136225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.815968, 14.992718, 19.119305>,  <20.817579, 14.593717, 19.091105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.815968, 14.992718, 19.119305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222383, 0.069630, -0.972470,
		-0.974951, 0.011758, -0.222109,
		-0.004031, 0.997504, 0.070500,
		20.814758, 15.291969, 19.140455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.460226, 14.846478, 18.449162>,  <20.817579, 14.593717, 19.091105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.460226, 14.846478, 18.449162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.632038, 15.182690, 18.581230>,  <20.735126, 15.384417, 18.660471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.632038, 15.182690, 18.581230>,  <20.460226, 14.846478, 18.449162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.632038, 15.182690, 18.581230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190544, 0.273028, -0.942947,
		-0.882720, 0.467938, -0.042884,
		0.429532, 0.840529, 0.330170,
		20.760899, 15.434849, 18.680281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.333364, 15.350102, 18.013405>,  <20.460226, 14.846478, 18.449162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.333364, 15.350102, 18.013405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.642616, 15.517891, 18.203695>,  <20.828167, 15.618565, 18.317869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.642616, 15.517891, 18.203695>,  <20.333364, 15.350102, 18.013405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.642616, 15.517891, 18.203695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237143, 0.504479, -0.830219,
		-0.588247, 0.754682, 0.290553,
		0.773129, 0.419472, 0.475726,
		20.874556, 15.643732, 18.346413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.213434, 16.032549, 17.984232>,  <20.333364, 15.350102, 18.013405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.213434, 16.032549, 17.984232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.606838, 15.977222, 18.030834>,  <20.842880, 15.944026, 18.058796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.606838, 15.977222, 18.030834>,  <20.213434, 16.032549, 17.984232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.606838, 15.977222, 18.030834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165270, 0.425867, -0.889563,
		0.073426, 0.894151, 0.441705,
		0.983511, -0.138318, 0.116507,
		20.901892, 15.935727, 18.065786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.460047, 16.560520, 17.600876>,  <20.213434, 16.032549, 17.984232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.460047, 16.560520, 17.600876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.779583, 16.322857, 17.638468>,  <20.971304, 16.180260, 17.661022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.779583, 16.322857, 17.638468>,  <20.460047, 16.560520, 17.600876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.779583, 16.322857, 17.638468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288643, 0.241539, -0.926469,
		0.527769, 0.767226, 0.364450,
		0.798840, -0.594157, 0.093978,
		21.019236, 16.144609, 17.666660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.995659, 16.854416, 17.218925>,  <20.460047, 16.560520, 17.600876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.995659, 16.854416, 17.218925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.179291, 16.502789, 17.270273>,  <21.289471, 16.291811, 17.301083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.179291, 16.502789, 17.270273>,  <20.995659, 16.854416, 17.218925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.179291, 16.502789, 17.270273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452080, 0.106774, -0.885564,
		0.764766, 0.464580, 0.446429,
		0.459082, -0.879071, 0.128370,
		21.317015, 16.239067, 17.308784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.489384, 17.236961, 17.574228>,  <20.995659, 16.854416, 17.218925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.489384, 17.236961, 17.574228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.633450, 17.609566, 17.553965>,  <21.719889, 17.833128, 17.541805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.633450, 17.609566, 17.553965>,  <21.489384, 17.236961, 17.574228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.633450, 17.609566, 17.553965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149120, 0.111093, 0.982559,
		0.920894, -0.346328, 0.178918,
		0.360164, 0.931512, -0.050660,
		21.741499, 17.889019, 17.538767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.817385, 17.223885, 18.124756>,  <21.489384, 17.236961, 17.574228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.817385, 17.223885, 18.124756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.720806, 17.602394, 18.038710>,  <21.662859, 17.829500, 17.987082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.720806, 17.602394, 18.038710>,  <21.817385, 17.223885, 18.124756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.720806, 17.602394, 18.038710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218003, 0.163115, 0.962221,
		0.945610, 0.279219, 0.166907,
		-0.241445, 0.946272, -0.215113,
		21.648373, 17.886276, 17.974176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.012190, 17.553034, 18.738951>,  <21.817385, 17.223885, 18.124756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.012190, 17.553034, 18.738951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.773556, 17.822495, 18.564468>,  <21.630375, 17.984171, 18.459778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.773556, 17.822495, 18.564468>,  <22.012190, 17.553034, 18.738951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.773556, 17.822495, 18.564468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396016, 0.225642, 0.890088,
		0.698038, 0.703759, 0.132163,
		-0.596586, 0.673653, -0.436207,
		21.594580, 18.024591, 18.433607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.003586, 18.174593, 19.148285>,  <22.012190, 17.553034, 18.738951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.003586, 18.174593, 19.148285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.672047, 18.219933, 18.929136>,  <21.473124, 18.247135, 18.797647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.672047, 18.219933, 18.929136>,  <22.003586, 18.174593, 19.148285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.672047, 18.219933, 18.929136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501579, 0.283280, 0.817418,
		0.247853, 0.952316, -0.177943,
		-0.828847, 0.113347, -0.547873,
		21.423393, 18.253937, 18.764774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.701105, 18.863869, 19.255430>,  <22.003586, 18.174593, 19.148285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.701105, 18.863869, 19.255430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.401798, 18.615017, 19.163298>,  <21.222214, 18.465706, 19.108019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.401798, 18.615017, 19.163298>,  <21.701105, 18.863869, 19.255430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.401798, 18.615017, 19.163298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496675, 0.295197, 0.816194,
		-0.439784, 0.725132, -0.529881,
		-0.748268, -0.622128, -0.230332,
		21.177319, 18.428379, 19.094198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.232059, 18.980690, 19.765282>,  <21.701105, 18.863869, 19.255430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.232059, 18.980690, 19.765282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.033863, 18.674313, 19.601419>,  <20.914946, 18.490486, 19.503101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.033863, 18.674313, 19.601419>,  <21.232059, 18.980690, 19.765282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.033863, 18.674313, 19.601419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561284, -0.077599, 0.823977,
		-0.662908, 0.638209, -0.391461,
		-0.495493, -0.765942, -0.409658,
		20.885216, 18.444530, 19.478521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.476082, 19.143604, 19.717365>,  <21.232059, 18.980690, 19.765282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.476082, 19.143604, 19.717365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.541378, 18.749256, 19.732384>,  <20.580555, 18.512648, 19.741394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.541378, 18.749256, 19.732384>,  <20.476082, 19.143604, 19.717365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.541378, 18.749256, 19.732384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523440, -0.054286, 0.850331,
		-0.836280, -0.158460, -0.524907,
		0.163238, -0.985872, 0.037546,
		20.590349, 18.453495, 19.743647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.925076, 19.713028, 19.562578>,  <20.476082, 19.143604, 19.717365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.925076, 19.713028, 19.562578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.040916, 20.073841, 19.690619>,  <20.110420, 20.290329, 19.767443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.040916, 20.073841, 19.690619>,  <19.925076, 19.713028, 19.562578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.040916, 20.073841, 19.690619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186852, 0.274718, -0.943195,
		-0.938732, 0.332962, -0.088989,
		0.289601, 0.902034, 0.320101,
		20.127796, 20.344452, 19.786650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.636200, 20.313259, 19.171064>,  <19.925076, 19.713028, 19.562578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.636200, 20.313259, 19.171064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.979630, 20.440304, 19.332048>,  <20.185688, 20.516531, 19.428638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.979630, 20.440304, 19.332048>,  <19.636200, 20.313259, 19.171064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.979630, 20.440304, 19.332048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298120, 0.329358, -0.895906,
		-0.417104, 0.889183, 0.188091,
		0.858574, 0.317613, 0.402459,
		20.237202, 20.535587, 19.452785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.722136, 20.984753, 18.893570>,  <19.636200, 20.313259, 19.171064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.722136, 20.984753, 18.893570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.076408, 20.855061, 19.026499>,  <20.288973, 20.777245, 19.106256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.076408, 20.855061, 19.026499>,  <19.722136, 20.984753, 18.893570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.076408, 20.855061, 19.026499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443532, 0.379238, -0.812070,
		0.137270, 0.866633, 0.479692,
		0.885684, -0.324231, 0.332321,
		20.342113, 20.757792, 19.126196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.184408, 21.548710, 18.802355>,  <19.722136, 20.984753, 18.893570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.184408, 21.548710, 18.802355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.427650, 21.232857, 18.835075>,  <20.573595, 21.043344, 18.854708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.427650, 21.232857, 18.835075>,  <20.184408, 21.548710, 18.802355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.427650, 21.232857, 18.835075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549951, 0.344718, -0.760738,
		0.572504, 0.507595, 0.643883,
		0.608105, -0.789631, 0.081801,
		20.610083, 20.995968, 18.859615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.774303, 21.921621, 18.684015>,  <20.184408, 21.548710, 18.802355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.774303, 21.921621, 18.684015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.853664, 21.530449, 18.657816>,  <20.901281, 21.295746, 18.642096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.853664, 21.530449, 18.657816>,  <20.774303, 21.921621, 18.684015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.853664, 21.530449, 18.657816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667238, 0.183716, -0.721832,
		0.717934, 0.099510, 0.688962,
		0.198403, -0.977930, -0.065499,
		20.913185, 21.237070, 18.638166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.537949, 21.787306, 18.693653>,  <20.774303, 21.921621, 18.684015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.537949, 21.787306, 18.693653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.379578, 21.451576, 18.544643>,  <21.284555, 21.250137, 18.455238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.379578, 21.451576, 18.544643>,  <21.537949, 21.787306, 18.693653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.379578, 21.451576, 18.544643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569825, 0.093560, -0.816423,
		0.720098, -0.535518, 0.441226,
		-0.395928, -0.839326, -0.372523,
		21.260799, 21.199780, 18.432886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.057920, 21.436794, 18.362593>,  <21.537949, 21.787306, 18.693653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.057920, 21.436794, 18.362593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.740337, 21.278141, 18.178284>,  <21.549788, 21.182949, 18.067698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.740337, 21.278141, 18.178284>,  <22.057920, 21.436794, 18.362593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.740337, 21.278141, 18.178284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462625, 0.097607, -0.881165,
		0.394476, -0.912773, 0.105998,
		-0.793957, -0.396635, -0.460775,
		21.502150, 21.159151, 18.040051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<16.830244, 19.476711, 20.308155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.762177, 19.098110, 20.198483>,  <16.721336, 18.870949, 20.132679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.762177, 19.098110, 20.198483>,  <16.830244, 19.476711, 20.308155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.762177, 19.098110, 20.198483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563655, 0.134733, -0.814948,
		0.808292, -0.293222, 0.510574,
		-0.170170, -0.946503, -0.274179,
		16.711126, 18.814159, 20.116228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.495256, 19.277124, 20.054253>,  <16.830244, 19.476711, 20.308155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.495256, 19.277124, 20.054253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.258968, 18.998947, 19.890591>,  <17.117195, 18.832041, 19.792395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.258968, 18.998947, 19.890591>,  <17.495256, 19.277124, 20.054253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.258968, 18.998947, 19.890591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320959, 0.262713, -0.909927,
		0.740294, -0.668834, 0.068019,
		-0.590720, -0.695445, -0.409153,
		17.081753, 18.790314, 19.767845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.956518, 18.941065, 19.605562>,  <17.495256, 19.277124, 20.054253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.956518, 18.941065, 19.605562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.594173, 18.859051, 19.457304>,  <17.376766, 18.809841, 19.368349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.594173, 18.859051, 19.457304>,  <17.956518, 18.941065, 19.605562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.594173, 18.859051, 19.457304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298151, 0.312893, -0.901778,
		0.300855, -0.927396, -0.222312,
		-0.905865, -0.205022, -0.370640,
		17.322414, 18.797541, 19.346111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.054956, 18.621828, 18.969034>,  <17.956518, 18.941065, 19.605562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.054956, 18.621828, 18.969034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.688774, 18.782619, 18.961525>,  <17.469065, 18.879095, 18.957020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.688774, 18.782619, 18.961525>,  <18.054956, 18.621828, 18.969034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.688774, 18.782619, 18.961525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219280, 0.459174, -0.860857,
		-0.337427, -0.792194, -0.508500,
		-0.915456, 0.401980, -0.018775,
		17.414137, 18.903214, 18.955893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.781563, 18.439209, 18.259485>,  <18.054956, 18.621828, 18.969034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.781563, 18.439209, 18.259485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.566097, 18.738750, 18.413919>,  <17.436819, 18.918474, 18.506580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.566097, 18.738750, 18.413919>,  <17.781563, 18.439209, 18.259485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.566097, 18.738750, 18.413919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003185, 0.456439, -0.889749,
		-0.842516, -0.480504, -0.243481,
		-0.538662, 0.748852, 0.386088,
		17.404499, 18.963406, 18.529745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.303669, 18.538486, 17.711283>,  <17.781563, 18.439209, 18.259485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.303669, 18.538486, 17.711283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.272614, 18.863319, 17.942623>,  <17.253981, 19.058220, 18.081429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.272614, 18.863319, 17.942623>,  <17.303669, 18.538486, 17.711283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.272614, 18.863319, 17.942623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058642, 0.575379, -0.815782,
		-0.995255, -0.097253, 0.002950,
		-0.077640, 0.812084, 0.578352,
		17.249321, 19.106945, 18.116129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.707640, 18.907930, 17.494553>,  <17.303669, 18.538486, 17.711283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.707640, 18.907930, 17.494553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.915218, 19.192032, 17.684811>,  <17.039764, 19.362492, 17.798965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.915218, 19.192032, 17.684811>,  <16.707640, 18.907930, 17.494553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915218, 19.192032, 17.684811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105708, 0.605485, -0.788805,
		-0.848247, 0.359067, 0.389293,
		0.518945, 0.710252, 0.475645,
		17.070902, 19.405107, 17.827503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.319412, 19.591198, 17.459631>,  <16.707640, 18.907930, 17.494553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.319412, 19.591198, 17.459631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.714378, 19.623142, 17.514236>,  <16.951357, 19.642309, 17.546999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.714378, 19.623142, 17.514236>,  <16.319412, 19.591198, 17.459631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.714378, 19.623142, 17.514236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087486, 0.443272, -0.892108,
		-0.131757, 0.892823, 0.430706,
		0.987414, 0.079861, 0.136513,
		17.010603, 19.647100, 17.555191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456520, 20.266123, 17.320482>,  <16.319412, 19.591198, 17.459631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.456520, 20.266123, 17.320482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.814137, 20.091969, 17.278282>,  <17.028706, 19.987476, 17.252962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.814137, 20.091969, 17.278282>,  <16.456520, 20.266123, 17.320482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.814137, 20.091969, 17.278282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182521, 0.569082, -0.801768,
		0.409116, 0.697557, 0.588250,
		0.894042, -0.435384, -0.105502,
		17.082350, 19.961353, 17.246632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.879768, 20.776529, 17.262287>,  <16.456520, 20.266123, 17.320482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.879768, 20.776529, 17.262287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.090054, 20.476452, 17.101870>,  <17.216225, 20.296406, 17.005619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.090054, 20.476452, 17.101870>,  <16.879768, 20.776529, 17.262287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.090054, 20.476452, 17.101870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115261, 0.529918, -0.840179,
		0.842818, 0.395467, 0.365052,
		0.525711, -0.750195, -0.401043,
		17.247766, 20.251394, 16.981556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.440601, 21.109596, 16.808521>,  <16.879768, 20.776529, 17.262287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.440601, 21.109596, 16.808521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.452019, 20.729256, 16.685190>,  <17.458868, 20.501051, 16.611193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.452019, 20.729256, 16.685190>,  <17.440601, 21.109596, 16.808521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.452019, 20.729256, 16.685190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289638, 0.303086, -0.907881,
		0.956711, -0.063389, 0.284054,
		0.028543, -0.950853, -0.308325,
		17.460581, 20.444000, 16.592693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.012295, 21.134407, 16.378763>,  <17.440601, 21.109596, 16.808521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.012295, 21.134407, 16.378763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.792389, 20.809517, 16.300735>,  <17.660446, 20.614584, 16.253920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.792389, 20.809517, 16.300735>,  <18.012295, 21.134407, 16.378763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.792389, 20.809517, 16.300735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122069, 0.152902, -0.980673,
		0.826353, -0.562950, 0.015087,
		-0.549763, -0.812224, -0.195070,
		17.627460, 20.565849, 16.242214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.789867, 21.059921, 16.510715>,  <18.012295, 21.134407, 16.378763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.789867, 21.059921, 16.510715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.804268, 21.457439, 16.552811>,  <18.812908, 21.695950, 16.578068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.804268, 21.457439, 16.552811>,  <18.789867, 21.059921, 16.510715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.804268, 21.457439, 16.552811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168439, -0.097767, 0.980852,
		0.985055, -0.053036, 0.163874,
		0.035999, 0.993795, 0.105239,
		18.815067, 21.755577, 16.584383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.174883, 21.303728, 17.168253>,  <18.789867, 21.059921, 16.510715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.174883, 21.303728, 17.168253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.955803, 21.618877, 17.055624>,  <18.824354, 21.807966, 16.988047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.955803, 21.618877, 17.055624>,  <19.174883, 21.303728, 17.168253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.955803, 21.618877, 17.055624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105485, 0.268828, 0.957395,
		0.829999, 0.554066, -0.064129,
		-0.547700, 0.787872, -0.281572,
		18.791492, 21.855240, 16.971153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.366901, 21.876245, 17.658869>,  <19.174883, 21.303728, 17.168253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.366901, 21.876245, 17.658869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.003384, 21.960785, 17.514967>,  <18.785273, 22.011509, 17.428627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.003384, 21.960785, 17.514967>,  <19.366901, 21.876245, 17.658869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.003384, 21.960785, 17.514967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296787, 0.278593, 0.913402,
		0.293270, 0.936866, -0.190459,
		-0.908796, 0.211348, -0.359753,
		18.730745, 22.024189, 17.407042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.134260, 22.510303, 18.039644>,  <19.366901, 21.876245, 17.658869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.134260, 22.510303, 18.039644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.810234, 22.343906, 17.874361>,  <18.615818, 22.244068, 17.775192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.810234, 22.343906, 17.874361>,  <19.134260, 22.510303, 18.039644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.810234, 22.343906, 17.874361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505294, 0.137794, 0.851875,
		-0.297438, 0.898867, -0.321822,
		-0.810067, -0.415995, -0.413207,
		18.567213, 22.219109, 17.750399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.547699, 22.998339, 18.153706>,  <19.134260, 22.510303, 18.039644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.547699, 22.998339, 18.153706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.421658, 22.624287, 18.088911>,  <18.346033, 22.399855, 18.050035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.421658, 22.624287, 18.088911>,  <18.547699, 22.998339, 18.153706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.421658, 22.624287, 18.088911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487882, 0.013207, 0.872810,
		-0.814052, 0.354055, -0.460396,
		-0.315103, -0.935132, -0.161986,
		18.327127, 22.343748, 18.040316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783808, 23.079889, 18.311729>,  <18.547699, 22.998339, 18.153706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.783808, 23.079889, 18.311729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.878490, 22.691391, 18.321926>,  <17.935301, 22.458292, 18.328045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.878490, 22.691391, 18.321926>,  <17.783808, 23.079889, 18.311729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.878490, 22.691391, 18.321926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579164, -0.119986, 0.806333,
		-0.780089, -0.205629, -0.590912,
		0.236706, -0.971247, 0.025493,
		17.949503, 22.400017, 18.329575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.204643, 22.750046, 18.337086>,  <17.783808, 23.079889, 18.311729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.204643, 22.750046, 18.337086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.481583, 22.501678, 18.484116>,  <17.647747, 22.352657, 18.572334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.481583, 22.501678, 18.484116>,  <17.204643, 22.750046, 18.337086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.481583, 22.501678, 18.484116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513664, -0.066355, 0.855422,
		-0.506759, -0.781060, -0.364886,
		0.692348, -0.620921, 0.367576,
		17.689287, 22.315403, 18.594389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.807096, 22.103437, 18.585463>,  <17.204643, 22.750046, 18.337086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.807096, 22.103437, 18.585463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.157429, 22.120029, 18.777796>,  <17.367628, 22.129984, 18.893196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.157429, 22.120029, 18.777796>,  <16.807096, 22.103437, 18.585463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.157429, 22.120029, 18.777796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452771, -0.274316, 0.848380,
		0.167090, -0.960745, -0.221474,
		0.875831, 0.041479, 0.480833,
		17.420177, 22.132473, 18.922045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751953, 21.555758, 19.080420>,  <16.807096, 22.103437, 18.585463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.751953, 21.555758, 19.080420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.064526, 21.760143, 19.223682>,  <17.252069, 21.882774, 19.309641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.064526, 21.760143, 19.223682>,  <16.751953, 21.555758, 19.080420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.064526, 21.760143, 19.223682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232833, -0.293760, 0.927089,
		0.578924, -0.807848, -0.110584,
		0.781432, 0.510967, 0.358158,
		17.298956, 21.913433, 19.331129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031311, 21.138742, 19.591930>,  <16.751953, 21.555758, 19.080420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031311, 21.138742, 19.591930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.195347, 21.491417, 19.685270>,  <17.293768, 21.703022, 19.741274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.195347, 21.491417, 19.685270>,  <17.031311, 21.138742, 19.591930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.195347, 21.491417, 19.685270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060907, -0.228808, 0.971564,
		0.910009, -0.412641, -0.040131,
		0.410089, 0.881688, 0.233350,
		17.318373, 21.755924, 19.755276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.540224, 20.956198, 20.029192>,  <17.031311, 21.138742, 19.591930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.540224, 20.956198, 20.029192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.465672, 21.341698, 20.105555>,  <17.420940, 21.572998, 20.151371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.465672, 21.341698, 20.105555>,  <17.540224, 20.956198, 20.029192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.465672, 21.341698, 20.105555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171298, -0.223210, 0.959601,
		0.967429, 0.146150, 0.206691,
		-0.186381, 0.963752, 0.190905,
		17.409758, 21.630823, 20.162827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.980339, 21.157118, 20.516495>,  <17.540224, 20.956198, 20.029192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.980339, 21.157118, 20.516495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.675198, 21.414791, 20.538710>,  <17.492113, 21.569395, 20.552038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.675198, 21.414791, 20.538710>,  <17.980339, 21.157118, 20.516495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.675198, 21.414791, 20.538710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225542, -0.345622, 0.910866,
		0.605958, 0.682331, 0.408949,
		-0.762854, 0.644181, 0.055538,
		17.446341, 21.608046, 20.555370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070875, 21.322357, 21.199490>,  <17.980339, 21.157118, 20.516495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.070875, 21.322357, 21.199490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.707802, 21.441540, 21.081280>,  <17.489958, 21.513050, 21.010353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.707802, 21.441540, 21.081280>,  <18.070875, 21.322357, 21.199490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.707802, 21.441540, 21.081280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370787, -0.239585, 0.897283,
		0.196549, 0.924024, 0.327946,
		-0.907681, 0.297958, -0.295525,
		17.435497, 21.530928, 20.992622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.829769, 21.786972, 21.742083>,  <18.070875, 21.322357, 21.199490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.829769, 21.786972, 21.742083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.514870, 21.666317, 21.526953>,  <17.325930, 21.593924, 21.397875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.514870, 21.666317, 21.526953>,  <17.829769, 21.786972, 21.742083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.514870, 21.666317, 21.526953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416896, -0.382296, 0.824650,
		-0.454355, 0.873420, 0.175209,
		-0.787248, -0.301640, -0.537824,
		17.278696, 21.575825, 21.365606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.371780, 21.224255, 21.860245>,  <17.829769, 21.786972, 21.742083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.371780, 21.224255, 21.860245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.530777, 20.884487, 21.999092>,  <18.626175, 20.680628, 22.082401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.530777, 20.884487, 21.999092>,  <18.371780, 21.224255, 21.860245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.530777, 20.884487, 21.999092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795679, 0.130639, -0.591463,
		0.457052, 0.511297, 0.727791,
		0.397491, -0.849417, 0.347119,
		18.650024, 20.629662, 22.103228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.061321, 21.394228, 21.946363>,  <18.371780, 21.224255, 21.860245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.061321, 21.394228, 21.946363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.045479, 20.994576, 21.941166>,  <19.035973, 20.754784, 21.938047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.045479, 20.994576, 21.941166>,  <19.061321, 21.394228, 21.946363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.045479, 20.994576, 21.941166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689635, -0.017923, -0.723935,
		0.723073, -0.037635, 0.689746,
		-0.039608, -0.999131, -0.012995,
		19.033596, 20.694836, 21.937267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.735424, 21.131439, 21.823311>,  <19.061321, 21.394228, 21.946363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.735424, 21.131439, 21.823311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.499741, 20.828033, 21.711964>,  <19.358330, 20.645990, 21.645155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.499741, 20.828033, 21.711964>,  <19.735424, 21.131439, 21.823311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.499741, 20.828033, 21.711964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452711, -0.024559, -0.891319,
		0.669243, -0.651192, 0.357858,
		-0.589209, -0.758515, -0.278366,
		19.322977, 20.600479, 21.628454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.201958, 20.564667, 21.728630>,  <19.735424, 21.131439, 21.823311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.201958, 20.564667, 21.728630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.862350, 20.483871, 21.533339>,  <19.658587, 20.435394, 21.416162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.862350, 20.483871, 21.533339>,  <20.201958, 20.564667, 21.728630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.862350, 20.483871, 21.533339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515967, -0.117960, -0.848448,
		0.113785, -0.972258, 0.204370,
		-0.849018, -0.201989, -0.488231,
		19.607645, 20.423275, 21.386869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.348354, 20.007006, 21.411367>,  <20.201958, 20.564667, 21.728630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.348354, 20.007006, 21.411367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.068897, 20.170067, 21.176178>,  <19.901222, 20.267904, 21.035065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.068897, 20.170067, 21.176178>,  <20.348354, 20.007006, 21.411367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.068897, 20.170067, 21.176178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449637, -0.389076, -0.804019,
		-0.556528, -0.826098, 0.088529,
		-0.698644, 0.407654, -0.587976,
		19.859304, 20.292362, 20.999784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.283821, 19.607243, 20.872051>,  <20.348354, 20.007006, 21.411367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.283821, 19.607243, 20.872051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.104328, 19.938419, 20.737501>,  <19.996632, 20.137125, 20.656771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.104328, 19.938419, 20.737501>,  <20.283821, 19.607243, 20.872051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.104328, 19.938419, 20.737501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322795, -0.200823, -0.924918,
		-0.833331, -0.523623, -0.177139,
		-0.448734, 0.827943, -0.336375,
		19.969707, 20.186802, 20.636589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.030022, 19.492054, 20.246956>,  <20.283821, 19.607243, 20.872051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.030022, 19.492054, 20.246956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.069378, 19.889618, 20.227116>,  <20.092991, 20.128157, 20.215212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.069378, 19.889618, 20.227116>,  <20.030022, 19.492054, 20.246956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.069378, 19.889618, 20.227116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224701, -0.070744, -0.971856,
		-0.969448, 0.084475, -0.230293,
		0.098389, 0.993911, -0.049601,
		20.098894, 20.187792, 20.212234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.806480, 18.857325, 19.878157>,  <20.030022, 19.492054, 20.246956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.806480, 18.857325, 19.878157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.072292, 18.567905, 19.952854>,  <20.231779, 18.394253, 19.997673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.072292, 18.567905, 19.952854>,  <19.806480, 18.857325, 19.878157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.072292, 18.567905, 19.952854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559663, -0.316320, 0.765976,
		-0.495152, -0.613528, -0.615149,
		0.664532, -0.723551, 0.186742,
		20.271652, 18.350840, 20.008877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.397753, 18.237402, 19.786530>,  <19.806480, 18.857325, 19.878157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.397753, 18.237402, 19.786530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.718510, 18.231373, 20.025440>,  <19.910965, 18.227755, 20.168787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.718510, 18.231373, 20.025440>,  <19.397753, 18.237402, 19.786530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.718510, 18.231373, 20.025440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581960, -0.245984, 0.775122,
		0.135237, -0.969157, -0.206026,
		0.801893, -0.015074, 0.597277,
		19.959078, 18.226851, 20.204622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.256437, 17.702290, 20.300676>,  <19.397753, 18.237402, 19.786530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.256437, 17.702290, 20.300676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.552441, 17.890373, 20.493046>,  <19.730043, 18.003223, 20.608467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.552441, 17.890373, 20.493046>,  <19.256437, 17.702290, 20.300676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.552441, 17.890373, 20.493046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424811, -0.227605, 0.876203,
		0.521460, -0.852701, 0.031320,
		0.740010, 0.470210, 0.480924,
		19.774445, 18.031437, 20.637323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.452923, 17.291090, 20.882956>,  <19.256437, 17.702290, 20.300676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.452923, 17.291090, 20.882956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.639168, 17.634338, 20.969517>,  <19.750916, 17.840288, 21.021454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.639168, 17.634338, 20.969517>,  <19.452923, 17.291090, 20.882956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.639168, 17.634338, 20.969517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240554, -0.112602, 0.964082,
		0.851667, -0.500947, 0.153996,
		0.465614, 0.858122, 0.216404,
		19.778852, 17.891775, 21.034437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.821918, 17.206940, 21.406099>,  <19.452923, 17.291090, 20.882956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.821918, 17.206940, 21.406099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.738258, 17.597248, 21.431791>,  <19.688063, 17.831432, 21.447206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.738258, 17.597248, 21.431791>,  <19.821918, 17.206940, 21.406099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.738258, 17.597248, 21.431791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101222, -0.086933, 0.991058,
		0.972630, 0.200779, 0.116951,
		-0.209151, 0.975771, 0.064230,
		19.675512, 17.889980, 21.451061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.184288, 17.478258, 22.023825>,  <19.821918, 17.206940, 21.406099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.184288, 17.478258, 22.023825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.877995, 17.717628, 21.929560>,  <19.694218, 17.861252, 21.873001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.877995, 17.717628, 21.929560>,  <20.184288, 17.478258, 22.023825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.877995, 17.717628, 21.929560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276607, 0.024375, 0.960674,
		0.580638, 0.800806, 0.146864,
		-0.765734, 0.598427, -0.235662,
		19.648273, 17.897158, 21.858862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.216692, 17.950300, 22.602907>,  <20.184288, 17.478258, 22.023825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.216692, 17.950300, 22.602907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.855000, 17.982456, 22.435143>,  <19.637985, 18.001751, 22.334484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.855000, 17.982456, 22.435143>,  <20.216692, 17.950300, 22.602907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.855000, 17.982456, 22.435143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410685, 0.105561, 0.905646,
		0.117080, 0.991158, -0.062436,
		-0.904229, 0.080391, -0.419413,
		19.583731, 18.006573, 22.309319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.885763, 18.330914, 23.068659>,  <20.216692, 17.950300, 22.602907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.885763, 18.330914, 23.068659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.583832, 18.184719, 22.850794>,  <19.402674, 18.097002, 22.720076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.583832, 18.184719, 22.850794>,  <19.885763, 18.330914, 23.068659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.583832, 18.184719, 22.850794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627472, 0.160441, 0.761930,
		-0.191090, 0.916885, -0.350438,
		-0.754827, -0.365488, -0.544661,
		19.357384, 18.075073, 22.687395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340857, 18.798786, 23.217527>,  <19.885763, 18.330914, 23.068659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.340857, 18.798786, 23.217527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.196266, 18.452286, 23.079573>,  <19.109512, 18.244385, 22.996799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.196266, 18.452286, 23.079573>,  <19.340857, 18.798786, 23.217527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.196266, 18.452286, 23.079573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692883, 0.002056, 0.721048,
		-0.623899, 0.499606, -0.600953,
		-0.361475, -0.866250, -0.344886,
		19.087824, 18.192411, 22.976107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<22.281303, 19.348825, 7.234806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.201973, 18.956776, 7.236741>,  <22.154375, 18.721546, 7.237902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.201973, 18.956776, 7.236741>,  <22.281303, 19.348825, 7.234806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.201973, 18.956776, 7.236741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105320, 0.026219, 0.994093,
		-0.974461, 0.196644, -0.108426,
		-0.198325, -0.980124, 0.004839,
		22.142475, 18.662739, 7.238193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.672798, 19.226776, 7.667966>,  <22.281303, 19.348825, 7.234806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.672798, 19.226776, 7.667966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.855350, 18.871872, 7.641186>,  <21.964882, 18.658930, 7.625117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.855350, 18.871872, 7.641186>,  <21.672798, 19.226776, 7.667966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.855350, 18.871872, 7.641186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156056, -0.153895, 0.975686,
		-0.875992, -0.434838, -0.208697,
		0.456383, -0.887261, -0.066952,
		21.992266, 18.605694, 7.621100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.263329, 18.748419, 8.000554>,  <21.672798, 19.226776, 7.667966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.263329, 18.748419, 8.000554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.633213, 18.596882, 7.985644>,  <21.855145, 18.505960, 7.976698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.633213, 18.596882, 7.985644>,  <21.263329, 18.748419, 8.000554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.633213, 18.596882, 7.985644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003010, -0.090638, 0.995879,
		-0.380659, -0.921012, -0.082673,
		0.924711, -0.378842, -0.037275,
		21.910625, 18.483229, 7.974462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.291946, 18.113016, 8.332226>,  <21.263329, 18.748419, 8.000554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.291946, 18.113016, 8.332226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.637024, 18.312794, 8.364008>,  <21.844070, 18.432661, 8.383078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.637024, 18.312794, 8.364008>,  <21.291946, 18.113016, 8.332226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.637024, 18.312794, 8.364008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029492, -0.107160, 0.993804,
		0.504865, -0.859693, -0.077716,
		0.862694, 0.499445, 0.079455,
		21.895832, 18.462627, 8.387845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.616093, 17.820829, 8.979880>,  <21.291946, 18.113016, 8.332226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.616093, 17.820829, 8.979880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.880127, 18.113712, 8.912757>,  <22.038548, 18.289442, 8.872482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.880127, 18.113712, 8.912757>,  <21.616093, 17.820829, 8.979880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.880127, 18.113712, 8.912757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275670, -0.028309, 0.960835,
		0.698781, -0.680493, -0.220534,
		0.660085, 0.732208, -0.167809,
		22.078152, 18.333374, 8.862414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.242865, 17.561668, 9.288300>,  <21.616093, 17.820829, 8.979880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.242865, 17.561668, 9.288300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.290661, 17.955818, 9.239707>,  <22.319338, 18.192308, 9.210551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.290661, 17.955818, 9.239707>,  <22.242865, 17.561668, 9.288300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.290661, 17.955818, 9.239707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195569, 0.096600, 0.975921,
		0.973383, -0.140371, -0.181166,
		0.119491, 0.985375, -0.121481,
		22.326508, 18.251431, 9.203262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.031065, 17.666178, 9.560711>,  <22.242865, 17.561668, 9.288300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.031065, 17.666178, 9.560711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.870964, 18.031555, 9.590169>,  <22.774904, 18.250782, 9.607844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.870964, 18.031555, 9.590169>,  <23.031065, 17.666178, 9.560711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.870964, 18.031555, 9.590169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230291, 0.022471, 0.972862,
		0.886998, 0.406349, -0.219351,
		-0.400251, 0.913442, 0.073646,
		22.750889, 18.305588, 9.612263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.595871, 18.081316, 9.691342>,  <23.031065, 17.666178, 9.560711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.595871, 18.081316, 9.691342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.280102, 18.295868, 9.810746>,  <23.090639, 18.424599, 9.882388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.280102, 18.295868, 9.810746>,  <23.595871, 18.081316, 9.691342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.280102, 18.295868, 9.810746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408606, 0.096259, 0.907621,
		0.458094, 0.838471, -0.295156,
		-0.789425, 0.536378, 0.298509,
		23.043274, 18.456781, 9.900299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.833332, 18.590353, 10.242434>,  <23.595871, 18.081316, 9.691342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.833332, 18.590353, 10.242434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.440746, 18.603371, 10.317982>,  <23.205194, 18.611181, 10.363311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.440746, 18.603371, 10.317982>,  <23.833332, 18.590353, 10.242434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.440746, 18.603371, 10.317982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189743, 0.303761, 0.933663,
		-0.026988, 0.952192, -0.304305,
		-0.981463, 0.032542, 0.188870,
		23.146307, 18.613132, 10.374642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.716520, 19.170395, 10.681447>,  <23.833332, 18.590353, 10.242434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.716520, 19.170395, 10.681447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.404648, 18.929581, 10.750324>,  <23.217525, 18.785091, 10.791651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.404648, 18.929581, 10.750324>,  <23.716520, 19.170395, 10.681447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.404648, 18.929581, 10.750324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037846, 0.319795, 0.946730,
		-0.625033, 0.731630, -0.272123,
		-0.779680, -0.602037, 0.172193,
		23.170744, 18.748970, 10.801982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.202747, 19.568882, 11.009505>,  <23.716520, 19.170395, 10.681447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.202747, 19.568882, 11.009505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.118435, 19.195873, 11.126790>,  <23.067846, 18.972069, 11.197161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.118435, 19.195873, 11.126790>,  <23.202747, 19.568882, 11.009505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.118435, 19.195873, 11.126790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004787, 0.298964, 0.954253,
		-0.977521, 0.202544, -0.058553,
		-0.210784, -0.932522, 0.293213,
		23.055201, 18.916117, 11.214754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.623552, 19.615793, 11.533690>,  <23.202747, 19.568882, 11.009505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.623552, 19.615793, 11.533690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.801758, 19.259792, 11.572499>,  <22.908680, 19.046192, 11.595785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.801758, 19.259792, 11.572499>,  <22.623552, 19.615793, 11.533690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.801758, 19.259792, 11.572499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083497, 0.149205, 0.985275,
		-0.891374, -0.430851, 0.140785,
		0.445512, -0.890003, 0.097023,
		22.935411, 18.992792, 11.601606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.049294, 20.046671, 11.666399>,  <22.623552, 19.615793, 11.533690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.049294, 20.046671, 11.666399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.265255, 20.380703, 11.708630>,  <22.394831, 20.581121, 11.733968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.265255, 20.380703, 11.708630>,  <22.049294, 20.046671, 11.666399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.265255, 20.380703, 11.708630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129322, 0.041644, -0.990728,
		-0.831734, 0.548550, -0.085511,
		0.539903, 0.835080, 0.105577,
		22.427225, 20.631227, 11.740303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.799158, 20.521587, 11.211194>,  <22.049294, 20.046671, 11.666399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.799158, 20.521587, 11.211194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.156757, 20.668373, 11.314036>,  <22.371317, 20.756445, 11.375742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.156757, 20.668373, 11.314036>,  <21.799158, 20.521587, 11.211194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.156757, 20.668373, 11.314036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154635, 0.285874, -0.945709,
		-0.420539, 0.885220, 0.198826,
		0.893999, 0.366962, 0.257107,
		22.424957, 20.778461, 11.391169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.816553, 21.248865, 10.954629>,  <21.799158, 20.521587, 11.211194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.816553, 21.248865, 10.954629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.196838, 21.129021, 10.986573>,  <22.425009, 21.057114, 11.005740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.196838, 21.129021, 10.986573>,  <21.816553, 21.248865, 10.954629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.196838, 21.129021, 10.986573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161404, 0.258274, -0.952493,
		0.264753, 0.918437, 0.293903,
		0.950713, -0.299612, 0.079861,
		22.482052, 21.039137, 11.010531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.238110, 21.793522, 10.646677>,  <21.816553, 21.248865, 10.954629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.238110, 21.793522, 10.646677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.435917, 21.446293, 10.629233>,  <22.554602, 21.237955, 10.618768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.435917, 21.446293, 10.629233>,  <22.238110, 21.793522, 10.646677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.435917, 21.446293, 10.629233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114649, 0.114883, -0.986741,
		0.861571, 0.482964, 0.156336,
		0.494520, -0.868072, -0.043608,
		22.584272, 21.185871, 10.616151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.894838, 21.997206, 10.379869>,  <22.238110, 21.793522, 10.646677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.894838, 21.997206, 10.379869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.851116, 21.607414, 10.301439>,  <22.824883, 21.373539, 10.254381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.851116, 21.607414, 10.301439>,  <22.894838, 21.997206, 10.379869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.851116, 21.607414, 10.301439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229374, 0.167206, -0.958869,
		0.967181, -0.149784, 0.205244,
		-0.109305, -0.974478, -0.196075,
		22.818325, 21.315071, 10.242617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.570827, 21.840954, 10.029286>,  <22.894838, 21.997206, 10.379869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.570827, 21.840954, 10.029286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.325706, 21.539268, 9.934937>,  <23.178633, 21.358257, 9.878328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.325706, 21.539268, 9.934937>,  <23.570827, 21.840954, 10.029286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.325706, 21.539268, 9.934937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435626, -0.073383, -0.897131,
		0.659318, -0.652518, 0.373524,
		-0.612805, -0.754212, -0.235871,
		23.141865, 21.313005, 9.864176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.072243, 21.388140, 9.681704>,  <23.570827, 21.840954, 10.029286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.072243, 21.388140, 9.681704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.700672, 21.280811, 9.579645>,  <23.477730, 21.216415, 9.518410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.700672, 21.280811, 9.579645>,  <24.072243, 21.388140, 9.681704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.700672, 21.280811, 9.579645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266049, -0.004440, -0.963949,
		0.257515, -0.963319, 0.075511,
		-0.928926, -0.268321, -0.255147,
		23.421993, 21.200315, 9.503101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.166924, 20.850931, 9.296213>,  <24.072243, 21.388140, 9.681704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.166924, 20.850931, 9.296213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.810482, 20.994831, 9.185566>,  <23.596617, 21.081171, 9.119178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.810482, 20.994831, 9.185566>,  <24.166924, 20.850931, 9.296213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.810482, 20.994831, 9.185566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296422, -0.000123, -0.955057,
		-0.343617, -0.933048, -0.106528,
		-0.891101, 0.359751, -0.276618,
		23.543152, 21.102757, 9.102580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.011879, 20.448002, 8.705215>,  <24.166924, 20.850931, 9.296213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.011879, 20.448002, 8.705215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.753605, 20.751099, 8.667447>,  <23.598640, 20.932957, 8.644786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.753605, 20.751099, 8.667447>,  <24.011879, 20.448002, 8.705215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.753605, 20.751099, 8.667447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097377, -0.040936, -0.994405,
		-0.757370, -0.651267, -0.047355,
		-0.645684, 0.757744, -0.094422,
		23.559900, 20.978422, 8.639120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.485693, 20.238312, 8.156080>,  <24.011879, 20.448002, 8.705215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.485693, 20.238312, 8.156080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.484589, 20.638103, 8.168965>,  <23.483927, 20.877977, 8.176697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.484589, 20.638103, 8.168965>,  <23.485693, 20.238312, 8.156080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.484589, 20.638103, 8.168965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021889, 0.032266, -0.999240,
		-0.999757, -0.002052, -0.021966,
		-0.002759, 0.999477, 0.032213,
		23.483761, 20.937946, 8.178629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.100582, 20.537844, 7.569802>,  <23.485693, 20.238312, 8.156080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.100582, 20.537844, 7.569802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.312580, 20.866020, 7.655579>,  <23.439779, 21.062925, 7.707045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.312580, 20.866020, 7.655579>,  <23.100582, 20.537844, 7.569802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.312580, 20.866020, 7.655579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229687, 0.104539, -0.967634,
		-0.816302, 0.562096, -0.133039,
		0.529995, 0.820439, 0.214442,
		23.471579, 21.112152, 7.719911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.020720, 20.723501, 6.972697>,  <23.100582, 20.537844, 7.569802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.020720, 20.723501, 6.972697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.303429, 20.972977, 7.106253>,  <23.473055, 21.122662, 7.186386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.303429, 20.972977, 7.106253>,  <23.020720, 20.723501, 6.972697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.303429, 20.972977, 7.106253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304515, 0.157792, -0.939347,
		-0.638545, 0.765581, -0.078400,
		0.706775, 0.623689, 0.333888,
		23.515461, 21.160084, 7.206419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.931042, 21.365471, 6.542766>,  <23.020720, 20.723501, 6.972697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.931042, 21.365471, 6.542766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.306599, 21.347946, 6.679330>,  <23.531933, 21.337431, 6.761269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.306599, 21.347946, 6.679330>,  <22.931042, 21.365471, 6.542766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.306599, 21.347946, 6.679330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344205, 0.125027, -0.930533,
		-0.001916, 0.991186, 0.132467,
		0.938893, -0.043814, 0.341411,
		23.588266, 21.334803, 6.781753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.304779, 21.903553, 6.211397>,  <22.931042, 21.365471, 6.542766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.304779, 21.903553, 6.211397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.587402, 21.643196, 6.322475>,  <23.756977, 21.486982, 6.389123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.587402, 21.643196, 6.322475>,  <23.304779, 21.903553, 6.211397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.587402, 21.643196, 6.322475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449054, 0.109106, -0.886818,
		0.546924, 0.751291, 0.369374,
		0.706559, -0.650891, 0.277697,
		23.799370, 21.447929, 6.405785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.579048, 22.353418, 6.256672>,  <23.304779, 21.903553, 6.211397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.579048, 22.353418, 6.256672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.226318, 22.351067, 6.068054>,  <22.014681, 22.349655, 5.954884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.226318, 22.351067, 6.068054>,  <22.579048, 22.353418, 6.256672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.226318, 22.351067, 6.068054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420143, 0.463909, 0.779915,
		0.214168, 0.885863, -0.411556,
		-0.881823, -0.005879, -0.471544,
		21.961771, 22.349302, 5.926591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.244276, 23.126673, 6.291158>,  <22.579048, 22.353418, 6.256672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.244276, 23.126673, 6.291158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.984253, 22.822899, 6.280674>,  <21.828239, 22.640635, 6.274384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.984253, 22.822899, 6.280674>,  <22.244276, 23.126673, 6.291158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.984253, 22.822899, 6.280674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494963, 0.397003, 0.772917,
		-0.576573, 0.515413, -0.633965,
		-0.650058, -0.759433, -0.026209,
		21.789236, 22.595070, 6.272811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.544668, 23.308931, 6.374391>,  <22.244276, 23.126673, 6.291158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.544668, 23.308931, 6.374391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.546886, 22.931057, 6.505565>,  <21.548218, 22.704332, 6.584269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.546886, 22.931057, 6.505565>,  <21.544668, 23.308931, 6.374391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.546886, 22.931057, 6.505565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433207, 0.293300, 0.852236,
		-0.901277, -0.146790, -0.407617,
		0.005545, -0.944684, 0.327935,
		21.548550, 22.647652, 6.603945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.093929, 23.324257, 6.912461>,  <21.544668, 23.308931, 6.374391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.093929, 23.324257, 6.912461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.196751, 22.943520, 6.979292>,  <21.258444, 22.715076, 7.019391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.196751, 22.943520, 6.979292>,  <21.093929, 23.324257, 6.912461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.196751, 22.943520, 6.979292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489073, 0.020983, 0.871991,
		-0.833506, -0.305861, -0.460128,
		0.257053, -0.951845, 0.167078,
		21.273867, 22.657967, 7.029415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.599215, 23.000082, 7.185215>,  <21.093929, 23.324257, 6.912461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.599215, 23.000082, 7.185215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.920143, 22.798668, 7.313424>,  <21.112700, 22.677820, 7.390350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.920143, 22.798668, 7.313424>,  <20.599215, 23.000082, 7.185215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.920143, 22.798668, 7.313424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390962, -0.037554, 0.919640,
		-0.451033, -0.863159, -0.226994,
		0.802320, -0.503534, 0.320524,
		21.160839, 22.647608, 7.409582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.412628, 22.611855, 7.704643>,  <20.599215, 23.000082, 7.185215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.412628, 22.611855, 7.704643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.805519, 22.596107, 7.778056>,  <21.041254, 22.586658, 7.822104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.805519, 22.596107, 7.778056>,  <20.412628, 22.611855, 7.704643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.805519, 22.596107, 7.778056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185845, -0.066582, 0.980321,
		-0.026368, -0.997004, -0.072714,
		0.982225, -0.039363, 0.183532,
		21.100187, 22.584297, 7.833116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.610704, 22.033510, 8.209228>,  <20.412628, 22.611855, 7.704643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.610704, 22.033510, 8.209228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.911850, 22.293190, 8.252557>,  <21.092537, 22.448997, 8.278555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.911850, 22.293190, 8.252557>,  <20.610704, 22.033510, 8.209228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.911850, 22.293190, 8.252557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023372, -0.138109, 0.990141,
		0.657760, -0.747974, -0.088804,
		0.752865, 0.649200, 0.108324,
		21.137709, 22.487949, 8.285054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.162638, 21.719904, 8.671939>,  <20.610704, 22.033510, 8.209228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.162638, 21.719904, 8.671939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.243633, 22.111343, 8.657290>,  <21.292231, 22.346207, 8.648500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.243633, 22.111343, 8.657290>,  <21.162638, 21.719904, 8.671939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.243633, 22.111343, 8.657290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156046, 0.004676, 0.987739,
		0.966771, -0.205723, -0.151759,
		0.202491, 0.978599, -0.036623,
		21.304380, 22.404922, 8.646303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.707851, 21.813133, 9.148049>,  <21.162638, 21.719904, 8.671939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.707851, 21.813133, 9.148049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.517776, 22.163429, 9.113929>,  <21.403732, 22.373608, 9.093456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.517776, 22.163429, 9.113929>,  <21.707851, 21.813133, 9.148049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.517776, 22.163429, 9.113929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079295, 0.139175, 0.987088,
		0.876305, 0.462287, -0.135576,
		-0.475186, 0.875741, -0.085302,
		21.375221, 22.426151, 9.088338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.130527, 22.200705, 9.620943>,  <21.707851, 21.813133, 9.148049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.130527, 22.200705, 9.620943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.804707, 22.424950, 9.561313>,  <21.609215, 22.559496, 9.525535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.804707, 22.424950, 9.561313>,  <22.130527, 22.200705, 9.620943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.804707, 22.424950, 9.561313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094495, 0.125322, 0.987606,
		0.572345, 0.818541, -0.049106,
		-0.814550, 0.560611, -0.149076,
		21.560341, 22.593132, 9.516590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.090891, 22.743635, 10.109176>,  <22.130527, 22.200705, 9.620943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.090891, 22.743635, 10.109176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.697758, 22.755432, 10.036321>,  <21.461878, 22.762510, 9.992608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.697758, 22.755432, 10.036321>,  <22.090891, 22.743635, 10.109176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.697758, 22.755432, 10.036321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177109, 0.125957, 0.976098,
		0.051731, 0.991597, -0.118571,
		-0.982831, 0.029494, -0.182137,
		21.402908, 22.764280, 9.981680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.759775, 23.392756, 10.415614>,  <22.090891, 22.743635, 10.109176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.759775, 23.392756, 10.415614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.477051, 23.111710, 10.382749>,  <21.307415, 22.943083, 10.363029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.477051, 23.111710, 10.382749>,  <21.759775, 23.392756, 10.415614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.477051, 23.111710, 10.382749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220143, 0.108089, 0.969460,
		-0.672275, 0.703314, -0.231074,
		-0.706812, -0.702613, -0.082165,
		21.265007, 22.900925, 10.358099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.269012, 23.627991, 10.919902>,  <21.759775, 23.392756, 10.415614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.269012, 23.627991, 10.919902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.153885, 23.250011, 10.857632>,  <21.084808, 23.023224, 10.820270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.153885, 23.250011, 10.857632>,  <21.269012, 23.627991, 10.919902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.153885, 23.250011, 10.857632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321721, -0.057705, 0.945074,
		-0.902029, 0.322093, -0.287401,
		-0.287818, -0.944948, -0.155676,
		21.067539, 22.966528, 10.810929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.668003, 23.628305, 11.241690>,  <21.269012, 23.627991, 10.919902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.668003, 23.628305, 11.241690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.783829, 23.245808, 11.224970>,  <20.853323, 23.016308, 11.214938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.783829, 23.245808, 11.224970>,  <20.668003, 23.628305, 11.241690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.783829, 23.245808, 11.224970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194614, -0.101578, 0.975606,
		-0.937166, -0.274363, -0.215512,
		0.289562, -0.956246, -0.041800,
		20.870697, 22.958933, 11.212430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.058361, 23.153856, 11.460199>,  <20.668003, 23.628305, 11.241690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.058361, 23.153856, 11.460199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.394180, 22.944675, 11.519096>,  <20.595671, 22.819166, 11.554435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.394180, 22.944675, 11.519096>,  <20.058361, 23.153856, 11.460199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.394180, 22.944675, 11.519096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196634, -0.039840, 0.979667,
		-0.506455, -0.851429, -0.136277,
		0.839547, -0.522954, 0.147243,
		20.646044, 22.787790, 11.563270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.912199, 22.797073, 11.962205>,  <20.058361, 23.153856, 11.460199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.912199, 22.797073, 11.962205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.302444, 22.709362, 11.958328>,  <20.536592, 22.656736, 11.956002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.302444, 22.709362, 11.958328>,  <19.912199, 22.797073, 11.962205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.302444, 22.709362, 11.958328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033142, -0.190813, 0.981067,
		-0.216983, -0.956820, -0.193427,
		0.975613, -0.219285, -0.009692,
		20.595129, 22.643579, 11.955421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.072197, 22.064302, 12.114315>,  <19.912199, 22.797073, 11.962205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.072197, 22.064302, 12.114315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.406574, 22.258621, 12.216455>,  <20.607201, 22.375212, 12.277739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.406574, 22.258621, 12.216455>,  <20.072197, 22.064302, 12.114315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.406574, 22.258621, 12.216455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123795, -0.286370, 0.950088,
		0.534675, -0.825828, -0.179249,
		0.835941, 0.485798, 0.255348,
		20.657356, 22.404360, 12.293059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.437399, 21.670198, 12.574807>,  <20.072197, 22.064302, 12.114315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.437399, 21.670198, 12.574807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.557140, 22.045490, 12.644224>,  <20.628984, 22.270664, 12.685875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.557140, 22.045490, 12.644224>,  <20.437399, 21.670198, 12.574807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.557140, 22.045490, 12.644224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088739, -0.208473, 0.973994,
		0.950007, -0.276168, -0.145665,
		0.299353, 0.938227, 0.173544,
		20.646946, 22.326958, 12.696287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.832289, 21.642578, 13.234257>,  <20.437399, 21.670198, 12.574807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.832289, 21.642578, 13.234257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.749966, 22.030964, 13.185482>,  <20.700571, 22.263996, 13.156217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.749966, 22.030964, 13.185482>,  <20.832289, 21.642578, 13.234257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.749966, 22.030964, 13.185482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194643, 0.081498, 0.977482,
		0.959039, 0.224910, 0.172219,
		-0.205810, 0.970965, -0.121937,
		20.688223, 22.322254, 13.148901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.257504, 22.009352, 13.700438>,  <20.832289, 21.642578, 13.234257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.257504, 22.009352, 13.700438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.950264, 22.259575, 13.645729>,  <20.765921, 22.409708, 13.612905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.950264, 22.259575, 13.645729>,  <21.257504, 22.009352, 13.700438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.950264, 22.259575, 13.645729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142059, 0.041798, 0.988975,
		0.624377, 0.779058, 0.056761,
		-0.768097, 0.625557, -0.136770,
		20.719835, 22.447243, 13.604698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.239843, 22.385063, 14.297431>,  <21.257504, 22.009352, 13.700438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.239843, 22.385063, 14.297431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.880032, 22.475945, 14.148180>,  <20.664145, 22.530474, 14.058629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.880032, 22.475945, 14.148180>,  <21.239843, 22.385063, 14.297431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.880032, 22.475945, 14.148180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360190, 0.097585, 0.927761,
		0.247201, 0.968946, -0.005945,
		-0.899530, 0.227202, -0.373127,
		20.610172, 22.544106, 14.036242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.986910, 22.877451, 14.759950>,  <21.239843, 22.385063, 14.297431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.986910, 22.877451, 14.759950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.679070, 22.714035, 14.563660>,  <20.494366, 22.615986, 14.445886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.679070, 22.714035, 14.563660>,  <20.986910, 22.877451, 14.759950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.679070, 22.714035, 14.563660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618269, 0.284741, 0.732575,
		-0.159556, 0.867190, -0.471724,
		-0.769601, -0.408539, -0.490725,
		20.448189, 22.591473, 14.416442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.410118, 23.194248, 15.142586>,  <20.986910, 22.877451, 14.759950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.410118, 23.194248, 15.142586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.255852, 22.882282, 14.945408>,  <20.163292, 22.695103, 14.827102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.255852, 22.882282, 14.945408>,  <20.410118, 23.194248, 15.142586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.255852, 22.882282, 14.945408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706494, -0.093992, 0.701450,
		-0.593405, 0.618786, -0.514756,
		-0.385665, -0.779916, -0.492944,
		20.140152, 22.648308, 14.797524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.648981, 23.339512, 15.201443>,  <20.410118, 23.194248, 15.142586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.648981, 23.339512, 15.201443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.674473, 22.966587, 15.059046>,  <19.689768, 22.742832, 14.973607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.674473, 22.966587, 15.059046>,  <19.648981, 23.339512, 15.201443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.674473, 22.966587, 15.059046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692710, -0.298113, 0.656720,
		-0.718394, 0.204748, -0.664822,
		0.063730, -0.932312, -0.355993,
		19.693592, 22.686893, 14.952248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.011059, 23.078197, 14.925173>,  <19.648981, 23.339512, 15.201443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.011059, 23.078197, 14.925173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.207401, 22.750202, 15.042936>,  <19.325207, 22.553406, 15.113595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.207401, 22.750202, 15.042936>,  <19.011059, 23.078197, 14.925173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.207401, 22.750202, 15.042936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760602, -0.238513, 0.603817,
		-0.424903, -0.520317, -0.740762,
		0.490857, -0.819989, 0.294409,
		19.354658, 22.504206, 15.131259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.515715, 22.582443, 15.025531>,  <19.011059, 23.078197, 14.925173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.515715, 22.582443, 15.025531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.834164, 22.455334, 15.231525>,  <19.025232, 22.379068, 15.355123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.834164, 22.455334, 15.231525>,  <18.515715, 22.582443, 15.025531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.834164, 22.455334, 15.231525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605118, -0.411271, 0.681680,
		-0.004820, -0.854328, -0.519712,
		0.796121, -0.317773, 0.514987,
		19.073000, 22.360003, 15.386022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.252922, 22.124990, 15.449081>,  <18.515715, 22.582443, 15.025531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.252922, 22.124990, 15.449081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.602238, 22.179153, 15.636284>,  <18.811827, 22.211651, 15.748605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.602238, 22.179153, 15.636284>,  <18.252922, 22.124990, 15.449081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.602238, 22.179153, 15.636284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394963, -0.365660, 0.842791,
		0.285253, -0.920846, -0.265845,
		0.873290, 0.135410, 0.468006,
		18.864225, 22.219776, 15.776686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.363678, 21.486208, 15.845090>,  <18.252922, 22.124990, 15.449081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.363678, 21.486208, 15.845090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.579037, 21.767487, 16.030840>,  <18.708252, 21.936255, 16.142290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.579037, 21.767487, 16.030840>,  <18.363678, 21.486208, 15.845090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.579037, 21.767487, 16.030840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404691, -0.267600, 0.874423,
		0.739158, -0.658715, 0.140502,
		0.538397, 0.703196, 0.464374,
		18.740557, 21.978445, 16.170153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.396826, 20.773823, 15.826816>,  <18.363678, 21.486208, 15.845090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.396826, 20.773823, 15.826816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.026787, 20.622868, 15.843666>,  <17.804764, 20.532293, 15.853776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.026787, 20.622868, 15.843666>,  <18.396826, 20.773823, 15.826816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026787, 20.622868, 15.843666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005236, -0.098248, -0.995148,
		0.379698, -0.920828, 0.088913,
		-0.925095, -0.377390, 0.042126,
		17.749258, 20.509651, 15.856304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.476833, 20.205462, 15.423474>,  <18.396826, 20.773823, 15.826816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.476833, 20.205462, 15.423474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.107037, 20.357494, 15.411818>,  <17.885159, 20.448713, 15.404823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.107037, 20.357494, 15.411818>,  <18.476833, 20.205462, 15.423474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.107037, 20.357494, 15.411818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016058, -0.115210, -0.993211,
		-0.380859, -0.917750, 0.112614,
		-0.924494, 0.380081, -0.029141,
		17.829689, 20.471518, 15.403075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.208384, 19.971478, 14.786065>,  <18.476833, 20.205462, 15.423474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.208384, 19.971478, 14.786065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.916691, 20.230106, 14.875652>,  <17.741674, 20.385284, 14.929405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.916691, 20.230106, 14.875652>,  <18.208384, 19.971478, 14.786065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.916691, 20.230106, 14.875652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127998, 0.192639, -0.972886,
		-0.672188, -0.738127, -0.057719,
		-0.729232, 0.646574, 0.223968,
		17.697922, 20.424078, 14.942842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.601210, 19.795319, 14.278893>,  <18.208384, 19.971478, 14.786065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.601210, 19.795319, 14.278893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.560123, 20.170929, 14.410154>,  <17.535473, 20.396296, 14.488911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.560123, 20.170929, 14.410154>,  <17.601210, 19.795319, 14.278893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.560123, 20.170929, 14.410154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133808, 0.313856, -0.939995,
		-0.985670, -0.140459, 0.093411,
		-0.102713, 0.939023, 0.328153,
		17.529310, 20.452637, 14.508600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.000643, 20.018213, 13.981050>,  <17.601210, 19.795319, 14.278893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.000643, 20.018213, 13.981050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.247677, 20.318432, 14.075085>,  <17.395897, 20.498564, 14.131505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.247677, 20.318432, 14.075085>,  <17.000643, 20.018213, 13.981050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247677, 20.318432, 14.075085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058943, 0.253891, -0.965435,
		-0.784292, 0.610096, 0.112560,
		0.617586, 0.750548, 0.235085,
		17.432953, 20.543596, 14.145610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
