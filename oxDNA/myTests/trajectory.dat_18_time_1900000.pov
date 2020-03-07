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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<39.063400, 46.207752, 56.676476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456924, 46.244225, 56.738197>,  <39.693039, 46.266109, 56.775230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456924, 46.244225, 56.738197>,  <39.063400, 46.207752, 56.676476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456924, 46.244225, 56.738197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136193, 0.179315, -0.974319,
		-0.116509, 0.979557, 0.163994,
		0.983808, 0.091182, 0.154300,
		39.752068, 46.271580, 56.784489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273853, 46.639256, 56.227600>,  <39.063400, 46.207752, 56.676476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273853, 46.639256, 56.227600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620705, 46.465027, 56.324242>,  <39.828815, 46.360489, 56.382225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620705, 46.465027, 56.324242>,  <39.273853, 46.639256, 56.227600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620705, 46.465027, 56.324242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281039, 0.027376, -0.959306,
		0.411230, 0.899739, 0.146151,
		0.867125, -0.435570, 0.241604,
		39.880844, 46.334354, 56.396725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763065, 47.056797, 55.860161>,  <39.273853, 46.639256, 56.227600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763065, 47.056797, 55.860161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946411, 46.709335, 55.935360>,  <40.056419, 46.500858, 55.980480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946411, 46.709335, 55.935360>,  <39.763065, 47.056797, 55.860161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946411, 46.709335, 55.935360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537456, 0.102436, -0.837047,
		0.707847, 0.484712, 0.513816,
		0.458361, -0.868655, 0.188003,
		40.083920, 46.448738, 55.991760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508286, 47.095760, 55.800049>,  <39.763065, 47.056797, 55.860161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508286, 47.095760, 55.800049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425179, 46.706909, 55.756592>,  <40.375317, 46.473598, 55.730518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425179, 46.706909, 55.756592>,  <40.508286, 47.095760, 55.800049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425179, 46.706909, 55.756592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628481, -0.047558, -0.776370,
		0.749564, -0.229581, 0.620844,
		-0.207766, -0.972127, -0.108640,
		40.362850, 46.415272, 55.723999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176243, 46.699341, 55.704578>,  <40.508286, 47.095760, 55.800049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176243, 46.699341, 55.704578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870628, 46.495789, 55.545944>,  <40.687260, 46.373657, 55.450764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870628, 46.495789, 55.545944>,  <41.176243, 46.699341, 55.704578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870628, 46.495789, 55.545944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516854, -0.114877, -0.848331,
		0.386142, -0.853136, 0.350789,
		-0.764039, -0.508883, -0.396588,
		40.641415, 46.343124, 55.426968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483902, 46.218967, 55.275463>,  <41.176243, 46.699341, 55.704578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483902, 46.218967, 55.275463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114220, 46.164200, 55.132866>,  <40.892410, 46.131340, 55.047306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114220, 46.164200, 55.132866>,  <41.483902, 46.218967, 55.275463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114220, 46.164200, 55.132866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381861, -0.341530, -0.858801,
		-0.004167, -0.929844, 0.367930,
		-0.924210, -0.136920, -0.356495,
		40.836956, 46.123123, 55.025917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541908, 45.574654, 54.937672>,  <41.483902, 46.218967, 55.275463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541908, 45.574654, 54.937672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201973, 45.717216, 54.782364>,  <40.998013, 45.802753, 54.689178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201973, 45.717216, 54.782364>,  <41.541908, 45.574654, 54.937672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201973, 45.717216, 54.782364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308579, -0.260740, -0.914764,
		-0.427267, -0.897211, 0.111606,
		-0.849836, 0.356409, -0.388266,
		40.947021, 45.824139, 54.665886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110096, 45.057060, 54.423630>,  <41.541908, 45.574654, 54.937672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110096, 45.057060, 54.423630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008827, 45.427967, 54.313301>,  <40.948067, 45.650513, 54.247105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008827, 45.427967, 54.313301>,  <41.110096, 45.057060, 54.423630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008827, 45.427967, 54.313301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019932, -0.280046, -0.959779,
		-0.967215, -0.248490, 0.052418,
		-0.253175, 0.927268, -0.275818,
		40.932873, 45.706146, 54.230556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602180, 44.965553, 53.986862>,  <41.110096, 45.057060, 54.423630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602180, 44.965553, 53.986862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738998, 45.330269, 53.895969>,  <40.821091, 45.549099, 53.841434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738998, 45.330269, 53.895969>,  <40.602180, 44.965553, 53.986862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738998, 45.330269, 53.895969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056474, -0.261330, -0.963596,
		-0.937984, 0.316764, -0.140880,
		0.342049, 0.911793, -0.227235,
		40.841614, 45.603806, 53.827801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248444, 45.170166, 53.302864>,  <40.602180, 44.965553, 53.986862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248444, 45.170166, 53.302864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563004, 45.413055, 53.348228>,  <40.751740, 45.558788, 53.375446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563004, 45.413055, 53.348228>,  <40.248444, 45.170166, 53.302864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563004, 45.413055, 53.348228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237010, -0.127059, -0.963163,
		-0.570442, 0.784308, -0.243836,
		0.786398, 0.607220, 0.113409,
		40.798923, 45.595222, 53.382252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339272, 45.353813, 52.615253>,  <40.248444, 45.170166, 53.302864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339272, 45.353813, 52.615253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671608, 45.470543, 52.804794>,  <40.871010, 45.540581, 52.918518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671608, 45.470543, 52.804794>,  <40.339272, 45.353813, 52.615253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671608, 45.470543, 52.804794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549811, -0.298778, -0.780025,
		-0.086055, 0.908609, -0.408687,
		0.830844, 0.291825, 0.473852,
		40.920860, 45.558090, 52.946949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677505, 45.790497, 52.133572>,  <40.339272, 45.353813, 52.615253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677505, 45.790497, 52.133572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973518, 45.658333, 52.367897>,  <41.151127, 45.579033, 52.508492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973518, 45.658333, 52.367897>,  <40.677505, 45.790497, 52.133572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973518, 45.658333, 52.367897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468775, -0.371184, -0.801544,
		0.482285, 0.867784, -0.119799,
		0.740034, -0.330414, 0.585812,
		41.195530, 45.559208, 52.543640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338356, 45.964706, 51.827026>,  <40.677505, 45.790497, 52.133572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338356, 45.964706, 51.827026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426323, 45.666641, 52.078854>,  <41.479103, 45.487801, 52.229950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426323, 45.666641, 52.078854>,  <41.338356, 45.964706, 51.827026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426323, 45.666641, 52.078854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651935, -0.367823, -0.663089,
		0.725683, 0.556267, 0.404909,
		0.219919, -0.745167, 0.629573,
		41.492298, 45.443092, 52.267727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131325, 45.948059, 51.761234>,  <41.338356, 45.964706, 51.827026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131325, 45.948059, 51.761234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975273, 45.598255, 51.876495>,  <41.881641, 45.388374, 51.945652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975273, 45.598255, 51.876495>,  <42.131325, 45.948059, 51.761234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975273, 45.598255, 51.876495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649756, -0.483211, -0.586792,
		0.652393, -0.041696, 0.756733,
		-0.390129, -0.874511, 0.288151,
		41.858234, 45.335903, 51.962940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725277, 45.529247, 51.881847>,  <42.131325, 45.948059, 51.761234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725277, 45.529247, 51.881847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417114, 45.277813, 51.839207>,  <42.232216, 45.126953, 51.813622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417114, 45.277813, 51.839207>,  <42.725277, 45.529247, 51.881847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417114, 45.277813, 51.839207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528793, -0.536578, -0.657619,
		0.356170, -0.563000, 0.745771,
		-0.770403, -0.628582, -0.106597,
		42.185993, 45.089237, 51.807228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037529, 44.864784, 51.779900>,  <42.725277, 45.529247, 51.881847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037529, 44.864784, 51.779900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674774, 44.815983, 51.618568>,  <42.457123, 44.786701, 51.521770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674774, 44.815983, 51.618568>,  <43.037529, 44.864784, 51.779900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674774, 44.815983, 51.618568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412215, -0.455396, -0.789109,
		-0.087405, -0.881890, 0.463281,
		-0.906884, -0.122000, -0.403332,
		42.402710, 44.779385, 51.497570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088730, 44.225819, 51.568558>,  <43.037529, 44.864784, 51.779900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.088730, 44.225819, 51.568558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794235, 44.409630, 51.369846>,  <42.617538, 44.519917, 51.250618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794235, 44.409630, 51.369846>,  <43.088730, 44.225819, 51.568558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794235, 44.409630, 51.369846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291262, -0.447447, -0.845552,
		-0.610833, -0.767222, 0.195587,
		-0.736240, 0.459524, -0.496778,
		42.573364, 44.547485, 51.220814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935848, 43.689274, 50.967594>,  <43.088730, 44.225819, 51.568558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935848, 43.689274, 50.967594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728630, 44.010174, 50.848923>,  <42.604298, 44.202713, 50.777718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728630, 44.010174, 50.848923>,  <42.935848, 43.689274, 50.967594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728630, 44.010174, 50.848923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167976, -0.244679, -0.954943,
		-0.838695, -0.544543, -0.008003,
		-0.518050, 0.802250, -0.296681,
		42.573215, 44.250847, 50.759918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343452, 43.509670, 50.533958>,  <42.935848, 43.689274, 50.967594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343452, 43.509670, 50.533958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433586, 43.889297, 50.445877>,  <42.487667, 44.117073, 50.393028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433586, 43.889297, 50.445877>,  <42.343452, 43.509670, 50.533958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433586, 43.889297, 50.445877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062503, -0.211466, -0.975385,
		-0.972275, 0.233549, 0.011670,
		0.225332, 0.949072, -0.220201,
		42.501186, 44.174019, 50.379818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178062, 43.575394, 49.879646>,  <42.343452, 43.509670, 50.533958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178062, 43.575394, 49.879646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397171, 43.909492, 49.898903>,  <42.528637, 44.109951, 49.910458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397171, 43.909492, 49.898903>,  <42.178062, 43.575394, 49.879646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397171, 43.909492, 49.898903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011529, 0.065068, -0.997814,
		-0.836550, 0.546016, 0.045272,
		0.547769, 0.835244, 0.048138,
		42.561501, 44.160065, 49.913345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789059, 44.132458, 49.440254>,  <42.178062, 43.575394, 49.879646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789059, 44.132458, 49.440254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181145, 44.209515, 49.458435>,  <42.416397, 44.255749, 49.469345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181145, 44.209515, 49.458435>,  <41.789059, 44.132458, 49.440254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181145, 44.209515, 49.458435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039938, 0.032416, -0.998676,
		-0.193860, 0.980734, 0.024081,
		0.980216, 0.192641, 0.045453,
		42.475208, 44.267307, 49.472073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923485, 44.442097, 48.752632>,  <41.789059, 44.132458, 49.440254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923485, 44.442097, 48.752632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296356, 44.370846, 48.878693>,  <42.520077, 44.328094, 48.954327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296356, 44.370846, 48.878693>,  <41.923485, 44.442097, 48.752632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296356, 44.370846, 48.878693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246299, -0.325923, -0.912749,
		0.265299, 0.928464, -0.259945,
		0.932177, -0.178127, 0.315147,
		42.576008, 44.317410, 48.973236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354340, 44.896759, 48.380886>,  <41.923485, 44.442097, 48.752632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354340, 44.896759, 48.380886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586761, 44.596867, 48.507553>,  <42.726215, 44.416931, 48.583553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586761, 44.596867, 48.507553>,  <42.354340, 44.896759, 48.380886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586761, 44.596867, 48.507553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374557, -0.099096, -0.921893,
		0.722551, 0.654282, 0.223237,
		0.581056, -0.749730, 0.316668,
		42.761078, 44.371948, 48.602554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898739, 44.982391, 47.966747>,  <42.354340, 44.896759, 48.380886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898739, 44.982391, 47.966747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907928, 44.602528, 48.091724>,  <42.913445, 44.374611, 48.166710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907928, 44.602528, 48.091724>,  <42.898739, 44.982391, 47.966747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907928, 44.602528, 48.091724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246650, -0.297481, -0.922317,
		0.968832, 0.098256, 0.227399,
		0.022976, -0.949658, 0.312444,
		42.914822, 44.317631, 48.185459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468060, 44.846767, 47.768177>,  <42.898739, 44.982391, 47.966747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468060, 44.846767, 47.768177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310242, 44.481709, 47.810905>,  <43.215549, 44.262672, 47.836544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310242, 44.481709, 47.810905>,  <43.468060, 44.846767, 47.768177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310242, 44.481709, 47.810905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226463, -0.209248, -0.951278,
		0.890531, -0.351134, 0.289239,
		-0.394548, -0.912645, 0.106822,
		43.191875, 44.207916, 47.842953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933903, 44.387825, 47.415016>,  <43.468060, 44.846767, 47.768177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933903, 44.387825, 47.415016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587463, 44.192505, 47.457794>,  <43.379601, 44.075314, 47.483459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587463, 44.192505, 47.457794>,  <43.933903, 44.387825, 47.415016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587463, 44.192505, 47.457794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121562, -0.413265, -0.902460,
		0.484864, -0.768621, 0.417288,
		-0.866100, -0.488297, 0.106942,
		43.327633, 44.046017, 47.489876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033951, 43.793968, 47.074329>,  <43.933903, 44.387825, 47.415016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033951, 43.793968, 47.074329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635551, 43.818893, 47.099953>,  <43.396511, 43.833851, 47.115326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635551, 43.818893, 47.099953>,  <44.033951, 43.793968, 47.074329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635551, 43.818893, 47.099953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079452, -0.289164, -0.953977,
		-0.040923, -0.955249, 0.292958,
		-0.995998, 0.062315, 0.064063,
		43.336754, 43.837589, 47.119171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855385, 43.198608, 46.771683>,  <44.033951, 43.793968, 47.074329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855385, 43.198608, 46.771683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544350, 43.449753, 46.758106>,  <43.357731, 43.600441, 46.749958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544350, 43.449753, 46.758106>,  <43.855385, 43.198608, 46.771683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544350, 43.449753, 46.758106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063264, -0.131834, -0.989251,
		-0.625588, -0.767078, 0.142234,
		-0.777584, 0.627862, -0.033945,
		43.311073, 43.638111, 46.747921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402863, 42.916283, 46.250240>,  <43.855385, 43.198608, 46.771683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402863, 42.916283, 46.250240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273460, 43.293987, 46.274624>,  <43.195820, 43.520611, 46.289253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273460, 43.293987, 46.274624>,  <43.402863, 42.916283, 46.250240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273460, 43.293987, 46.274624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002998, 0.063402, -0.997984,
		-0.946223, -0.323033, -0.017679,
		-0.323502, 0.944262, 0.060961,
		43.176411, 43.577267, 46.292912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675480, 42.910042, 45.917904>,  <43.402863, 42.916283, 46.250240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675480, 42.910042, 45.917904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807961, 43.287178, 45.903202>,  <42.887447, 43.513462, 45.894379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807961, 43.287178, 45.903202>,  <42.675480, 42.910042, 45.917904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807961, 43.287178, 45.903202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407176, 0.107671, -0.906981,
		-0.851185, 0.315357, 0.419565,
		0.331198, 0.942845, -0.036758,
		42.907318, 43.570030, 45.892174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207428, 43.271427, 45.650345>,  <42.675480, 42.910042, 45.917904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207428, 43.271427, 45.650345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511681, 43.524040, 45.590191>,  <42.694233, 43.675606, 45.554100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511681, 43.524040, 45.590191>,  <42.207428, 43.271427, 45.650345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511681, 43.524040, 45.590191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375442, 0.238942, -0.895517,
		-0.529612, 0.737616, 0.418849,
		0.760628, 0.631529, -0.150385,
		42.739868, 43.713501, 45.545074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865345, 43.849674, 45.379536>,  <42.207428, 43.271427, 45.650345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865345, 43.849674, 45.379536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246162, 43.882858, 45.261734>,  <42.474651, 43.902767, 45.191051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246162, 43.882858, 45.261734>,  <41.865345, 43.849674, 45.379536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246162, 43.882858, 45.261734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305879, 0.234964, -0.922621,
		-0.007343, 0.968457, 0.249071,
		0.952042, 0.082961, -0.294505,
		42.531776, 43.907745, 45.173382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941326, 44.514225, 45.086544>,  <41.865345, 43.849674, 45.379536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941326, 44.514225, 45.086544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243500, 44.293945, 44.944527>,  <42.424805, 44.161777, 44.859318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243500, 44.293945, 44.944527>,  <41.941326, 44.514225, 45.086544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243500, 44.293945, 44.944527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330182, 0.148083, -0.932229,
		0.565954, 0.821463, -0.069965,
		0.755431, -0.550700, -0.355040,
		42.470131, 44.128735, 44.838017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511795, 44.985550, 44.738613>,  <41.941326, 44.514225, 45.086544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511795, 44.985550, 44.738613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577400, 44.626060, 44.575935>,  <42.616764, 44.410366, 44.478329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577400, 44.626060, 44.575935>,  <42.511795, 44.985550, 44.738613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577400, 44.626060, 44.575935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118215, 0.391398, -0.912597,
		0.979350, 0.197753, -0.042049,
		0.164011, -0.898722, -0.406693,
		42.626602, 44.356445, 44.453926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955006, 45.026878, 44.153584>,  <42.511795, 44.985550, 44.738613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955006, 45.026878, 44.153584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764061, 44.684406, 44.074505>,  <42.649494, 44.478924, 44.027058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764061, 44.684406, 44.074505>,  <42.955006, 45.026878, 44.153584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764061, 44.684406, 44.074505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124019, 0.288385, -0.949449,
		0.869912, -0.428710, -0.243845,
		-0.477359, -0.856179, -0.197702,
		42.620853, 44.427551, 44.015194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149723, 44.789696, 43.474709>,  <42.955006, 45.026878, 44.153584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149723, 44.789696, 43.474709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821716, 44.572922, 43.548332>,  <42.624912, 44.442856, 43.592506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821716, 44.572922, 43.548332>,  <43.149723, 44.789696, 43.474709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821716, 44.572922, 43.548332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243059, 0.038594, -0.969244,
		0.518165, -0.839533, -0.163370,
		-0.820017, -0.541936, 0.184058,
		42.575710, 44.410339, 43.603550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169220, 44.251602, 42.988827>,  <43.149723, 44.789696, 43.474709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169220, 44.251602, 42.988827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788376, 44.308739, 43.096962>,  <42.559868, 44.343021, 43.161842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788376, 44.308739, 43.096962>,  <43.169220, 44.251602, 42.988827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788376, 44.308739, 43.096962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282455, -0.072393, -0.956545,
		-0.117077, -0.987093, 0.109277,
		-0.952109, 0.142855, 0.270334,
		42.502743, 44.351593, 43.178062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774162, 43.822601, 42.533882>,  <43.169220, 44.251602, 42.988827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774162, 43.822601, 42.533882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494011, 44.069275, 42.677647>,  <42.325920, 44.217278, 42.763905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494011, 44.069275, 42.677647>,  <42.774162, 43.822601, 42.533882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494011, 44.069275, 42.677647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358224, 0.131840, -0.924280,
		-0.617371, -0.776094, 0.128572,
		-0.700377, 0.616681, 0.359410,
		42.283897, 44.254280, 42.785469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119740, 43.624527, 42.222229>,  <42.774162, 43.822601, 42.533882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119740, 43.624527, 42.222229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064499, 44.006313, 42.328007>,  <42.031353, 44.235386, 42.391472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064499, 44.006313, 42.328007>,  <42.119740, 43.624527, 42.222229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064499, 44.006313, 42.328007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330616, 0.207257, -0.920727,
		-0.933607, -0.214581, 0.286938,
		-0.138101, 0.954463, 0.264440,
		42.023067, 44.292652, 42.407337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484314, 43.799011, 41.956219>,  <42.119740, 43.624527, 42.222229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484314, 43.799011, 41.956219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657494, 44.155827, 42.008099>,  <41.761402, 44.369915, 42.039227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657494, 44.155827, 42.008099>,  <41.484314, 43.799011, 41.956219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657494, 44.155827, 42.008099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446447, 0.337193, -0.828846,
		-0.783098, 0.300941, 0.544235,
		0.432946, 0.892040, 0.129701,
		41.787376, 44.423439, 42.047009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921345, 44.354637, 41.990891>,  <41.484314, 43.799011, 41.956219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921345, 44.354637, 41.990891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253365, 44.554413, 41.891632>,  <41.452576, 44.674278, 41.832077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253365, 44.554413, 41.891632>,  <40.921345, 44.354637, 41.990891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253365, 44.554413, 41.891632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489420, 0.439032, -0.753471,
		-0.267371, 0.746865, 0.608855,
		0.830048, 0.499443, -0.248146,
		41.502380, 44.704247, 41.817188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717861, 45.011032, 41.894943>,  <40.921345, 44.354637, 41.990891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717861, 45.011032, 41.894943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047821, 44.934467, 41.682190>,  <41.245796, 44.888527, 41.554539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047821, 44.934467, 41.682190>,  <40.717861, 45.011032, 41.894943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047821, 44.934467, 41.682190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469063, 0.293313, -0.833035,
		0.315463, 0.936658, 0.152169,
		0.824902, -0.191415, -0.531881,
		41.295292, 44.877045, 41.522625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693779, 45.491062, 41.350491>,  <40.717861, 45.011032, 41.894943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693779, 45.491062, 41.350491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944038, 45.214058, 41.206829>,  <41.094196, 45.047855, 41.120632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944038, 45.214058, 41.206829>,  <40.693779, 45.491062, 41.350491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944038, 45.214058, 41.206829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257358, 0.251389, -0.933043,
		0.736427, 0.676192, -0.020940,
		0.625653, -0.692508, -0.359153,
		41.131733, 45.006306, 41.099083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030373, 45.908314, 40.946014>,  <40.693779, 45.491062, 41.350491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030373, 45.908314, 40.946014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114769, 45.538422, 40.819298>,  <41.165405, 45.316486, 40.743267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114769, 45.538422, 40.819298>,  <41.030373, 45.908314, 40.946014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114769, 45.538422, 40.819298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461201, 0.191569, -0.866369,
		0.861846, 0.328898, -0.386068,
		0.210988, -0.924731, -0.316791,
		41.178066, 45.261002, 40.724262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477551, 45.987743, 40.337021>,  <41.030373, 45.908314, 40.946014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477551, 45.987743, 40.337021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310570, 45.625431, 40.307899>,  <41.210381, 45.408043, 40.290428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310570, 45.625431, 40.307899>,  <41.477551, 45.987743, 40.337021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310570, 45.625431, 40.307899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309786, 0.217175, -0.925671,
		0.854264, -0.363869, -0.371258,
		-0.417451, -0.905778, -0.072804,
		41.185333, 45.353699, 40.286060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674011, 45.727688, 39.625454>,  <41.477551, 45.987743, 40.337021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674011, 45.727688, 39.625454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358627, 45.503345, 39.726467>,  <41.169395, 45.368740, 39.787075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358627, 45.503345, 39.726467>,  <41.674011, 45.727688, 39.625454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358627, 45.503345, 39.726467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394266, 0.145710, -0.907371,
		0.472105, -0.814992, -0.336012,
		-0.788461, -0.560853, 0.252534,
		41.122089, 45.335091, 39.802227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579769, 45.268753, 39.028210>,  <41.674011, 45.727688, 39.625454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579769, 45.268753, 39.028210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235413, 45.245075, 39.230339>,  <41.028797, 45.230869, 39.351616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235413, 45.245075, 39.230339>,  <41.579769, 45.268753, 39.028210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235413, 45.245075, 39.230339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504708, -0.026093, -0.862896,
		0.064273, -0.997905, -0.007418,
		-0.860894, -0.059204, 0.505328,
		40.977142, 45.227318, 39.381939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173473, 44.752945, 38.664864>,  <41.579769, 45.268753, 39.028210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173473, 44.752945, 38.664864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937920, 44.996487, 38.877472>,  <40.796589, 45.142612, 39.005039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937920, 44.996487, 38.877472>,  <41.173473, 44.752945, 38.664864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937920, 44.996487, 38.877472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581031, 0.138221, -0.802059,
		-0.561802, -0.781151, 0.272365,
		-0.588882, 0.608850, 0.531525,
		40.761253, 45.179142, 39.036930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450985, 44.470921, 38.526218>,  <41.173473, 44.752945, 38.664864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450985, 44.470921, 38.526218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390656, 44.840378, 38.667149>,  <40.354458, 45.062054, 38.751709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390656, 44.840378, 38.667149>,  <40.450985, 44.470921, 38.526218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390656, 44.840378, 38.667149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453167, 0.252154, -0.855019,
		-0.878574, -0.288621, 0.380534,
		-0.150823, 0.923643, 0.352330,
		40.345409, 45.117470, 38.772846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772461, 44.648930, 38.202507>,  <40.450985, 44.470921, 38.526218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772461, 44.648930, 38.202507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939529, 44.994282, 38.315731>,  <40.039768, 45.201492, 38.383667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939529, 44.994282, 38.315731>,  <39.772461, 44.648930, 38.202507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939529, 44.994282, 38.315731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247451, 0.407847, -0.878880,
		-0.874255, 0.297036, 0.383989,
		0.417667, 0.863384, 0.283060,
		40.064831, 45.253296, 38.400650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275475, 45.206406, 38.052742>,  <39.772461, 44.648930, 38.202507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275475, 45.206406, 38.052742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640114, 45.368210, 38.082035>,  <39.858898, 45.465294, 38.099613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640114, 45.368210, 38.082035>,  <39.275475, 45.206406, 38.052742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640114, 45.368210, 38.082035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035972, 0.255963, -0.966017,
		-0.409511, 0.877983, 0.247886,
		0.911596, 0.404511, 0.073237,
		39.913593, 45.489563, 38.104008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207893, 45.834473, 37.739204>,  <39.275475, 45.206406, 38.052742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207893, 45.834473, 37.739204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600128, 45.761173, 37.767097>,  <39.835468, 45.717194, 37.783833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600128, 45.761173, 37.767097>,  <39.207893, 45.834473, 37.739204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600128, 45.761173, 37.767097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133125, 0.361162, -0.922952,
		0.143944, 0.914321, 0.378546,
		0.980591, -0.183248, 0.069732,
		39.894306, 45.706200, 37.788017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570698, 46.426979, 37.535717>,  <39.207893, 45.834473, 37.739204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570698, 46.426979, 37.535717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805153, 46.111427, 37.461830>,  <39.945824, 45.922096, 37.417496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805153, 46.111427, 37.461830>,  <39.570698, 46.426979, 37.535717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805153, 46.111427, 37.461830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092224, 0.291469, -0.952124,
		0.804948, 0.541037, 0.243593,
		0.586135, -0.788875, -0.184721,
		39.980995, 45.874763, 37.406414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811012, 46.640007, 36.822186>,  <39.570698, 46.426979, 37.535717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811012, 46.640007, 36.822186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946556, 46.266098, 36.864861>,  <40.027882, 46.041752, 36.890465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946556, 46.266098, 36.864861>,  <39.811012, 46.640007, 36.822186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946556, 46.266098, 36.864861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340445, 0.016115, -0.940126,
		0.877081, 0.354892, 0.323698,
		0.338860, -0.934768, 0.106687,
		40.048214, 45.985668, 36.896866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568951, 46.616768, 36.644543>,  <39.811012, 46.640007, 36.822186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568951, 46.616768, 36.644543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417557, 46.248863, 36.603012>,  <40.326721, 46.028118, 36.578094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417557, 46.248863, 36.603012>,  <40.568951, 46.616768, 36.644543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417557, 46.248863, 36.603012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438938, -0.079593, -0.894985,
		0.814913, -0.384312, 0.433845,
		-0.378484, -0.919766, -0.103828,
		40.304012, 45.972935, 36.571865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013596, 46.397522, 36.227741>,  <40.568951, 46.616768, 36.644543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013596, 46.397522, 36.227741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726120, 46.119469, 36.221115>,  <40.553635, 45.952637, 36.217140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726120, 46.119469, 36.221115>,  <41.013596, 46.397522, 36.227741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726120, 46.119469, 36.221115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215388, -0.199909, -0.955847,
		0.661132, -0.690524, 0.293396,
		-0.718688, -0.695135, -0.016564,
		40.510513, 45.910927, 36.216145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346478, 45.911819, 35.984730>,  <41.013596, 46.397522, 36.227741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346478, 45.911819, 35.984730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.967125, 45.826962, 35.890430>,  <40.739513, 45.776047, 35.833851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.967125, 45.826962, 35.890430>,  <41.346478, 45.911819, 35.984730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967125, 45.826962, 35.890430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261273, -0.101274, -0.959937,
		0.179769, -0.971977, 0.151473,
		-0.948377, -0.212142, -0.235746,
		40.682613, 45.763321, 35.819706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385254, 45.341637, 35.490864>,  <41.346478, 45.911819, 35.984730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385254, 45.341637, 35.490864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037132, 45.534298, 35.449711>,  <40.828259, 45.649895, 35.425018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037132, 45.534298, 35.449711>,  <41.385254, 45.341637, 35.490864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037132, 45.534298, 35.449711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082211, -0.063902, -0.994564,
		-0.485606, -0.874031, 0.016018,
		-0.870303, 0.481649, -0.102886,
		40.776043, 45.678791, 35.418846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125576, 44.953510, 34.899097>,  <41.385254, 45.341637, 35.490864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125576, 44.953510, 34.899097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943672, 45.309544, 34.911476>,  <40.834530, 45.523163, 34.918903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943672, 45.309544, 34.911476>,  <41.125576, 44.953510, 34.899097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943672, 45.309544, 34.911476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035155, 0.052658, -0.997994,
		-0.889922, -0.452755, -0.055238,
		-0.454755, 0.890079, 0.030945,
		40.807247, 45.576569, 34.920761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908195, 45.102081, 34.273815>,  <41.125576, 44.953510, 34.899097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908195, 45.102081, 34.273815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856148, 45.472359, 34.415890>,  <40.824921, 45.694527, 34.501137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856148, 45.472359, 34.415890>,  <40.908195, 45.102081, 34.273815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856148, 45.472359, 34.415890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425604, 0.375699, -0.823233,
		-0.895506, 0.044053, -0.442864,
		-0.130117, 0.925694, 0.355190,
		40.817112, 45.750069, 34.522446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726017, 45.438236, 33.723007>,  <40.908195, 45.102081, 34.273815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726017, 45.438236, 33.723007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872429, 45.717442, 33.969193>,  <40.960278, 45.884964, 34.116905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872429, 45.717442, 33.969193>,  <40.726017, 45.438236, 33.723007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872429, 45.717442, 33.969193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506721, 0.405225, -0.760938,
		-0.780548, 0.590395, -0.205374,
		0.366031, 0.698016, 0.615463,
		40.982239, 45.926846, 34.153831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547283, 46.012871, 33.342175>,  <40.726017, 45.438236, 33.723007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547283, 46.012871, 33.342175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812553, 46.157928, 33.604069>,  <40.971714, 46.244965, 33.761208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812553, 46.157928, 33.604069>,  <40.547283, 46.012871, 33.342175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812553, 46.157928, 33.604069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514799, 0.413986, -0.750731,
		-0.543305, 0.834926, 0.087854,
		0.663175, 0.362649, 0.654740,
		41.011505, 46.266724, 33.800491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668480, 46.671288, 33.241192>,  <40.547283, 46.012871, 33.342175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668480, 46.671288, 33.241192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993904, 46.562988, 33.447033>,  <41.189159, 46.498009, 33.570538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993904, 46.562988, 33.447033>,  <40.668480, 46.671288, 33.241192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993904, 46.562988, 33.447033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581474, 0.374368, -0.722313,
		0.002913, 0.886873, 0.462003,
		0.813560, -0.270747, 0.514603,
		41.237972, 46.481766, 33.601414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086094, 47.281921, 33.316181>,  <40.668480, 46.671288, 33.241192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086094, 47.281921, 33.316181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321999, 46.965103, 33.379230>,  <41.463539, 46.775013, 33.417061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321999, 46.965103, 33.379230>,  <41.086094, 47.281921, 33.316181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321999, 46.965103, 33.379230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657566, 0.357663, -0.663086,
		0.468819, 0.494709, 0.731759,
		0.589758, -0.792048, 0.157625,
		41.498924, 46.727489, 33.426517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<43.279873, 44.326881, 31.854185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.051392, 44.581345, 32.061661>,  <42.914303, 44.734020, 32.186146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.051392, 44.581345, 32.061661>,  <43.279873, 44.326881, 31.854185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051392, 44.581345, 32.061661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471657, -0.262795, 0.841711,
		0.671767, 0.725429, -0.149938,
		-0.571199, 0.636154, 0.518691,
		42.880032, 44.772190, 32.217270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623177, 44.898579, 32.138615>,  <43.279873, 44.326881, 31.854185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623177, 44.898579, 32.138615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.308067, 44.860855, 32.382095>,  <43.119003, 44.838223, 32.528183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.308067, 44.860855, 32.382095>,  <43.623177, 44.898579, 32.138615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308067, 44.860855, 32.382095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604893, 0.068069, 0.793392,
		-0.116259, 0.993213, 0.003424,
		-0.787774, -0.094310, 0.608701,
		43.071735, 44.832561, 32.564705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764671, 45.430367, 32.596706>,  <43.623177, 44.898579, 32.138615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764671, 45.430367, 32.596706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.499527, 45.182457, 32.764751>,  <43.340439, 45.033710, 32.865578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.499527, 45.182457, 32.764751>,  <43.764671, 45.430367, 32.596706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499527, 45.182457, 32.764751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561757, -0.040699, 0.826300,
		-0.495021, 0.783725, 0.375140,
		-0.662860, -0.619773, 0.420116,
		43.300671, 44.996525, 32.890785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675514, 45.766193, 33.204609>,  <43.764671, 45.430367, 32.596706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675514, 45.766193, 33.204609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.542473, 45.391212, 33.245724>,  <43.462650, 45.166225, 33.270393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.542473, 45.391212, 33.245724>,  <43.675514, 45.766193, 33.204609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542473, 45.391212, 33.245724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355642, -0.023739, 0.934321,
		-0.873439, 0.347308, 0.341292,
		-0.332599, -0.937450, 0.102783,
		43.442692, 45.109978, 33.276558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443268, 45.862934, 33.901321>,  <43.675514, 45.766193, 33.204609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443268, 45.862934, 33.901321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.476280, 45.474182, 33.813103>,  <43.496090, 45.240932, 33.760170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.476280, 45.474182, 33.813103>,  <43.443268, 45.862934, 33.901321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476280, 45.474182, 33.813103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229358, -0.196838, 0.953231,
		-0.969837, -0.129257, 0.206662,
		0.082533, -0.971878, -0.220547,
		43.501041, 45.182617, 33.746937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998772, 45.576519, 34.373802>,  <43.443268, 45.862934, 33.901321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998772, 45.576519, 34.373802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.265068, 45.295151, 34.274204>,  <43.424847, 45.126331, 34.214447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.265068, 45.295151, 34.274204>,  <42.998772, 45.576519, 34.373802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265068, 45.295151, 34.274204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148270, -0.202330, 0.968028,
		-0.731308, -0.681370, -0.030403,
		0.665737, -0.703419, -0.248993,
		43.464790, 45.084126, 34.199505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934719, 44.940479, 34.860256>,  <42.998772, 45.576519, 34.373802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934719, 44.940479, 34.860256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.300140, 44.885021, 34.707310>,  <43.519394, 44.851746, 34.615543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.300140, 44.885021, 34.707310>,  <42.934719, 44.940479, 34.860256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300140, 44.885021, 34.707310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339137, -0.259306, 0.904293,
		-0.224526, -0.955792, -0.189869,
		0.913550, -0.138646, -0.382365,
		43.574207, 44.843426, 34.592602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130188, 44.323696, 35.019909>,  <42.934719, 44.940479, 34.860256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130188, 44.323696, 35.019909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.466103, 44.533882, 34.965279>,  <43.667652, 44.659992, 34.932503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.466103, 44.533882, 34.965279>,  <43.130188, 44.323696, 35.019909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466103, 44.533882, 34.965279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431630, -0.493586, 0.755029,
		0.329330, -0.693010, -0.641311,
		0.839784, 0.525462, -0.136571,
		43.718037, 44.691521, 34.924309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609524, 43.818913, 35.077023>,  <43.130188, 44.323696, 35.019909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609524, 43.818913, 35.077023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.810852, 44.160072, 35.132488>,  <43.931648, 44.364769, 35.165768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.810852, 44.160072, 35.132488>,  <43.609524, 43.818913, 35.077023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810852, 44.160072, 35.132488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508807, -0.422226, 0.750227,
		0.698418, -0.307050, -0.646477,
		0.503317, 0.852904, 0.138661,
		43.961845, 44.415943, 35.174088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345509, 43.611752, 35.170650>,  <43.609524, 43.818913, 35.077023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345509, 43.611752, 35.170650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.291725, 43.973240, 35.333229>,  <44.259453, 44.190132, 35.430775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.291725, 43.973240, 35.333229>,  <44.345509, 43.611752, 35.170650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291725, 43.973240, 35.333229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295960, -0.354824, 0.886852,
		0.945689, 0.239542, -0.219756,
		-0.134463, 0.903725, 0.406448,
		44.251385, 44.244358, 35.455162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904060, 43.677448, 35.649815>,  <44.345509, 43.611752, 35.170650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904060, 43.677448, 35.649815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.663879, 43.976673, 35.762852>,  <44.519772, 44.156208, 35.830673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.663879, 43.976673, 35.762852>,  <44.904060, 43.677448, 35.649815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663879, 43.976673, 35.762852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343346, -0.077976, 0.935967,
		0.722198, 0.659030, -0.210023,
		-0.600453, 0.748064, 0.282589,
		44.483742, 44.201092, 35.847630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.210365, 43.901314, 36.176220>,  <44.904060, 43.677448, 35.649815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.210365, 43.901314, 36.176220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.842636, 44.052681, 36.219387>,  <44.621998, 44.143501, 36.245289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.842636, 44.052681, 36.219387>,  <45.210365, 43.901314, 36.176220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842636, 44.052681, 36.219387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149142, 0.081276, 0.985470,
		0.364148, 0.922060, -0.131157,
		-0.919322, 0.378418, 0.107921,
		44.566841, 44.166206, 36.251762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254429, 44.427868, 36.630322>,  <45.210365, 43.901314, 36.176220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.254429, 44.427868, 36.630322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.865906, 44.334843, 36.650227>,  <44.632793, 44.279030, 36.662170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.865906, 44.334843, 36.650227>,  <45.254429, 44.427868, 36.630322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865906, 44.334843, 36.650227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035571, 0.064835, 0.997262,
		-0.235150, 0.970418, -0.054702,
		-0.971308, -0.232561, 0.049765,
		44.574512, 44.265076, 36.665157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.897247, 44.891083, 37.152031>,  <45.254429, 44.427868, 36.630322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.897247, 44.891083, 37.152031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.683601, 44.555523, 37.110146>,  <44.555416, 44.354187, 37.085014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.683601, 44.555523, 37.110146>,  <44.897247, 44.891083, 37.152031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683601, 44.555523, 37.110146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095236, -0.182775, 0.978531,
		-0.840032, 0.512674, 0.177516,
		-0.534113, -0.838903, -0.104712,
		44.523369, 44.303852, 37.078732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443291, 44.953186, 37.592209>,  <44.897247, 44.891083, 37.152031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443291, 44.953186, 37.592209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.439636, 44.559235, 37.523010>,  <44.437443, 44.322865, 37.481491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.439636, 44.559235, 37.523010>,  <44.443291, 44.953186, 37.592209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439636, 44.559235, 37.523010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052951, -0.173234, 0.983456,
		-0.998555, -0.000171, 0.053734,
		-0.009140, -0.984881, -0.172993,
		44.436893, 44.263771, 37.471111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956722, 44.754124, 37.964672>,  <44.443291, 44.953186, 37.592209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956722, 44.754124, 37.964672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.177734, 44.425163, 37.910450>,  <44.310341, 44.227787, 37.877918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.177734, 44.425163, 37.910450>,  <43.956722, 44.754124, 37.964672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177734, 44.425163, 37.910450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009475, -0.156427, 0.987644,
		-0.833441, -0.546985, -0.078637,
		0.552527, -0.822398, -0.135555,
		44.343494, 44.178444, 37.869781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799641, 44.240826, 38.565327>,  <43.956722, 44.754124, 37.964672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799641, 44.240826, 38.565327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.150101, 44.132675, 38.405697>,  <44.360378, 44.067787, 38.309921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.150101, 44.132675, 38.405697>,  <43.799641, 44.240826, 38.565327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150101, 44.132675, 38.405697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358346, -0.188400, 0.914381,
		-0.322410, -0.944142, -0.068179,
		0.876151, -0.270374, -0.399072,
		44.412945, 44.051563, 38.285976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929066, 43.482170, 38.776741>,  <43.799641, 44.240826, 38.565327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929066, 43.482170, 38.776741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.276093, 43.660599, 38.688782>,  <44.484306, 43.767654, 38.636005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.276093, 43.660599, 38.688782>,  <43.929066, 43.482170, 38.776741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276093, 43.660599, 38.688782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283287, -0.079825, 0.955707,
		0.408756, -0.891433, -0.195618,
		0.867564, 0.446067, -0.219902,
		44.536362, 43.794418, 38.622810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357201, 43.168755, 39.096153>,  <43.929066, 43.482170, 38.776741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357201, 43.168755, 39.096153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.578270, 43.493900, 39.022602>,  <44.710911, 43.688988, 38.978470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.578270, 43.493900, 39.022602>,  <44.357201, 43.168755, 39.096153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578270, 43.493900, 39.022602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349349, -0.025644, 0.936642,
		0.756646, -0.581891, -0.298145,
		0.552669, 0.812863, -0.183879,
		44.744072, 43.737759, 38.967438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918354, 42.952370, 39.314346>,  <44.357201, 43.168755, 39.096153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918354, 42.952370, 39.314346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.946312, 43.351345, 39.308155>,  <44.963089, 43.590729, 39.304440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.946312, 43.351345, 39.308155>,  <44.918354, 42.952370, 39.314346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.946312, 43.351345, 39.308155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399373, -0.013763, 0.916685,
		0.914120, -0.070254, -0.399310,
		0.069897, 0.997434, -0.015476,
		44.967281, 43.650574, 39.303513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583683, 43.080704, 39.636703>,  <44.918354, 42.952370, 39.314346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583683, 43.080704, 39.636703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.376030, 43.422550, 39.641243>,  <45.251438, 43.627659, 39.643967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.376030, 43.422550, 39.641243>,  <45.583683, 43.080704, 39.636703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376030, 43.422550, 39.641243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050072, 0.017153, 0.998598,
		0.853228, 0.518969, -0.051697,
		-0.519128, 0.854621, 0.011350,
		45.220291, 43.678936, 39.644650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898335, 43.481369, 40.026161>,  <45.583683, 43.080704, 39.636703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898335, 43.481369, 40.026161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.527039, 43.627586, 40.053741>,  <45.304260, 43.715317, 40.070290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.527039, 43.627586, 40.053741>,  <45.898335, 43.481369, 40.026161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527039, 43.627586, 40.053741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141528, 0.175624, 0.974231,
		0.344011, 0.914077, -0.214755,
		-0.928238, 0.365540, 0.068950,
		45.248566, 43.737247, 40.074425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.999889, 44.212128, 40.397221>,  <45.898335, 43.481369, 40.026161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.999889, 44.212128, 40.397221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.602234, 44.176186, 40.421291>,  <45.363640, 44.154621, 40.435734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.602234, 44.176186, 40.421291>,  <45.999889, 44.212128, 40.397221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602234, 44.176186, 40.421291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039828, 0.213134, 0.976211,
		-0.100545, 0.972882, -0.208305,
		-0.994135, -0.089856, 0.060178,
		45.303993, 44.149227, 40.439346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747322, 44.660122, 40.885723>,  <45.999889, 44.212128, 40.397221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747322, 44.660122, 40.885723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.495789, 44.349663, 40.867134>,  <45.344868, 44.163387, 40.855980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.495789, 44.349663, 40.867134>,  <45.747322, 44.660122, 40.885723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495789, 44.349663, 40.867134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068426, -0.114784, 0.991031,
		-0.774520, 0.620018, 0.125289,
		-0.628838, -0.776146, -0.046477,
		45.307137, 44.116817, 40.853191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353386, 44.777893, 41.398647>,  <45.747322, 44.660122, 40.885723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353386, 44.777893, 41.398647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.249367, 44.398926, 41.324059>,  <45.186954, 44.171547, 41.279305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.249367, 44.398926, 41.324059>,  <45.353386, 44.777893, 41.398647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249367, 44.398926, 41.324059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331937, -0.093631, 0.938643,
		-0.906748, 0.305991, -0.290134,
		-0.260051, -0.947419, -0.186469,
		45.171352, 44.114700, 41.268116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689671, 44.713814, 41.567768>,  <45.353386, 44.777893, 41.398647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689671, 44.713814, 41.567768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.799606, 44.329227, 41.564903>,  <44.865570, 44.098476, 41.563187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.799606, 44.329227, 41.564903>,  <44.689671, 44.713814, 41.567768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799606, 44.329227, 41.564903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291709, -0.090477, 0.952218,
		-0.916170, -0.259620, -0.305335,
		0.274841, -0.961463, -0.007158,
		44.882057, 44.040787, 41.562756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107414, 44.274353, 41.982239>,  <44.689671, 44.713814, 41.567768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107414, 44.274353, 41.982239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.460907, 44.087154, 41.981682>,  <44.673000, 43.974834, 41.981346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.460907, 44.087154, 41.981682>,  <44.107414, 44.274353, 41.982239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460907, 44.087154, 41.981682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132240, -0.252567, 0.958500,
		-0.448929, -0.846869, -0.285089,
		0.883728, -0.467999, -0.001394,
		44.726025, 43.946754, 41.981262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.987011, 43.590069, 42.293152>,  <44.107414, 44.274353, 41.982239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.987011, 43.590069, 42.293152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.380959, 43.641293, 42.339870>,  <44.617325, 43.672028, 42.367901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.380959, 43.641293, 42.339870>,  <43.987011, 43.590069, 42.293152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380959, 43.641293, 42.339870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030938, -0.533163, 0.845447,
		0.170542, -0.836264, -0.521131,
		0.984865, 0.128061, 0.116799,
		44.676418, 43.679710, 42.374908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.153404, 43.010078, 42.668755>,  <43.987011, 43.590069, 42.293152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.153404, 43.010078, 42.668755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.469162, 43.244209, 42.742783>,  <44.658615, 43.384689, 42.787197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.469162, 43.244209, 42.742783>,  <44.153404, 43.010078, 42.668755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469162, 43.244209, 42.742783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009323, -0.312863, 0.949753,
		0.613821, -0.748000, -0.252428,
		0.789390, 0.585331, 0.185068,
		44.705978, 43.419807, 42.798302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685650, 42.587704, 42.957375>,  <44.153404, 43.010078, 42.668755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685650, 42.587704, 42.957375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.785065, 42.961941, 43.057693>,  <44.844715, 43.186481, 43.117886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.785065, 42.961941, 43.057693>,  <44.685650, 42.587704, 42.957375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785065, 42.961941, 43.057693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141119, -0.291137, 0.946216,
		0.958287, -0.199780, -0.204388,
		0.248540, 0.935589, 0.250800,
		44.859627, 43.242619, 43.132935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241043, 42.500313, 43.396908>,  <44.685650, 42.587704, 42.957375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241043, 42.500313, 43.396908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.117363, 42.870731, 43.483475>,  <45.043156, 43.092983, 43.535416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.117363, 42.870731, 43.483475>,  <45.241043, 42.500313, 43.396908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117363, 42.870731, 43.483475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041857, -0.214095, 0.975915,
		0.950074, 0.310815, 0.027438,
		-0.309204, 0.926044, 0.216416,
		45.024601, 43.148544, 43.548401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750916, 42.732033, 43.799561>,  <45.241043, 42.500313, 43.396908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750916, 42.732033, 43.799561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.490410, 43.021076, 43.892242>,  <45.334106, 43.194504, 43.947853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.490410, 43.021076, 43.892242>,  <45.750916, 42.732033, 43.799561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490410, 43.021076, 43.892242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390456, 0.057275, 0.918838,
		0.650690, 0.688880, -0.319448,
		-0.651266, 0.722609, 0.231709,
		45.295029, 43.237858, 43.961754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.081268, 43.359447, 44.077900>,  <45.750916, 42.732033, 43.799561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.081268, 43.359447, 44.077900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.706802, 43.378845, 44.217178>,  <45.482121, 43.390484, 44.300743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.706802, 43.378845, 44.217178>,  <46.081268, 43.359447, 44.077900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.706802, 43.378845, 44.217178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347925, -0.014148, 0.937416,
		0.050388, 0.998723, -0.003628,
		-0.936168, 0.048497, 0.348193,
		45.425953, 43.393394, 44.321636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943573, 44.009895, 44.522446>,  <46.081268, 43.359447, 44.077900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943573, 44.009895, 44.522446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.676994, 43.732723, 44.632500>,  <45.517048, 43.566422, 44.698532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.676994, 43.732723, 44.632500>,  <45.943573, 44.009895, 44.522446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676994, 43.732723, 44.632500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278869, 0.110566, 0.953943,
		-0.691437, 0.712477, 0.119551,
		-0.666444, -0.692930, 0.275137,
		45.477062, 43.524845, 44.715042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664165, 44.216167, 45.074577>,  <45.943573, 44.009895, 44.522446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664165, 44.216167, 45.074577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.533028, 43.839138, 45.100113>,  <45.454346, 43.612923, 45.115433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.533028, 43.839138, 45.100113>,  <45.664165, 44.216167, 45.074577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533028, 43.839138, 45.100113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146758, 0.015941, 0.989044,
		-0.933262, 0.333625, 0.133103,
		-0.327848, -0.942571, 0.063839,
		45.434673, 43.556366, 45.119267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259865, 44.221661, 45.614922>,  <45.664165, 44.216167, 45.074577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259865, 44.221661, 45.614922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.313179, 43.827568, 45.571915>,  <45.345165, 43.591114, 45.546112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.313179, 43.827568, 45.571915>,  <45.259865, 44.221661, 45.614922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313179, 43.827568, 45.571915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181609, -0.082366, 0.979915,
		-0.974296, -0.150132, 0.167948,
		0.133284, -0.985229, -0.107514,
		45.353165, 43.531998, 45.539661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699345, 43.838436, 46.025341>,  <45.259865, 44.221661, 45.614922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699345, 43.838436, 46.025341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.025108, 43.611847, 45.974998>,  <45.220566, 43.475891, 45.944794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.025108, 43.611847, 45.974998>,  <44.699345, 43.838436, 46.025341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025108, 43.611847, 45.974998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228346, 0.113461, 0.966946,
		-0.533472, -0.816230, 0.221756,
		0.814411, -0.566476, -0.125855,
		45.269432, 43.441906, 45.937241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568794, 43.359978, 46.516537>,  <44.699345, 43.838436, 46.025341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568794, 43.359978, 46.516537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.958641, 43.339714, 46.429310>,  <45.192551, 43.327557, 46.376972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.958641, 43.339714, 46.429310>,  <44.568794, 43.359978, 46.516537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.958641, 43.339714, 46.429310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214789, -0.063137, 0.974617,
		-0.063137, -0.996718, -0.050655,
		-0.974617, 0.050655, 0.218071,
		45.251026, 43.324516, 46.363888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821812, 42.930191, 46.915840>,  <44.568794, 43.359978, 46.516537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821812, 42.930191, 46.915840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.160858, 43.114090, 46.809875>,  <45.364285, 43.224430, 46.746296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.160858, 43.114090, 46.809875>,  <44.821812, 42.930191, 46.915840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160858, 43.114090, 46.809875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349786, -0.108728, 0.930499,
		0.398991, -0.881369, -0.252973,
		0.847618, 0.459748, -0.264909,
		45.415142, 43.252014, 46.730404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.395893, 42.756924, 47.428288>,  <44.821812, 42.930191, 46.915840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.395893, 42.756924, 47.428288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.557610, 43.070293, 47.239483>,  <45.654640, 43.258316, 47.126202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.557610, 43.070293, 47.239483>,  <45.395893, 42.756924, 47.428288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557610, 43.070293, 47.239483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367296, 0.333561, 0.868235,
		0.837639, -0.524390, -0.152891,
		0.404295, 0.783423, -0.472010,
		45.678898, 43.305321, 47.097881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.973019, 42.771667, 47.688351>,  <45.395893, 42.756924, 47.428288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.973019, 42.771667, 47.688351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.911812, 43.139027, 47.542404>,  <45.875088, 43.359444, 47.454834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.911812, 43.139027, 47.542404>,  <45.973019, 42.771667, 47.688351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911812, 43.139027, 47.542404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349511, 0.395647, 0.849297,
		0.924353, 0.002431, -0.381531,
		-0.153017, 0.918399, -0.364868,
		45.865906, 43.414547, 47.432945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.609566, 43.167595, 47.711792>,  <45.973019, 42.771667, 47.688351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.609566, 43.167595, 47.711792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.318291, 43.440979, 47.691307>,  <46.143524, 43.605011, 47.679016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.318291, 43.440979, 47.691307>,  <46.609566, 43.167595, 47.711792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.318291, 43.440979, 47.691307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410207, 0.494467, 0.766311,
		0.549065, 0.537012, -0.640425,
		-0.728188, 0.683462, -0.051208,
		46.099834, 43.646019, 47.675945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.913486, 43.836296, 47.919697>,  <46.609566, 43.167595, 47.711792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.913486, 43.836296, 47.919697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.530174, 43.946156, 47.951366>,  <46.300186, 44.012070, 47.970367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.530174, 43.946156, 47.951366>,  <46.913486, 43.836296, 47.919697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.530174, 43.946156, 47.951366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196703, 0.432691, 0.879822,
		0.207383, 0.858690, -0.468663,
		-0.958280, 0.274647, 0.079174,
		46.242691, 44.028549, 47.975117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.924229, 44.513367, 48.129829>,  <46.913486, 43.836296, 47.919697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.924229, 44.513367, 48.129829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.569221, 44.377678, 48.254562>,  <46.356216, 44.296265, 48.329403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.569221, 44.377678, 48.254562>,  <46.924229, 44.513367, 48.129829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569221, 44.377678, 48.254562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196399, 0.333713, 0.921989,
		-0.416818, 0.879527, -0.229555,
		-0.887519, -0.339217, 0.311835,
		46.302967, 44.275913, 48.348114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.478481, 45.049625, 48.418121>,  <46.924229, 44.513367, 48.129829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.478481, 45.049625, 48.418121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.313614, 44.720886, 48.575436>,  <46.214691, 44.523643, 48.669823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.313614, 44.720886, 48.575436>,  <46.478481, 45.049625, 48.418121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.313614, 44.720886, 48.575436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013142, 0.436973, 0.899378,
		-0.911011, 0.365530, -0.190909,
		-0.412172, -0.821853, 0.393284,
		46.189960, 44.474331, 48.693420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004044, 45.262524, 48.791813>,  <46.478481, 45.049625, 48.418121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004044, 45.262524, 48.791813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.019989, 44.893845, 48.946152>,  <46.029556, 44.672638, 49.038757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.019989, 44.893845, 48.946152>,  <46.004044, 45.262524, 48.791813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019989, 44.893845, 48.946152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161680, 0.375120, 0.912768,
		-0.986038, -0.098771, -0.134066,
		0.039864, -0.921699, 0.385852,
		46.031948, 44.617336, 49.061909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377228, 45.240105, 49.252026>,  <46.004044, 45.262524, 48.791813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377228, 45.240105, 49.252026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.629814, 44.958000, 49.380928>,  <45.781368, 44.788738, 49.458271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.629814, 44.958000, 49.380928>,  <45.377228, 45.240105, 49.252026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629814, 44.958000, 49.380928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254163, 0.204382, 0.945319,
		-0.732562, -0.678847, -0.050190,
		0.631469, -0.705262, 0.322260,
		45.819256, 44.746422, 49.477608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978840, 44.825890, 49.764168>,  <45.377228, 45.240105, 49.252026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978840, 44.825890, 49.764168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.356766, 44.715286, 49.834442>,  <45.583523, 44.648926, 49.876606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.356766, 44.715286, 49.834442>,  <44.978840, 44.825890, 49.764168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356766, 44.715286, 49.834442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113093, 0.228019, 0.967066,
		-0.307461, -0.933569, 0.184165,
		0.944816, -0.276507, 0.175687,
		45.640209, 44.632336, 49.887150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001762, 44.386562, 50.298485>,  <44.978840, 44.825890, 49.764168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.001762, 44.386562, 50.298485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.358620, 44.566467, 50.281548>,  <45.572735, 44.674408, 50.271385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.358620, 44.566467, 50.281548>,  <45.001762, 44.386562, 50.298485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358620, 44.566467, 50.281548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100653, 0.289281, 0.951938,
		0.440394, -0.845004, 0.303350,
		0.892144, 0.449760, -0.042346,
		45.626263, 44.701397, 50.268845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253765, 44.385826, 51.102875>,  <45.001762, 44.386562, 50.298485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253765, 44.385826, 51.102875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.489082, 44.640633, 50.903625>,  <45.630272, 44.793518, 50.784077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.489082, 44.640633, 50.903625>,  <45.253765, 44.385826, 51.102875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.489082, 44.640633, 50.903625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112013, 0.674249, 0.729960,
		0.800855, -0.373631, 0.468007,
		0.588289, 0.637015, -0.498125,
		45.665569, 44.831738, 50.754189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.798492, 44.518711, 51.485989>,  <45.253765, 44.385826, 51.102875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.798492, 44.518711, 51.485989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.759079, 44.843002, 51.255161>,  <45.735432, 45.037579, 51.116665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.759079, 44.843002, 51.255161>,  <45.798492, 44.518711, 51.485989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759079, 44.843002, 51.255161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018162, 0.578333, 0.815598,
		0.994968, 0.090844, -0.042260,
		-0.098532, 0.810727, -0.577073,
		45.729519, 45.086220, 51.082039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.298977, 45.042973, 51.773201>,  <45.798492, 44.518711, 51.485989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.298977, 45.042973, 51.773201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.060806, 45.278133, 51.554173>,  <45.917904, 45.419231, 51.422756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.060806, 45.278133, 51.554173>,  <46.298977, 45.042973, 51.773201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060806, 45.278133, 51.554173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016610, 0.672406, 0.739996,
		0.803237, 0.449709, -0.390604,
		-0.595428, 0.587904, -0.547571,
		45.882179, 45.454506, 51.389900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.525410, 45.680237, 51.885334>,  <46.298977, 45.042973, 51.773201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.525410, 45.680237, 51.885334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.155746, 45.738594, 51.744110>,  <45.933949, 45.773609, 51.659374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.155746, 45.738594, 51.744110>,  <46.525410, 45.680237, 51.885334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.155746, 45.738594, 51.744110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133784, 0.742079, 0.656826,
		0.357822, 0.654244, -0.666280,
		-0.924157, 0.145889, -0.353059,
		45.878498, 45.782360, 51.638191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515949, 46.350468, 51.735603>,  <46.525410, 45.680237, 51.885334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515949, 46.350468, 51.735603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.139122, 46.238937, 51.810184>,  <45.913025, 46.172020, 51.854931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.139122, 46.238937, 51.810184>,  <46.515949, 46.350468, 51.735603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.139122, 46.238937, 51.810184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080032, 0.726669, 0.682310,
		-0.325729, 0.627862, -0.706887,
		-0.942070, -0.278822, 0.186448,
		45.856503, 46.155293, 51.866119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.168133, 47.026428, 51.866570>,  <46.515949, 46.350468, 51.735603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.168133, 47.026428, 51.866570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.901016, 46.756851, 51.992970>,  <45.740746, 46.595104, 52.068810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.901016, 46.756851, 51.992970>,  <46.168133, 47.026428, 51.866570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901016, 46.756851, 51.992970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324864, 0.645845, 0.690903,
		-0.669719, 0.358719, -0.650228,
		-0.667787, -0.673947, 0.316000,
		45.700680, 46.554668, 52.087769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468197, 47.339802, 51.958469>,  <46.168133, 47.026428, 51.866570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468197, 47.339802, 51.958469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.494934, 47.015320, 52.190842>,  <45.510979, 46.820629, 52.330265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.494934, 47.015320, 52.190842>,  <45.468197, 47.339802, 51.958469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.494934, 47.015320, 52.190842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416834, 0.506282, 0.754935,
		-0.906521, -0.292614, -0.304296,
		0.066844, -0.811206, 0.580927,
		45.514988, 46.771957, 52.365120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798946, 47.228092, 52.136368>,  <45.468197, 47.339802, 51.958469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798946, 47.228092, 52.136368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.030983, 47.064651, 52.418228>,  <45.170204, 46.966587, 52.587345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.030983, 47.064651, 52.418228>,  <44.798946, 47.228092, 52.136368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030983, 47.064651, 52.418228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520329, 0.479692, 0.706508,
		-0.626698, -0.776491, 0.065657,
		0.580093, -0.408604, 0.704653,
		45.205009, 46.942070, 52.629623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415405, 47.279060, 52.739864>,  <44.798946, 47.228092, 52.136368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415405, 47.279060, 52.739864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.754768, 47.152855, 52.909878>,  <44.958385, 47.077129, 53.011887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.754768, 47.152855, 52.909878>,  <44.415405, 47.279060, 52.739864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754768, 47.152855, 52.909878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102599, 0.689701, 0.716789,
		-0.519303, -0.651738, 0.552777,
		0.848409, -0.315516, 0.425031,
		45.009293, 47.058201, 53.037388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196251, 47.228500, 53.433014>,  <44.415405, 47.279060, 52.739864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196251, 47.228500, 53.433014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.595139, 47.256790, 53.442360>,  <44.834473, 47.273766, 53.447968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.595139, 47.256790, 53.442360>,  <44.196251, 47.228500, 53.433014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595139, 47.256790, 53.442360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060708, 0.590002, 0.805116,
		0.043160, -0.804298, 0.592657,
		0.997222, 0.070728, 0.023363,
		44.894306, 47.278008, 53.449368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.375950, 47.159790, 54.124119>,  <44.196251, 47.228500, 53.433014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.375950, 47.159790, 54.124119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.680443, 47.355499, 53.953880>,  <44.863140, 47.472923, 53.851738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.680443, 47.355499, 53.953880>,  <44.375950, 47.159790, 54.124119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680443, 47.355499, 53.953880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012570, 0.667314, 0.744671,
		0.648353, -0.561520, 0.514134,
		0.761236, 0.489272, -0.425597,
		44.908813, 47.502281, 53.826202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933590, 47.293797, 54.724857>,  <44.375950, 47.159790, 54.124119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933590, 47.293797, 54.724857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.963882, 47.561432, 54.429131>,  <44.982056, 47.722012, 54.251694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.963882, 47.561432, 54.429131>,  <44.933590, 47.293797, 54.724857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963882, 47.561432, 54.429131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008226, 0.740999, 0.671456,
		0.997094, -0.056930, 0.050611,
		0.075729, 0.669089, -0.739314,
		44.986603, 47.762157, 54.207336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.456490, 47.694668, 54.864197>,  <44.933590, 47.293797, 54.724857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.456490, 47.694668, 54.864197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.326424, 47.937256, 54.573967>,  <45.248383, 48.082809, 54.399830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.326424, 47.937256, 54.573967>,  <45.456490, 47.694668, 54.864197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326424, 47.937256, 54.573967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179719, 0.792920, 0.582219,
		0.928421, 0.058920, -0.366827,
		-0.325169, 0.606471, -0.725575,
		45.228874, 48.119198, 54.356293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.901386, 48.251671, 54.979599>,  <45.456490, 47.694668, 54.864197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.901386, 48.251671, 54.979599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.599304, 48.371483, 54.746376>,  <45.418056, 48.443371, 54.606441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.599304, 48.371483, 54.746376>,  <45.901386, 48.251671, 54.979599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.599304, 48.371483, 54.746376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216862, 0.953572, 0.208978,
		0.618581, 0.031378, -0.785095,
		-0.755201, 0.299527, -0.583056,
		45.372746, 48.461342, 54.571461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206470, 48.625736, 54.577087>,  <45.901386, 48.251671, 54.979599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206470, 48.625736, 54.577087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.821129, 48.728867, 54.606709>,  <45.589924, 48.790745, 54.624481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.821129, 48.728867, 54.606709>,  <46.206470, 48.625736, 54.577087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.821129, 48.728867, 54.606709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267744, 0.941102, 0.206494,
		-0.016452, 0.218753, -0.975641,
		-0.963350, 0.257825, 0.074052,
		45.532124, 48.806213, 54.628925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<44.243137, 49.058002, 54.690083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.635284, 48.999283, 54.637432>,  <44.870575, 48.964050, 54.605843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.635284, 48.999283, 54.637432>,  <44.243137, 49.058002, 54.690083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635284, 48.999283, 54.637432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193770, -0.840707, -0.505633,
		-0.036430, 0.521212, -0.852650,
		0.980370, -0.146797, -0.131622,
		44.929394, 48.955242, 54.597946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281025, 48.885036, 54.041618>,  <44.243137, 49.058002, 54.690083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281025, 48.885036, 54.041618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.647110, 48.785378, 54.168308>,  <44.866760, 48.725582, 54.244324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.647110, 48.785378, 54.168308>,  <44.281025, 48.885036, 54.041618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647110, 48.785378, 54.168308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042153, -0.722458, -0.690128,
		0.400767, 0.644963, -0.650699,
		0.915210, -0.249152, 0.316724,
		44.921673, 48.710632, 54.263325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662292, 48.878597, 53.469913>,  <44.281025, 48.885036, 54.041618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662292, 48.878597, 53.469913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.830544, 48.636093, 53.739883>,  <44.931496, 48.490593, 53.901867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.830544, 48.636093, 53.739883>,  <44.662292, 48.878597, 53.469913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830544, 48.636093, 53.739883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068900, -0.720441, -0.690085,
		0.904612, 0.336773, -0.261268,
		0.420630, -0.606258, 0.674923,
		44.956734, 48.454216, 53.942360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415741, 48.594578, 53.290184>,  <44.662292, 48.878597, 53.469913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415741, 48.594578, 53.290184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.276093, 48.344658, 53.569538>,  <45.192303, 48.194706, 53.737148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.276093, 48.344658, 53.569538>,  <45.415741, 48.594578, 53.290184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276093, 48.344658, 53.569538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171005, -0.775242, -0.608077,
		0.921342, -0.092866, 0.377498,
		-0.349122, -0.624801, 0.698382,
		45.171356, 48.157219, 53.779053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934914, 48.122959, 53.315647>,  <45.415741, 48.594578, 53.290184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934914, 48.122959, 53.315647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.611435, 47.944305, 53.468761>,  <45.417347, 47.837112, 53.560631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.611435, 47.944305, 53.468761>,  <45.934914, 48.122959, 53.315647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611435, 47.944305, 53.468761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213773, -0.829406, -0.516126,
		0.548005, -0.335561, 0.766218,
		-0.808697, -0.446637, 0.382785,
		45.368824, 47.810314, 53.583595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.197643, 47.518963, 53.505424>,  <45.934914, 48.122959, 53.315647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.197643, 47.518963, 53.505424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.803566, 47.460022, 53.470375>,  <45.567120, 47.424656, 53.449345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.803566, 47.460022, 53.470375>,  <46.197643, 47.518963, 53.505424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.803566, 47.460022, 53.470375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171411, -0.855846, -0.488002,
		-0.003082, -0.495797, 0.868433,
		-0.985195, -0.147355, -0.087623,
		45.508007, 47.415817, 53.444088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.173141, 46.804859, 53.591373>,  <46.197643, 47.518963, 53.505424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.173141, 46.804859, 53.591373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.830292, 46.896378, 53.406769>,  <45.624580, 46.951290, 53.296005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.830292, 46.896378, 53.406769>,  <46.173141, 46.804859, 53.591373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.830292, 46.896378, 53.406769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145468, -0.751958, -0.642960,
		-0.494144, -0.618231, 0.611238,
		-0.857124, 0.228799, -0.461508,
		45.573154, 46.965019, 53.268314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.713448, 46.118916, 53.466549>,  <46.173141, 46.804859, 53.591373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.713448, 46.118916, 53.466549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.605881, 46.390305, 53.193092>,  <45.541340, 46.553139, 53.029018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.605881, 46.390305, 53.193092>,  <45.713448, 46.118916, 53.466549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605881, 46.390305, 53.193092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065016, -0.720953, -0.689927,
		-0.960967, -0.141084, 0.237986,
		-0.268914, 0.678470, -0.683639,
		45.525208, 46.593845, 52.987999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.301727, 45.749107, 53.086002>,  <45.713448, 46.118916, 53.466549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.301727, 45.749107, 53.086002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.369827, 46.059563, 52.843143>,  <45.410686, 46.245834, 52.697430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.369827, 46.059563, 52.843143>,  <45.301727, 45.749107, 53.086002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369827, 46.059563, 52.843143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014601, -0.618059, -0.785996,
		-0.985292, 0.124954, -0.116560,
		0.170254, 0.776137, -0.607144,
		45.420902, 46.292404, 52.660999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821060, 45.743729, 52.540802>,  <45.301727, 45.749107, 53.086002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821060, 45.743729, 52.540802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.117622, 45.977802, 52.409424>,  <45.295559, 46.118248, 52.330597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.117622, 45.977802, 52.409424>,  <44.821060, 45.743729, 52.540802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117622, 45.977802, 52.409424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046202, -0.532791, -0.844985,
		-0.669464, 0.611303, -0.422051,
		0.741406, 0.585186, -0.328441,
		45.340046, 46.153358, 52.310890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602978, 45.804592, 51.907909>,  <44.821060, 45.743729, 52.540802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.602978, 45.804592, 51.907909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.985657, 45.920834, 51.914589>,  <45.215263, 45.990578, 51.918594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.985657, 45.920834, 51.914589>,  <44.602978, 45.804592, 51.907909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.985657, 45.920834, 51.914589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183734, -0.558386, -0.808979,
		-0.225770, 0.777016, -0.587600,
		0.956697, 0.290605, 0.016697,
		45.272667, 46.008015, 51.919598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732353, 45.987961, 51.208588>,  <44.602978, 45.804592, 51.907909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732353, 45.987961, 51.208588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.112648, 45.954369, 51.327950>,  <45.340824, 45.934216, 51.399567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.112648, 45.954369, 51.327950>,  <44.732353, 45.987961, 51.208588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112648, 45.954369, 51.327950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239926, -0.410208, -0.879867,
		0.196297, 0.908118, -0.369851,
		0.950738, -0.083978, 0.298404,
		45.397869, 45.929176, 51.417469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.095444, 46.167397, 50.646809>,  <44.732353, 45.987961, 51.208588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.095444, 46.167397, 50.646809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.334602, 45.941734, 50.874577>,  <45.478100, 45.806335, 51.011238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.334602, 45.941734, 50.874577>,  <45.095444, 46.167397, 50.646809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334602, 45.941734, 50.874577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340771, -0.464090, -0.817616,
		0.725528, 0.682895, -0.085230,
		0.597900, -0.564159, 0.569421,
		45.513973, 45.772488, 51.045403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908234, 46.156162, 50.334831>,  <45.095444, 46.167397, 50.646809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.908234, 46.156162, 50.334831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.851547, 45.825680, 50.552933>,  <45.817535, 45.627392, 50.683792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.851547, 45.825680, 50.552933>,  <45.908234, 46.156162, 50.334831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851547, 45.825680, 50.552933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403497, -0.551189, -0.730329,
		0.903940, 0.116511, 0.411482,
		-0.141713, -0.826205, 0.545254,
		45.809032, 45.577820, 50.716511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.371532, 45.714787, 50.074505>,  <45.908234, 46.156162, 50.334831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.371532, 45.714787, 50.074505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.153580, 45.446526, 50.275833>,  <46.022808, 45.285568, 50.396629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.153580, 45.446526, 50.275833>,  <46.371532, 45.714787, 50.074505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153580, 45.446526, 50.275833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262983, -0.706646, -0.656881,
		0.796205, -0.225560, 0.561409,
		-0.544883, -0.670653, 0.503317,
		45.990116, 45.245331, 50.426826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.832123, 45.187054, 50.295376>,  <46.371532, 45.714787, 50.074505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.832123, 45.187054, 50.295376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.467735, 45.022701, 50.280899>,  <46.249104, 44.924088, 50.272213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.467735, 45.022701, 50.280899>,  <46.832123, 45.187054, 50.295376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.467735, 45.022701, 50.280899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327811, -0.667944, -0.668124,
		0.250350, -0.620503, 0.743169,
		-0.910969, -0.410884, -0.036188,
		46.194443, 44.899437, 50.270042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.915390, 44.448853, 50.164253>,  <46.832123, 45.187054, 50.295376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.915390, 44.448853, 50.164253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.528976, 44.510612, 50.081375>,  <46.297127, 44.547668, 50.031647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.528976, 44.510612, 50.081375>,  <46.915390, 44.448853, 50.164253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.528976, 44.510612, 50.081375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123375, -0.428947, -0.894865,
		-0.227043, -0.890037, 0.395330,
		-0.966038, 0.154399, -0.207198,
		46.239166, 44.556931, 50.019215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.676472, 43.854023, 49.862907>,  <46.915390, 44.448853, 50.164253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.676472, 43.854023, 49.862907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.421600, 44.139191, 49.745781>,  <46.268677, 44.310291, 49.675507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.421600, 44.139191, 49.745781>,  <46.676472, 43.854023, 49.862907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.421600, 44.139191, 49.745781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049118, -0.416714, -0.907709,
		-0.769147, -0.563994, 0.300540,
		-0.637182, 0.712923, -0.292812,
		46.230446, 44.353069, 49.657936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220207, 43.447403, 49.547119>,  <46.676472, 43.854023, 49.862907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220207, 43.447403, 49.547119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.171799, 43.815800, 49.398994>,  <46.142754, 44.036839, 49.310120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.171799, 43.815800, 49.398994>,  <46.220207, 43.447403, 49.547119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171799, 43.815800, 49.398994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015966, -0.374813, -0.926963,
		-0.992521, -0.106274, 0.060066,
		-0.121026, 0.920989, -0.370313,
		46.135490, 44.092098, 49.287899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633568, 43.420467, 49.178959>,  <46.220207, 43.447403, 49.547119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633568, 43.420467, 49.178959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.814209, 43.742561, 49.025253>,  <45.922592, 43.935818, 48.933029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.814209, 43.742561, 49.025253>,  <45.633568, 43.420467, 49.178959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.814209, 43.742561, 49.025253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194328, -0.331570, -0.923200,
		-0.870799, 0.491594, 0.006741,
		0.451604, 0.805231, -0.384261,
		45.949692, 43.984131, 48.909973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191917, 43.755512, 48.790562>,  <45.633568, 43.420467, 49.178959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.191917, 43.755512, 48.790562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.536819, 43.896561, 48.645138>,  <45.743759, 43.981190, 48.557884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.536819, 43.896561, 48.645138>,  <45.191917, 43.755512, 48.790562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536819, 43.896561, 48.645138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343121, -0.121300, -0.931426,
		-0.372542, 0.927871, 0.016400,
		0.862253, 0.352622, -0.363561,
		45.795494, 44.002346, 48.536068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.011112, 44.149132, 48.196194>,  <45.191917, 43.755512, 48.790562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.011112, 44.149132, 48.196194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.401047, 44.101768, 48.120644>,  <45.635006, 44.073349, 48.075314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.401047, 44.101768, 48.120644>,  <45.011112, 44.149132, 48.196194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401047, 44.101768, 48.120644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210678, -0.212367, -0.954209,
		0.072879, 0.969989, -0.231969,
		0.974835, -0.118412, -0.188878,
		45.693497, 44.066246, 48.063980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099148, 44.471146, 47.559620>,  <45.011112, 44.149132, 48.196194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099148, 44.471146, 47.559620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.396942, 44.210495, 47.617760>,  <45.575619, 44.054104, 47.652641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.396942, 44.210495, 47.617760>,  <45.099148, 44.471146, 47.559620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.396942, 44.210495, 47.617760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076563, -0.299595, -0.950989,
		0.663231, 0.696872, -0.272935,
		0.744488, -0.651622, 0.145346,
		45.620289, 44.015007, 47.661362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732826, 44.666794, 47.198402>,  <45.099148, 44.471146, 47.559620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732826, 44.666794, 47.198402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.763100, 44.271969, 47.254944>,  <45.781261, 44.035072, 47.288868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.763100, 44.271969, 47.254944>,  <45.732826, 44.666794, 47.198402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763100, 44.271969, 47.254944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079043, -0.135376, -0.987636,
		0.993994, 0.085917, 0.067775,
		0.075680, -0.987062, 0.141354,
		45.785805, 43.975849, 47.297352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.184223, 44.442795, 46.673931>,  <45.732826, 44.666794, 47.198402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.184223, 44.442795, 46.673931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.013611, 44.101601, 46.794250>,  <45.911243, 43.896885, 46.866444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.013611, 44.101601, 46.794250>,  <46.184223, 44.442795, 46.673931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.013611, 44.101601, 46.794250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044130, -0.351802, -0.935034,
		0.903395, -0.385548, 0.187697,
		-0.426532, -0.852988, 0.300802,
		45.885651, 43.845703, 46.884491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.475433, 43.925358, 46.326550>,  <46.184223, 44.442795, 46.673931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.475433, 43.925358, 46.326550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.168968, 43.703846, 46.456974>,  <45.985088, 43.570938, 46.535229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.168968, 43.703846, 46.456974>,  <46.475433, 43.925358, 46.326550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168968, 43.703846, 46.456974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066595, -0.436224, -0.897370,
		0.639181, -0.709250, 0.297342,
		-0.766168, -0.553781, 0.326059,
		45.939117, 43.537712, 46.554790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.523560, 43.305378, 46.008961>,  <46.475433, 43.925358, 46.326550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.523560, 43.305378, 46.008961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.139999, 43.295918, 46.122059>,  <45.909863, 43.290241, 46.189919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.139999, 43.295918, 46.122059>,  <46.523560, 43.305378, 46.008961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.139999, 43.295918, 46.122059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254854, -0.366252, -0.894935,
		0.124720, -0.930215, 0.345174,
		-0.958903, -0.023648, 0.282748,
		45.852329, 43.288822, 46.206882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.304165, 42.656040, 45.747532>,  <46.523560, 43.305378, 46.008961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.304165, 42.656040, 45.747532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.989876, 42.893269, 45.817860>,  <45.801304, 43.035606, 45.860058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.989876, 42.893269, 45.817860>,  <46.304165, 42.656040, 45.747532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.989876, 42.893269, 45.817860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383062, -0.243315, -0.891101,
		-0.485707, -0.767505, 0.418360,
		-0.785718, 0.593071, 0.175822,
		45.754162, 43.071190, 45.870605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.775742, 42.243465, 45.496407>,  <46.304165, 42.656040, 45.747532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.775742, 42.243465, 45.496407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.614784, 42.608994, 45.518360>,  <45.518211, 42.828312, 45.531532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.614784, 42.608994, 45.518360>,  <45.775742, 42.243465, 45.496407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614784, 42.608994, 45.518360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393877, -0.118694, -0.911467,
		-0.826404, -0.388383, 0.407695,
		-0.402389, 0.913822, 0.054886,
		45.494068, 42.883141, 45.534824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.421627, 44.245918, 33.417679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.715034, 44.459473, 33.249432>,  <42.891079, 44.587605, 33.148483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.715034, 44.459473, 33.249432>,  <42.421627, 44.245918, 33.417679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715034, 44.459473, 33.249432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602259, 0.223719, -0.766312,
		-0.315023, 0.815423, 0.485639,
		0.733515, 0.533887, -0.420619,
		42.935089, 44.619640, 33.123245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041424, 44.877342, 33.255890>,  <42.421627, 44.245918, 33.417679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041424, 44.877342, 33.255890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.368187, 44.849194, 33.026905>,  <42.564243, 44.832306, 32.889515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.368187, 44.849194, 33.026905>,  <42.041424, 44.877342, 33.255890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368187, 44.849194, 33.026905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531090, 0.295336, -0.794179,
		0.224954, 0.952798, 0.203889,
		0.816908, -0.070370, -0.572459,
		42.613258, 44.828083, 32.855167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155045, 45.539082, 32.925659>,  <42.041424, 44.877342, 33.255890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155045, 45.539082, 32.925659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.350349, 45.280025, 32.691685>,  <42.467533, 45.124592, 32.551300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.350349, 45.280025, 32.691685>,  <42.155045, 45.539082, 32.925659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350349, 45.280025, 32.691685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323200, 0.488412, -0.810553,
		0.810640, 0.584818, 0.029157,
		0.488266, -0.647643, -0.584940,
		42.496830, 45.085732, 32.516201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318871, 45.681313, 33.667736>,  <42.155045, 45.539082, 32.925659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318871, 45.681313, 33.667736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.111809, 46.017281, 33.602535>,  <41.987572, 46.218861, 33.563416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.111809, 46.017281, 33.602535>,  <42.318871, 45.681313, 33.667736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111809, 46.017281, 33.602535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428615, -0.089687, 0.899025,
		0.740486, 0.535254, 0.406428,
		-0.517658, 0.839916, -0.163006,
		41.956512, 46.269257, 33.553635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304535, 46.115192, 34.260178>,  <42.318871, 45.681313, 33.667736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304535, 46.115192, 34.260178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.984337, 46.204926, 34.037865>,  <41.792217, 46.258766, 33.904476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.984337, 46.204926, 34.037865>,  <42.304535, 46.115192, 34.260178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984337, 46.204926, 34.037865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599334, -0.305384, 0.739959,
		-0.003729, 0.925427, 0.378907,
		-0.800491, 0.224332, -0.555778,
		41.744190, 46.272224, 33.871132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911854, 46.479244, 34.766071>,  <42.304535, 46.115192, 34.260178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911854, 46.479244, 34.766071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.642792, 46.411835, 34.477867>,  <41.481354, 46.371387, 34.304943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.642792, 46.411835, 34.477867>,  <41.911854, 46.479244, 34.766071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642792, 46.411835, 34.477867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676608, -0.254119, 0.691104,
		-0.299566, 0.952377, 0.056907,
		-0.672653, -0.168527, -0.720511,
		41.440994, 46.361275, 34.261715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371395, 46.730419, 35.055756>,  <41.911854, 46.479244, 34.766071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371395, 46.730419, 35.055756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237549, 46.503052, 34.755108>,  <41.157242, 46.366631, 34.574718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237549, 46.503052, 34.755108>,  <41.371395, 46.730419, 35.055756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237549, 46.503052, 34.755108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709223, -0.373284, 0.598049,
		-0.620510, 0.733182, -0.278230,
		-0.334620, -0.568422, -0.751616,
		41.137161, 46.332523, 34.529625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599110, 47.011196, 34.900032>,  <41.371395, 46.730419, 35.055756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599110, 47.011196, 34.900032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.683655, 46.629089, 34.817291>,  <40.734383, 46.399826, 34.767647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.683655, 46.629089, 34.817291>,  <40.599110, 47.011196, 34.900032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683655, 46.629089, 34.817291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681603, -0.295744, 0.669293,
		-0.700530, -0.000472, -0.713623,
		0.211365, -0.955267, -0.206856,
		40.747063, 46.342510, 34.755234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974133, 46.681767, 35.057301>,  <40.599110, 47.011196, 34.900032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974133, 46.681767, 35.057301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.216583, 46.364471, 35.034069>,  <40.362053, 46.174095, 35.020130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.216583, 46.364471, 35.034069>,  <39.974133, 46.681767, 35.057301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216583, 46.364471, 35.034069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453208, -0.404462, 0.794363,
		-0.653611, -0.455167, -0.604661,
		0.606131, -0.793242, -0.058076,
		40.398422, 46.126499, 35.016647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584358, 46.162430, 35.193707>,  <39.974133, 46.681767, 35.057301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584358, 46.162430, 35.193707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952118, 46.016697, 35.252991>,  <40.172775, 45.929256, 35.288559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952118, 46.016697, 35.252991>,  <39.584358, 46.162430, 35.193707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952118, 46.016697, 35.252991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235305, -0.207551, 0.949502,
		-0.315172, -0.907847, -0.276552,
		0.919401, -0.364331, 0.148207,
		40.227940, 45.907398, 35.297451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401367, 45.596920, 35.593033>,  <39.584358, 46.162430, 35.193707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401367, 45.596920, 35.593033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.790298, 45.662506, 35.659595>,  <40.023659, 45.701859, 35.699532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.790298, 45.662506, 35.659595>,  <39.401367, 45.596920, 35.593033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790298, 45.662506, 35.659595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143196, -0.144490, 0.979090,
		0.184580, -0.975827, -0.117013,
		0.972330, 0.163964, 0.166404,
		40.081997, 45.711697, 35.709518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473553, 45.161369, 36.148304>,  <39.401367, 45.596920, 35.593033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473553, 45.161369, 36.148304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.816864, 45.364159, 36.180119>,  <40.022850, 45.485832, 36.199207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.816864, 45.364159, 36.180119>,  <39.473553, 45.161369, 36.148304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816864, 45.364159, 36.180119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028268, -0.108046, 0.993744,
		0.512398, -0.855161, -0.078403,
		0.858282, 0.506976, 0.079536,
		40.074348, 45.516251, 36.203979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899570, 44.738110, 36.554668>,  <39.473553, 45.161369, 36.148304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899570, 44.738110, 36.554668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.015366, 45.120960, 36.558632>,  <40.084843, 45.350670, 36.561008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.015366, 45.120960, 36.558632>,  <39.899570, 44.738110, 36.554668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015366, 45.120960, 36.558632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176662, -0.063599, 0.982215,
		0.940738, -0.282589, -0.187500,
		0.289488, 0.957131, 0.009908,
		40.102211, 45.408100, 36.561604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418137, 44.731316, 36.971638>,  <39.899570, 44.738110, 36.554668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418137, 44.731316, 36.971638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.357674, 45.126625, 36.963081>,  <40.321396, 45.363811, 36.957947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.357674, 45.126625, 36.963081>,  <40.418137, 44.731316, 36.971638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357674, 45.126625, 36.963081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090714, 0.035416, 0.995247,
		0.984338, 0.148502, -0.095005,
		-0.151161, 0.988278, -0.021390,
		40.312325, 45.423107, 36.956665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013424, 45.161667, 37.272930>,  <40.418137, 44.731316, 36.971638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013424, 45.161667, 37.272930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.704781, 45.409313, 37.331333>,  <40.519592, 45.557899, 37.366375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.704781, 45.409313, 37.331333>,  <41.013424, 45.161667, 37.272930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704781, 45.409313, 37.331333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199151, 0.017138, 0.979819,
		0.604115, 0.785116, -0.136520,
		-0.771611, 0.619112, 0.146003,
		40.473297, 45.595047, 37.375134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204765, 45.514790, 37.794239>,  <41.013424, 45.161667, 37.272930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204765, 45.514790, 37.794239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.810638, 45.583073, 37.795803>,  <40.574162, 45.624043, 37.796741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.810638, 45.583073, 37.795803>,  <41.204765, 45.514790, 37.794239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810638, 45.583073, 37.795803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018686, 0.085044, 0.996202,
		0.169731, 0.981644, -0.086985,
		-0.985313, 0.170712, 0.003909,
		40.515045, 45.634285, 37.796974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051579, 46.075451, 38.156181>,  <41.204765, 45.514790, 37.794239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051579, 46.075451, 38.156181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.690483, 45.903374, 38.156399>,  <40.473827, 45.800125, 38.156528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.690483, 45.903374, 38.156399>,  <41.051579, 46.075451, 38.156181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690483, 45.903374, 38.156399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117634, -0.245621, 0.962202,
		-0.413800, 0.868679, 0.272337,
		-0.902736, -0.430195, 0.000548,
		40.419662, 45.774315, 38.156563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659698, 46.361080, 38.754089>,  <41.051579, 46.075451, 38.156181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659698, 46.361080, 38.754089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.472023, 46.025097, 38.645035>,  <40.359417, 45.823505, 38.579601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.472023, 46.025097, 38.645035>,  <40.659698, 46.361080, 38.754089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472023, 46.025097, 38.645035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031916, -0.292401, 0.955763,
		-0.882521, 0.457134, 0.110383,
		-0.469188, -0.839958, -0.272640,
		40.331268, 45.773109, 38.563244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185001, 46.294205, 39.224785>,  <40.659698, 46.361080, 38.754089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185001, 46.294205, 39.224785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.254890, 45.931362, 39.071613>,  <40.296825, 45.713657, 38.979710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.254890, 45.931362, 39.071613>,  <40.185001, 46.294205, 39.224785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254890, 45.931362, 39.071613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105788, -0.369366, 0.923243,
		-0.978918, -0.201820, 0.031425,
		0.174722, -0.907104, -0.382929,
		40.307308, 45.659229, 38.956734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897320, 45.843811, 39.767513>,  <40.185001, 46.294205, 39.224785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897320, 45.843811, 39.767513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.173126, 45.655327, 39.547501>,  <40.338608, 45.542236, 39.415493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.173126, 45.655327, 39.547501>,  <39.897320, 45.843811, 39.767513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173126, 45.655327, 39.547501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351477, -0.446315, 0.822963,
		-0.633274, -0.760767, -0.142121,
		0.689513, -0.471208, -0.550031,
		40.379982, 45.513966, 39.382492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828182, 45.057663, 39.934273>,  <39.897320, 45.843811, 39.767513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828182, 45.057663, 39.934273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.194725, 45.121738, 39.787506>,  <40.414650, 45.160183, 39.699448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.194725, 45.121738, 39.787506>,  <39.828182, 45.057663, 39.934273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194725, 45.121738, 39.787506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400356, -0.363863, 0.841022,
		0.001215, -0.917575, -0.397561,
		0.916359, 0.160188, -0.366915,
		40.469631, 45.169796, 39.677433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234047, 44.515697, 40.136387>,  <39.828182, 45.057663, 39.934273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234047, 44.515697, 40.136387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.521477, 44.774601, 40.034630>,  <40.693935, 44.929943, 39.973576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.521477, 44.774601, 40.034630>,  <40.234047, 44.515697, 40.136387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521477, 44.774601, 40.034630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626834, -0.444347, 0.640027,
		0.301221, -0.619368, -0.725017,
		0.718571, 0.647255, -0.254395,
		40.737049, 44.968777, 39.958313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822987, 44.085896, 40.153561>,  <40.234047, 44.515697, 40.136387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822987, 44.085896, 40.153561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.928070, 44.468872, 40.201389>,  <40.991119, 44.698658, 40.230087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.928070, 44.468872, 40.201389>,  <40.822987, 44.085896, 40.153561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928070, 44.468872, 40.201389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562823, -0.252715, 0.786998,
		0.783718, -0.139457, -0.605258,
		0.262710, 0.957438, 0.119568,
		41.006882, 44.756104, 40.237259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422352, 43.985889, 40.492821>,  <40.822987, 44.085896, 40.153561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422352, 43.985889, 40.492821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371651, 44.379383, 40.543724>,  <41.341228, 44.615479, 40.574268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371651, 44.379383, 40.543724>,  <41.422352, 43.985889, 40.492821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371651, 44.379383, 40.543724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570389, -0.032677, 0.820724,
		0.811535, 0.176621, -0.556970,
		-0.126757, 0.983736, 0.127261,
		41.333622, 44.674503, 40.581902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076817, 44.231079, 40.756268>,  <41.422352, 43.985889, 40.492821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076817, 44.231079, 40.756268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.794975, 44.492046, 40.867901>,  <41.625870, 44.648624, 40.934879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.794975, 44.492046, 40.867901>,  <42.076817, 44.231079, 40.756268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794975, 44.492046, 40.867901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422335, 0.069512, 0.903771,
		0.570233, 0.754668, -0.324516,
		-0.704604, 0.652414, 0.279084,
		41.583595, 44.687771, 40.951626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481007, 44.705368, 40.955818>,  <42.076817, 44.231079, 40.756268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481007, 44.705368, 40.955818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.122612, 44.768944, 41.121689>,  <41.907578, 44.807091, 41.221210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.122612, 44.768944, 41.121689>,  <42.481007, 44.705368, 40.955818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122612, 44.768944, 41.121689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442946, 0.252881, 0.860145,
		0.031848, 0.954353, -0.296978,
		-0.895982, 0.158939, 0.414673,
		41.853817, 44.816624, 41.246090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576912, 45.236298, 41.471699>,  <42.481007, 44.705368, 40.955818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576912, 45.236298, 41.471699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.229683, 45.068569, 41.577995>,  <42.021347, 44.967930, 41.641773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.229683, 45.068569, 41.577995>,  <42.576912, 45.236298, 41.471699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229683, 45.068569, 41.577995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310345, -0.040577, 0.949757,
		-0.387474, 0.906929, 0.165359,
		-0.868072, -0.419324, 0.265739,
		41.969261, 44.942772, 41.657719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260910, 45.614521, 42.133373>,  <42.576912, 45.236298, 41.471699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260910, 45.614521, 42.133373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.127739, 45.237446, 42.124416>,  <42.047836, 45.011200, 42.119041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.127739, 45.237446, 42.124416>,  <42.260910, 45.614521, 42.133373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127739, 45.237446, 42.124416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223947, -0.102119, 0.969237,
		-0.915972, 0.317674, 0.245110,
		-0.332932, -0.942685, -0.022395,
		42.027859, 44.954639, 42.117699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808517, 45.517841, 42.795609>,  <42.260910, 45.614521, 42.133373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808517, 45.517841, 42.795609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875504, 45.145691, 42.665154>,  <41.915695, 44.922401, 42.586880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875504, 45.145691, 42.665154>,  <41.808517, 45.517841, 42.795609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875504, 45.145691, 42.665154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005333, -0.329948, 0.943984,
		-0.985864, -0.159823, -0.050293,
		0.167464, -0.930371, -0.326136,
		41.925743, 44.866581, 42.567314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383781, 45.110004, 43.171894>,  <41.808517, 45.517841, 42.795609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383781, 45.110004, 43.171894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677582, 44.860973, 43.063885>,  <41.853863, 44.711555, 42.999081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677582, 44.860973, 43.063885>,  <41.383781, 45.110004, 43.171894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677582, 44.860973, 43.063885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012423, -0.385505, 0.922622,
		-0.678497, -0.681019, -0.275419,
		0.734499, -0.622575, -0.270024,
		41.897930, 44.674202, 42.982876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269588, 44.457813, 43.563107>,  <41.383781, 45.110004, 43.171894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269588, 44.457813, 43.563107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.646973, 44.424297, 43.434814>,  <41.873402, 44.404190, 43.357838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.646973, 44.424297, 43.434814>,  <41.269588, 44.457813, 43.563107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646973, 44.424297, 43.434814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274234, -0.346296, 0.897148,
		-0.186237, -0.934376, -0.303739,
		0.943457, -0.083786, -0.320731,
		41.930008, 44.399162, 43.338596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477119, 43.790508, 43.852386>,  <41.269588, 44.457813, 43.563107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477119, 43.790508, 43.852386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821106, 43.982609, 43.783310>,  <42.027496, 44.097870, 43.741863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821106, 43.982609, 43.783310>,  <41.477119, 43.790508, 43.852386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821106, 43.982609, 43.783310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391594, -0.403919, 0.826743,
		0.327288, -0.778594, -0.535418,
		0.859963, 0.480250, -0.172695,
		42.079094, 44.126682, 43.731503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.223011, 43.181988, 43.954071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329247, 43.567558, 43.961105>,  <42.392986, 43.798901, 43.965328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329247, 43.567558, 43.961105>,  <42.223011, 43.181988, 43.954071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329247, 43.567558, 43.961105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661440, -0.195458, 0.724081,
		0.701398, -0.180674, -0.689490,
		0.265589, 0.963926, 0.017589,
		42.408924, 43.856735, 43.966381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958546, 43.213451, 43.970646>,  <42.223011, 43.181988, 43.954071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958546, 43.213451, 43.970646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844177, 43.571026, 44.108711>,  <42.775558, 43.785568, 44.191551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844177, 43.571026, 44.108711>,  <42.958546, 43.213451, 43.970646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844177, 43.571026, 44.108711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403369, -0.214453, 0.889552,
		0.869221, 0.393566, -0.299269,
		-0.285918, 0.893933, 0.345159,
		42.758400, 43.839207, 44.212257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536457, 43.575321, 44.361252>,  <42.958546, 43.213451, 43.970646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536457, 43.575321, 44.361252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219894, 43.773075, 44.505066>,  <43.029957, 43.891727, 44.591354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219894, 43.773075, 44.505066>,  <43.536457, 43.575321, 44.361252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219894, 43.773075, 44.505066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353827, -0.109152, 0.928920,
		0.498486, 0.862364, -0.088543,
		-0.791403, 0.494382, 0.359538,
		42.982475, 43.921391, 44.612926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244545, 43.920879, 44.257244>,  <43.536457, 43.575321, 44.361252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.244545, 43.920879, 44.257244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572922, 43.710411, 44.168518>,  <44.769947, 43.584129, 44.115280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572922, 43.710411, 44.168518>,  <44.244545, 43.920879, 44.257244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572922, 43.710411, 44.168518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020761, 0.360707, -0.932448,
		0.570635, 0.770091, 0.285196,
		0.820942, -0.526166, -0.221820,
		44.819202, 43.552563, 44.101971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646667, 44.366287, 43.873848>,  <44.244545, 43.920879, 44.257244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646667, 44.366287, 43.873848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778587, 44.001038, 43.777988>,  <44.857738, 43.781887, 43.720474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778587, 44.001038, 43.777988>,  <44.646667, 44.366287, 43.873848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778587, 44.001038, 43.777988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291353, 0.339910, -0.894189,
		0.897967, 0.225081, 0.378145,
		0.329800, -0.913127, -0.239650,
		44.877529, 43.727100, 43.706093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234558, 44.464905, 43.409840>,  <44.646667, 44.366287, 43.873848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234558, 44.464905, 43.409840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.129013, 44.088379, 43.325645>,  <45.065685, 43.862465, 43.275127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.129013, 44.088379, 43.325645>,  <45.234558, 44.464905, 43.409840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129013, 44.088379, 43.325645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228794, 0.150914, -0.961706,
		0.937032, -0.301920, 0.175545,
		-0.263866, -0.941312, -0.210489,
		45.049854, 43.805984, 43.262497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.691135, 44.321079, 42.878708>,  <45.234558, 44.464905, 43.409840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.691135, 44.321079, 42.878708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401489, 44.045265, 42.873131>,  <45.227699, 43.879776, 42.869785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401489, 44.045265, 42.873131>,  <45.691135, 44.321079, 42.878708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401489, 44.045265, 42.873131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030682, -0.012007, -0.999457,
		0.688994, -0.724153, 0.029852,
		-0.724118, -0.689535, -0.013946,
		45.184254, 43.838406, 42.868946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951653, 43.829796, 42.464504>,  <45.691135, 44.321079, 42.878708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951653, 43.829796, 42.464504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553413, 43.798485, 42.443901>,  <45.314468, 43.779697, 42.431538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553413, 43.798485, 42.443901>,  <45.951653, 43.829796, 42.464504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553413, 43.798485, 42.443901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038202, 0.162896, -0.985903,
		0.085565, -0.983533, -0.159189,
		-0.995600, -0.078277, -0.051511,
		45.254734, 43.775002, 42.428448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856888, 43.273518, 41.990345>,  <45.951653, 43.829796, 42.464504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856888, 43.273518, 41.990345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523483, 43.494389, 41.982685>,  <45.323441, 43.626911, 41.978088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523483, 43.494389, 41.982685>,  <45.856888, 43.273518, 41.990345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523483, 43.494389, 41.982685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058755, 0.054124, -0.996804,
		-0.549373, -0.831970, -0.077556,
		-0.833509, 0.552174, -0.019148,
		45.273430, 43.660042, 41.976940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373615, 42.856354, 41.642143>,  <45.856888, 43.273518, 41.990345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373615, 42.856354, 41.642143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242630, 43.234138, 41.631119>,  <45.164040, 43.460808, 41.624504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242630, 43.234138, 41.631119>,  <45.373615, 42.856354, 41.642143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242630, 43.234138, 41.631119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043392, -0.044174, -0.998081,
		-0.943866, -0.325641, 0.055448,
		-0.327466, 0.944461, -0.027564,
		45.144390, 43.517475, 41.622849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.029659, 42.838726, 41.074848>,  <45.373615, 42.856354, 41.642143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.029659, 42.838726, 41.074848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021271, 43.231228, 41.151466>,  <45.016239, 43.466728, 41.197437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021271, 43.231228, 41.151466>,  <45.029659, 42.838726, 41.074848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021271, 43.231228, 41.151466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144156, 0.186621, -0.971798,
		-0.989333, -0.047990, 0.137541,
		-0.020969, 0.981259, 0.191548,
		45.014980, 43.525604, 41.208931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450077, 43.135330, 40.700825>,  <45.029659, 42.838726, 41.074848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450077, 43.135330, 40.700825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705505, 43.438847, 40.752155>,  <44.858761, 43.620956, 40.782955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705505, 43.438847, 40.752155>,  <44.450077, 43.135330, 40.700825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705505, 43.438847, 40.752155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091153, 0.240160, -0.966444,
		-0.764145, 0.605446, 0.222525,
		0.638571, 0.758788, 0.128329,
		44.897076, 43.666481, 40.790653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131470, 43.746078, 40.559849>,  <44.450077, 43.135330, 40.700825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131470, 43.746078, 40.559849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520233, 43.818546, 40.499763>,  <44.753490, 43.862026, 40.463711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520233, 43.818546, 40.499763>,  <44.131470, 43.746078, 40.559849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.520233, 43.818546, 40.499763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198561, 0.288607, -0.936632,
		-0.126333, 0.940151, 0.316473,
		0.971912, 0.181167, -0.150216,
		44.811806, 43.872898, 40.454697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164066, 44.442242, 40.180214>,  <44.131470, 43.746078, 40.559849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164066, 44.442242, 40.180214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486412, 44.209126, 40.138382>,  <44.679821, 44.069256, 40.113285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486412, 44.209126, 40.138382>,  <44.164066, 44.442242, 40.180214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486412, 44.209126, 40.138382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038813, 0.124244, -0.991492,
		0.590827, 0.803067, 0.077504,
		0.805865, -0.582792, -0.104576,
		44.728172, 44.034286, 40.107010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435600, 44.731598, 39.590672>,  <44.164066, 44.442242, 40.180214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435600, 44.731598, 39.590672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698975, 44.434509, 39.639389>,  <44.856998, 44.256256, 39.668621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698975, 44.434509, 39.639389>,  <44.435600, 44.731598, 39.590672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.698975, 44.434509, 39.639389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136379, -0.041406, -0.989791,
		0.740178, 0.668323, 0.074028,
		0.658435, -0.742717, 0.121793,
		44.896503, 44.211693, 39.675926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005096, 44.953259, 39.131454>,  <44.435600, 44.731598, 39.590672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005096, 44.953259, 39.131454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.032249, 44.559250, 39.194851>,  <45.048542, 44.322845, 39.232887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.032249, 44.559250, 39.194851>,  <45.005096, 44.953259, 39.131454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032249, 44.559250, 39.194851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104985, -0.165027, -0.980686,
		0.992155, 0.049931, -0.114615,
		0.067881, -0.985024, 0.158491,
		45.052612, 44.263744, 39.242397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264900, 44.846169, 38.601940>,  <45.005096, 44.953259, 39.131454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264900, 44.846169, 38.601940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151070, 44.483772, 38.727287>,  <45.082771, 44.266335, 38.802494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151070, 44.483772, 38.727287>,  <45.264900, 44.846169, 38.601940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151070, 44.483772, 38.727287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146798, -0.281842, -0.948164,
		0.947346, -0.315829, -0.052792,
		-0.284579, -0.905990, 0.313365,
		45.065697, 44.211975, 38.821297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640408, 44.319824, 38.147243>,  <45.264900, 44.846169, 38.601940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640408, 44.319824, 38.147243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320786, 44.148125, 38.315647>,  <45.129013, 44.045105, 38.416691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320786, 44.148125, 38.315647>,  <45.640408, 44.319824, 38.147243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320786, 44.148125, 38.315647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312697, -0.301391, -0.900769,
		0.513546, -0.851414, 0.106603,
		-0.799056, -0.429252, 0.421013,
		45.081070, 44.019348, 38.441952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545605, 43.639057, 37.841751>,  <45.640408, 44.319824, 38.147243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545605, 43.639057, 37.841751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192474, 43.771114, 37.975388>,  <44.980595, 43.850349, 38.055569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192474, 43.771114, 37.975388>,  <45.545605, 43.639057, 37.841751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192474, 43.771114, 37.975388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409361, -0.192071, -0.891926,
		-0.230295, -0.924183, 0.304714,
		-0.882829, 0.330144, 0.334091,
		44.927624, 43.870155, 38.075615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038033, 43.108383, 37.583858>,  <45.545605, 43.639057, 37.841751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038033, 43.108383, 37.583858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826347, 43.436436, 37.670876>,  <44.699337, 43.633266, 37.723087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826347, 43.436436, 37.670876>,  <45.038033, 43.108383, 37.583858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.826347, 43.436436, 37.670876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344209, 0.026832, -0.938509,
		-0.775535, -0.571550, 0.268096,
		-0.529212, 0.820128, 0.217542,
		44.667583, 43.682476, 37.736137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449421, 42.999592, 37.201508>,  <45.038033, 43.108383, 37.583858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449421, 42.999592, 37.201508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417213, 43.389057, 37.286835>,  <44.397888, 43.622734, 37.338032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417213, 43.389057, 37.286835>,  <44.449421, 42.999592, 37.201508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.417213, 43.389057, 37.286835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416949, 0.161485, -0.894469,
		-0.905356, -0.160968, 0.392963,
		-0.080523, 0.973659, 0.213317,
		44.393055, 43.681156, 37.350830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809742, 43.232677, 36.899994>,  <44.449421, 42.999592, 37.201508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809742, 43.232677, 36.899994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007080, 43.572865, 36.973011>,  <44.125484, 43.776978, 37.016823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007080, 43.572865, 36.973011>,  <43.809742, 43.232677, 36.899994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007080, 43.572865, 36.973011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301687, 0.364133, -0.881131,
		-0.815841, 0.379629, 0.436217,
		0.493344, 0.850464, 0.182545,
		44.155083, 43.828003, 37.027775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358036, 43.812195, 36.691212>,  <43.809742, 43.232677, 36.899994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358036, 43.812195, 36.691212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738640, 43.935242, 36.691341>,  <43.967003, 44.009068, 36.691418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738640, 43.935242, 36.691341>,  <43.358036, 43.812195, 36.691212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738640, 43.935242, 36.691341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070304, 0.218479, -0.973306,
		-0.299473, 0.926089, 0.229512,
		0.951511, 0.307614, 0.000321,
		44.024094, 44.027527, 36.691437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344090, 44.494675, 36.463524>,  <43.358036, 43.812195, 36.691212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344090, 44.494675, 36.463524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726166, 44.396046, 36.398014>,  <43.955410, 44.336868, 36.358711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726166, 44.396046, 36.398014>,  <43.344090, 44.494675, 36.463524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726166, 44.396046, 36.398014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077058, 0.327060, -0.941857,
		0.285796, 0.912269, 0.293403,
		0.955187, -0.246570, -0.163770,
		44.012722, 44.322075, 36.348885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646942, 45.148888, 36.193604>,  <43.344090, 44.494675, 36.463524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646942, 45.148888, 36.193604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888100, 44.848709, 36.085266>,  <44.032795, 44.668602, 36.020264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888100, 44.848709, 36.085266>,  <43.646942, 45.148888, 36.193604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888100, 44.848709, 36.085266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083433, 0.396921, -0.914053,
		0.793447, 0.528479, 0.301913,
		0.602893, -0.750443, -0.270843,
		44.068966, 44.623577, 36.004013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142212, 45.487923, 35.826641>,  <43.646942, 45.148888, 36.193604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142212, 45.487923, 35.826641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166222, 45.102959, 35.720688>,  <44.180626, 44.871979, 35.657116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166222, 45.102959, 35.720688>,  <44.142212, 45.487923, 35.826641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166222, 45.102959, 35.720688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213538, 0.246835, -0.945238,
		0.975089, 0.113298, -0.190695,
		0.060023, -0.962412, -0.264879,
		44.184227, 44.814236, 35.641224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731586, 45.444908, 35.389755>,  <44.142212, 45.487923, 35.826641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731586, 45.444908, 35.389755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473969, 45.144386, 35.332138>,  <44.319397, 44.964073, 35.297569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473969, 45.144386, 35.332138>,  <44.731586, 45.444908, 35.389755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473969, 45.144386, 35.332138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151106, 0.309520, -0.938810,
		0.749918, -0.582868, -0.312871,
		-0.644042, -0.751307, -0.144040,
		44.280754, 44.918995, 35.288925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827709, 45.276966, 34.717644>,  <44.731586, 45.444908, 35.389755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827709, 45.276966, 34.717644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488701, 45.071564, 34.771351>,  <44.285297, 44.948322, 34.803574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488701, 45.071564, 34.771351>,  <44.827709, 45.276966, 34.717644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488701, 45.071564, 34.771351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247692, 0.158916, -0.955717,
		0.469428, -0.843243, -0.261875,
		-0.847518, -0.513504, 0.134266,
		44.234444, 44.917511, 34.811630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773552, 44.789886, 34.112194>,  <44.827709, 45.276966, 34.717644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773552, 44.789886, 34.112194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399879, 44.789783, 34.254913>,  <44.175674, 44.789722, 34.340546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399879, 44.789783, 34.254913>,  <44.773552, 44.789886, 34.112194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399879, 44.789783, 34.254913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356519, -0.039195, -0.933466,
		0.014228, -0.999232, 0.036522,
		-0.934180, -0.000261, 0.356802,
		44.119625, 44.789707, 34.361954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346733, 44.280479, 33.769878>,  <44.773552, 44.789886, 34.112194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346733, 44.280479, 33.769878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061462, 44.524391, 33.908184>,  <43.890301, 44.670738, 33.991165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061462, 44.524391, 33.908184>,  <44.346733, 44.280479, 33.769878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061462, 44.524391, 33.908184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484739, -0.072693, -0.871633,
		-0.506371, -0.789229, 0.347428,
		-0.713173, 0.609782, 0.345760,
		43.847511, 44.707325, 34.011913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784435, 43.932514, 33.616348>,  <44.346733, 44.280479, 33.769878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784435, 43.932514, 33.616348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694176, 44.321342, 33.642155>,  <43.640018, 44.554638, 33.657639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694176, 44.321342, 33.642155>,  <43.784435, 43.932514, 33.616348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694176, 44.321342, 33.642155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545744, -0.071270, -0.834916,
		-0.806997, -0.223613, 0.546583,
		-0.225653, 0.972069, 0.064521,
		43.626480, 44.612965, 33.661510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088512, 43.910110, 33.552135>,  <43.784435, 43.932514, 33.616348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.088512, 43.910110, 33.552135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214729, 44.276119, 33.451599>,  <43.290459, 44.495724, 33.391277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214729, 44.276119, 33.451599>,  <43.088512, 43.910110, 33.552135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214729, 44.276119, 33.451599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679494, 0.032994, -0.732939,
		-0.662362, 0.402055, 0.632162,
		0.315539, 0.915021, -0.251340,
		43.309391, 44.550625, 33.376198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<44.928360, 42.310684, 45.233551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.091980, 42.672276, 45.183750>,  <45.190151, 42.889229, 45.153870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.091980, 42.672276, 45.183750>,  <44.928360, 42.310684, 45.233551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.091980, 42.672276, 45.183750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373811, 0.041536, -0.926574,
		-0.832430, 0.425560, 0.354906,
		0.409054, 0.903977, -0.124503,
		45.214695, 42.943470, 45.146400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474461, 42.749783, 44.884491>,  <44.928360, 42.310684, 45.233551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474461, 42.749783, 44.884491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.792458, 42.991364, 44.861790>,  <44.983257, 43.136311, 44.848167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.792458, 42.991364, 44.861790>,  <44.474461, 42.749783, 44.884491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792458, 42.991364, 44.861790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341802, 0.368687, -0.864431,
		-0.501151, 0.706619, 0.499537,
		0.794996, 0.603954, -0.056756,
		45.030956, 43.172550, 44.844765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174721, 43.401886, 44.731670>,  <44.474461, 42.749783, 44.884491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174721, 43.401886, 44.731670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.556503, 43.367260, 44.617458>,  <44.785572, 43.346485, 44.548931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.556503, 43.367260, 44.617458>,  <44.174721, 43.401886, 44.731670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556503, 43.367260, 44.617458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256601, 0.250128, -0.933591,
		0.152233, 0.964336, 0.216523,
		0.954453, -0.086563, -0.285528,
		44.842838, 43.341290, 44.531799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842171, 44.005665, 44.869423>,  <44.174721, 43.401886, 44.731670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842171, 44.005665, 44.869423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.455872, 43.988537, 44.971786>,  <43.224091, 43.978260, 45.033203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.455872, 43.988537, 44.971786>,  <43.842171, 44.005665, 44.869423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455872, 43.988537, 44.971786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258562, -0.076553, 0.962957,
		-0.021640, 0.996146, 0.085002,
		-0.965752, -0.042817, 0.255909,
		43.166145, 43.975693, 45.048557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784374, 44.478180, 45.357834>,  <43.842171, 44.005665, 44.869423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784374, 44.478180, 45.357834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.471375, 44.231533, 45.392448>,  <43.283577, 44.083546, 45.413216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.471375, 44.231533, 45.392448>,  <43.784374, 44.478180, 45.357834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471375, 44.231533, 45.392448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085070, 0.031804, 0.995867,
		-0.616816, 0.786624, 0.027569,
		-0.782497, -0.616612, 0.086536,
		43.236626, 44.046551, 45.418407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470303, 44.784554, 45.925617>,  <43.784374, 44.478180, 45.357834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470303, 44.784554, 45.925617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.281792, 44.432499, 45.902760>,  <43.168686, 44.221268, 45.889046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.281792, 44.432499, 45.902760>,  <43.470303, 44.784554, 45.925617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281792, 44.432499, 45.902760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009655, -0.069931, 0.997505,
		-0.881933, 0.469549, 0.041455,
		-0.471276, -0.880133, -0.057140,
		43.140408, 44.168461, 45.885616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917290, 44.811604, 46.349194>,  <43.470303, 44.784554, 45.925617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917290, 44.811604, 46.349194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.984482, 44.418049, 46.324677>,  <43.024796, 44.181915, 46.309967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.984482, 44.418049, 46.324677>,  <42.917290, 44.811604, 46.349194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984482, 44.418049, 46.324677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131926, -0.084051, 0.987690,
		-0.976923, -0.157826, -0.143919,
		0.167980, -0.983883, -0.061290,
		43.034874, 44.122883, 46.306290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317772, 44.481380, 46.607632>,  <42.917290, 44.811604, 46.349194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317772, 44.481380, 46.607632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.625771, 44.231922, 46.661564>,  <42.810570, 44.082249, 46.693924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.625771, 44.231922, 46.661564>,  <42.317772, 44.481380, 46.607632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625771, 44.231922, 46.661564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156800, 0.019880, 0.987430,
		-0.618483, -0.781458, -0.082479,
		0.769995, -0.623641, 0.134828,
		42.856770, 44.044830, 46.702011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064728, 43.954292, 47.066593>,  <42.317772, 44.481380, 46.607632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064728, 43.954292, 47.066593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.462601, 43.923889, 47.094398>,  <42.701324, 43.905647, 47.111084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.462601, 43.923889, 47.094398>,  <42.064728, 43.954292, 47.066593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462601, 43.923889, 47.094398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065027, 0.060036, 0.996076,
		-0.079882, -0.995298, 0.054774,
		0.994681, -0.076007, 0.069517,
		42.761005, 43.901089, 47.115253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185314, 43.402031, 47.575710>,  <42.064728, 43.954292, 47.066593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185314, 43.402031, 47.575710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.534607, 43.594852, 47.547176>,  <42.744183, 43.710545, 47.530056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.534607, 43.594852, 47.547176>,  <42.185314, 43.402031, 47.575710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534607, 43.594852, 47.547176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023478, 0.104605, 0.994237,
		0.486738, -0.869874, 0.080027,
		0.873232, 0.482054, -0.071338,
		42.796577, 43.739468, 47.525776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603043, 43.043709, 47.988613>,  <42.185314, 43.402031, 47.575710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603043, 43.043709, 47.988613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.778610, 43.400566, 47.945843>,  <42.883953, 43.614681, 47.920181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.778610, 43.400566, 47.945843>,  <42.603043, 43.043709, 47.988613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778610, 43.400566, 47.945843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021150, 0.129223, 0.991390,
		0.898277, -0.432880, 0.075587,
		0.438921, 0.892141, -0.106923,
		42.910286, 43.668209, 47.913765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123749, 43.049580, 48.566597>,  <42.603043, 43.043709, 47.988613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123749, 43.049580, 48.566597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.048271, 43.422070, 48.441879>,  <43.002983, 43.645565, 48.367050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.048271, 43.422070, 48.441879>,  <43.123749, 43.049580, 48.566597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048271, 43.422070, 48.441879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017055, 0.314342, 0.949156,
		0.981887, 0.184419, -0.043433,
		-0.188696, 0.931224, -0.311794,
		42.991661, 43.701435, 48.348343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400341, 43.329517, 49.043449>,  <43.123749, 43.049580, 48.566597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400341, 43.329517, 49.043449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.227089, 43.660679, 48.900917>,  <43.123138, 43.859375, 48.815399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.227089, 43.660679, 48.900917>,  <43.400341, 43.329517, 49.043449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227089, 43.660679, 48.900917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047325, 0.373906, 0.926259,
		0.900088, 0.418054, -0.122769,
		-0.433130, 0.827905, -0.356332,
		43.097149, 43.909050, 48.794018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727928, 43.903278, 49.382614>,  <43.400341, 43.329517, 49.043449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727928, 43.903278, 49.382614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.379837, 44.066402, 49.272060>,  <43.170982, 44.164276, 49.205730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.379837, 44.066402, 49.272060>,  <43.727928, 43.903278, 49.382614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379837, 44.066402, 49.272060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144159, 0.325661, 0.934432,
		0.471079, 0.853015, -0.224611,
		-0.870232, 0.407812, -0.276381,
		43.118767, 44.188747, 49.189144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688290, 44.528584, 49.696194>,  <43.727928, 43.903278, 49.382614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688290, 44.528584, 49.696194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.301857, 44.462040, 49.617188>,  <43.069996, 44.422115, 49.569782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.301857, 44.462040, 49.617188>,  <43.688290, 44.528584, 49.696194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301857, 44.462040, 49.617188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245231, 0.351305, 0.903574,
		-0.080928, 0.921363, -0.380185,
		-0.966081, -0.166358, -0.197517,
		43.012032, 44.412132, 49.557934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259789, 45.184925, 49.896881>,  <43.688290, 44.528584, 49.696194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259789, 45.184925, 49.896881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.021751, 44.863853, 49.881031>,  <42.878929, 44.671211, 49.871521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.021751, 44.863853, 49.881031>,  <43.259789, 45.184925, 49.896881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021751, 44.863853, 49.881031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256306, 0.142827, 0.955985,
		-0.761691, 0.579056, -0.290727,
		-0.595092, -0.802680, -0.039626,
		42.843224, 44.623051, 49.869144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679768, 45.409805, 50.111740>,  <43.259789, 45.184925, 49.896881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679768, 45.409805, 50.111740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.635033, 45.019318, 50.186024>,  <42.608192, 44.785027, 50.230595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.635033, 45.019318, 50.186024>,  <42.679768, 45.409805, 50.111740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635033, 45.019318, 50.186024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443555, 0.216271, 0.869762,
		-0.889242, 0.014898, -0.457194,
		-0.111836, -0.976220, 0.185710,
		42.601482, 44.726452, 50.241737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136494, 45.432571, 50.478619>,  <42.679768, 45.409805, 50.111740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136494, 45.432571, 50.478619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.263565, 45.064194, 50.568901>,  <42.339809, 44.843166, 50.623070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.263565, 45.064194, 50.568901>,  <42.136494, 45.432571, 50.478619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263565, 45.064194, 50.568901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411848, 0.080392, 0.907700,
		-0.854085, -0.381315, -0.353749,
		0.317681, -0.920943, 0.225705,
		42.358868, 44.787910, 50.636612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591637, 44.976681, 50.475723>,  <42.136494, 45.432571, 50.478619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591637, 44.976681, 50.475723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.885315, 44.870296, 50.725594>,  <42.061523, 44.806465, 50.875515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.885315, 44.870296, 50.725594>,  <41.591637, 44.976681, 50.475723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885315, 44.870296, 50.725594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649924, -0.009237, 0.759943,
		-0.196346, -0.963939, -0.179637,
		0.734198, -0.265962, 0.624674,
		42.105576, 44.790508, 50.912994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255486, 44.619778, 51.004753>,  <41.591637, 44.976681, 50.475723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255486, 44.619778, 51.004753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.617424, 44.671509, 51.167000>,  <41.834587, 44.702549, 51.264347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.617424, 44.671509, 51.167000>,  <41.255486, 44.619778, 51.004753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617424, 44.671509, 51.167000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423838, 0.183776, 0.886898,
		0.040158, -0.974423, 0.221103,
		0.904848, 0.129328, 0.405617,
		41.888878, 44.710308, 51.288685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284679, 44.232346, 51.635246>,  <41.255486, 44.619778, 51.004753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284679, 44.232346, 51.635246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.565788, 44.511780, 51.689056>,  <41.734451, 44.679440, 51.721344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.565788, 44.511780, 51.689056>,  <41.284679, 44.232346, 51.635246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565788, 44.511780, 51.689056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484457, 0.331456, 0.809591,
		0.520978, -0.634128, 0.571371,
		0.702768, 0.698584, 0.134526,
		41.776619, 44.721355, 51.729416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453720, 44.131676, 52.343178>,  <41.284679, 44.232346, 51.635246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453720, 44.131676, 52.343178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.567856, 44.497078, 52.227184>,  <41.636337, 44.716320, 52.157589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.567856, 44.497078, 52.227184>,  <41.453720, 44.131676, 52.343178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567856, 44.497078, 52.227184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337498, 0.378955, 0.861677,
		0.897038, -0.147997, 0.416436,
		0.285336, 0.913504, -0.289988,
		41.653458, 44.771130, 52.140186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611858, 44.433853, 53.029873>,  <41.453720, 44.131676, 52.343178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611858, 44.433853, 53.029873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.571678, 44.716080, 52.749275>,  <41.547569, 44.885414, 52.580917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.571678, 44.716080, 52.749275>,  <41.611858, 44.433853, 53.029873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571678, 44.716080, 52.749275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270972, 0.659005, 0.701632,
		0.957332, 0.260564, 0.124989,
		-0.100452, 0.705563, -0.701492,
		41.541542, 44.927750, 52.538826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017704, 45.083088, 53.313908>,  <41.611858, 44.433853, 53.029873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017704, 45.083088, 53.313908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.711029, 45.198837, 53.084663>,  <41.527023, 45.268288, 52.947117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.711029, 45.198837, 53.084663>,  <42.017704, 45.083088, 53.313908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711029, 45.198837, 53.084663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238242, 0.700701, 0.672502,
		0.596186, 0.652136, -0.468274,
		-0.766683, 0.289374, -0.573114,
		41.481026, 45.285648, 52.912727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097141, 45.761925, 53.387012>,  <42.017704, 45.083088, 53.313908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097141, 45.761925, 53.387012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.719879, 45.720192, 53.260792>,  <41.493523, 45.695152, 53.185059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.719879, 45.720192, 53.260792>,  <42.097141, 45.761925, 53.387012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719879, 45.720192, 53.260792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317921, 0.559965, 0.765092,
		0.096872, 0.821921, -0.561304,
		-0.943155, -0.104335, -0.315551,
		41.436932, 45.688892, 53.166126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783550, 46.433754, 53.502949>,  <42.097141, 45.761925, 53.387012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783550, 46.433754, 53.502949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.479408, 46.179550, 53.449287>,  <41.296925, 46.027027, 53.417091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.479408, 46.179550, 53.449287>,  <41.783550, 46.433754, 53.502949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479408, 46.179550, 53.449287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455692, 0.374775, 0.807396,
		-0.462829, 0.675037, -0.574556,
		-0.760351, -0.635507, -0.134152,
		41.251305, 45.988899, 53.409042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169579, 46.820721, 53.608646>,  <41.783550, 46.433754, 53.502949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169579, 46.820721, 53.608646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.086380, 46.437996, 53.689892>,  <41.036461, 46.208363, 53.738640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.086380, 46.437996, 53.689892>,  <41.169579, 46.820721, 53.608646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086380, 46.437996, 53.689892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464034, 0.279325, 0.840625,
		-0.861052, 0.080596, -0.502090,
		-0.207998, -0.956808, 0.203114,
		41.023979, 46.150955, 53.750828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422024, 46.861816, 53.803352>,  <41.169579, 46.820721, 53.608646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422024, 46.861816, 53.803352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.596008, 46.532463, 53.949150>,  <40.700397, 46.334850, 54.036629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.596008, 46.532463, 53.949150>,  <40.422024, 46.861816, 53.803352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596008, 46.532463, 53.949150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510674, 0.107832, 0.852985,
		-0.741636, -0.557151, -0.373577,
		0.434958, -0.823380, 0.364494,
		40.726494, 46.285450, 54.058498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851746, 46.451202, 54.207607>,  <40.422024, 46.861816, 53.803352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851746, 46.451202, 54.207607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.183922, 46.274193, 54.342987>,  <40.383228, 46.167988, 54.424213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.183922, 46.274193, 54.342987>,  <39.851746, 46.451202, 54.207607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183922, 46.274193, 54.342987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357491, 0.042667, 0.932941,
		-0.427288, -0.895742, -0.122766,
		0.830436, -0.442522, 0.338451,
		40.433052, 46.141438, 54.444523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678486, 45.878571, 54.556133>,  <39.851746, 46.451202, 54.207607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678486, 45.878571, 54.556133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.032288, 45.994789, 54.702141>,  <40.244568, 46.064522, 54.789745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.032288, 45.994789, 54.702141>,  <39.678486, 45.878571, 54.556133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032288, 45.994789, 54.702141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389303, 0.028481, 0.920669,
		0.257104, -0.956436, 0.138303,
		0.884501, 0.290549, 0.365021,
		40.297638, 46.081955, 54.811646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818554, 45.443497, 55.036556>,  <39.678486, 45.878571, 54.556133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818554, 45.443497, 55.036556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.051628, 45.751419, 55.140770>,  <40.191471, 45.936172, 55.203297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.051628, 45.751419, 55.140770>,  <39.818554, 45.443497, 55.036556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051628, 45.751419, 55.140770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295753, -0.097740, 0.950251,
		0.756973, -0.630751, 0.170721,
		0.582685, 0.769806, 0.260533,
		40.226433, 45.982361, 55.218929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184074, 45.189037, 55.520771>,  <39.818554, 45.443497, 55.036556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184074, 45.189037, 55.520771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.249039, 45.578758, 55.583202>,  <40.288017, 45.812592, 55.620659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.249039, 45.578758, 55.583202>,  <40.184074, 45.189037, 55.520771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249039, 45.578758, 55.583202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009163, -0.156681, 0.987607,
		0.986681, -0.161824, -0.016519,
		0.162406, 0.974302, 0.156077,
		40.297760, 45.871048, 55.630024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596420, 45.218273, 56.089664>,  <40.184074, 45.189037, 55.520771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596420, 45.218273, 56.089664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463783, 45.595634, 56.087540>,  <40.384201, 45.822052, 56.086266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463783, 45.595634, 56.087540>,  <40.596420, 45.218273, 56.089664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463783, 45.595634, 56.087540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122010, 0.048466, 0.991345,
		0.935500, 0.328075, -0.131176,
		-0.331593, 0.943408, -0.005311,
		40.364304, 45.878658, 56.085945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951920, 45.668358, 56.643543>,  <40.596420, 45.218273, 56.089664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951920, 45.668358, 56.643543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.618729, 45.872383, 56.557762>,  <40.418816, 45.994797, 56.506294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.618729, 45.872383, 56.557762>,  <40.951920, 45.668358, 56.643543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618729, 45.872383, 56.557762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183337, 0.111262, 0.976734,
		0.522052, 0.852913, 0.000834,
		-0.832976, 0.510059, -0.214455,
		40.368835, 46.025402, 56.493427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110817, 46.179016, 56.968216>,  <40.951920, 45.668358, 56.643543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110817, 46.179016, 56.968216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.715691, 46.223251, 56.924400>,  <40.478615, 46.249794, 56.898113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.715691, 46.223251, 56.924400>,  <41.110817, 46.179016, 56.968216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715691, 46.223251, 56.924400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118291, -0.075979, 0.990068,
		0.101170, 0.990957, 0.088135,
		-0.987812, 0.110591, -0.109535,
		40.419346, 46.256428, 56.891541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
