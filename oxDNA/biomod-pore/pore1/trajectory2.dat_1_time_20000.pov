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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<48.366985, 40.330219, 45.135254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.503738, 40.705078, 45.163151>,  <48.585793, 40.929993, 45.179890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.503738, 40.705078, 45.163151>,  <48.366985, 40.330219, 45.135254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.503738, 40.705078, 45.163151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033584, -0.086350, 0.995699,
		0.939142, -0.338072, -0.060995,
		0.341885, 0.937151, 0.069741,
		48.606304, 40.986225, 45.184074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.785137, 40.298084, 45.725414>,  <48.366985, 40.330219, 45.135254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.785137, 40.298084, 45.725414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.700073, 40.684784, 45.668591>,  <48.649036, 40.916801, 45.634495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.700073, 40.684784, 45.668591>,  <48.785137, 40.298084, 45.725414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.700073, 40.684784, 45.668591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055814, 0.133128, 0.989526,
		0.975531, 0.218361, 0.025647,
		-0.212660, 0.966745, -0.142058,
		48.636276, 40.974808, 45.625973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.251225, 40.653835, 46.207500>,  <48.785137, 40.298084, 45.725414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.251225, 40.653835, 46.207500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.948021, 40.902054, 46.127151>,  <48.766098, 41.050983, 46.078941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.948021, 40.902054, 46.127151>,  <49.251225, 40.653835, 46.207500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.948021, 40.902054, 46.127151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205088, 0.065586, 0.976544,
		0.619164, 0.781423, 0.077552,
		-0.758007, 0.620546, -0.200869,
		48.720619, 41.088219, 46.066891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.322636, 41.265572, 46.648220>,  <49.251225, 40.653835, 46.207500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.322636, 41.265572, 46.648220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.948441, 41.305168, 46.512531>,  <48.723923, 41.328926, 46.431118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.948441, 41.305168, 46.512531>,  <49.322636, 41.265572, 46.648220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.948441, 41.305168, 46.512531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319050, 0.176058, 0.931241,
		0.151906, 0.979390, -0.133116,
		-0.935485, 0.098991, -0.339219,
		48.667793, 41.334866, 46.410767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.123947, 41.975677, 46.822628>,  <49.322636, 41.265572, 46.648220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.123947, 41.975677, 46.822628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.802162, 41.746216, 46.760971>,  <48.609093, 41.608540, 46.723976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.802162, 41.746216, 46.760971>,  <49.123947, 41.975677, 46.822628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.802162, 41.746216, 46.760971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377474, 0.293333, 0.878333,
		-0.458643, 0.764773, -0.452515,
		-0.804463, -0.573654, -0.154147,
		48.560822, 41.574120, 46.714725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.575153, 42.421959, 46.895313>,  <49.123947, 41.975677, 46.822628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.575153, 42.421959, 46.895313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.432472, 42.055908, 46.970482>,  <48.346863, 41.836277, 47.015583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.432472, 42.055908, 46.970482>,  <48.575153, 42.421959, 46.895313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.432472, 42.055908, 46.970482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311101, 0.306026, 0.899758,
		-0.880897, 0.262486, -0.393856,
		-0.356703, -0.915123, 0.187918,
		48.325462, 41.781372, 47.026855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.057484, 42.540894, 47.284397>,  <48.575153, 42.421959, 46.895313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.057484, 42.540894, 47.284397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.128479, 42.152229, 47.346848>,  <48.171078, 41.919033, 47.384319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.128479, 42.152229, 47.346848>,  <48.057484, 42.540894, 47.284397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.128479, 42.152229, 47.346848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264325, 0.105750, 0.958619,
		-0.947961, -0.211415, -0.238064,
		0.177491, -0.971659, 0.156129,
		48.181725, 41.860733, 47.393688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.455490, 42.295780, 47.639359>,  <48.057484, 42.540894, 47.284397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.455490, 42.295780, 47.639359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.744263, 42.034279, 47.730064>,  <47.917526, 41.877380, 47.784489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.744263, 42.034279, 47.730064>,  <47.455490, 42.295780, 47.639359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.744263, 42.034279, 47.730064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209944, 0.105325, 0.972024,
		-0.659346, -0.749343, -0.061214,
		0.721932, -0.653751, 0.226766,
		47.960842, 41.838154, 47.798096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.112400, 41.791325, 48.049564>,  <47.455490, 42.295780, 47.639359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.112400, 41.791325, 48.049564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.505745, 41.766373, 48.117809>,  <47.741753, 41.751400, 48.158756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.505745, 41.766373, 48.117809>,  <47.112400, 41.791325, 48.049564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.505745, 41.766373, 48.117809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171177, -0.003866, 0.985233,
		-0.060809, -0.998044, -0.014482,
		0.983362, -0.062390, 0.170608,
		47.800755, 41.747658, 48.168991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.206280, 41.313766, 48.679310>,  <47.112400, 41.791325, 48.049564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.206280, 41.313766, 48.679310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.552414, 41.513306, 48.659950>,  <47.760094, 41.633030, 48.648335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.552414, 41.513306, 48.659950>,  <47.206280, 41.313766, 48.679310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.552414, 41.513306, 48.659950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017464, 0.066490, 0.997634,
		0.500887, -0.864134, 0.048824,
		0.865336, 0.498850, -0.048395,
		47.812016, 41.662960, 48.645432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.658283, 41.006313, 49.133343>,  <47.206280, 41.313766, 48.679310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.658283, 41.006313, 49.133343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.850235, 41.354774, 49.091743>,  <47.965405, 41.563850, 49.066784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.850235, 41.354774, 49.091743>,  <47.658283, 41.006313, 49.133343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.850235, 41.354774, 49.091743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204268, 0.004336, 0.978905,
		0.853226, -0.490995, -0.175867,
		0.479875, 0.871152, -0.103994,
		47.994198, 41.616119, 49.060547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.114197, 40.954239, 49.597363>,  <47.658283, 41.006313, 49.133343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.114197, 40.954239, 49.597363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.091248, 41.347603, 49.528522>,  <48.077477, 41.583622, 49.487221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.091248, 41.347603, 49.528522>,  <48.114197, 40.954239, 49.597363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.091248, 41.347603, 49.528522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249841, 0.181038, 0.951212,
		0.966586, 0.011577, -0.256082,
		-0.057373, 0.983408, -0.172096,
		48.074036, 41.642624, 49.476894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.794704, 41.222485, 49.880718>,  <48.114197, 40.954239, 49.597363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.794704, 41.222485, 49.880718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.529434, 41.519943, 49.846794>,  <48.370274, 41.698418, 49.826439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.529434, 41.519943, 49.846794>,  <48.794704, 41.222485, 49.880718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.529434, 41.519943, 49.846794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103122, 0.203020, 0.973729,
		0.741326, 0.637007, -0.211324,
		-0.663175, 0.743643, -0.084815,
		48.330482, 41.743034, 49.821350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.091049, 41.714256, 50.270088>,  <48.794704, 41.222485, 49.880718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.091049, 41.714256, 50.270088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.704086, 41.812195, 50.244255>,  <48.471909, 41.870956, 50.228756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.704086, 41.812195, 50.244255>,  <49.091049, 41.714256, 50.270088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.704086, 41.812195, 50.244255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019748, 0.181317, 0.983226,
		0.252446, 0.952458, -0.170573,
		-0.967409, 0.244843, -0.064582,
		48.413864, 41.885647, 50.224880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.959801, 42.438347, 50.527485>,  <49.091049, 41.714256, 50.270088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.959801, 42.438347, 50.527485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.601044, 42.262733, 50.548752>,  <48.385788, 42.157364, 50.561512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.601044, 42.262733, 50.548752>,  <48.959801, 42.438347, 50.527485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.601044, 42.262733, 50.548752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102787, 0.323873, 0.940500,
		-0.430133, 0.838065, -0.335607,
		-0.896895, -0.439036, 0.053167,
		48.331974, 42.131023, 50.564701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.507477, 42.908047, 50.788734>,  <48.959801, 42.438347, 50.527485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.507477, 42.908047, 50.788734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.295746, 42.576431, 50.860847>,  <48.168705, 42.377460, 50.904114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.295746, 42.576431, 50.860847>,  <48.507477, 42.908047, 50.788734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.295746, 42.576431, 50.860847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264488, 0.363150, 0.893403,
		-0.806137, 0.425222, -0.411497,
		-0.529330, -0.829041, 0.180282,
		48.136948, 42.327721, 50.914932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.784931, 43.119801, 51.004517>,  <48.507477, 42.908047, 50.788734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.784931, 43.119801, 51.004517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.868843, 42.757851, 51.152676>,  <47.919189, 42.540680, 51.241570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.868843, 42.757851, 51.152676>,  <47.784931, 43.119801, 51.004517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.868843, 42.757851, 51.152676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223453, 0.324428, 0.919138,
		-0.951872, -0.275584, -0.134139,
		0.209782, -0.904876, 0.370394,
		47.931778, 42.486389, 51.263794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.285461, 43.109268, 51.422359>,  <47.784931, 43.119801, 51.004517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.285461, 43.109268, 51.422359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.516930, 42.814140, 51.561363>,  <47.655811, 42.637062, 51.644768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.516930, 42.814140, 51.561363>,  <47.285461, 43.109268, 51.422359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.516930, 42.814140, 51.561363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193206, 0.289952, 0.937336,
		-0.792347, -0.609548, 0.025235,
		0.578668, -0.737820, 0.347512,
		47.690529, 42.592793, 51.665615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.940029, 42.890751, 51.981071>,  <47.285461, 43.109268, 51.422359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.940029, 42.890751, 51.981071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.327927, 42.797272, 52.009312>,  <47.560665, 42.741184, 52.026257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.327927, 42.797272, 52.009312>,  <46.940029, 42.890751, 51.981071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.327927, 42.797272, 52.009312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012908, 0.337861, 0.941108,
		-0.243789, -0.911721, 0.330655,
		0.969742, -0.233700, 0.070598,
		47.618851, 42.727161, 52.030491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936203, 42.586868, 52.570667>,  <46.940029, 42.890751, 51.981071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936203, 42.586868, 52.570667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.320358, 42.675041, 52.502468>,  <47.550850, 42.727943, 52.461548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.320358, 42.675041, 52.502468>,  <46.936203, 42.586868, 52.570667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.320358, 42.675041, 52.502468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128982, 0.190717, 0.973135,
		0.247027, -0.956575, 0.154730,
		0.960386, 0.220433, -0.170494,
		47.608475, 42.741169, 52.451321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.324577, 42.210777, 53.083645>,  <46.936203, 42.586868, 52.570667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.324577, 42.210777, 53.083645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603317, 42.483688, 52.995197>,  <47.770561, 42.647434, 52.942127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603317, 42.483688, 52.995197>,  <47.324577, 42.210777, 53.083645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.603317, 42.483688, 52.995197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174714, 0.137534, 0.974967,
		0.695610, -0.718040, -0.023362,
		0.696852, 0.682278, -0.221122,
		47.812374, 42.688370, 52.928860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.989300, 42.121418, 53.497452>,  <47.324577, 42.210777, 53.083645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.989300, 42.121418, 53.497452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.984009, 42.501022, 53.371464>,  <47.980835, 42.728783, 53.295872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.984009, 42.501022, 53.371464>,  <47.989300, 42.121418, 53.497452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.984009, 42.501022, 53.371464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201089, 0.311091, 0.928863,
		0.979484, -0.051052, -0.194950,
		-0.013227, 0.949008, -0.314974,
		47.980042, 42.785725, 53.276970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.551231, 42.369881, 53.780121>,  <47.989300, 42.121418, 53.497452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.551231, 42.369881, 53.780121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.334038, 42.696854, 53.703209>,  <48.203720, 42.893036, 53.657063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.334038, 42.696854, 53.703209>,  <48.551231, 42.369881, 53.780121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.334038, 42.696854, 53.703209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093084, 0.286155, 0.953651,
		0.834565, 0.499924, -0.231469,
		-0.542989, 0.817430, -0.192280,
		48.171143, 42.942081, 53.645523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.961884, 43.010960, 53.989590>,  <48.551231, 42.369881, 53.780121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.961884, 43.010960, 53.989590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.583298, 43.140030, 53.985779>,  <48.356148, 43.217472, 53.983494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.583298, 43.140030, 53.985779>,  <48.961884, 43.010960, 53.989590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.583298, 43.140030, 53.985779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189112, 0.578129, 0.793728,
		0.261622, 0.749432, -0.608198,
		-0.946462, 0.322675, -0.009525,
		48.299358, 43.236832, 53.982922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.993999, 43.583023, 54.367489>,  <48.961884, 43.010960, 53.989590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.993999, 43.583023, 54.367489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.597031, 43.533905, 54.365696>,  <48.358849, 43.504436, 54.364620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.597031, 43.533905, 54.365696>,  <48.993999, 43.583023, 54.367489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.597031, 43.533905, 54.365696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034528, 0.243676, 0.969242,
		-0.117922, 0.962052, -0.246070,
		-0.992422, -0.122791, -0.004483,
		48.299305, 43.497066, 54.364349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.605022, 44.225349, 54.547508>,  <48.993999, 43.583023, 54.367489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.605022, 44.225349, 54.547508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.354515, 43.927933, 54.641258>,  <48.204212, 43.749481, 54.697510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.354515, 43.927933, 54.641258>,  <48.605022, 44.225349, 54.547508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.354515, 43.927933, 54.641258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018028, 0.314368, 0.949130,
		-0.779402, 0.590182, -0.210282,
		-0.626266, -0.743544, 0.234379,
		48.166634, 43.704868, 54.711571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.056736, 44.643158, 54.938454>,  <48.605022, 44.225349, 54.547508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.056736, 44.643158, 54.938454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.956665, 44.262039, 55.007256>,  <47.896622, 44.033367, 55.048538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.956665, 44.262039, 55.007256>,  <48.056736, 44.643158, 54.938454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.956665, 44.262039, 55.007256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368714, 0.258031, 0.893012,
		-0.895243, 0.159993, -0.415864,
		-0.250181, -0.952797, 0.172008,
		47.881611, 43.976200, 55.058857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.273937, 44.525803, 55.056797>,  <48.056736, 44.643158, 54.938454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.273937, 44.525803, 55.056797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.470444, 44.235954, 55.250118>,  <47.588348, 44.062046, 55.366112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.470444, 44.235954, 55.250118>,  <47.273937, 44.525803, 55.056797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.470444, 44.235954, 55.250118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552919, 0.169293, 0.815856,
		-0.673004, -0.668033, -0.317487,
		0.491270, -0.724619, 0.483303,
		47.617825, 44.018570, 55.395107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.787292, 44.054611, 55.363194>,  <47.273937, 44.525803, 55.056797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.787292, 44.054611, 55.363194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.117813, 43.988121, 55.578453>,  <47.316124, 43.948227, 55.707607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.117813, 43.988121, 55.578453>,  <46.787292, 44.054611, 55.363194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.117813, 43.988121, 55.578453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516731, 0.156428, 0.841736,
		-0.224103, -0.973601, 0.043360,
		0.826297, -0.166230, 0.538145,
		47.365704, 43.938251, 55.739895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.607113, 43.532024, 55.941925>,  <46.787292, 44.054611, 55.363194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.607113, 43.532024, 55.941925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.940208, 43.721420, 56.056709>,  <47.140068, 43.835056, 56.125580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.940208, 43.721420, 56.056709>,  <46.607113, 43.532024, 55.941925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.940208, 43.721420, 56.056709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358564, 0.066282, 0.931149,
		0.421869, -0.878302, 0.224972,
		0.832741, 0.473490, 0.286965,
		47.190029, 43.863468, 56.142799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.693920, 43.356972, 56.663700>,  <46.607113, 43.532024, 55.941925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.693920, 43.356972, 56.663700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942574, 43.668182, 56.627373>,  <47.091766, 43.854908, 56.605576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942574, 43.668182, 56.627373>,  <46.693920, 43.356972, 56.663700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.942574, 43.668182, 56.627373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282933, 0.331144, 0.900162,
		0.730422, -0.533877, 0.425979,
		0.621637, 0.778022, -0.090823,
		47.129066, 43.901588, 56.600124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.117298, 43.377518, 57.286938>,  <46.693920, 43.356972, 56.663700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.117298, 43.377518, 57.286938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.137756, 43.747726, 57.136848>,  <47.150032, 43.969852, 57.046795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.137756, 43.747726, 57.136848>,  <47.117298, 43.377518, 57.286938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.137756, 43.747726, 57.136848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047994, 0.372999, 0.926590,
		0.997537, -0.065399, -0.025343,
		0.051146, 0.925524, -0.375219,
		47.153099, 44.025383, 57.024284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.514557, 43.761536, 57.776436>,  <47.117298, 43.377518, 57.286938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.514557, 43.761536, 57.776436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316315, 44.039803, 57.568428>,  <47.197369, 44.206764, 57.443623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316315, 44.039803, 57.568428>,  <47.514557, 43.761536, 57.776436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.316315, 44.039803, 57.568428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172891, 0.507723, 0.843994,
		0.851168, 0.508193, -0.131354,
		-0.495603, 0.695671, -0.520019,
		47.167633, 44.248505, 57.412422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.769932, 44.515968, 58.055164>,  <47.514557, 43.761536, 57.776436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.769932, 44.515968, 58.055164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.424545, 44.559303, 57.858109>,  <47.217316, 44.585304, 57.739876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.424545, 44.559303, 57.858109>,  <47.769932, 44.515968, 58.055164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.424545, 44.559303, 57.858109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334805, 0.607404, 0.720393,
		0.377279, 0.786971, -0.488198,
		-0.863462, 0.108338, -0.492642,
		47.165508, 44.591805, 57.710316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.667480, 45.263542, 57.982464>,  <47.769932, 44.515968, 58.055164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.667480, 45.263542, 57.982464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.310303, 45.088249, 57.941284>,  <47.095997, 44.983074, 57.916576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.310303, 45.088249, 57.941284>,  <47.667480, 45.263542, 57.982464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.310303, 45.088249, 57.941284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401318, 0.671349, 0.623084,
		-0.203942, 0.597696, -0.775350,
		-0.892945, -0.438236, -0.102950,
		47.042419, 44.956779, 57.910400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.186214, 45.851650, 57.867527>,  <47.667480, 45.263542, 57.982464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.186214, 45.851650, 57.867527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.952255, 45.550201, 57.987492>,  <46.811878, 45.369331, 58.059471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.952255, 45.550201, 57.987492>,  <47.186214, 45.851650, 57.867527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.952255, 45.550201, 57.987492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438739, 0.604958, 0.664480,
		-0.682201, 0.257071, -0.684483,
		-0.584901, -0.753619, 0.299915,
		46.776783, 45.324116, 58.077465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.492550, 46.139462, 57.916664>,  <47.186214, 45.851650, 57.867527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.492550, 46.139462, 57.916664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482552, 45.795540, 58.120667>,  <46.476555, 45.589188, 58.243069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482552, 45.795540, 58.120667>,  <46.492550, 46.139462, 57.916664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482552, 45.795540, 58.120667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564239, 0.433271, 0.702788,
		-0.825233, -0.270202, -0.495965,
		-0.024992, -0.859806, 0.510009,
		46.475056, 45.537598, 58.273670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743790, 45.991905, 58.148792>,  <46.492550, 46.139462, 57.916664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743790, 45.991905, 58.148792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017288, 45.817917, 58.383156>,  <46.181389, 45.713524, 58.523773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017288, 45.817917, 58.383156>,  <45.743790, 45.991905, 58.148792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017288, 45.817917, 58.383156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448374, 0.383037, 0.807616,
		-0.575713, -0.814913, 0.066872,
		0.683751, -0.434971, 0.585905,
		46.222412, 45.687424, 58.558926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.395393, 45.759613, 58.707607>,  <45.743790, 45.991905, 58.148792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.395393, 45.759613, 58.707607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777344, 45.744743, 58.825470>,  <46.006516, 45.735821, 58.896187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777344, 45.744743, 58.825470>,  <45.395393, 45.759613, 58.707607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777344, 45.744743, 58.825470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268113, 0.318843, 0.909095,
		-0.127743, -0.947078, 0.294490,
		0.954881, -0.037174, 0.294654,
		46.063808, 45.733593, 58.913868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271511, 45.572060, 59.387691>,  <45.395393, 45.759613, 58.707607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271511, 45.572060, 59.387691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.648010, 45.706680, 59.376457>,  <45.873909, 45.787453, 59.369717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.648010, 45.706680, 59.376457>,  <45.271511, 45.572060, 59.387691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.648010, 45.706680, 59.376457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133649, 0.447570, 0.884205,
		0.310154, -0.828500, 0.466253,
		0.941245, 0.336554, -0.028087,
		45.930386, 45.807648, 59.368031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508972, 45.651005, 60.156998>,  <45.271511, 45.572060, 59.387691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508972, 45.651005, 60.156998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778755, 45.859215, 59.947556>,  <45.940624, 45.984142, 59.821892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778755, 45.859215, 59.947556>,  <45.508972, 45.651005, 60.156998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778755, 45.859215, 59.947556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019338, 0.696491, 0.717304,
		0.738063, -0.493915, 0.459686,
		0.674455, 0.520527, -0.523606,
		45.981091, 46.015373, 59.790474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132763, 45.801014, 60.574734>,  <45.508972, 45.651005, 60.156998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132763, 45.801014, 60.574734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.079330, 46.073669, 60.286980>,  <46.047272, 46.237263, 60.114326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.079330, 46.073669, 60.286980>,  <46.132763, 45.801014, 60.574734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.079330, 46.073669, 60.286980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056558, 0.719468, 0.692218,
		0.989422, 0.133156, -0.057557,
		-0.133583, 0.681641, -0.719389,
		46.039257, 46.278160, 60.071163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.367378, 46.418221, 60.767220>,  <46.132763, 45.801014, 60.574734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.367378, 46.418221, 60.767220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.120834, 46.556976, 60.484444>,  <45.972908, 46.640228, 60.314777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.120834, 46.556976, 60.484444>,  <46.367378, 46.418221, 60.767220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.120834, 46.556976, 60.484444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334429, 0.697449, 0.633815,
		0.712919, 0.627082, -0.313872,
		-0.616364, 0.346891, -0.706939,
		45.935925, 46.661045, 60.272362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.516029, 47.051872, 60.698212>,  <46.367378, 46.418221, 60.767220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.516029, 47.051872, 60.698212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.126411, 47.026894, 60.611183>,  <45.892639, 47.011906, 60.558964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.126411, 47.026894, 60.611183>,  <46.516029, 47.051872, 60.698212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.126411, 47.026894, 60.611183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206492, 0.638876, 0.741079,
		0.092729, 0.766772, -0.635187,
		-0.974044, -0.062442, -0.217575,
		45.834198, 47.008160, 60.545910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.305794, 47.620541, 61.098381>,  <46.516029, 47.051872, 60.698212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.305794, 47.620541, 61.098381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978088, 47.421089, 60.985115>,  <45.781464, 47.301418, 60.917156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978088, 47.421089, 60.985115>,  <46.305794, 47.620541, 61.098381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978088, 47.421089, 60.985115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513767, 0.418988, 0.748661,
		-0.254662, 0.758828, -0.599439,
		-0.819263, -0.498627, -0.283160,
		45.732311, 47.271500, 60.900166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748493, 48.078564, 60.889900>,  <46.305794, 47.620541, 61.098381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748493, 48.078564, 60.889900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619362, 47.733543, 61.045738>,  <45.541882, 47.526531, 61.139240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619362, 47.733543, 61.045738>,  <45.748493, 48.078564, 60.889900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.619362, 47.733543, 61.045738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408992, 0.498357, 0.764438,
		-0.853527, 0.087439, -0.513660,
		-0.322828, -0.862551, 0.389599,
		45.522514, 47.474777, 61.162617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.040588, 48.201023, 61.119968>,  <45.748493, 48.078564, 60.889900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.040588, 48.201023, 61.119968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.222416, 47.901581, 61.313034>,  <45.331512, 47.721916, 61.428875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.222416, 47.901581, 61.313034>,  <45.040588, 48.201023, 61.119968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222416, 47.901581, 61.313034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341847, 0.353763, 0.870628,
		-0.822503, -0.560753, -0.095099,
		0.454565, -0.748603, 0.482663,
		45.358784, 47.676998, 61.457832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553635, 47.649509, 61.244534>,  <45.040588, 48.201023, 61.119968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553635, 47.649509, 61.244534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303940, 47.837288, 60.994751>,  <44.154121, 47.949955, 60.844883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303940, 47.837288, 60.994751>,  <44.553635, 47.649509, 61.244534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303940, 47.837288, 60.994751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780759, 0.347050, -0.519588,
		-0.027205, -0.811894, -0.583171,
		-0.624240, 0.469451, -0.624452,
		44.116669, 47.978123, 60.807415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698360, 47.527336, 60.679710>,  <44.553635, 47.649509, 61.244534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698360, 47.527336, 60.679710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528656, 47.882317, 60.607681>,  <44.426834, 48.095306, 60.564465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528656, 47.882317, 60.607681>,  <44.698360, 47.527336, 60.679710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528656, 47.882317, 60.607681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763165, 0.243379, -0.598620,
		-0.487421, -0.391401, -0.780530,
		-0.424265, 0.887453, -0.180076,
		44.401375, 48.148552, 60.553658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611427, 47.635487, 59.933590>,  <44.698360, 47.527336, 60.679710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611427, 47.635487, 59.933590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639275, 47.996735, 60.103073>,  <44.655983, 48.213482, 60.204762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639275, 47.996735, 60.103073>,  <44.611427, 47.635487, 59.933590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639275, 47.996735, 60.103073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757373, 0.228587, -0.611665,
		-0.649261, 0.363484, -0.668086,
		0.069615, 0.903121, 0.423706,
		44.660160, 48.267670, 60.230186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474472, 48.181965, 59.454273>,  <44.611427, 47.635487, 59.933590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474472, 48.181965, 59.454273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720459, 48.293442, 59.749336>,  <44.868053, 48.360329, 59.926376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720459, 48.293442, 59.749336>,  <44.474472, 48.181965, 59.454273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720459, 48.293442, 59.749336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696857, 0.245748, -0.673794,
		-0.369057, 0.928408, -0.043078,
		0.614970, 0.278688, 0.737662,
		44.904949, 48.377048, 59.970634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709072, 48.878971, 59.298576>,  <44.474472, 48.181965, 59.454273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709072, 48.878971, 59.298576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966255, 48.668839, 59.521515>,  <45.120564, 48.542759, 59.655277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966255, 48.668839, 59.521515>,  <44.709072, 48.878971, 59.298576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966255, 48.668839, 59.521515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728699, 0.195529, -0.656328,
		0.235810, 0.828129, 0.508523,
		0.642955, -0.525329, 0.557349,
		45.159142, 48.511238, 59.688721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169456, 49.352276, 59.355923>,  <44.709072, 48.878971, 59.298576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169456, 49.352276, 59.355923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.311295, 48.980812, 59.399475>,  <45.396397, 48.757935, 59.425606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.311295, 48.980812, 59.399475>,  <45.169456, 49.352276, 59.355923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.311295, 48.980812, 59.399475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602992, 0.138123, -0.785698,
		0.714606, 0.344260, 0.608952,
		0.354595, -0.928659, 0.108882,
		45.417671, 48.702213, 59.432140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915947, 49.375401, 59.344978>,  <45.169456, 49.352276, 59.355923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915947, 49.375401, 59.344978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.811516, 49.007645, 59.227287>,  <45.748859, 48.786991, 59.156673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.811516, 49.007645, 59.227287>,  <45.915947, 49.375401, 59.344978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811516, 49.007645, 59.227287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569991, 0.099169, -0.815644,
		0.779070, -0.380652, 0.498151,
		-0.261075, -0.919386, -0.294227,
		45.733192, 48.731831, 59.139019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471348, 49.269630, 58.987335>,  <45.915947, 49.375401, 59.344978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.471348, 49.269630, 58.987335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.220238, 48.977486, 58.879654>,  <46.069572, 48.802200, 58.815044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.220238, 48.977486, 58.879654>,  <46.471348, 49.269630, 58.987335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.220238, 48.977486, 58.879654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523476, -0.140177, -0.840430,
		0.576083, -0.668521, 0.470327,
		-0.627775, -0.730362, -0.269201,
		46.031906, 48.758377, 58.798893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.850697, 48.663811, 58.773975>,  <46.471348, 49.269630, 58.987335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.850697, 48.663811, 58.773975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486298, 48.613632, 58.616829>,  <46.267658, 48.583527, 58.522541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486298, 48.613632, 58.616829>,  <46.850697, 48.663811, 58.773975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.486298, 48.613632, 58.616829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401970, -0.057116, -0.913870,
		0.092201, -0.990455, 0.102458,
		-0.910999, -0.125445, -0.392867,
		46.212997, 48.576000, 58.498970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.909416, 48.094929, 58.284584>,  <46.850697, 48.663811, 58.773975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.909416, 48.094929, 58.284584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596703, 48.321571, 58.180454>,  <46.409073, 48.457558, 58.117977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596703, 48.321571, 58.180454>,  <46.909416, 48.094929, 58.284584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596703, 48.321571, 58.180454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188240, -0.183554, -0.964818,
		-0.594459, -0.803281, 0.036841,
		-0.781783, 0.566610, -0.260325,
		46.362167, 48.491554, 58.102356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.597553, 47.699230, 57.803802>,  <46.909416, 48.094929, 58.284584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.597553, 47.699230, 57.803802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457680, 48.066269, 57.728195>,  <46.373756, 48.286491, 57.682831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457680, 48.066269, 57.728195>,  <46.597553, 47.699230, 57.803802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457680, 48.066269, 57.728195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186161, -0.129680, -0.973924,
		-0.918185, -0.375756, -0.125475,
		-0.349686, 0.917601, -0.189021,
		46.352776, 48.341549, 57.671490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.105305, 47.566704, 57.277332>,  <46.597553, 47.699230, 57.803802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.105305, 47.566704, 57.277332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.166183, 47.961639, 57.259472>,  <46.202709, 48.198601, 57.248756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.166183, 47.961639, 57.259472>,  <46.105305, 47.566704, 57.277332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.166183, 47.961639, 57.259472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117457, -0.062929, -0.991082,
		-0.981347, 0.145591, -0.125548,
		0.152193, 0.987342, -0.044654,
		46.211842, 48.257843, 57.246075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.669510, 47.771091, 56.838017>,  <46.105305, 47.566704, 57.277332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.669510, 47.771091, 56.838017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.939468, 48.066238, 56.841240>,  <46.101444, 48.243328, 56.843174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.939468, 48.066238, 56.841240>,  <45.669510, 47.771091, 56.838017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.939468, 48.066238, 56.841240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159210, -0.134941, -0.977979,
		-0.720533, 0.661317, -0.208547,
		0.674896, 0.737869, 0.008058,
		46.141937, 48.287598, 56.843658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589081, 48.059555, 56.195980>,  <45.669510, 47.771091, 56.838017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589081, 48.059555, 56.195980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948975, 48.177177, 56.324982>,  <46.164909, 48.247749, 56.402382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948975, 48.177177, 56.324982>,  <45.589081, 48.059555, 56.195980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.948975, 48.177177, 56.324982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363971, -0.097785, -0.926263,
		-0.240834, 0.950774, -0.195007,
		0.899736, 0.294053, 0.322504,
		46.218895, 48.265392, 56.421734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.740795, 48.457977, 55.707291>,  <45.589081, 48.059555, 56.195980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.740795, 48.457977, 55.707291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096130, 48.370766, 55.868942>,  <46.309330, 48.318439, 55.965935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096130, 48.370766, 55.868942>,  <45.740795, 48.457977, 55.707291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.096130, 48.370766, 55.868942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409136, -0.023775, -0.912164,
		0.208488, 0.975652, 0.068083,
		0.888336, -0.218030, 0.404131,
		46.362633, 48.305355, 55.990181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.300304, 48.891331, 55.385319>,  <45.740795, 48.457977, 55.707291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.300304, 48.891331, 55.385319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471001, 48.560020, 55.530560>,  <46.573418, 48.361233, 55.617706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471001, 48.560020, 55.530560>,  <46.300304, 48.891331, 55.385319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.471001, 48.560020, 55.530560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393362, -0.191537, -0.899211,
		0.814346, 0.526561, 0.244077,
		0.426740, -0.828280, 0.363106,
		46.599022, 48.311535, 55.639492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.816059, 48.863007, 55.026161>,  <46.300304, 48.891331, 55.385319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.816059, 48.863007, 55.026161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777145, 48.485542, 55.152672>,  <46.753796, 48.259064, 55.228580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777145, 48.485542, 55.152672>,  <46.816059, 48.863007, 55.026161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.777145, 48.485542, 55.152672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462312, -0.324268, -0.825298,
		0.881364, 0.065930, 0.467815,
		-0.097286, -0.943665, 0.316279,
		46.747959, 48.202442, 55.247555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.460388, 48.542637, 54.730389>,  <46.816059, 48.863007, 55.026161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.460388, 48.542637, 54.730389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.244316, 48.224854, 54.841412>,  <47.114674, 48.034184, 54.908024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.244316, 48.224854, 54.841412>,  <47.460388, 48.542637, 54.730389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.244316, 48.224854, 54.841412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349470, -0.511802, -0.784812,
		0.765557, -0.326941, 0.554105,
		-0.540179, -0.794461, 0.277557,
		47.082264, 47.986515, 54.924679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.892487, 47.953796, 54.735031>,  <47.460388, 48.542637, 54.730389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.892487, 47.953796, 54.735031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.525208, 47.798607, 54.703072>,  <47.304840, 47.705494, 54.683895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.525208, 47.798607, 54.703072>,  <47.892487, 47.953796, 54.735031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.525208, 47.798607, 54.703072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306884, -0.569207, -0.762775,
		0.250454, -0.724902, 0.641709,
		-0.918202, -0.387971, -0.079900,
		47.249748, 47.682217, 54.679100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.001251, 47.270248, 54.643234>,  <47.892487, 47.953796, 54.735031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.001251, 47.270248, 54.643234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632401, 47.302925, 54.491966>,  <47.411091, 47.322533, 54.401207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632401, 47.302925, 54.491966>,  <48.001251, 47.270248, 54.643234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.632401, 47.302925, 54.491966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266613, -0.574136, -0.774135,
		-0.280362, -0.814674, 0.507645,
		-0.922125, 0.081694, -0.378168,
		47.355762, 47.327435, 54.378517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.700432, 46.514065, 54.526714>,  <48.001251, 47.270248, 54.643234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.700432, 46.514065, 54.526714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.509415, 46.795570, 54.316315>,  <47.394802, 46.964474, 54.190075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.509415, 46.795570, 54.316315>,  <47.700432, 46.514065, 54.526714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.509415, 46.795570, 54.316315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291750, -0.437684, -0.850478,
		-0.828753, -0.559602, 0.003692,
		-0.477545, 0.703760, -0.525997,
		47.366150, 47.006699, 54.158516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.445217, 46.102192, 54.054367>,  <47.700432, 46.514065, 54.526714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.445217, 46.102192, 54.054367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.432159, 46.473038, 53.905029>,  <47.424324, 46.695545, 53.815426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.432159, 46.473038, 53.905029>,  <47.445217, 46.102192, 54.054367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.432159, 46.473038, 53.905029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119135, -0.367272, -0.922452,
		-0.992341, -0.074590, -0.098464,
		-0.032642, 0.927118, -0.373346,
		47.422367, 46.751175, 53.793026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.904343, 46.015114, 53.539169>,  <47.445217, 46.102192, 54.054367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.904343, 46.015114, 53.539169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.139549, 46.332977, 53.478821>,  <47.280674, 46.523697, 53.442612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.139549, 46.332977, 53.478821>,  <46.904343, 46.015114, 53.539169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.139549, 46.332977, 53.478821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258984, -0.361671, -0.895613,
		-0.766269, 0.487559, -0.418470,
		0.588013, 0.794657, -0.150867,
		47.315952, 46.571373, 53.433559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.731544, 46.128609, 52.849358>,  <46.904343, 46.015114, 53.539169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.731544, 46.128609, 52.849358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074875, 46.323486, 52.913765>,  <47.280872, 46.440411, 52.952408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074875, 46.323486, 52.913765>,  <46.731544, 46.128609, 52.849358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.074875, 46.323486, 52.913765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248037, -0.119256, -0.961382,
		-0.449174, 0.865115, -0.223202,
		0.858324, 0.487190, 0.161014,
		47.332371, 46.469643, 52.962070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.774437, 46.642418, 52.326389>,  <46.731544, 46.128609, 52.849358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.774437, 46.642418, 52.326389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.148468, 46.566589, 52.446182>,  <47.372887, 46.521091, 52.518059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.148468, 46.566589, 52.446182>,  <46.774437, 46.642418, 52.326389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.148468, 46.566589, 52.446182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297106, -0.041507, -0.953942,
		0.193270, 0.980989, 0.017511,
		0.935080, -0.189571, 0.299480,
		47.428993, 46.509720, 52.536026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.268730, 47.090672, 51.973648>,  <46.774437, 46.642418, 52.326389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.268730, 47.090672, 51.973648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.519371, 46.798096, 52.081257>,  <47.669754, 46.622551, 52.145824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.519371, 46.798096, 52.081257>,  <47.268730, 47.090672, 51.973648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.519371, 46.798096, 52.081257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400286, 0.005866, -0.916371,
		0.668690, 0.681884, 0.296460,
		0.626598, -0.731437, 0.269026,
		47.707352, 46.578663, 52.161964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.896118, 47.269829, 51.590298>,  <47.268730, 47.090672, 51.973648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.896118, 47.269829, 51.590298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.906654, 46.878792, 51.673836>,  <47.912975, 46.644169, 51.723957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.906654, 46.878792, 51.673836>,  <47.896118, 47.269829, 51.590298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.906654, 46.878792, 51.673836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394133, -0.181837, -0.900886,
		0.918676, 0.106046, 0.380511,
		0.026345, -0.977594, 0.208845,
		47.914558, 46.585514, 51.736488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.546764, 47.027729, 51.392387>,  <47.896118, 47.269829, 51.590298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.546764, 47.027729, 51.392387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.348351, 46.680664, 51.405781>,  <48.229301, 46.472427, 51.413815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.348351, 46.680664, 51.405781>,  <48.546764, 47.027729, 51.392387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.348351, 46.680664, 51.405781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337885, -0.228398, -0.913054,
		0.799865, -0.441593, 0.406462,
		-0.496033, -0.867658, 0.033480,
		48.199539, 46.420368, 51.415825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.048367, 46.528488, 51.296822>,  <48.546764, 47.027729, 51.392387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.048367, 46.528488, 51.296822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.696678, 46.363960, 51.200672>,  <48.485664, 46.265244, 51.142982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.696678, 46.363960, 51.200672>,  <49.048367, 46.528488, 51.296822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.696678, 46.363960, 51.200672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383873, -0.312849, -0.868773,
		0.282143, -0.856120, 0.432960,
		-0.879225, -0.411320, -0.240373,
		48.432911, 46.240562, 51.128559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.189293, 45.899178, 51.011051>,  <49.048367, 46.528488, 51.296822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.189293, 45.899178, 51.011051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.812546, 45.925392, 50.879238>,  <48.586498, 45.941120, 50.800148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.812546, 45.925392, 50.879238>,  <49.189293, 45.899178, 51.011051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.812546, 45.925392, 50.879238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250053, -0.518374, -0.817778,
		-0.224414, -0.852639, 0.471853,
		-0.941866, 0.065532, -0.329536,
		48.529987, 45.945053, 50.780376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.946144, 45.259724, 50.781738>,  <49.189293, 45.899178, 51.011051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.946144, 45.259724, 50.781738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.696365, 45.499550, 50.581505>,  <48.546497, 45.643444, 50.461365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.696365, 45.499550, 50.581505>,  <48.946144, 45.259724, 50.781738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.696365, 45.499550, 50.581505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138223, -0.545953, -0.826335,
		-0.768737, -0.585196, 0.258046,
		-0.624449, 0.599567, -0.500582,
		48.509029, 45.679420, 50.431332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.493530, 44.833195, 50.357288>,  <48.946144, 45.259724, 50.781738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.493530, 44.833195, 50.357288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.444542, 45.183937, 50.171333>,  <48.415150, 45.394382, 50.059761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.444542, 45.183937, 50.171333>,  <48.493530, 44.833195, 50.357288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.444542, 45.183937, 50.171333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130618, -0.450096, -0.883376,
		-0.983839, -0.168912, -0.059409,
		-0.122473, 0.876860, -0.464885,
		48.407799, 45.446995, 50.031868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.054359, 44.694942, 49.844009>,  <48.493530, 44.833195, 50.357288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.054359, 44.694942, 49.844009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.225914, 45.038101, 49.730816>,  <48.328846, 45.243996, 49.662899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.225914, 45.038101, 49.730816>,  <48.054359, 44.694942, 49.844009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.225914, 45.038101, 49.730816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118204, -0.363855, -0.923925,
		-0.895593, 0.362806, -0.257458,
		0.428883, 0.857893, -0.282981,
		48.354580, 45.295467, 49.645920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.770958, 44.972965, 49.163963>,  <48.054359, 44.694942, 49.844009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.770958, 44.972965, 49.163963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.137428, 45.129425, 49.198887>,  <48.357311, 45.223301, 49.219841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.137428, 45.129425, 49.198887>,  <47.770958, 44.972965, 49.163963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.137428, 45.129425, 49.198887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249495, -0.386170, -0.888046,
		-0.313644, 0.835389, -0.451390,
		0.916177, 0.391150, 0.087305,
		48.412281, 45.246769, 49.225079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.911713, 45.081425, 48.489258>,  <47.770958, 44.972965, 49.163963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.911713, 45.081425, 48.489258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.279221, 45.111351, 48.644318>,  <48.499725, 45.129307, 48.737354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.279221, 45.111351, 48.644318>,  <47.911713, 45.081425, 48.489258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.279221, 45.111351, 48.644318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391787, -0.293937, -0.871839,
		0.048714, 0.952892, -0.299373,
		0.918765, 0.074820, 0.387650,
		48.554852, 45.133797, 48.760612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.253952, 45.417313, 47.951637>,  <47.911713, 45.081425, 48.489258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.253952, 45.417313, 47.951637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.503975, 45.207649, 48.183002>,  <48.653988, 45.081852, 48.321823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.503975, 45.207649, 48.183002>,  <48.253952, 45.417313, 47.951637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.503975, 45.207649, 48.183002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366265, -0.457425, -0.810317,
		0.689313, 0.718348, -0.093937,
		0.625058, -0.524156, 0.578414,
		48.691494, 45.050404, 48.356525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.901592, 45.407402, 47.629700>,  <48.253952, 45.417313, 47.951637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.901592, 45.407402, 47.629700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.935913, 45.110466, 47.895504>,  <48.956505, 44.932304, 48.054985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.935913, 45.110466, 47.895504>,  <48.901592, 45.407402, 47.629700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.935913, 45.110466, 47.895504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416553, -0.579150, -0.700763,
		0.905054, 0.336927, 0.259533,
		0.085798, -0.742338, 0.664510,
		48.961651, 44.887764, 48.094856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.508354, 45.266136, 47.618866>,  <48.901592, 45.407402, 47.629700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.508354, 45.266136, 47.618866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.351730, 44.928932, 47.766384>,  <49.257755, 44.726608, 47.854897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.351730, 44.928932, 47.766384>,  <49.508354, 45.266136, 47.618866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.351730, 44.928932, 47.766384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466169, -0.527304, -0.710378,
		0.793325, -0.106235, 0.599458,
		-0.391564, -0.843009, 0.368800,
		49.234261, 44.676029, 47.877026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.037704, 44.723095, 47.631634>,  <49.508354, 45.266136, 47.618866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.037704, 44.723095, 47.631634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.702400, 44.505333, 47.643890>,  <49.501217, 44.374676, 47.651245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.702400, 44.505333, 47.643890>,  <50.037704, 44.723095, 47.631634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.702400, 44.505333, 47.643890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326696, -0.546437, -0.771153,
		0.436565, -0.636417, 0.635913,
		-0.838260, -0.544408, 0.030640,
		49.450924, 44.342010, 47.653084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.276024, 44.015789, 47.455490>,  <50.037704, 44.723095, 47.631634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.276024, 44.015789, 47.455490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.880005, 44.010475, 47.399456>,  <49.642391, 44.007286, 47.365837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.880005, 44.010475, 47.399456>,  <50.276024, 44.015789, 47.455490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.880005, 44.010475, 47.399456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131479, -0.442079, -0.887288,
		-0.050137, -0.896878, 0.439427,
		-0.990050, -0.013289, -0.140085,
		49.582989, 44.006489, 47.357430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.076984, 43.358955, 47.287670>,  <50.276024, 44.015789, 47.455490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.076984, 43.358955, 47.287670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.809799, 43.602493, 47.116493>,  <49.649487, 43.748615, 47.013786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.809799, 43.602493, 47.116493>,  <50.076984, 43.358955, 47.287670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.809799, 43.602493, 47.116493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028098, -0.553999, -0.832043,
		-0.743664, -0.567798, 0.352943,
		-0.667963, 0.608844, -0.427943,
		49.609409, 43.785145, 46.988110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.596340, 42.848236, 46.948692>,  <50.076984, 43.358955, 47.287670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.596340, 42.848236, 46.948692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.489456, 43.206429, 46.806309>,  <49.425323, 43.421345, 46.720879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.489456, 43.206429, 46.806309>,  <49.596340, 42.848236, 46.948692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.489456, 43.206429, 46.806309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078194, -0.388318, -0.918202,
		-0.960460, -0.217522, 0.173785,
		-0.267213, 0.895485, -0.355955,
		49.409294, 43.475075, 46.699524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.053776, 42.704479, 46.444782>,  <49.596340, 42.848236, 46.948692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.053776, 42.704479, 46.444782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.181396, 43.066490, 46.332260>,  <49.257969, 43.283695, 46.264748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.181396, 43.066490, 46.332260>,  <49.053776, 42.704479, 46.444782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.181396, 43.066490, 46.332260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207293, -0.222996, -0.952524,
		-0.924789, 0.362220, 0.116458,
		0.319054, 0.905025, -0.281310,
		49.277111, 43.337997, 46.247868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.598396, 42.962051, 45.945709>,  <49.053776, 42.704479, 46.444782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.598396, 42.962051, 45.945709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.913811, 43.199982, 45.883240>,  <49.103062, 43.342739, 45.845760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.913811, 43.199982, 45.883240>,  <48.598396, 42.962051, 45.945709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.913811, 43.199982, 45.883240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001427, -0.252171, -0.967681,
		-0.614981, 0.763279, -0.197999,
		0.788540, 0.594824, -0.156170,
		49.150372, 43.378429, 45.836388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.403198, 43.479355, 45.444305>,  <48.598396, 42.962051, 45.945709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.403198, 43.479355, 45.444305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.800766, 43.450851, 45.410709>,  <49.039307, 43.433750, 45.390553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.800766, 43.450851, 45.410709>,  <48.403198, 43.479355, 45.444305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.800766, 43.450851, 45.410709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099090, -0.245435, -0.964335,
		0.048107, 0.966790, -0.251003,
		0.993915, -0.071263, -0.083992,
		49.098942, 43.429474, 45.385513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.446285, 44.347164, 45.436039>,  <48.403198, 43.479355, 45.444305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.446285, 44.347164, 45.436039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.181503, 44.307579, 45.138847>,  <48.022633, 44.283829, 44.960533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.181503, 44.307579, 45.138847>,  <48.446285, 44.347164, 45.436039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.181503, 44.307579, 45.138847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709849, 0.401069, 0.579015,
		0.240685, 0.910686, -0.335740,
		-0.661956, -0.098964, -0.742981,
		47.982918, 44.277889, 44.915955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.058434, 44.935764, 45.261871>,  <48.446285, 44.347164, 45.436039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.058434, 44.935764, 45.261871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.835976, 44.611710, 45.187706>,  <47.702503, 44.417274, 45.143208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.835976, 44.611710, 45.187706>,  <48.058434, 44.935764, 45.261871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.835976, 44.611710, 45.187706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727856, 0.367095, 0.579195,
		-0.401165, 0.457069, -0.793823,
		-0.556140, -0.810142, -0.185415,
		47.669132, 44.368668, 45.132080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.539368, 45.209278, 45.036274>,  <48.058434, 44.935764, 45.261871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.539368, 45.209278, 45.036274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.433693, 44.858887, 45.197701>,  <47.370289, 44.648651, 45.294556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.433693, 44.858887, 45.197701>,  <47.539368, 45.209278, 45.036274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.433693, 44.858887, 45.197701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535010, 0.481255, 0.694376,
		-0.802475, -0.032462, -0.595801,
		-0.264191, -0.875980, 0.403562,
		47.354435, 44.596092, 45.318768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.789398, 45.219070, 45.073162>,  <47.539368, 45.209278, 45.036274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.789398, 45.219070, 45.073162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.924217, 44.941185, 45.327332>,  <47.005108, 44.774452, 45.479836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.924217, 44.941185, 45.327332>,  <46.789398, 45.219070, 45.073162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.924217, 44.941185, 45.327332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624184, 0.340387, 0.703229,
		-0.704837, -0.633644, -0.318905,
		0.337045, -0.694717, 0.635428,
		47.025330, 44.732769, 45.517960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182117, 44.901367, 45.383213>,  <46.789398, 45.219070, 45.073162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182117, 44.901367, 45.383213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486191, 44.827927, 45.632504>,  <46.668636, 44.783863, 45.782078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486191, 44.827927, 45.632504>,  <46.182117, 44.901367, 45.383213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.486191, 44.827927, 45.632504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534147, 0.369481, 0.760375,
		-0.369874, -0.910920, 0.182805,
		0.760184, -0.183599, 0.623227,
		46.714245, 44.772846, 45.819473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840660, 44.618965, 45.976002>,  <46.182117, 44.901367, 45.383213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.840660, 44.618965, 45.976002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197014, 44.733276, 46.117226>,  <46.410828, 44.801865, 46.201962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197014, 44.733276, 46.117226>,  <45.840660, 44.618965, 45.976002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.197014, 44.733276, 46.117226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435859, 0.319024, 0.841576,
		0.127868, -0.903634, 0.408773,
		0.890885, 0.285778, 0.353064,
		46.464279, 44.819012, 46.223145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852539, 44.341049, 46.644047>,  <45.840660, 44.618965, 45.976002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852539, 44.341049, 46.644047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.141960, 44.617050, 46.651657>,  <46.315613, 44.782650, 46.656223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.141960, 44.617050, 46.651657>,  <45.852539, 44.341049, 46.644047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.141960, 44.617050, 46.651657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340521, 0.332823, 0.879360,
		0.600431, -0.642743, 0.475777,
		0.723552, 0.690008, 0.019030,
		46.359024, 44.824051, 46.657368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.120670, 44.324059, 47.336231>,  <45.852539, 44.341049, 46.644047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.120670, 44.324059, 47.336231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271385, 44.673943, 47.214302>,  <46.361813, 44.883873, 47.141144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271385, 44.673943, 47.214302>,  <46.120670, 44.324059, 47.336231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271385, 44.673943, 47.214302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364883, 0.442618, 0.819115,
		0.851407, -0.197406, 0.485938,
		0.376783, 0.874712, -0.304819,
		46.384418, 44.936356, 47.122856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.571171, 44.555668, 47.904465>,  <46.120670, 44.324059, 47.336231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.571171, 44.555668, 47.904465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474518, 44.877876, 47.688042>,  <46.416527, 45.071201, 47.558189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474518, 44.877876, 47.688042>,  <46.571171, 44.555668, 47.904465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.474518, 44.877876, 47.688042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338623, 0.452530, 0.824955,
		0.909366, 0.382552, 0.163422,
		-0.241635, 0.805525, -0.541056,
		46.402027, 45.119534, 47.525726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.868912, 45.117035, 48.198784>,  <46.571171, 44.555668, 47.904465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.868912, 45.117035, 48.198784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.558716, 45.264412, 47.993702>,  <46.372597, 45.352837, 47.870655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.558716, 45.264412, 47.993702>,  <46.868912, 45.117035, 48.198784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.558716, 45.264412, 47.993702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286342, 0.518495, 0.805711,
		0.562689, 0.771632, -0.296590,
		-0.775493, 0.368439, -0.512702,
		46.326069, 45.374943, 47.839890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861019, 45.829895, 48.357723>,  <46.868912, 45.117035, 48.198784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861019, 45.829895, 48.357723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.487129, 45.755524, 48.236588>,  <46.262794, 45.710899, 48.163906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.487129, 45.755524, 48.236588>,  <46.861019, 45.829895, 48.357723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.487129, 45.755524, 48.236588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355242, 0.466905, 0.809817,
		-0.009175, 0.864540, -0.502481,
		-0.934729, -0.185933, -0.302837,
		46.206711, 45.699745, 48.145737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.621365, 46.343651, 48.593468>,  <46.861019, 45.829895, 48.357723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.621365, 46.343651, 48.593468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.269302, 46.190971, 48.480598>,  <46.058064, 46.099361, 48.412876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.269302, 46.190971, 48.480598>,  <46.621365, 46.343651, 48.593468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.269302, 46.190971, 48.480598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467915, 0.597699, 0.651009,
		-0.079838, 0.705024, -0.704675,
		-0.880160, -0.381703, -0.282172,
		46.005253, 46.076462, 48.395947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141964, 46.873348, 48.434975>,  <46.621365, 46.343651, 48.593468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141964, 46.873348, 48.434975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921913, 46.564178, 48.561436>,  <45.789883, 46.378677, 48.637314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921913, 46.564178, 48.561436>,  <46.141964, 46.873348, 48.434975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921913, 46.564178, 48.561436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401524, 0.576777, 0.711412,
		-0.732216, 0.264424, -0.627647,
		-0.550126, -0.772922, 0.316153,
		45.756874, 46.332302, 48.656281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470364, 47.216633, 48.575993>,  <46.141964, 46.873348, 48.434975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470364, 47.216633, 48.575993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.508751, 46.863388, 48.759693>,  <45.531784, 46.651443, 48.869911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.508751, 46.863388, 48.759693>,  <45.470364, 47.216633, 48.575993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.508751, 46.863388, 48.759693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187565, 0.437069, 0.879653,
		-0.977553, -0.170557, -0.123696,
		0.095968, -0.883109, 0.459249,
		45.537540, 46.598457, 48.897469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844597, 47.147747, 48.955894>,  <45.470364, 47.216633, 48.575993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844597, 47.147747, 48.955894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135075, 46.932396, 49.126907>,  <45.309361, 46.803185, 49.229515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135075, 46.932396, 49.126907>,  <44.844597, 47.147747, 48.955894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135075, 46.932396, 49.126907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235561, 0.389376, 0.890448,
		-0.645873, -0.747349, 0.155941,
		0.726195, -0.538383, 0.427533,
		45.352932, 46.770882, 49.255169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568497, 46.880043, 49.460770>,  <44.844597, 47.147747, 48.955894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568497, 46.880043, 49.460770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951126, 46.855278, 49.574703>,  <45.180702, 46.840420, 49.643063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951126, 46.855278, 49.574703>,  <44.568497, 46.880043, 49.460770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951126, 46.855278, 49.574703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262817, 0.239416, 0.934670,
		-0.126063, -0.968941, 0.212747,
		0.956575, -0.061914, 0.284836,
		45.238098, 46.836704, 49.660152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397263, 46.664040, 50.076172>,  <44.568497, 46.880043, 49.460770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397263, 46.664040, 50.076172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778896, 46.783730, 50.081532>,  <45.007877, 46.855545, 50.084747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778896, 46.783730, 50.081532>,  <44.397263, 46.664040, 50.076172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778896, 46.783730, 50.081532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149494, 0.436940, 0.886981,
		0.259551, -0.848262, 0.461612,
		0.954088, 0.299225, 0.013401,
		45.065125, 46.873497, 50.085552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554897, 46.570267, 50.730156>,  <44.397263, 46.664040, 50.076172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554897, 46.570267, 50.730156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856285, 46.809906, 50.621815>,  <45.037117, 46.953690, 50.556808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856285, 46.809906, 50.621815>,  <44.554897, 46.570267, 50.730156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856285, 46.809906, 50.621815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001740, 0.410140, 0.912021,
		0.657478, -0.687654, 0.307987,
		0.753472, 0.599097, -0.270855,
		45.082325, 46.989635, 50.540558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057835, 46.443420, 51.151123>,  <44.554897, 46.570267, 50.730156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057835, 46.443420, 51.151123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132763, 46.808449, 51.005730>,  <45.177719, 47.027466, 50.918495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132763, 46.808449, 51.005730>,  <45.057835, 46.443420, 51.151123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132763, 46.808449, 51.005730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091517, 0.352206, 0.931437,
		0.978026, -0.207744, -0.017540,
		0.187323, 0.912575, -0.363479,
		45.188961, 47.082222, 50.896687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.634979, 46.650452, 51.475277>,  <45.057835, 46.443420, 51.151123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.634979, 46.650452, 51.475277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454285, 46.981766, 51.342686>,  <45.345867, 47.180553, 51.263130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454285, 46.981766, 51.342686>,  <45.634979, 46.650452, 51.475277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454285, 46.981766, 51.342686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123567, 0.426055, 0.896219,
		0.883554, 0.363892, -0.294813,
		-0.451734, 0.828287, -0.331478,
		45.318764, 47.230251, 51.243244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.957306, 47.111664, 51.916195>,  <45.634979, 46.650452, 51.475277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.957306, 47.111664, 51.916195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661606, 47.340187, 51.773579>,  <45.484188, 47.477299, 51.688007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661606, 47.340187, 51.773579>,  <45.957306, 47.111664, 51.916195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661606, 47.340187, 51.773579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159048, 0.366350, 0.916783,
		0.654383, 0.734437, -0.179959,
		-0.739248, 0.571305, -0.356544,
		45.439831, 47.511578, 51.666615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.094147, 47.714748, 52.234699>,  <45.957306, 47.111664, 51.916195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.094147, 47.714748, 52.234699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712502, 47.696030, 52.116394>,  <45.483513, 47.684799, 52.045410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712502, 47.696030, 52.116394>,  <46.094147, 47.714748, 52.234699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.712502, 47.696030, 52.116394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295914, 0.298527, 0.907368,
		0.045835, 0.953254, -0.298675,
		-0.954114, -0.046793, -0.295765,
		45.426266, 47.681992, 52.027664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688232, 48.380608, 52.319550>,  <46.094147, 47.714748, 52.234699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.688232, 48.380608, 52.319550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417419, 48.086494, 52.332111>,  <45.254932, 47.910027, 52.339649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417419, 48.086494, 52.332111>,  <45.688232, 48.380608, 52.319550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417419, 48.086494, 52.332111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216957, 0.240188, 0.946171,
		-0.703246, 0.633776, -0.322140,
		-0.677034, -0.735281, 0.031409,
		45.214310, 47.865910, 52.341534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080048, 48.637833, 52.625458>,  <45.688232, 48.380608, 52.319550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080048, 48.637833, 52.625458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020378, 48.244629, 52.668240>,  <44.984577, 48.008705, 52.693909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020378, 48.244629, 52.668240>,  <45.080048, 48.637833, 52.625458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020378, 48.244629, 52.668240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322298, 0.150595, 0.934583,
		-0.934811, 0.104939, -0.339286,
		-0.149169, -0.983010, 0.106956,
		44.975628, 47.949726, 52.700325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452759, 48.557068, 53.079304>,  <45.080048, 48.637833, 52.625458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452759, 48.557068, 53.079304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609116, 48.189224, 53.094963>,  <44.702930, 47.968517, 53.104359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609116, 48.189224, 53.094963>,  <44.452759, 48.557068, 53.079304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609116, 48.189224, 53.094963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497113, -0.175127, 0.849829,
		-0.774651, -0.351649, -0.525603,
		0.390889, -0.919605, 0.039147,
		44.726383, 47.913342, 53.106709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920769, 48.108715, 53.202736>,  <44.452759, 48.557068, 53.079304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920769, 48.108715, 53.202736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252930, 47.928123, 53.333336>,  <44.452225, 47.819767, 53.411697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252930, 47.928123, 53.333336>,  <43.920769, 48.108715, 53.202736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252930, 47.928123, 53.333336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509420, -0.377870, 0.773114,
		-0.225671, -0.808320, -0.543776,
		0.830400, -0.451480, 0.326500,
		44.502048, 47.792679, 53.431286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741760, 47.416241, 53.402977>,  <43.920769, 48.108715, 53.202736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741760, 47.416241, 53.402977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078392, 47.472244, 53.611645>,  <44.280373, 47.505848, 53.736847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078392, 47.472244, 53.611645>,  <43.741760, 47.416241, 53.402977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078392, 47.472244, 53.611645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389913, -0.510879, 0.766141,
		0.373779, -0.848174, -0.375353,
		0.841580, 0.140012, 0.521669,
		44.330868, 47.514248, 53.768147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751045, 46.861351, 53.853775>,  <43.741760, 47.416241, 53.402977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751045, 46.861351, 53.853775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993111, 47.133018, 54.019909>,  <44.138351, 47.296021, 54.119591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993111, 47.133018, 54.019909>,  <43.751045, 46.861351, 53.853775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993111, 47.133018, 54.019909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191390, -0.382296, 0.904002,
		0.772751, -0.626563, -0.101367,
		0.605166, 0.679168, 0.415338,
		44.174660, 47.336769, 54.144508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003582, 46.506519, 54.502151>,  <43.751045, 46.861351, 53.853775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003582, 46.506519, 54.502151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094292, 46.893394, 54.547966>,  <44.148720, 47.125519, 54.575455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094292, 46.893394, 54.547966>,  <44.003582, 46.506519, 54.502151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094292, 46.893394, 54.547966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126222, -0.087419, 0.988143,
		0.965733, -0.238546, 0.102256,
		0.226778, 0.967189, 0.114533,
		44.162327, 47.183552, 54.582325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.534794, 46.460663, 54.966778>,  <44.003582, 46.506519, 54.502151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.534794, 46.460663, 54.966778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392933, 46.833618, 54.994686>,  <44.307816, 47.057392, 55.011433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392933, 46.833618, 54.994686>,  <44.534794, 46.460663, 54.966778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392933, 46.833618, 54.994686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001078, -0.075030, 0.997181,
		0.934999, 0.353574, 0.027615,
		-0.354649, 0.932392, 0.069771,
		44.286537, 47.113335, 55.015617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.943199, 46.743290, 55.477398>,  <44.534794, 46.460663, 54.966778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.943199, 46.743290, 55.477398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.620857, 46.979530, 55.460518>,  <44.427452, 47.121277, 55.450390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.620857, 46.979530, 55.460518>,  <44.943199, 46.743290, 55.477398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620857, 46.979530, 55.460518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005922, 0.079304, 0.996833,
		0.592080, 0.803055, -0.067405,
		-0.805857, 0.590604, -0.042199,
		44.379101, 47.156712, 55.447857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.035519, 47.325977, 55.890331>,  <44.943199, 46.743290, 55.477398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.035519, 47.325977, 55.890331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636894, 47.322220, 55.857395>,  <44.397720, 47.319965, 55.837635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636894, 47.322220, 55.857395>,  <45.035519, 47.325977, 55.890331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636894, 47.322220, 55.857395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082431, 0.010152, 0.996545,
		-0.008527, 0.999904, -0.010892,
		-0.996560, -0.009395, -0.082336,
		44.337925, 47.319401, 55.832695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886391, 47.874447, 56.327133>,  <45.035519, 47.325977, 55.890331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886391, 47.874447, 56.327133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564156, 47.642563, 56.278214>,  <44.370815, 47.503433, 56.248859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564156, 47.642563, 56.278214>,  <44.886391, 47.874447, 56.327133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564156, 47.642563, 56.278214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084346, -0.092109, 0.992170,
		-0.586439, 0.809599, 0.025306,
		-0.805590, -0.579712, -0.122302,
		44.322479, 47.468651, 56.241524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368382, 48.032681, 56.893810>,  <44.886391, 47.874447, 56.327133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368382, 48.032681, 56.893810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228043, 47.680992, 56.764896>,  <44.143837, 47.469978, 56.687550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228043, 47.680992, 56.764896>,  <44.368382, 48.032681, 56.893810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228043, 47.680992, 56.764896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212620, -0.260378, 0.941804,
		-0.911975, 0.398955, -0.095588,
		-0.350849, -0.879226, -0.322284,
		44.122787, 47.417225, 56.668213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727158, 47.951221, 57.217041>,  <44.368382, 48.032681, 56.893810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727158, 47.951221, 57.217041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872993, 47.591728, 57.119587>,  <43.960495, 47.376034, 57.061115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872993, 47.591728, 57.119587>,  <43.727158, 47.951221, 57.217041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872993, 47.591728, 57.119587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183156, -0.325751, 0.927545,
		-0.912977, -0.293552, -0.283374,
		0.364593, -0.898729, -0.243638,
		43.982372, 47.322109, 57.046497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221512, 47.494904, 57.495502>,  <43.727158, 47.951221, 57.217041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221512, 47.494904, 57.495502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536659, 47.258698, 57.425579>,  <43.725746, 47.116974, 57.383625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536659, 47.258698, 57.425579>,  <43.221512, 47.494904, 57.495502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536659, 47.258698, 57.425579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117088, -0.422298, 0.898863,
		-0.604616, -0.687715, -0.401856,
		0.787864, -0.590520, -0.174805,
		43.773018, 47.081543, 57.373138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015980, 46.799656, 57.489960>,  <43.221512, 47.494904, 57.495502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015980, 46.799656, 57.489960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407269, 46.781883, 57.571068>,  <43.642040, 46.771221, 57.619732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407269, 46.781883, 57.571068>,  <43.015980, 46.799656, 57.489960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407269, 46.781883, 57.571068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191513, -0.570030, 0.798992,
		0.080087, -0.820422, -0.566123,
		0.978217, -0.044431, 0.202773,
		43.700733, 46.768555, 57.631901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169598, 46.194256, 57.724567>,  <43.015980, 46.799656, 57.489960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169598, 46.194256, 57.724567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489220, 46.386749, 57.868748>,  <43.680992, 46.502247, 57.955254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489220, 46.386749, 57.868748>,  <43.169598, 46.194256, 57.724567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489220, 46.386749, 57.868748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079963, -0.509110, 0.856979,
		0.595916, -0.713597, -0.368326,
		0.799056, 0.481235, 0.360448,
		43.728935, 46.531120, 57.976883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868225, 45.581909, 58.047466>,  <43.169598, 46.194256, 57.724567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868225, 45.581909, 58.047466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497982, 45.701035, 58.140903>,  <42.275837, 45.772511, 58.196964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497982, 45.701035, 58.140903>,  <42.868225, 45.581909, 58.047466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497982, 45.701035, 58.140903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284970, -0.142187, -0.947932,
		-0.249092, -0.943976, 0.216476,
		-0.925605, 0.297811, 0.233588,
		42.220299, 45.790379, 58.210979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370354, 45.024982, 57.934776>,  <42.868225, 45.581909, 58.047466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370354, 45.024982, 57.934776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153481, 45.360893, 57.923401>,  <42.023357, 45.562439, 57.916576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153481, 45.360893, 57.923401>,  <42.370354, 45.024982, 57.934776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153481, 45.360893, 57.923401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294336, -0.221513, -0.929676,
		-0.787022, -0.495684, 0.367278,
		-0.542183, 0.839779, -0.028439,
		41.990826, 45.612827, 57.914871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695995, 44.816704, 57.656803>,  <42.370354, 45.024982, 57.934776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695995, 44.816704, 57.656803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712646, 45.214073, 57.614136>,  <41.722637, 45.452496, 57.588535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712646, 45.214073, 57.614136>,  <41.695995, 44.816704, 57.656803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712646, 45.214073, 57.614136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249868, -0.093016, -0.963802,
		-0.967385, 0.066772, 0.244353,
		0.041626, 0.993423, -0.106667,
		41.725136, 45.512100, 57.582134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088440, 45.063229, 57.232910>,  <41.695995, 44.816704, 57.656803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088440, 45.063229, 57.232910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359760, 45.355591, 57.202728>,  <41.522552, 45.531006, 57.184620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359760, 45.355591, 57.202728>,  <41.088440, 45.063229, 57.232910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359760, 45.355591, 57.202728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176271, 0.062168, -0.982377,
		-0.713332, 0.679644, 0.171005,
		0.678297, 0.730904, -0.075456,
		41.563248, 45.574863, 57.180092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782532, 45.471931, 56.801815>,  <41.088440, 45.063229, 57.232910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782532, 45.471931, 56.801815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165886, 45.586060, 56.805626>,  <41.395897, 45.654537, 56.807915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165886, 45.586060, 56.805626>,  <40.782532, 45.471931, 56.801815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165886, 45.586060, 56.805626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014302, -0.014642, -0.999791,
		-0.285124, 0.958319, -0.018113,
		0.958384, 0.285323, 0.009531,
		41.453400, 45.671658, 56.808487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903957, 46.034603, 56.255070>,  <40.782532, 45.471931, 56.801815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903957, 46.034603, 56.255070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279388, 45.906212, 56.305737>,  <41.504646, 45.829178, 56.336136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279388, 45.906212, 56.305737>,  <40.903957, 46.034603, 56.255070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279388, 45.906212, 56.305737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182892, 0.151447, -0.971398,
		0.292611, 0.934901, 0.200849,
		0.938578, -0.320975, 0.126671,
		41.560963, 45.809917, 56.343739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380131, 46.570877, 55.985882>,  <40.903957, 46.034603, 56.255070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380131, 46.570877, 55.985882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548485, 46.208046, 55.988983>,  <41.649498, 45.990345, 55.990845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548485, 46.208046, 55.988983>,  <41.380131, 46.570877, 55.985882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548485, 46.208046, 55.988983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240740, 0.103453, -0.965061,
		0.874586, 0.408047, 0.261912,
		0.420886, -0.907081, 0.007754,
		41.674751, 45.935921, 55.991310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038685, 46.624454, 55.703690>,  <41.380131, 46.570877, 55.985882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038685, 46.624454, 55.703690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985634, 46.229210, 55.672569>,  <41.953804, 45.992065, 55.653896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985634, 46.229210, 55.672569>,  <42.038685, 46.624454, 55.703690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985634, 46.229210, 55.672569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175292, 0.053877, -0.983041,
		0.975542, -0.144015, 0.166062,
		-0.132626, -0.988108, -0.077804,
		41.945847, 45.932777, 55.649227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510532, 46.419941, 55.310028>,  <42.038685, 46.624454, 55.703690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510532, 46.419941, 55.310028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271797, 46.100906, 55.275063>,  <42.128555, 45.909485, 55.254082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271797, 46.100906, 55.275063>,  <42.510532, 46.419941, 55.310028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271797, 46.100906, 55.275063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304774, -0.124580, -0.944241,
		0.742222, -0.590203, 0.317437,
		-0.596841, -0.797584, -0.087412,
		42.092747, 45.861629, 55.248840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848000, 45.958122, 54.788704>,  <42.510532, 46.419941, 55.310028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848000, 45.958122, 54.788704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462753, 45.850502, 54.790752>,  <42.231606, 45.785931, 54.791981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462753, 45.850502, 54.790752>,  <42.848000, 45.958122, 54.788704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462753, 45.850502, 54.790752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008529, -0.049557, -0.998735,
		0.268968, -0.961849, 0.050024,
		-0.963112, -0.269054, 0.005125,
		42.173820, 45.769787, 54.792290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922306, 45.514702, 54.321602>,  <42.848000, 45.958122, 54.788704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922306, 45.514702, 54.321602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527763, 45.575653, 54.346539>,  <42.291039, 45.612225, 54.361500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527763, 45.575653, 54.346539>,  <42.922306, 45.514702, 54.321602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527763, 45.575653, 54.346539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051428, 0.074540, -0.995891,
		-0.156396, -0.985508, -0.065687,
		-0.986355, 0.152375, 0.062340,
		42.231857, 45.621365, 54.365242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658169, 45.011616, 53.873051>,  <42.922306, 45.514702, 54.321602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658169, 45.011616, 53.873051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.379654, 45.293037, 53.929897>,  <42.212547, 45.461891, 53.964005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.379654, 45.293037, 53.929897>,  <42.658169, 45.011616, 53.873051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379654, 45.293037, 53.929897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160928, 0.039933, -0.986158,
		-0.699493, -0.709516, 0.085417,
		-0.696284, 0.703557, 0.142114,
		42.170769, 45.504105, 53.972530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919323, 44.831139, 53.597733>,  <42.658169, 45.011616, 53.873051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919323, 44.831139, 53.597733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993328, 45.224083, 53.608593>,  <42.037731, 45.459850, 53.615108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993328, 45.224083, 53.608593>,  <41.919323, 44.831139, 53.597733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993328, 45.224083, 53.608593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149082, 0.055360, -0.987274,
		-0.971363, 0.178608, 0.156695,
		0.185009, 0.982362, 0.027147,
		42.048832, 45.518791, 53.616737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443012, 45.079941, 53.148605>,  <41.919323, 44.831139, 53.597733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443012, 45.079941, 53.148605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745892, 45.339050, 53.182144>,  <41.927620, 45.494518, 53.202267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745892, 45.339050, 53.182144>,  <41.443012, 45.079941, 53.148605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745892, 45.339050, 53.182144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023348, 0.101445, -0.994567,
		-0.652763, 0.755046, 0.061690,
		0.757202, 0.647776, 0.083848,
		41.973053, 45.533382, 53.207298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280251, 45.623993, 52.717091>,  <41.443012, 45.079941, 53.148605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280251, 45.623993, 52.717091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670773, 45.694763, 52.766922>,  <41.905087, 45.737225, 52.796822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670773, 45.694763, 52.766922>,  <41.280251, 45.623993, 52.717091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670773, 45.694763, 52.766922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076025, 0.258577, -0.962995,
		-0.202591, 0.949651, 0.239000,
		0.976308, 0.176924, 0.124582,
		41.963665, 45.747841, 52.804298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453716, 46.219936, 52.279594>,  <41.280251, 45.623993, 52.717091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453716, 46.219936, 52.279594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809998, 46.047676, 52.337822>,  <42.023766, 45.944321, 52.372757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809998, 46.047676, 52.337822>,  <41.453716, 46.219936, 52.279594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809998, 46.047676, 52.337822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264603, 0.230776, -0.936337,
		0.369646, 0.872513, 0.319505,
		0.890700, -0.430655, 0.145564,
		42.077209, 45.918480, 52.381493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038376, 46.662727, 52.064747>,  <41.453716, 46.219936, 52.279594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038376, 46.662727, 52.064747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203011, 46.298218, 52.059319>,  <42.301792, 46.079514, 52.056061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203011, 46.298218, 52.059319>,  <42.038376, 46.662727, 52.064747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203011, 46.298218, 52.059319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436684, 0.210259, -0.874699,
		0.799940, 0.354089, 0.484477,
		0.411587, -0.911270, -0.013570,
		42.326485, 46.024837, 52.055248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796783, 46.650116, 51.975784>,  <42.038376, 46.662727, 52.064747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796783, 46.650116, 51.975784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666931, 46.298111, 51.837105>,  <42.589020, 46.086910, 51.753899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666931, 46.298111, 51.837105>,  <42.796783, 46.650116, 51.975784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666931, 46.298111, 51.837105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611446, 0.084410, -0.786771,
		0.721631, -0.467396, 0.510676,
		-0.324627, -0.880009, -0.346700,
		42.569542, 46.034107, 51.733093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382713, 46.588455, 51.551495>,  <42.796783, 46.650116, 51.975784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382713, 46.588455, 51.551495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175194, 46.256470, 51.469505>,  <43.050682, 46.057278, 51.420311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175194, 46.256470, 51.469505>,  <43.382713, 46.588455, 51.551495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175194, 46.256470, 51.469505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509471, -0.107616, -0.853732,
		0.686506, -0.547341, 0.478672,
		-0.518795, -0.829962, -0.204976,
		43.019554, 46.007481, 51.408012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845669, 46.066116, 51.245895>,  <43.382713, 46.588455, 51.551495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845669, 46.066116, 51.245895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497341, 45.908401, 51.128448>,  <43.288345, 45.813770, 51.057980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497341, 45.908401, 51.128448>,  <43.845669, 46.066116, 51.245895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497341, 45.908401, 51.128448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359132, -0.102374, -0.927655,
		0.335708, -0.913266, 0.230752,
		-0.870818, -0.394291, -0.293615,
		43.236095, 45.790115, 51.040363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948105, 45.484852, 50.832829>,  <43.845669, 46.066116, 51.245895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948105, 45.484852, 50.832829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588379, 45.621315, 50.723400>,  <43.372543, 45.703194, 50.657742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588379, 45.621315, 50.723400>,  <43.948105, 45.484852, 50.832829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588379, 45.621315, 50.723400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192269, -0.253405, -0.948060,
		-0.392759, -0.905207, 0.162299,
		-0.899318, 0.341154, -0.273570,
		43.318584, 45.723660, 50.641331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716553, 45.000252, 50.386822>,  <43.948105, 45.484852, 50.832829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716553, 45.000252, 50.386822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503807, 45.329514, 50.307281>,  <43.376160, 45.527069, 50.259560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503807, 45.329514, 50.307281>,  <43.716553, 45.000252, 50.386822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503807, 45.329514, 50.307281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059707, -0.197778, -0.978427,
		-0.844721, -0.532265, 0.056043,
		-0.531866, 0.823151, -0.198847,
		43.344246, 45.576458, 50.247627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173916, 44.791901, 49.973583>,  <43.716553, 45.000252, 50.386822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173916, 44.791901, 49.973583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199181, 45.185204, 49.905205>,  <43.214340, 45.421185, 49.864178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199181, 45.185204, 49.905205>,  <43.173916, 44.791901, 49.973583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199181, 45.185204, 49.905205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207403, -0.180477, -0.961464,
		-0.976214, 0.025274, -0.215329,
		0.063162, 0.983254, -0.170942,
		43.218128, 45.480179, 49.853924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862846, 44.870056, 49.326790>,  <43.173916, 44.791901, 49.973583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862846, 44.870056, 49.326790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089294, 45.192413, 49.396130>,  <43.225163, 45.385826, 49.437733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089294, 45.192413, 49.396130>,  <42.862846, 44.870056, 49.326790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089294, 45.192413, 49.396130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301990, -0.007084, -0.953285,
		-0.767014, 0.592024, -0.247381,
		0.566120, 0.805889, 0.173352,
		43.259132, 45.434181, 49.448135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620026, 45.391979, 48.924301>,  <42.862846, 44.870056, 49.326790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620026, 45.391979, 48.924301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997364, 45.508224, 48.988365>,  <43.223766, 45.577972, 49.026802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997364, 45.508224, 48.988365>,  <42.620026, 45.391979, 48.924301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997364, 45.508224, 48.988365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180019, -0.042760, -0.982733,
		-0.278744, 0.955886, -0.092652,
		0.943343, 0.290610, 0.160159,
		43.280365, 45.595406, 49.036411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681862, 45.992035, 48.467159>,  <42.620026, 45.391979, 48.924301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681862, 45.992035, 48.467159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049244, 45.865074, 48.561558>,  <43.269672, 45.788898, 48.618195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049244, 45.865074, 48.561558>,  <42.681862, 45.992035, 48.467159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049244, 45.865074, 48.561558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241172, -0.023487, -0.970198,
		0.313481, 0.948002, 0.054976,
		0.918458, -0.317398, 0.235994,
		43.324783, 45.769855, 48.632355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097363, 46.384418, 48.026257>,  <42.681862, 45.992035, 48.467159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097363, 46.384418, 48.026257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326141, 46.084152, 48.158550>,  <43.463409, 45.903992, 48.237926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326141, 46.084152, 48.158550>,  <43.097363, 46.384418, 48.026257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326141, 46.084152, 48.158550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302059, -0.182123, -0.935730,
		0.762650, 0.635090, 0.122579,
		0.571949, -0.750661, 0.330731,
		43.497726, 45.858955, 48.257771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701103, 46.548405, 47.726444>,  <43.097363, 46.384418, 48.026257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701103, 46.548405, 47.726444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716995, 46.155800, 47.801327>,  <43.726532, 45.920235, 47.846256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716995, 46.155800, 47.801327>,  <43.701103, 46.548405, 47.726444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716995, 46.155800, 47.801327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251881, -0.171470, -0.952446,
		0.966942, 0.084995, 0.240413,
		0.039729, -0.981516, 0.187210,
		43.728912, 45.861343, 47.857491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431137, 46.305641, 47.550732>,  <43.701103, 46.548405, 47.726444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431137, 46.305641, 47.550732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154671, 46.017403, 47.528717>,  <43.988792, 45.844460, 47.515507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154671, 46.017403, 47.528717>,  <44.431137, 46.305641, 47.550732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154671, 46.017403, 47.528717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427816, -0.346584, -0.834777,
		0.582466, -0.600513, 0.547830,
		-0.691163, -0.720600, -0.055036,
		43.947323, 45.801224, 47.512207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668339, 45.855755, 47.003674>,  <44.431137, 46.305641, 47.550732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668339, 45.855755, 47.003674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301842, 45.701515, 47.047138>,  <44.081944, 45.608971, 47.073219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301842, 45.701515, 47.047138>,  <44.668339, 45.855755, 47.003674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301842, 45.701515, 47.047138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079418, -0.440686, -0.894141,
		0.392668, -0.810622, 0.434400,
		-0.916245, -0.385600, 0.108666,
		44.026970, 45.585835, 47.079739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756203, 45.157494, 46.943783>,  <44.668339, 45.855755, 47.003674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.756203, 45.157494, 46.943783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383694, 45.264801, 46.845184>,  <44.160187, 45.329185, 46.786026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383694, 45.264801, 46.845184>,  <44.756203, 45.157494, 46.943783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383694, 45.264801, 46.845184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048575, -0.579117, -0.813796,
		-0.361061, -0.769842, 0.526287,
		-0.931277, 0.268266, -0.246492,
		44.104309, 45.345280, 46.771236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543636, 44.564247, 46.782364>,  <44.756203, 45.157494, 46.943783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543636, 44.564247, 46.782364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270397, 44.798309, 46.607563>,  <44.106453, 44.938747, 46.502682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270397, 44.798309, 46.607563>,  <44.543636, 44.564247, 46.782364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270397, 44.798309, 46.607563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134720, -0.487138, -0.862871,
		-0.717799, -0.648295, 0.253928,
		-0.683093, 0.585159, -0.437006,
		44.065468, 44.973858, 46.476463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069431, 44.088509, 46.540821>,  <44.543636, 44.564247, 46.782364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069431, 44.088509, 46.540821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007652, 44.425674, 46.334663>,  <43.970585, 44.627975, 46.210968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007652, 44.425674, 46.334663>,  <44.069431, 44.088509, 46.540821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007652, 44.425674, 46.334663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014973, -0.519598, -0.854280,
		-0.987887, -0.139661, 0.067631,
		-0.154450, 0.842919, -0.515395,
		43.961319, 44.678551, 46.180046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511139, 43.902187, 46.049644>,  <44.069431, 44.088509, 46.540821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511139, 43.902187, 46.049644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684120, 44.234230, 45.908844>,  <43.787907, 44.433456, 45.824364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684120, 44.234230, 45.908844>,  <43.511139, 43.902187, 46.049644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684120, 44.234230, 45.908844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001399, -0.391012, -0.920385,
		-0.901656, 0.397529, -0.170255,
		0.432451, 0.830109, -0.352002,
		43.813854, 44.483261, 45.803242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125095, 44.069897, 45.430355>,  <43.511139, 43.902187, 46.049644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125095, 44.069897, 45.430355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487144, 44.238991, 45.412270>,  <43.704376, 44.340446, 45.401417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487144, 44.238991, 45.412270>,  <43.125095, 44.069897, 45.430355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487144, 44.238991, 45.412270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077919, -0.269502, -0.959842,
		-0.417945, 0.865254, -0.276872,
		0.905124, 0.422735, -0.045217,
		43.758682, 44.365810, 45.398705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095230, 44.410591, 44.730274>,  <43.125095, 44.069897, 45.430355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095230, 44.410591, 44.730274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479919, 44.356239, 44.825451>,  <43.710735, 44.323627, 44.882557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479919, 44.356239, 44.825451>,  <43.095230, 44.410591, 44.730274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479919, 44.356239, 44.825451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177024, -0.354687, -0.918074,
		0.209146, 0.925058, -0.317058,
		0.961728, -0.135884, 0.237939,
		43.768436, 44.315475, 44.896832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503170, 44.601768, 44.124878>,  <43.095230, 44.410591, 44.730274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503170, 44.601768, 44.124878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780556, 44.417549, 44.346508>,  <43.946987, 44.307018, 44.479485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780556, 44.417549, 44.346508>,  <43.503170, 44.601768, 44.124878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780556, 44.417549, 44.346508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328939, -0.481821, -0.812187,
		0.641018, 0.745480, -0.182633,
		0.693466, -0.460552, 0.554073,
		43.988594, 44.279385, 44.512730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093803, 44.614807, 43.782040>,  <43.503170, 44.601768, 44.124878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093803, 44.614807, 43.782040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175819, 44.297852, 44.011848>,  <44.225029, 44.107677, 44.149734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175819, 44.297852, 44.011848>,  <44.093803, 44.614807, 43.782040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175819, 44.297852, 44.011848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389578, -0.472415, -0.790603,
		0.897879, 0.385929, 0.211832,
		0.205044, -0.792391, 0.574521,
		44.237331, 44.060135, 44.184204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804306, 44.410332, 43.648602>,  <44.093803, 44.614807, 43.782040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804306, 44.410332, 43.648602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619629, 44.083961, 43.787804>,  <44.508823, 43.888142, 43.871326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619629, 44.083961, 43.787804>,  <44.804306, 44.410332, 43.648602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619629, 44.083961, 43.787804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273235, -0.504064, -0.819306,
		0.843909, -0.283179, 0.455661,
		-0.461692, -0.815922, 0.348010,
		44.481121, 43.839184, 43.892208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332348, 43.850063, 43.652855>,  <44.804306, 44.410332, 43.648602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332348, 43.850063, 43.652855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971085, 43.679710, 43.631191>,  <44.754326, 43.577499, 43.618191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971085, 43.679710, 43.631191>,  <45.332348, 43.850063, 43.652855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971085, 43.679710, 43.631191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334344, -0.618600, -0.711019,
		0.269307, -0.660269, 0.701084,
		-0.903154, -0.425886, -0.054164,
		44.700138, 43.551945, 43.614941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<44.536926, 41.422123, 54.041080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.928692, 41.348175, 54.073517>,  <45.163750, 41.303806, 54.092979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.928692, 41.348175, 54.073517>,  <44.536926, 41.422123, 54.041080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.928692, 41.348175, 54.073517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074052, -0.044661, -0.996254,
		0.187797, 0.981748, -0.030051,
		0.979412, -0.184868, 0.081087,
		45.222515, 41.292713, 54.097843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893017, 41.891754, 53.563801>,  <44.536926, 41.422123, 54.041080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893017, 41.891754, 53.563801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.154411, 41.597488, 53.635078>,  <45.311249, 41.420929, 53.677845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.154411, 41.597488, 53.635078>,  <44.893017, 41.891754, 53.563801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154411, 41.597488, 53.635078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349671, 0.084607, -0.933044,
		0.671332, 0.672041, 0.312531,
		0.653486, -0.735665, 0.178194,
		45.350456, 41.376789, 53.688538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530373, 42.156540, 53.486099>,  <44.893017, 41.891754, 53.563801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530373, 42.156540, 53.486099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.523903, 41.768005, 53.391235>,  <45.520023, 41.534885, 53.334316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.523903, 41.768005, 53.391235>,  <45.530373, 42.156540, 53.486099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523903, 41.768005, 53.391235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349139, 0.216774, -0.911653,
		0.936932, -0.097544, 0.335626,
		-0.016172, -0.971336, -0.237159,
		45.519051, 41.476604, 53.320087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018681, 42.035820, 53.033588>,  <45.530373, 42.156540, 53.486099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018681, 42.035820, 53.033588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.848709, 41.679901, 52.967014>,  <45.746727, 41.466351, 52.927071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.848709, 41.679901, 52.967014>,  <46.018681, 42.035820, 53.033588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848709, 41.679901, 52.967014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497345, -0.075862, -0.864229,
		0.756362, -0.450010, 0.474771,
		-0.424929, -0.889796, -0.166431,
		45.721230, 41.412964, 52.917084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.544201, 41.777042, 52.535717>,  <46.018681, 42.035820, 53.033588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.544201, 41.777042, 52.535717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.235016, 41.528053, 52.486649>,  <46.049503, 41.378658, 52.457207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.235016, 41.528053, 52.486649>,  <46.544201, 41.777042, 52.535717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.235016, 41.528053, 52.486649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298530, -0.186228, -0.936055,
		0.559825, -0.760161, 0.329775,
		-0.772966, -0.622475, -0.122675,
		46.003124, 41.341312, 52.449844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.828972, 41.324509, 52.049969>,  <46.544201, 41.777042, 52.535717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.828972, 41.324509, 52.049969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.429825, 41.301819, 52.037041>,  <46.190338, 41.288204, 52.029285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.429825, 41.301819, 52.037041>,  <46.828972, 41.324509, 52.049969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429825, 41.301819, 52.037041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038531, -0.112074, -0.992952,
		0.052708, -0.992079, 0.114021,
		-0.997866, -0.056730, -0.032319,
		46.130466, 41.284801, 52.027344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.646648, 40.646759, 51.651844>,  <46.828972, 41.324509, 52.049969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.646648, 40.646759, 51.651844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.327133, 40.886406, 51.629906>,  <46.135426, 41.030193, 51.616741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.327133, 40.886406, 51.629906>,  <46.646648, 40.646759, 51.651844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.327133, 40.886406, 51.629906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030696, -0.050464, -0.998254,
		-0.600835, -0.799072, 0.021919,
		-0.798783, 0.599113, -0.054848,
		46.087498, 41.066139, 51.613453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303669, 40.310802, 51.139183>,  <46.646648, 40.646759, 51.651844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303669, 40.310802, 51.139183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.121170, 40.666740, 51.140835>,  <46.011669, 40.880302, 51.141827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.121170, 40.666740, 51.140835>,  <46.303669, 40.310802, 51.139183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.121170, 40.666740, 51.140835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088013, 0.049739, -0.994877,
		-0.885489, -0.453549, -0.101011,
		-0.456249, 0.889842, 0.004126,
		45.984295, 40.933693, 51.142071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856888, 40.244556, 50.586491>,  <46.303669, 40.310802, 51.139183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856888, 40.244556, 50.586491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.871513, 40.634560, 50.674141>,  <45.880287, 40.868561, 50.726730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.871513, 40.634560, 50.674141>,  <45.856888, 40.244556, 50.586491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871513, 40.634560, 50.674141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165287, 0.210348, -0.963553,
		-0.985568, 0.071448, -0.153466,
		0.036563, 0.975012, 0.219122,
		45.882481, 40.927063, 50.739876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246555, 40.437622, 50.243641>,  <45.856888, 40.244556, 50.586491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246555, 40.437622, 50.243641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.470787, 40.765823, 50.288406>,  <45.605328, 40.962746, 50.315266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.470787, 40.765823, 50.288406>,  <45.246555, 40.437622, 50.243641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470787, 40.765823, 50.288406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256416, 0.300488, -0.918672,
		-0.787403, 0.486291, 0.378837,
		0.560578, 0.820505, 0.111912,
		45.638962, 41.011974, 50.321980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822407, 41.046902, 50.061687>,  <45.246555, 40.437622, 50.243641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822407, 41.046902, 50.061687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.209938, 41.137199, 50.020859>,  <45.442455, 41.191376, 49.996361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.209938, 41.137199, 50.020859>,  <44.822407, 41.046902, 50.061687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209938, 41.137199, 50.020859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159755, 0.254328, -0.953832,
		-0.189358, 0.940403, 0.282462,
		0.968825, 0.225741, -0.102075,
		45.500587, 41.204922, 49.990238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892765, 41.747314, 49.650414>,  <44.822407, 41.046902, 50.061687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892765, 41.747314, 49.650414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.240837, 41.553169, 49.616440>,  <45.449680, 41.436684, 49.596054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.240837, 41.553169, 49.616440>,  <44.892765, 41.747314, 49.650414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240837, 41.553169, 49.616440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008918, 0.156835, -0.987585,
		0.492659, 0.860131, 0.132145,
		0.870177, -0.485364, -0.084937,
		45.501892, 41.407558, 49.590958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126011, 42.020325, 49.063477>,  <44.892765, 41.747314, 49.650414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126011, 42.020325, 49.063477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.392731, 41.726685, 49.114811>,  <45.552765, 41.550499, 49.145611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.392731, 41.726685, 49.114811>,  <45.126011, 42.020325, 49.063477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392731, 41.726685, 49.114811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115250, -0.068551, -0.990968,
		0.736268, 0.675571, 0.038895,
		0.666803, -0.734101, 0.128332,
		45.592773, 41.506454, 49.153309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.715321, 42.155651, 48.615124>,  <45.126011, 42.020325, 49.063477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.715321, 42.155651, 48.615124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.687996, 41.765442, 48.698723>,  <45.671600, 41.531315, 48.748882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.687996, 41.765442, 48.698723>,  <45.715321, 42.155651, 48.615124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.687996, 41.765442, 48.698723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081731, -0.214260, -0.973351,
		0.994311, -0.049409, 0.094367,
		-0.068311, -0.975526, 0.209002,
		45.667503, 41.472782, 48.761425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.144142, 41.887238, 48.126625>,  <45.715321, 42.155651, 48.615124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.144142, 41.887238, 48.126625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.949547, 41.561012, 48.251968>,  <45.832790, 41.365276, 48.327175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.949547, 41.561012, 48.251968>,  <46.144142, 41.887238, 48.126625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.949547, 41.561012, 48.251968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024832, -0.371421, -0.928132,
		0.873335, -0.443743, 0.200943,
		-0.486486, -0.815560, 0.313356,
		45.803600, 41.316345, 48.345974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515572, 41.293953, 47.955536>,  <46.144142, 41.887238, 48.126625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515572, 41.293953, 47.955536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.144386, 41.149338, 47.991726>,  <45.921677, 41.062569, 48.013439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.144386, 41.149338, 47.991726>,  <46.515572, 41.293953, 47.955536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144386, 41.149338, 47.991726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057468, -0.378668, -0.923747,
		0.368224, -0.852001, 0.372165,
		-0.927960, -0.361533, 0.090472,
		45.865997, 41.040878, 48.018867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.514202, 40.541409, 47.719635>,  <46.515572, 41.293953, 47.955536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.514202, 40.541409, 47.719635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.144577, 40.693367, 47.702724>,  <45.922802, 40.784542, 47.692577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.144577, 40.693367, 47.702724>,  <46.514202, 40.541409, 47.719635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144577, 40.693367, 47.702724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025711, -0.172122, -0.984740,
		-0.381374, -0.908875, 0.168819,
		-0.924063, 0.379894, -0.042274,
		45.867359, 40.807335, 47.690041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.162601, 40.136829, 47.175079>,  <46.514202, 40.541409, 47.719635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.162601, 40.136829, 47.175079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.922447, 40.454361, 47.213806>,  <45.778355, 40.644878, 47.237041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.922447, 40.454361, 47.213806>,  <46.162601, 40.136829, 47.175079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922447, 40.454361, 47.213806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213494, -0.042430, -0.976023,
		-0.770688, -0.606658, 0.194952,
		-0.600384, 0.793830, 0.096818,
		45.742332, 40.692509, 47.242851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529217, 39.986706, 46.745884>,  <46.162601, 40.136829, 47.175079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529217, 39.986706, 46.745884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.549522, 40.383759, 46.789890>,  <45.561707, 40.621990, 46.816296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.549522, 40.383759, 46.789890>,  <45.529217, 39.986706, 46.745884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549522, 40.383759, 46.789890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206032, 0.118201, -0.971380,
		-0.977228, 0.026645, 0.210515,
		0.050766, 0.992632, 0.110019,
		45.564751, 40.681549, 46.822895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008644, 40.199589, 46.374527>,  <45.529217, 39.986706, 46.745884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.008644, 40.199589, 46.374527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.200455, 40.547676, 46.419731>,  <45.315540, 40.756531, 46.446854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.200455, 40.547676, 46.419731>,  <45.008644, 40.199589, 46.374527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.200455, 40.547676, 46.419731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042828, 0.151840, -0.987477,
		-0.876483, 0.468679, 0.110080,
		0.479525, 0.870221, 0.113012,
		45.344311, 40.808743, 46.453636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.711475, 40.680885, 45.918968>,  <45.008644, 40.199589, 46.374527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.711475, 40.680885, 45.918968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.065887, 40.853973, 45.985550>,  <45.278534, 40.957825, 46.025497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.065887, 40.853973, 45.985550>,  <44.711475, 40.680885, 45.918968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065887, 40.853973, 45.985550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089420, 0.192791, -0.977157,
		-0.454925, 0.880674, 0.132125,
		0.886029, 0.432719, 0.166455,
		45.331696, 40.983788, 46.035488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605591, 41.337536, 45.801849>,  <44.711475, 40.680885, 45.918968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605591, 41.337536, 45.801849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.995850, 41.259766, 45.761215>,  <45.230003, 41.213104, 45.736835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.995850, 41.259766, 45.761215>,  <44.605591, 41.337536, 45.801849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.995850, 41.259766, 45.761215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054026, 0.235844, -0.970288,
		0.212611, 0.952142, 0.219595,
		0.975642, -0.194430, -0.101584,
		45.288544, 41.201435, 45.730740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069271, 41.824993, 45.604347>,  <44.605591, 41.337536, 45.801849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069271, 41.824993, 45.604347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.697968, 41.924873, 45.494080>,  <43.475185, 41.984802, 45.427921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.697968, 41.924873, 45.494080>,  <44.069271, 41.824993, 45.604347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697968, 41.924873, 45.494080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163670, 0.391322, 0.905582,
		0.333995, 0.885730, -0.322380,
		-0.928256, 0.249696, -0.275667,
		43.419491, 41.999783, 45.411381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902485, 42.601387, 45.646473>,  <44.069271, 41.824993, 45.604347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902485, 42.601387, 45.646473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.571564, 42.385155, 45.707584>,  <43.373009, 42.255417, 45.744251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.571564, 42.385155, 45.707584>,  <43.902485, 42.601387, 45.646473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571564, 42.385155, 45.707584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092842, 0.399808, 0.911885,
		-0.554028, 0.740222, -0.380951,
		-0.827305, -0.540578, 0.152781,
		43.323372, 42.222980, 45.753418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426697, 43.059227, 45.975948>,  <43.902485, 42.601387, 45.646473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426697, 43.059227, 45.975948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.287632, 42.694283, 46.062416>,  <43.204193, 42.475315, 46.114296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.287632, 42.694283, 46.062416>,  <43.426697, 43.059227, 45.975948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287632, 42.694283, 46.062416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174193, 0.289389, 0.941228,
		-0.921298, 0.289571, -0.259535,
		-0.347660, -0.912361, 0.216173,
		43.183334, 42.420574, 46.127266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891548, 43.164104, 46.381363>,  <43.426697, 43.059227, 45.975948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891548, 43.164104, 46.381363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.972927, 42.785423, 46.481247>,  <43.021755, 42.558212, 46.541180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.972927, 42.785423, 46.481247>,  <42.891548, 43.164104, 46.381363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972927, 42.785423, 46.481247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305078, 0.181055, 0.934958,
		-0.930343, -0.266393, -0.251986,
		0.203442, -0.946707, 0.249714,
		43.033958, 42.501411, 46.556160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498329, 43.080494, 46.995037>,  <42.891548, 43.164104, 46.381363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498329, 43.080494, 46.995037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.719345, 42.747772, 47.016209>,  <42.851955, 42.548138, 47.028912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.719345, 42.747772, 47.016209>,  <42.498329, 43.080494, 46.995037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719345, 42.747772, 47.016209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163648, -0.046000, 0.985446,
		-0.817266, -0.553155, -0.161541,
		0.552535, -0.831807, 0.052928,
		42.885105, 42.498230, 47.032085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156349, 42.602844, 47.298424>,  <42.498329, 43.080494, 46.995037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156349, 42.602844, 47.298424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.529968, 42.470100, 47.351231>,  <42.754139, 42.390453, 47.382915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.529968, 42.470100, 47.351231>,  <42.156349, 42.602844, 47.298424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529968, 42.470100, 47.351231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179925, -0.117909, 0.976588,
		-0.308521, -0.935932, -0.169842,
		0.934046, -0.331857, 0.132020,
		42.810181, 42.370544, 47.390835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045647, 42.051804, 47.776218>,  <42.156349, 42.602844, 47.298424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045647, 42.051804, 47.776218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.427544, 42.167519, 47.803890>,  <42.656681, 42.236946, 47.820492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.427544, 42.167519, 47.803890>,  <42.045647, 42.051804, 47.776218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427544, 42.167519, 47.803890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068446, -0.012669, 0.997574,
		0.289459, -0.957159, 0.007704,
		0.954740, 0.289284, 0.069181,
		42.713966, 42.254303, 47.824646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287346, 41.680847, 48.335972>,  <42.045647, 42.051804, 47.776218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287346, 41.680847, 48.335972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.562592, 41.965439, 48.278988>,  <42.727737, 42.136192, 48.244797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.562592, 41.965439, 48.278988>,  <42.287346, 41.680847, 48.335972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562592, 41.965439, 48.278988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117624, 0.084358, 0.989469,
		0.716005, -0.697624, -0.025640,
		0.688114, 0.711480, -0.142458,
		42.769028, 42.178883, 48.236252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932568, 41.531979, 48.606606>,  <42.287346, 41.680847, 48.335972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932568, 41.531979, 48.606606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.972328, 41.929802, 48.594078>,  <42.996185, 42.168495, 48.586559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.972328, 41.929802, 48.594078>,  <42.932568, 41.531979, 48.606606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972328, 41.929802, 48.594078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066042, 0.024815, 0.997508,
		0.992853, -0.101222, -0.063216,
		0.099401, 0.994554, -0.031322,
		43.002148, 42.228168, 48.584682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486225, 41.780151, 49.111984>,  <42.932568, 41.531979, 48.606606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486225, 41.780151, 49.111984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.247581, 42.093208, 49.040962>,  <43.104397, 42.281044, 48.998348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.247581, 42.093208, 49.040962>,  <43.486225, 41.780151, 49.111984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247581, 42.093208, 49.040962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019300, 0.235177, 0.971761,
		0.802300, 0.576334, -0.155414,
		-0.596609, 0.782643, -0.177559,
		43.068600, 42.328003, 48.987694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785728, 42.325069, 49.485901>,  <43.486225, 41.780151, 49.111984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785728, 42.325069, 49.485901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.408653, 42.443787, 49.424908>,  <43.182407, 42.515015, 49.388313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.408653, 42.443787, 49.424908>,  <43.785728, 42.325069, 49.485901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408653, 42.443787, 49.424908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084365, 0.230125, 0.969497,
		0.322826, 0.926800, -0.191898,
		-0.942691, 0.296789, -0.152480,
		43.125847, 42.532822, 49.379162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816448, 42.947567, 49.817417>,  <43.785728, 42.325069, 49.485901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816448, 42.947567, 49.817417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.419704, 42.913673, 49.779404>,  <43.181660, 42.893337, 49.756596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.419704, 42.913673, 49.779404>,  <43.816448, 42.947567, 49.817417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419704, 42.913673, 49.779404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115481, 0.284297, 0.951756,
		-0.053628, 0.954985, -0.291768,
		-0.991861, -0.084735, -0.095036,
		43.122147, 42.888252, 49.750893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566265, 43.553795, 50.059086>,  <43.816448, 42.947567, 49.817417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566265, 43.553795, 50.059086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.264442, 43.294067, 50.097099>,  <43.083351, 43.138229, 50.119907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.264442, 43.294067, 50.097099>,  <43.566265, 43.553795, 50.059086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264442, 43.294067, 50.097099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043812, 0.194339, 0.979956,
		-0.654776, 0.735264, -0.175087,
		-0.754552, -0.649322, 0.095034,
		43.038078, 43.099270, 50.125610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090038, 43.913948, 50.477024>,  <43.566265, 43.553795, 50.059086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090038, 43.913948, 50.477024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.004082, 43.526695, 50.528465>,  <42.952507, 43.294342, 50.559330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.004082, 43.526695, 50.528465>,  <43.090038, 43.913948, 50.477024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004082, 43.526695, 50.528465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065761, 0.145728, 0.987137,
		-0.974421, 0.203671, -0.094981,
		-0.214893, -0.968133, 0.128607,
		42.939613, 43.236256, 50.567047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626068, 44.109257, 50.911716>,  <43.090038, 43.913948, 50.477024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626068, 44.109257, 50.911716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.716415, 43.719879, 50.926647>,  <42.770622, 43.486252, 50.935604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.716415, 43.719879, 50.926647>,  <42.626068, 44.109257, 50.911716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716415, 43.719879, 50.926647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054541, 0.025616, 0.998183,
		-0.972629, -0.227495, -0.047306,
		0.225870, -0.973442, 0.037323,
		42.784176, 43.427845, 50.937843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155914, 43.822742, 51.370872>,  <42.626068, 44.109257, 50.911716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155914, 43.822742, 51.370872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.443424, 43.544655, 51.368664>,  <42.615929, 43.377800, 51.367340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.443424, 43.544655, 51.368664>,  <42.155914, 43.822742, 51.370872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443424, 43.544655, 51.368664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048225, 0.041935, 0.997956,
		-0.693570, -0.717570, 0.063669,
		0.718773, -0.695222, -0.005521,
		42.659058, 43.336086, 51.367008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001732, 43.291073, 52.002670>,  <42.155914, 43.822742, 51.370872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001732, 43.291073, 52.002670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.392258, 43.256172, 51.923477>,  <42.626572, 43.235229, 51.875961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.392258, 43.256172, 51.923477>,  <42.001732, 43.291073, 52.002670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392258, 43.256172, 51.923477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186649, -0.123084, 0.974686,
		-0.109398, -0.988554, -0.103886,
		0.976317, -0.087239, -0.197978,
		42.685154, 43.229996, 51.864082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228958, 42.668518, 52.262478>,  <42.001732, 43.291073, 52.002670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228958, 42.668518, 52.262478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.569923, 42.874878, 52.228436>,  <42.774502, 42.998692, 52.208012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.569923, 42.874878, 52.228436>,  <42.228958, 42.668518, 52.262478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569923, 42.874878, 52.228436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173837, -0.126119, 0.976665,
		0.493125, -0.847316, -0.197188,
		0.852413, 0.515897, -0.085102,
		42.825645, 43.029648, 52.202904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.731140, 42.248184, 52.614525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.883759, 42.617050, 52.589092>,  <42.975330, 42.838367, 52.573833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.883759, 42.617050, 52.589092>,  <42.731140, 42.248184, 52.614525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883759, 42.617050, 52.589092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192589, -0.012035, 0.981206,
		0.904064, -0.386619, -0.182190,
		0.381545, 0.922161, -0.063579,
		42.998222, 42.893700, 52.570019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415192, 42.209087, 52.860500>,  <42.731140, 42.248184, 52.614525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415192, 42.209087, 52.860500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.304153, 42.592758, 52.882156>,  <43.237530, 42.822960, 52.895149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.304153, 42.592758, 52.882156>,  <43.415192, 42.209087, 52.860500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304153, 42.592758, 52.882156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285481, 0.028549, 0.957959,
		0.917303, 0.281377, -0.281750,
		-0.277591, 0.959173, 0.054140,
		43.220875, 42.880508, 52.898399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885826, 42.319672, 53.441956>,  <43.415192, 42.209087, 52.860500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885826, 42.319672, 53.441956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.644135, 42.633888, 53.388538>,  <43.499119, 42.822418, 53.356487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.644135, 42.633888, 53.388538>,  <43.885826, 42.319672, 53.441956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644135, 42.633888, 53.388538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046116, 0.201790, 0.978343,
		0.795479, 0.584980, -0.158153,
		-0.604224, 0.785544, -0.133543,
		43.462868, 42.869553, 53.348476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.165886, 42.875736, 53.835217>,  <43.885826, 42.319672, 53.441956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.165886, 42.875736, 53.835217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.784859, 42.975792, 53.765892>,  <43.556240, 43.035828, 53.724297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.784859, 42.975792, 53.765892>,  <44.165886, 42.875736, 53.835217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784859, 42.975792, 53.765892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143094, 0.134429, 0.980537,
		0.268571, 0.958831, -0.092260,
		-0.952572, 0.250142, -0.173307,
		43.499088, 43.050835, 53.713902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967800, 43.498592, 54.230984>,  <44.165886, 42.875736, 53.835217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967800, 43.498592, 54.230984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.628414, 43.295494, 54.171238>,  <43.424782, 43.173637, 54.135391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.628414, 43.295494, 54.171238>,  <43.967800, 43.498592, 54.230984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628414, 43.295494, 54.171238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197464, 0.041845, 0.979417,
		-0.491041, 0.860492, -0.135764,
		-0.848462, -0.507742, -0.149369,
		43.373875, 43.143173, 54.126427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400249, 43.844185, 54.668468>,  <43.967800, 43.498592, 54.230984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400249, 43.844185, 54.668468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.262794, 43.479828, 54.577095>,  <43.180321, 43.261211, 54.522270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.262794, 43.479828, 54.577095>,  <43.400249, 43.844185, 54.668468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262794, 43.479828, 54.577095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407531, -0.074504, 0.910147,
		-0.846069, 0.405853, -0.345617,
		-0.343636, -0.910897, -0.228433,
		43.159702, 43.206558, 54.508564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729786, 43.750938, 55.094917>,  <43.400249, 43.844185, 54.668468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729786, 43.750938, 55.094917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.862022, 43.386627, 54.995972>,  <42.941364, 43.168041, 54.936604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.862022, 43.386627, 54.995972>,  <42.729786, 43.750938, 55.094917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862022, 43.386627, 54.995972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208972, -0.326236, 0.921901,
		-0.920348, -0.253080, -0.298178,
		0.330591, -0.910780, -0.247364,
		42.961201, 43.113392, 54.921761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180996, 43.238941, 55.306992>,  <42.729786, 43.750938, 55.094917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180996, 43.238941, 55.306992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.499680, 43.003563, 55.251869>,  <42.690891, 42.862335, 55.218796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.499680, 43.003563, 55.251869>,  <42.180996, 43.238941, 55.306992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499680, 43.003563, 55.251869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216475, -0.490742, 0.843985,
		-0.564266, -0.642577, -0.518361,
		0.796707, -0.588444, -0.137807,
		42.738693, 42.827030, 55.210529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044460, 42.571232, 55.393776>,  <42.180996, 43.238941, 55.306992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044460, 42.571232, 55.393776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.433014, 42.583588, 55.487980>,  <42.666145, 42.591003, 55.544502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.433014, 42.583588, 55.487980>,  <42.044460, 42.571232, 55.393776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433014, 42.583588, 55.487980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210369, -0.348516, 0.913390,
		0.110298, -0.936794, -0.332043,
		0.971380, 0.030893, 0.235513,
		42.724426, 42.592854, 55.558632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182037, 41.988918, 55.815010>,  <42.044460, 42.571232, 55.393776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182037, 41.988918, 55.815010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.490990, 42.232552, 55.887062>,  <42.676361, 42.378731, 55.930294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.490990, 42.232552, 55.887062>,  <42.182037, 41.988918, 55.815010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490990, 42.232552, 55.887062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109427, -0.151748, 0.982343,
		0.625663, -0.778453, -0.050558,
		0.772381, 0.609084, 0.180127,
		42.722702, 42.415276, 55.941101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446091, 41.699905, 56.385456>,  <42.182037, 41.988918, 55.815010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446091, 41.699905, 56.385456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.623329, 42.056717, 56.421127>,  <42.729671, 42.270805, 56.442528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.623329, 42.056717, 56.421127>,  <42.446091, 41.699905, 56.385456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623329, 42.056717, 56.421127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129551, -0.034715, 0.990965,
		0.887066, -0.450642, 0.100182,
		0.443093, 0.892030, 0.089176,
		42.756256, 42.324326, 56.447880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810917, 41.684990, 56.993916>,  <42.446091, 41.699905, 56.385456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810917, 41.684990, 56.993916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.804268, 42.078621, 56.923130>,  <42.800278, 42.314800, 56.880657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.804268, 42.078621, 56.923130>,  <42.810917, 41.684990, 56.993916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804268, 42.078621, 56.923130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035167, 0.177454, 0.983501,
		0.999243, 0.010128, -0.037558,
		-0.016625, 0.984077, -0.176963,
		42.799282, 42.373844, 56.870041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209774, 41.894661, 57.438171>,  <42.810917, 41.684990, 56.993916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209774, 41.894661, 57.438171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.974426, 42.201492, 57.335865>,  <42.833218, 42.385590, 57.274483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.974426, 42.201492, 57.335865>,  <43.209774, 41.894661, 57.438171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974426, 42.201492, 57.335865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081483, 0.258448, 0.962583,
		0.804478, 0.587193, -0.089558,
		-0.588368, 0.767079, -0.255762,
		42.797916, 42.431618, 57.259136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291821, 42.350906, 57.874630>,  <43.209774, 41.894661, 57.438171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291821, 42.350906, 57.874630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.948845, 42.507874, 57.741482>,  <42.743061, 42.602055, 57.661591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.948845, 42.507874, 57.741482>,  <43.291821, 42.350906, 57.874630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948845, 42.507874, 57.741482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148488, 0.430681, 0.890205,
		0.492696, 0.812725, -0.311013,
		-0.857439, 0.392419, -0.332875,
		42.691612, 42.625599, 57.641621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248707, 43.047363, 58.146992>,  <43.291821, 42.350906, 57.874630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248707, 43.047363, 58.146992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.881004, 42.905937, 58.077751>,  <42.660385, 42.821079, 58.036205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.881004, 42.905937, 58.077751>,  <43.248707, 43.047363, 58.146992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881004, 42.905937, 58.077751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340765, 0.494498, 0.799595,
		-0.197112, 0.794016, -0.575052,
		-0.919253, -0.353567, -0.173101,
		42.605228, 42.799866, 58.025822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805206, 43.594158, 58.196732>,  <43.248707, 43.047363, 58.146992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805206, 43.594158, 58.196732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.539154, 43.296593, 58.222603>,  <42.379520, 43.118053, 58.238125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.539154, 43.296593, 58.222603>,  <42.805206, 43.594158, 58.196732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539154, 43.296593, 58.222603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532728, 0.533433, 0.657001,
		-0.523256, 0.402538, -0.751110,
		-0.665135, -0.743917, 0.064679,
		42.339615, 43.073418, 58.242008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110336, 43.902279, 58.226444>,  <42.805206, 43.594158, 58.196732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110336, 43.902279, 58.226444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.091446, 43.532318, 58.377350>,  <42.080112, 43.310341, 58.467896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.091446, 43.532318, 58.377350>,  <42.110336, 43.902279, 58.226444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091446, 43.532318, 58.377350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426616, 0.360183, 0.829619,
		-0.903199, -0.121771, -0.411586,
		-0.047223, -0.924900, 0.377266,
		42.077278, 43.254848, 58.490528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402153, 43.740170, 58.355869>,  <42.110336, 43.902279, 58.226444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402153, 43.740170, 58.355869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.605629, 43.489822, 58.592354>,  <41.727715, 43.339615, 58.734245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.605629, 43.489822, 58.592354>,  <41.402153, 43.740170, 58.355869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605629, 43.489822, 58.592354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640495, 0.183776, 0.745649,
		-0.575326, -0.757970, -0.307379,
		0.508691, -0.625866, 0.591207,
		41.758236, 43.302063, 58.769714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923779, 43.550121, 58.796974>,  <41.402153, 43.740170, 58.355869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923779, 43.550121, 58.796974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.266281, 43.455574, 58.980690>,  <41.471783, 43.398846, 59.090919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.266281, 43.455574, 58.980690>,  <40.923779, 43.550121, 58.796974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266281, 43.455574, 58.980690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340526, 0.410284, 0.845996,
		-0.388407, -0.880793, 0.270820,
		0.856261, -0.236369, 0.459290,
		41.523159, 43.384663, 59.118477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704617, 43.238342, 59.345325>,  <40.923779, 43.550121, 58.796974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704617, 43.238342, 59.345325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083260, 43.341026, 59.423325>,  <41.310448, 43.402637, 59.470123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083260, 43.341026, 59.423325>,  <40.704617, 43.238342, 59.345325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083260, 43.341026, 59.423325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298477, 0.469353, 0.831035,
		0.121812, -0.844871, 0.520918,
		0.946611, 0.256712, 0.195002,
		41.367245, 43.418041, 59.481827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818947, 43.171230, 60.120274>,  <40.704617, 43.238342, 59.345325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818947, 43.171230, 60.120274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.104183, 43.422432, 59.995625>,  <41.275326, 43.573154, 59.920834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.104183, 43.422432, 59.995625>,  <40.818947, 43.171230, 60.120274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104183, 43.422432, 59.995625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067240, 0.503717, 0.861248,
		0.697839, -0.593195, 0.401424,
		0.713092, 0.628004, -0.311627,
		41.318111, 43.610832, 59.902138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234287, 43.229088, 60.697472>,  <40.818947, 43.171230, 60.120274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234287, 43.229088, 60.697472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.289627, 43.561066, 60.481304>,  <41.322830, 43.760254, 60.351604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.289627, 43.561066, 60.481304>,  <41.234287, 43.229088, 60.697472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289627, 43.561066, 60.481304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082199, 0.553402, 0.828848,
		0.986967, -0.070247, 0.144782,
		0.138347, 0.829947, -0.540415,
		41.331131, 43.810051, 60.319180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736687, 43.674938, 61.015820>,  <41.234287, 43.229088, 60.697472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736687, 43.674938, 61.015820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.508419, 43.912483, 60.788960>,  <41.371456, 44.055012, 60.652843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.508419, 43.912483, 60.788960>,  <41.736687, 43.674938, 61.015820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508419, 43.912483, 60.788960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164737, 0.593821, 0.787552,
		0.804484, 0.542865, -0.241046,
		-0.570672, 0.593864, -0.567150,
		41.337219, 44.090641, 60.618816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031277, 44.322369, 61.248951>,  <41.736687, 43.674938, 61.015820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031277, 44.322369, 61.248951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.666107, 44.352882, 61.088577>,  <41.447006, 44.371193, 60.992355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.666107, 44.352882, 61.088577>,  <42.031277, 44.322369, 61.248951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666107, 44.352882, 61.088577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292344, 0.563245, 0.772845,
		0.284781, 0.822761, -0.491899,
		-0.912926, 0.076288, -0.400931,
		41.392231, 44.375771, 60.968300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419575, 44.109245, 60.550785>,  <42.031277, 44.322369, 61.248951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419575, 44.109245, 60.550785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.734184, 44.013115, 60.778336>,  <42.922951, 43.955437, 60.914867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.734184, 44.013115, 60.778336>,  <42.419575, 44.109245, 60.550785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734184, 44.013115, 60.778336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570271, -0.070873, -0.818394,
		0.237002, 0.968101, 0.081310,
		0.786525, -0.240330, 0.568877,
		42.970142, 43.941017, 60.948997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877686, 44.478352, 60.254837>,  <42.419575, 44.109245, 60.550785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877686, 44.478352, 60.254837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.101395, 44.221992, 60.465160>,  <43.235619, 44.068176, 60.591354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.101395, 44.221992, 60.465160>,  <42.877686, 44.478352, 60.254837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101395, 44.221992, 60.465160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654963, -0.047203, -0.754185,
		0.508173, 0.766176, 0.393363,
		0.559271, -0.640894, 0.525804,
		43.269176, 44.029724, 60.622902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572342, 44.746056, 60.188267>,  <42.877686, 44.478352, 60.254837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572342, 44.746056, 60.188267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.607639, 44.359909, 60.286480>,  <43.628819, 44.128223, 60.345409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.607639, 44.359909, 60.286480>,  <43.572342, 44.746056, 60.188267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607639, 44.359909, 60.286480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554621, -0.157136, -0.817131,
		0.827410, 0.208288, 0.521544,
		0.088246, -0.965362, 0.245537,
		43.634113, 44.070301, 60.360142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185375, 44.656601, 60.263226>,  <43.572342, 44.746056, 60.188267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185375, 44.656601, 60.263226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.035961, 44.295731, 60.176933>,  <43.946312, 44.079208, 60.125156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.035961, 44.295731, 60.176933>,  <44.185375, 44.656601, 60.263226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035961, 44.295731, 60.176933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707029, -0.126356, -0.695805,
		0.600483, -0.412438, 0.685066,
		-0.373538, -0.902180, -0.215731,
		43.923901, 44.025078, 60.112213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801765, 44.256283, 60.195110>,  <44.185375, 44.656601, 60.263226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801765, 44.256283, 60.195110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.528862, 44.022911, 60.018867>,  <44.365120, 43.882889, 59.913120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.528862, 44.022911, 60.018867>,  <44.801765, 44.256283, 60.195110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528862, 44.022911, 60.018867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664123, -0.242545, -0.707186,
		0.305729, -0.775099, 0.552948,
		-0.682254, -0.583433, -0.440608,
		44.324184, 43.847881, 59.886684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142616, 43.661724, 60.033253>,  <44.801765, 44.256283, 60.195110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142616, 43.661724, 60.033253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.821861, 43.614212, 59.799034>,  <44.629410, 43.585705, 59.658501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.821861, 43.614212, 59.799034>,  <45.142616, 43.661724, 60.033253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821861, 43.614212, 59.799034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547638, -0.537965, -0.640848,
		-0.238887, -0.834557, 0.496435,
		-0.801889, -0.118776, -0.585548,
		44.581295, 43.578579, 59.623371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250725, 43.043369, 59.859829>,  <45.142616, 43.661724, 60.033253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250725, 43.043369, 59.859829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.990429, 43.192757, 59.595387>,  <44.834251, 43.282387, 59.436722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.990429, 43.192757, 59.595387>,  <45.250725, 43.043369, 59.859829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.990429, 43.192757, 59.595387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501186, -0.442789, -0.743472,
		-0.570390, -0.815145, 0.100967,
		-0.650744, 0.373466, -0.661102,
		44.795204, 43.304798, 59.397057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965340, 42.477699, 59.362259>,  <45.250725, 43.043369, 59.859829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965340, 42.477699, 59.362259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.926056, 42.825912, 59.169373>,  <44.902485, 43.034840, 59.053638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.926056, 42.825912, 59.169373>,  <44.965340, 42.477699, 59.362259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.926056, 42.825912, 59.169373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346303, -0.424382, -0.836645,
		-0.932968, -0.249158, -0.259789,
		-0.098207, 0.870529, -0.482219,
		44.896595, 43.087070, 59.024708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541744, 42.406460, 58.791874>,  <44.965340, 42.477699, 59.362259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541744, 42.406460, 58.791874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.732536, 42.733109, 58.661873>,  <44.847012, 42.929096, 58.583874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.732536, 42.733109, 58.661873>,  <44.541744, 42.406460, 58.791874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732536, 42.733109, 58.661873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103269, -0.419284, -0.901963,
		-0.872825, 0.396657, -0.284322,
		0.476982, 0.816617, -0.324999,
		44.875629, 42.978092, 58.564373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208042, 42.588448, 58.210255>,  <44.541744, 42.406460, 58.791874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208042, 42.588448, 58.210255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.559345, 42.776527, 58.175426>,  <44.770126, 42.889374, 58.154530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.559345, 42.776527, 58.175426>,  <44.208042, 42.588448, 58.210255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559345, 42.776527, 58.175426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041690, -0.256683, -0.965596,
		-0.476372, 0.844409, -0.245036,
		0.878255, 0.470198, -0.087073,
		44.822823, 42.917587, 58.149303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147831, 42.862537, 57.554684>,  <44.208042, 42.588448, 58.210255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147831, 42.862537, 57.554684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.541122, 42.862938, 57.627640>,  <44.777096, 42.863178, 57.671413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.541122, 42.862938, 57.627640>,  <44.147831, 42.862537, 57.554684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541122, 42.862938, 57.627640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178210, -0.218210, -0.959492,
		0.038841, 0.975901, -0.214728,
		0.983226, 0.001000, 0.182391,
		44.836090, 42.863239, 57.682358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450691, 43.186817, 56.922070>,  <44.147831, 42.862537, 57.554684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450691, 43.186817, 56.922070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.757881, 43.006844, 57.104397>,  <44.942196, 42.898857, 57.213791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.757881, 43.006844, 57.104397>,  <44.450691, 43.186817, 56.922070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757881, 43.006844, 57.104397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312452, -0.358055, -0.879869,
		0.559093, 0.818140, -0.134395,
		0.767977, -0.449937, 0.455816,
		44.988274, 42.871861, 57.241142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022446, 43.408043, 56.564129>,  <44.450691, 43.186817, 56.922070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022446, 43.408043, 56.564129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.157524, 43.074638, 56.739044>,  <45.238571, 42.874596, 56.843994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.157524, 43.074638, 56.739044>,  <45.022446, 43.408043, 56.564129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.157524, 43.074638, 56.739044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258491, -0.364594, -0.894569,
		0.905065, 0.415129, 0.092332,
		0.337698, -0.833510, 0.437288,
		45.258835, 42.824585, 56.870232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532745, 43.153259, 56.102055>,  <45.022446, 43.408043, 56.564129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.532745, 43.153259, 56.102055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.458344, 42.836555, 56.334785>,  <45.413700, 42.646534, 56.474422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.458344, 42.836555, 56.334785>,  <45.532745, 43.153259, 56.102055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458344, 42.836555, 56.334785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119354, -0.605982, -0.786473,
		0.975272, -0.076847, 0.207217,
		-0.186008, -0.791758, 0.581825,
		45.402542, 42.599030, 56.509335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.108688, 42.630581, 56.000389>,  <45.532745, 43.153259, 56.102055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.108688, 42.630581, 56.000389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.782303, 42.427124, 56.110291>,  <45.586472, 42.305050, 56.176231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.782303, 42.427124, 56.110291>,  <46.108688, 42.630581, 56.000389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782303, 42.427124, 56.110291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109630, -0.602781, -0.790340,
		0.567617, -0.614765, 0.547608,
		-0.815961, -0.508645, 0.274752,
		45.537514, 42.274532, 56.192715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.336605, 41.837318, 56.105915>,  <46.108688, 42.630581, 56.000389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.336605, 41.837318, 56.105915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.947067, 41.887680, 56.030262>,  <45.713345, 41.917896, 55.984871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.947067, 41.887680, 56.030262>,  <46.336605, 41.837318, 56.105915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947067, 41.887680, 56.030262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065021, -0.643180, -0.762949,
		-0.217707, -0.755293, 0.618172,
		-0.973846, 0.125905, -0.189135,
		45.654915, 41.925453, 55.973522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922729, 41.197990, 56.090569>,  <46.336605, 41.837318, 56.105915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.922729, 41.197990, 56.090569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.703781, 41.457581, 55.879204>,  <45.572411, 41.613335, 55.752384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.703781, 41.457581, 55.879204>,  <45.922729, 41.197990, 56.090569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.703781, 41.457581, 55.879204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102202, -0.678505, -0.727451,
		-0.830626, -0.344181, 0.437721,
		-0.547371, 0.648976, -0.528408,
		45.539570, 41.652275, 55.720680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.608120, 40.683182, 55.737804>,  <45.922729, 41.197990, 56.090569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.608120, 40.683182, 55.737804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.531891, 41.035301, 55.564022>,  <45.486153, 41.246574, 55.459751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.531891, 41.035301, 55.564022>,  <45.608120, 40.683182, 55.737804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531891, 41.035301, 55.564022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028015, -0.437513, -0.898776,
		-0.981273, -0.183456, 0.058718,
		-0.190576, 0.880299, -0.434459,
		45.474716, 41.299393, 55.433685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075111, 40.493782, 55.213818>,  <45.608120, 40.683182, 55.737804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075111, 40.493782, 55.213818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.216953, 40.851486, 55.104599>,  <45.302059, 41.066109, 55.039066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.216953, 40.851486, 55.104599>,  <45.075111, 40.493782, 55.213818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216953, 40.851486, 55.104599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053321, -0.272209, -0.960760,
		-0.933494, 0.355250, -0.048844,
		0.354605, 0.894260, -0.273047,
		45.323334, 41.119762, 55.022686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688545, 40.747009, 54.685669>,  <45.075111, 40.493782, 55.213818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688545, 40.747009, 54.685669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.033577, 40.940071, 54.625000>,  <45.240597, 41.055908, 54.588600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.033577, 40.940071, 54.625000>,  <44.688545, 40.747009, 54.685669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.033577, 40.940071, 54.625000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001762, -0.302650, -0.953100,
		-0.505917, 0.821858, -0.261910,
		0.862580, 0.482651, -0.151668,
		45.292351, 41.084866, 54.579498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.846004, 42.675175, 49.778976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.239494, 42.743568, 49.756908>,  <42.475590, 42.784603, 49.743668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.239494, 42.743568, 49.756908>,  <41.846004, 42.675175, 49.778976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239494, 42.743568, 49.756908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055573, -0.002447, -0.998452,
		-0.170853, 0.985271, 0.007095,
		0.983728, 0.170983, -0.055172,
		42.534615, 42.794865, 49.740356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908779, 42.965187, 49.256767>,  <41.846004, 42.675175, 49.778976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908779, 42.965187, 49.256767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.285061, 42.834099, 49.291809>,  <42.510830, 42.755444, 49.312832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.285061, 42.834099, 49.291809>,  <41.908779, 42.965187, 49.256767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285061, 42.834099, 49.291809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072595, -0.057769, -0.995687,
		0.331371, 0.943005, -0.030552,
		0.940703, -0.327724, 0.087600,
		42.567272, 42.735783, 49.318089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417252, 43.386192, 48.732876>,  <41.908779, 42.965187, 49.256767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417252, 43.386192, 48.732876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.613712, 43.045326, 48.805077>,  <42.731590, 42.840805, 48.848396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.613712, 43.045326, 48.805077>,  <42.417252, 43.386192, 48.732876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613712, 43.045326, 48.805077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187762, -0.098778, -0.977235,
		0.850597, 0.513863, 0.111490,
		0.491152, -0.852166, 0.180504,
		42.761059, 42.789677, 48.859226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037807, 43.499966, 48.352955>,  <42.417252, 43.386192, 48.732876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037807, 43.499966, 48.352955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.028725, 43.108307, 48.433712>,  <43.023273, 42.873314, 48.482166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.028725, 43.108307, 48.433712>,  <43.037807, 43.499966, 48.352955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028725, 43.108307, 48.433712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138320, -0.203083, -0.969343,
		0.990127, 0.005916, 0.140046,
		-0.022707, -0.979144, 0.201896,
		43.021912, 42.814564, 48.494282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661186, 43.080761, 48.069336>,  <43.037807, 43.499966, 48.352955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661186, 43.080761, 48.069336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.374519, 42.805946, 48.117294>,  <43.202518, 42.641056, 48.146069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.374519, 42.805946, 48.117294>,  <43.661186, 43.080761, 48.069336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374519, 42.805946, 48.117294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116565, -0.287495, -0.950663,
		0.687609, -0.667330, 0.286122,
		-0.716664, -0.687036, 0.119896,
		43.159519, 42.599834, 48.153263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014900, 42.385384, 47.991497>,  <43.661186, 43.080761, 48.069336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014900, 42.385384, 47.991497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.619583, 42.351570, 47.940693>,  <43.382393, 42.331284, 47.910210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.619583, 42.351570, 47.940693>,  <44.014900, 42.385384, 47.991497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619583, 42.351570, 47.940693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142822, -0.219909, -0.965009,
		0.053643, -0.971851, 0.229407,
		-0.988294, -0.084530, -0.127006,
		43.323093, 42.326210, 47.902592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027416, 41.933548, 47.459053>,  <44.014900, 42.385384, 47.991497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027416, 41.933548, 47.459053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.646965, 42.056595, 47.469864>,  <43.418694, 42.130424, 47.476349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.646965, 42.056595, 47.469864>,  <44.027416, 41.933548, 47.459053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646965, 42.056595, 47.469864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106060, -0.243218, -0.964156,
		-0.290026, -0.919898, 0.263958,
		-0.951124, 0.307625, 0.027025,
		43.361626, 42.148880, 47.477970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684410, 41.463257, 46.979481>,  <44.027416, 41.933548, 47.459053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684410, 41.463257, 46.979481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.433159, 41.773270, 47.007126>,  <43.282410, 41.959278, 47.023712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.433159, 41.773270, 47.007126>,  <43.684410, 41.463257, 46.979481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433159, 41.773270, 47.007126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282947, -0.144766, -0.948148,
		-0.724841, -0.615114, 0.310225,
		-0.628129, 0.775034, 0.069113,
		43.244720, 42.005779, 47.027859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132023, 41.206070, 46.762310>,  <43.684410, 41.463257, 46.979481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132023, 41.206070, 46.762310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.100868, 41.600121, 46.701054>,  <43.082176, 41.836552, 46.664299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.100868, 41.600121, 46.701054>,  <43.132023, 41.206070, 46.762310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100868, 41.600121, 46.701054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333799, -0.170508, -0.927095,
		-0.939421, -0.021091, 0.342116,
		-0.077887, 0.985130, -0.153139,
		43.077503, 41.895660, 46.655113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510109, 41.313351, 46.368572>,  <43.132023, 41.206070, 46.762310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510109, 41.313351, 46.368572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.718697, 41.641479, 46.274639>,  <42.843849, 41.838356, 46.218277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.718697, 41.641479, 46.274639>,  <42.510109, 41.313351, 46.368572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718697, 41.641479, 46.274639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049185, -0.245863, -0.968056,
		-0.851853, 0.516359, -0.087862,
		0.521467, 0.820320, -0.234837,
		42.875137, 41.887577, 46.204189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174713, 41.696018, 45.839706>,  <42.510109, 41.313351, 46.368572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174713, 41.696018, 45.839706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.544151, 41.847054, 45.813152>,  <42.765812, 41.937675, 45.797222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.544151, 41.847054, 45.813152>,  <42.174713, 41.696018, 45.839706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544151, 41.847054, 45.813152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047526, -0.059050, -0.997123,
		-0.380422, 0.924089, -0.036593,
		0.923591, 0.377588, -0.066382,
		42.821228, 41.960331, 45.793236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155643, 42.033371, 45.228699>,  <42.174713, 41.696018, 45.839706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155643, 42.033371, 45.228699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.551392, 42.023254, 45.285988>,  <42.788841, 42.017185, 45.320362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.551392, 42.023254, 45.285988>,  <42.155643, 42.033371, 45.228699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551392, 42.023254, 45.285988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127040, -0.329111, -0.935706,
		0.070801, 0.943952, -0.322399,
		0.989367, -0.025291, 0.143221,
		42.848202, 42.015667, 45.328953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.490982, 42.448936, 44.756706>,  <42.155643, 42.033371, 45.228699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.490982, 42.448936, 44.756706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.747093, 42.154793, 44.845505>,  <42.900761, 41.978306, 44.898785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.747093, 42.154793, 44.845505>,  <42.490982, 42.448936, 44.756706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747093, 42.154793, 44.845505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043559, -0.323295, -0.945295,
		0.766905, 0.595585, -0.239031,
		0.640281, -0.735363, 0.221993,
		42.939178, 41.934185, 44.912102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020573, 42.505775, 44.226032>,  <42.490982, 42.448936, 44.756706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020573, 42.505775, 44.226032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.933613, 42.148689, 44.383923>,  <42.881435, 41.934437, 44.478657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.933613, 42.148689, 44.383923>,  <43.020573, 42.505775, 44.226032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933613, 42.148689, 44.383923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177266, -0.361560, -0.915342,
		0.959851, -0.268965, -0.079645,
		-0.217398, -0.892711, 0.394722,
		42.868393, 41.880875, 44.502338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592793, 42.823036, 43.775928>,  <43.020573, 42.505775, 44.226032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592793, 42.823036, 43.775928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.924530, 43.042946, 43.736050>,  <44.123573, 43.174892, 43.712120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.924530, 43.042946, 43.736050>,  <43.592793, 42.823036, 43.775928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924530, 43.042946, 43.736050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240926, 0.512864, 0.823969,
		0.504118, -0.659340, 0.557796,
		0.829349, 0.549765, -0.099692,
		44.173332, 43.207878, 43.706139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856636, 42.786453, 44.361198>,  <43.592793, 42.823036, 43.775928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856636, 42.786453, 44.361198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059097, 43.100288, 44.217957>,  <44.180573, 43.288589, 44.132011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059097, 43.100288, 44.217957>,  <43.856636, 42.786453, 44.361198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059097, 43.100288, 44.217957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204921, 0.512733, 0.833734,
		0.837745, -0.348614, 0.420299,
		0.506153, 0.784584, -0.358102,
		44.210945, 43.335663, 44.110527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299782, 42.997425, 44.957077>,  <43.856636, 42.786453, 44.361198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299782, 42.997425, 44.957077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.284218, 43.325180, 44.728310>,  <44.274879, 43.521832, 44.591049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.284218, 43.325180, 44.728310>,  <44.299782, 42.997425, 44.957077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284218, 43.325180, 44.728310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093752, 0.572824, 0.814299,
		0.994835, -0.021933, -0.099108,
		-0.038912, 0.819385, -0.571922,
		44.272545, 43.570995, 44.556732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735519, 43.502529, 45.314159>,  <44.299782, 42.997425, 44.957077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735519, 43.502529, 45.314159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.535019, 43.738838, 45.061260>,  <44.414719, 43.880623, 44.909523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.535019, 43.738838, 45.061260>,  <44.735519, 43.502529, 45.314159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535019, 43.738838, 45.061260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038207, 0.714841, 0.698242,
		0.864459, 0.374148, -0.335741,
		-0.501248, 0.590775, -0.632246,
		44.384644, 43.916069, 44.871586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056515, 44.236767, 45.189522>,  <44.735519, 43.502529, 45.314159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056515, 44.236767, 45.189522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.662376, 44.257782, 45.124615>,  <44.425892, 44.270390, 45.085670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.662376, 44.257782, 45.124615>,  <45.056515, 44.236767, 45.189522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662376, 44.257782, 45.124615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085957, 0.668757, 0.738496,
		0.147315, 0.741623, -0.654442,
		-0.985347, 0.052537, -0.162266,
		44.366772, 44.273544, 45.075935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876381, 45.004612, 45.262268>,  <45.056515, 44.236767, 45.189522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876381, 45.004612, 45.262268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.532318, 44.805649, 45.307365>,  <44.325882, 44.686272, 45.334423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.532318, 44.805649, 45.307365>,  <44.876381, 45.004612, 45.262268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532318, 44.805649, 45.307365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222068, 0.564254, 0.795175,
		-0.459147, 0.658938, -0.595806,
		-0.860157, -0.497411, 0.112746,
		44.274269, 44.656425, 45.341190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.412407, 45.599583, 45.467941>,  <44.876381, 45.004612, 45.262268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.412407, 45.599583, 45.467941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.219646, 45.255020, 45.532135>,  <44.103989, 45.048283, 45.570652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.219646, 45.255020, 45.532135>,  <44.412407, 45.599583, 45.467941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219646, 45.255020, 45.532135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334315, 0.350052, 0.875041,
		-0.809942, 0.368031, -0.456670,
		-0.481901, -0.861404, 0.160483,
		44.075077, 44.996597, 45.580280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722893, 45.780899, 45.524017>,  <44.412407, 45.599583, 45.467941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722893, 45.780899, 45.524017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.773701, 45.435394, 45.719070>,  <43.804184, 45.228092, 45.836102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.773701, 45.435394, 45.719070>,  <43.722893, 45.780899, 45.524017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773701, 45.435394, 45.719070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403388, 0.404145, 0.820942,
		-0.906170, -0.300982, -0.297095,
		0.127019, -0.863757, 0.487637,
		43.811806, 45.176266, 45.865360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096184, 45.635735, 45.935501>,  <43.722893, 45.780899, 45.524017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096184, 45.635735, 45.935501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.398685, 45.440918, 46.110252>,  <43.580189, 45.324028, 46.215103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.398685, 45.440918, 46.110252>,  <43.096184, 45.635735, 45.935501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398685, 45.440918, 46.110252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270314, 0.375483, 0.886534,
		-0.595822, -0.788542, 0.152307,
		0.756258, -0.487046, 0.436875,
		43.625565, 45.294804, 46.241314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832531, 45.561394, 46.630955>,  <43.096184, 45.635735, 45.935501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832531, 45.561394, 46.630955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.224472, 45.490501, 46.667793>,  <43.459637, 45.447968, 46.689896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.224472, 45.490501, 46.667793>,  <42.832531, 45.561394, 46.630955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224472, 45.490501, 46.667793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038585, 0.284426, 0.957921,
		-0.195968, -0.942173, 0.271856,
		0.979851, -0.177233, 0.092092,
		43.518429, 45.437332, 46.695419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877853, 45.003414, 47.153023>,  <42.832531, 45.561394, 46.630955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877853, 45.003414, 47.153023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.235992, 45.180588, 47.134388>,  <43.450874, 45.286892, 47.123207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.235992, 45.180588, 47.134388>,  <42.877853, 45.003414, 47.153023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235992, 45.180588, 47.134388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010171, 0.124915, 0.992115,
		0.445260, -0.887810, 0.116347,
		0.895344, 0.442932, -0.046590,
		43.504597, 45.313469, 47.120411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258774, 44.770813, 47.738918>,  <42.877853, 45.003414, 47.153023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258774, 44.770813, 47.738918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.489475, 45.086510, 47.654575>,  <43.627895, 45.275928, 47.603970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.489475, 45.086510, 47.654575>,  <43.258774, 44.770813, 47.738918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489475, 45.086510, 47.654575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038207, 0.231765, 0.972021,
		0.816026, -0.568671, 0.103516,
		0.576751, 0.789240, -0.210853,
		43.662502, 45.323280, 47.591320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780910, 44.612167, 48.118942>,  <43.258774, 44.770813, 47.738918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780910, 44.612167, 48.118942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.757133, 45.005852, 48.052246>,  <43.742867, 45.242062, 48.012230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.757133, 45.005852, 48.052246>,  <43.780910, 44.612167, 48.118942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757133, 45.005852, 48.052246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178411, 0.153871, 0.971850,
		0.982159, 0.087515, 0.166448,
		-0.059440, 0.984208, -0.166740,
		43.739300, 45.301113, 48.002224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335819, 44.936619, 48.547264>,  <43.780910, 44.612167, 48.118942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335819, 44.936619, 48.547264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.051323, 45.203293, 48.458126>,  <43.880623, 45.363297, 48.404644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.051323, 45.203293, 48.458126>,  <44.335819, 44.936619, 48.547264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051323, 45.203293, 48.458126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084199, 0.233941, 0.968598,
		0.697883, 0.707674, -0.110255,
		-0.711245, 0.666685, -0.222849,
		43.837948, 45.403297, 48.391270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939842, 45.336868, 48.290344>,  <44.335819, 44.936619, 48.547264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.939842, 45.336868, 48.290344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.261108, 45.574318, 48.310501>,  <45.453869, 45.716785, 48.322594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.261108, 45.574318, 48.310501>,  <44.939842, 45.336868, 48.290344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261108, 45.574318, 48.310501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363613, -0.421448, -0.830763,
		-0.471923, 0.685562, -0.554341,
		0.803165, 0.593622, 0.050388,
		45.502056, 45.752403, 48.325619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006695, 45.662674, 47.634464>,  <44.939842, 45.336868, 48.290344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006695, 45.662674, 47.634464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.370445, 45.661491, 47.800850>,  <45.588696, 45.660782, 47.900681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.370445, 45.661491, 47.800850>,  <45.006695, 45.662674, 47.634464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370445, 45.661491, 47.800850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386627, -0.362949, -0.847814,
		0.153482, 0.931804, -0.328913,
		0.909375, -0.002957, 0.415966,
		45.643257, 45.660603, 47.925640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.412846, 45.842865, 47.057278>,  <45.006695, 45.662674, 47.634464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.412846, 45.842865, 47.057278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.698669, 45.721390, 47.309368>,  <45.870163, 45.648506, 47.460621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.698669, 45.721390, 47.309368>,  <45.412846, 45.842865, 47.057278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698669, 45.721390, 47.309368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561268, -0.288888, -0.775579,
		0.417597, 0.907920, -0.035977,
		0.714556, -0.303687, 0.630225,
		45.913036, 45.630283, 47.498436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.015064, 46.100647, 46.774433>,  <45.412846, 45.842865, 47.057278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.015064, 46.100647, 46.774433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.115868, 45.792976, 47.009335>,  <46.176350, 45.608376, 47.150276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.115868, 45.792976, 47.009335>,  <46.015064, 46.100647, 46.774433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115868, 45.792976, 47.009335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572195, -0.370961, -0.731423,
		0.780439, 0.520348, 0.346631,
		0.252008, -0.769172, 0.587253,
		46.191471, 45.562225, 47.185509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.749199, 46.033146, 46.576504>,  <46.015064, 46.100647, 46.774433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.749199, 46.033146, 46.576504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.665939, 45.704628, 46.788971>,  <46.615982, 45.507515, 46.916451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.665939, 45.704628, 46.788971>,  <46.749199, 46.033146, 46.576504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.665939, 45.704628, 46.788971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537008, -0.549855, -0.639752,
		0.817494, 0.152079, 0.555496,
		-0.208149, -0.821298, 0.531171,
		46.603493, 45.458237, 46.948322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.334625, 45.674362, 46.775566>,  <46.749199, 46.033146, 46.576504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.334625, 45.674362, 46.775566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.035278, 45.414467, 46.722218>,  <46.855671, 45.258530, 46.690208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.035278, 45.414467, 46.722218>,  <47.334625, 45.674362, 46.775566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.035278, 45.414467, 46.722218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539491, -0.479275, -0.692275,
		0.385879, -0.590026, 0.709202,
		-0.748363, -0.649742, -0.133372,
		46.810768, 45.219543, 46.682205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.659271, 45.095963, 46.762939>,  <47.334625, 45.674362, 46.775566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.659271, 45.095963, 46.762939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.302414, 44.998665, 46.610668>,  <47.088299, 44.940285, 46.519306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.302414, 44.998665, 46.610668>,  <47.659271, 45.095963, 46.762939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.302414, 44.998665, 46.610668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432435, -0.703635, -0.563825,
		-0.130712, -0.667630, 0.732928,
		-0.892140, -0.243245, -0.380680,
		47.034771, 44.925690, 46.496464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.595753, 44.359383, 46.654400>,  <47.659271, 45.095963, 46.762939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.595753, 44.359383, 46.654400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.319481, 44.481369, 46.392117>,  <47.153717, 44.554562, 46.234745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.319481, 44.481369, 46.392117>,  <47.595753, 44.359383, 46.654400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.319481, 44.481369, 46.392117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333757, -0.669951, -0.663153,
		-0.641532, -0.676875, 0.360939,
		-0.690683, 0.304968, -0.655707,
		47.112278, 44.572861, 46.195404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.492470, 43.783180, 46.293587>,  <47.595753, 44.359383, 46.654400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.492470, 43.783180, 46.293587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.335396, 44.058113, 46.049171>,  <47.241150, 44.223072, 45.902523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.335396, 44.058113, 46.049171>,  <47.492470, 43.783180, 46.293587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.335396, 44.058113, 46.049171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213540, -0.578106, -0.787524,
		-0.894539, -0.439730, 0.080240,
		-0.392685, 0.687337, -0.611038,
		47.217590, 44.264313, 45.865860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032059, 43.380363, 45.812500>,  <47.492470, 43.783180, 46.293587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032059, 43.380363, 45.812500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.144539, 43.732422, 45.659515>,  <47.212025, 43.943657, 45.567726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.144539, 43.732422, 45.659515>,  <47.032059, 43.380363, 45.812500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.144539, 43.732422, 45.659515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428100, -0.471737, -0.770840,
		-0.858871, 0.053026, -0.509440,
		0.281197, 0.880143, -0.382461,
		47.228897, 43.996464, 45.544777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.008614, 43.301540, 45.142429>,  <47.032059, 43.380363, 45.812500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.008614, 43.301540, 45.142429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.216728, 43.643105, 45.137783>,  <47.341599, 43.848042, 45.134995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.216728, 43.643105, 45.137783>,  <47.008614, 43.301540, 45.142429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.216728, 43.643105, 45.137783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417119, -0.265971, -0.869064,
		-0.745192, 0.447320, -0.494564,
		0.520289, 0.853911, -0.011614,
		47.372814, 43.899277, 45.134300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861847, 43.552696, 44.518227>,  <47.008614, 43.301540, 45.142429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861847, 43.552696, 44.518227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.196732, 43.733780, 44.640945>,  <47.397663, 43.842430, 44.714577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.196732, 43.733780, 44.640945>,  <46.861847, 43.552696, 44.518227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.196732, 43.733780, 44.640945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383571, -0.086227, -0.919477,
		-0.389798, 0.887481, -0.245836,
		0.837216, 0.452706, 0.306801,
		47.447895, 43.869591, 44.732986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.342056, 47.947079, 51.158676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685860, 47.821396, 51.319927>,  <44.892143, 47.745987, 51.416679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685860, 47.821396, 51.319927>,  <44.342056, 47.947079, 51.158676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685860, 47.821396, 51.319927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308453, -0.310038, -0.899296,
		0.407550, 0.897302, -0.169563,
		0.859511, -0.314206, 0.403132,
		44.943714, 47.727135, 51.440868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832497, 48.397022, 50.882893>,  <44.342056, 47.947079, 51.158676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832497, 48.397022, 50.882893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967270, 48.034859, 50.986210>,  <45.048134, 47.817562, 51.048199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967270, 48.034859, 50.986210>,  <44.832497, 48.397022, 50.882893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967270, 48.034859, 50.986210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208239, -0.195878, -0.958263,
		0.918211, 0.376657, 0.122543,
		0.336933, -0.905406, 0.258292,
		45.068352, 47.763237, 51.063698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373535, 48.285183, 50.499664>,  <44.832497, 48.397022, 50.882893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373535, 48.285183, 50.499664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.354523, 47.903793, 50.618740>,  <45.343117, 47.674957, 50.690186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.354523, 47.903793, 50.618740>,  <45.373535, 48.285183, 50.499664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.354523, 47.903793, 50.618740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149874, -0.301465, -0.941625,
		0.987562, -0.000139, 0.157230,
		-0.047531, -0.953477, 0.297694,
		45.340263, 47.617748, 50.708050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950424, 47.870373, 50.223442>,  <45.373535, 48.285183, 50.499664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950424, 47.870373, 50.223442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701332, 47.579727, 50.339539>,  <45.551876, 47.405338, 50.409195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701332, 47.579727, 50.339539>,  <45.950424, 47.870373, 50.223442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701332, 47.579727, 50.339539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232053, -0.525765, -0.818366,
		0.747233, -0.442271, 0.496023,
		-0.622731, -0.726614, 0.290238,
		45.514511, 47.361744, 50.426609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.310120, 47.265640, 50.117886>,  <45.950424, 47.870373, 50.223442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.310120, 47.265640, 50.117886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.938271, 47.118652, 50.128967>,  <45.715160, 47.030460, 50.135616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.938271, 47.118652, 50.128967>,  <46.310120, 47.265640, 50.117886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938271, 47.118652, 50.128967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219931, -0.613567, -0.758397,
		0.295688, -0.698930, 0.651203,
		-0.929623, -0.367468, 0.027708,
		45.659382, 47.008411, 50.137280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.411766, 46.625828, 49.989250>,  <46.310120, 47.265640, 50.117886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.411766, 46.625828, 49.989250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.023315, 46.670189, 49.904755>,  <45.790245, 46.696804, 49.854057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.023315, 46.670189, 49.904755>,  <46.411766, 46.625828, 49.989250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.023315, 46.670189, 49.904755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124357, -0.520316, -0.844871,
		-0.203609, -0.846742, 0.491499,
		-0.971123, 0.110902, -0.211239,
		45.731979, 46.703461, 49.841381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116821, 45.929729, 49.796814>,  <46.411766, 46.625828, 49.989250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116821, 45.929729, 49.796814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866936, 46.187485, 49.620407>,  <45.717007, 46.342140, 49.514561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866936, 46.187485, 49.620407>,  <46.116821, 45.929729, 49.796814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.866936, 46.187485, 49.620407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139596, -0.647854, -0.748864,
		-0.768278, -0.406258, 0.494675,
		-0.624710, 0.644390, -0.441020,
		45.679523, 46.380802, 49.488102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556946, 45.456417, 49.606133>,  <46.116821, 45.929729, 49.796814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556946, 45.456417, 49.606133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575340, 45.797806, 49.398491>,  <45.586376, 46.002640, 49.273907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575340, 45.797806, 49.398491>,  <45.556946, 45.456417, 49.606133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575340, 45.797806, 49.398491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035688, -0.520723, -0.852979,
		-0.998304, 0.020697, -0.054402,
		0.045982, 0.853475, -0.519102,
		45.589134, 46.053848, 49.242760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184586, 45.276535, 49.069221>,  <45.556946, 45.456417, 49.606133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184586, 45.276535, 49.069221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343689, 45.613091, 48.922882>,  <45.439152, 45.815025, 48.835079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343689, 45.613091, 48.922882>,  <45.184586, 45.276535, 49.069221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343689, 45.613091, 48.922882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198175, -0.468127, -0.861153,
		-0.895831, 0.270031, -0.352946,
		0.397761, 0.841392, -0.365849,
		45.463017, 45.865509, 48.813126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585487, 45.503464, 48.945488>,  <45.184586, 45.276535, 49.069221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585487, 45.503464, 48.945488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198639, 45.573868, 48.872066>,  <43.966530, 45.616108, 48.828014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198639, 45.573868, 48.872066>,  <44.585487, 45.503464, 48.945488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198639, 45.573868, 48.872066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145610, 0.208491, 0.967124,
		0.208491, 0.962056, -0.176008,
		-0.967124, 0.176008, -0.183554,
		43.908501, 45.626671, 48.817001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398392, 46.052380, 49.421535>,  <44.585487, 45.503464, 48.945488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398392, 46.052380, 49.421535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049202, 45.903458, 49.295483>,  <43.839687, 45.814102, 49.219852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049202, 45.903458, 49.295483>,  <44.398392, 46.052380, 49.421535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049202, 45.903458, 49.295483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364556, 0.068784, 0.928637,
		-0.324063, 0.925557, -0.195773,
		-0.872973, -0.372307, -0.315128,
		43.787312, 45.791767, 49.200943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903622, 46.537411, 49.568893>,  <44.398392, 46.052380, 49.421535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903622, 46.537411, 49.568893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699551, 46.194809, 49.537590>,  <43.577110, 45.989246, 49.518810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699551, 46.194809, 49.537590>,  <43.903622, 46.537411, 49.568893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699551, 46.194809, 49.537590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342057, 0.118576, 0.932168,
		-0.789125, 0.502336, -0.353467,
		-0.510174, -0.856503, -0.078257,
		43.546497, 45.937859, 49.514114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215351, 46.768883, 49.624435>,  <43.903622, 46.537411, 49.568893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215351, 46.768883, 49.624435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224884, 46.375710, 49.697403>,  <43.230602, 46.139805, 49.741184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224884, 46.375710, 49.697403>,  <43.215351, 46.768883, 49.624435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224884, 46.375710, 49.697403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385481, 0.159328, 0.908856,
		-0.922408, -0.091978, -0.375105,
		0.023830, -0.982932, 0.182421,
		43.232033, 46.080830, 49.752129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602539, 46.675159, 50.109520>,  <43.215351, 46.768883, 49.624435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602539, 46.675159, 50.109520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819344, 46.341042, 50.146416>,  <42.949425, 46.140572, 50.168552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819344, 46.341042, 50.146416>,  <42.602539, 46.675159, 50.109520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819344, 46.341042, 50.146416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383641, -0.148282, 0.911500,
		-0.747696, -0.529425, -0.400823,
		0.542006, -0.835297, 0.092239,
		42.981945, 46.090454, 50.174088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153244, 46.212849, 50.312729>,  <42.602539, 46.675159, 50.109520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153244, 46.212849, 50.312729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508545, 46.057129, 50.410259>,  <42.721725, 45.963699, 50.468777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508545, 46.057129, 50.410259>,  <42.153244, 46.212849, 50.312729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508545, 46.057129, 50.410259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356593, -0.249790, 0.900248,
		-0.289567, -0.886593, -0.360700,
		0.888253, -0.389305, 0.243822,
		42.775021, 45.940342, 50.483406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009354, 45.563629, 50.728725>,  <42.153244, 46.212849, 50.312729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009354, 45.563629, 50.728725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383003, 45.668030, 50.826126>,  <42.607193, 45.730671, 50.884567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383003, 45.668030, 50.826126>,  <42.009354, 45.563629, 50.728725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383003, 45.668030, 50.826126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153295, -0.322720, 0.933998,
		0.322359, -0.909796, -0.261450,
		0.934123, 0.261003, 0.243499,
		42.663239, 45.746330, 50.899178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233505, 44.960938, 51.108807>,  <42.009354, 45.563629, 50.728725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233505, 44.960938, 51.108807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457405, 45.280922, 51.195286>,  <42.591743, 45.472912, 51.247173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457405, 45.280922, 51.195286>,  <42.233505, 44.960938, 51.108807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457405, 45.280922, 51.195286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155987, -0.154515, 0.975599,
		0.813851, -0.579811, 0.038295,
		0.559746, 0.799965, 0.216195,
		42.625328, 45.520912, 51.260143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578682, 44.770489, 51.644146>,  <42.233505, 44.960938, 51.108807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578682, 44.770489, 51.644146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579453, 45.170349, 51.654720>,  <42.579914, 45.410263, 51.661064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579453, 45.170349, 51.654720>,  <42.578682, 44.770489, 51.644146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579453, 45.170349, 51.654720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162380, -0.025769, 0.986392,
		0.986726, -0.006190, 0.162273,
		0.001924, 0.999649, 0.026433,
		42.580029, 45.470245, 51.662651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018372, 44.930885, 52.129139>,  <42.578682, 44.770489, 51.644146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018372, 44.930885, 52.129139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762787, 45.237572, 52.104229>,  <42.609436, 45.421585, 52.089283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762787, 45.237572, 52.104229>,  <43.018372, 44.930885, 52.129139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762787, 45.237572, 52.104229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205676, -0.092270, 0.974260,
		0.741236, 0.635320, 0.216652,
		-0.638958, 0.766717, -0.062276,
		42.571098, 45.467587, 52.085545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254650, 45.388111, 52.612537>,  <43.018372, 44.930885, 52.129139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254650, 45.388111, 52.612537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896839, 45.555031, 52.548435>,  <42.682152, 45.655182, 52.509972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896839, 45.555031, 52.548435>,  <43.254650, 45.388111, 52.612537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896839, 45.555031, 52.548435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155918, 0.044728, 0.986757,
		0.418945, 0.907666, 0.025054,
		-0.894525, 0.417303, -0.160260,
		42.628483, 45.680222, 52.500359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214710, 45.900467, 53.086758>,  <43.254650, 45.388111, 52.612537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214710, 45.900467, 53.086758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826363, 45.860954, 52.999435>,  <42.593353, 45.837246, 52.947041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826363, 45.860954, 52.999435>,  <43.214710, 45.900467, 53.086758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826363, 45.860954, 52.999435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230259, 0.132521, 0.964064,
		-0.066302, 0.986246, -0.151406,
		-0.970868, -0.098782, -0.218306,
		42.535103, 45.831318, 52.933945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946827, 46.471066, 53.368397>,  <43.214710, 45.900467, 53.086758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946827, 46.471066, 53.368397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648232, 46.209213, 53.320709>,  <42.469074, 46.052101, 53.292099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648232, 46.209213, 53.320709>,  <42.946827, 46.471066, 53.368397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648232, 46.209213, 53.320709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244949, 0.103770, 0.963967,
		-0.618674, 0.748790, -0.237815,
		-0.746486, -0.654634, -0.119216,
		42.424286, 46.012821, 53.284943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269730, 46.812012, 53.704926>,  <42.946827, 46.471066, 53.368397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269730, 46.812012, 53.704926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234898, 46.414673, 53.674801>,  <42.213997, 46.176270, 53.656727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234898, 46.414673, 53.674801>,  <42.269730, 46.812012, 53.704926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234898, 46.414673, 53.674801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353474, -0.039872, 0.934594,
		-0.931382, 0.108007, -0.347651,
		-0.087081, -0.993350, -0.075314,
		42.208775, 46.116669, 53.652206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<48.111626, 42.937351, 55.930996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.970139, 43.271454, 55.762604>,  <47.885246, 43.471916, 55.661568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.970139, 43.271454, 55.762604>,  <48.111626, 42.937351, 55.930996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.970139, 43.271454, 55.762604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178870, -0.381364, -0.906955,
		-0.918089, -0.396110, -0.014506,
		-0.353722, 0.835259, -0.420978,
		47.864021, 43.522030, 55.636311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.822697, 42.710106, 55.369049>,  <48.111626, 42.937351, 55.930996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.822697, 42.710106, 55.369049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.819336, 43.096031, 55.263924>,  <47.817318, 43.327587, 55.200848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.819336, 43.096031, 55.263924>,  <47.822697, 42.710106, 55.369049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.819336, 43.096031, 55.263924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109677, -0.262130, -0.958780,
		-0.993932, 0.020770, 0.108020,
		-0.008402, 0.964809, -0.262817,
		47.816814, 43.385475, 55.185078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.214958, 42.861023, 54.916821>,  <47.822697, 42.710106, 55.369049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.214958, 42.861023, 54.916821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.506248, 43.127525, 54.852581>,  <47.681023, 43.287426, 54.814037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.506248, 43.127525, 54.852581>,  <47.214958, 42.861023, 54.916821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.506248, 43.127525, 54.852581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075533, -0.154878, -0.985042,
		-0.681159, 0.729466, -0.062463,
		0.728229, 0.666252, -0.160595,
		47.724716, 43.327400, 54.804401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.005962, 43.404293, 54.421032>,  <47.214958, 42.861023, 54.916821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.005962, 43.404293, 54.421032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.405609, 43.393074, 54.408516>,  <47.645397, 43.386345, 54.401005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.405609, 43.393074, 54.408516>,  <47.005962, 43.404293, 54.421032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.405609, 43.393074, 54.408516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033437, -0.079522, -0.996272,
		0.025452, 0.996439, -0.080389,
		0.999117, -0.028045, -0.031294,
		47.705345, 43.384659, 54.399128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.110413, 43.730289, 53.814518>,  <47.005962, 43.404293, 54.421032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.110413, 43.730289, 53.814518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.468552, 43.564499, 53.879715>,  <47.683434, 43.465023, 53.918835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.468552, 43.564499, 53.879715>,  <47.110413, 43.730289, 53.814518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.468552, 43.564499, 53.879715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076507, -0.217390, -0.973082,
		0.438757, 0.883712, -0.162928,
		0.895343, -0.414481, 0.162991,
		47.737156, 43.440155, 53.928612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.553589, 44.052376, 53.327171>,  <47.110413, 43.730289, 53.814518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.553589, 44.052376, 53.327171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.734306, 43.711601, 53.433064>,  <47.842739, 43.507137, 53.496597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.734306, 43.711601, 53.433064>,  <47.553589, 44.052376, 53.327171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.734306, 43.711601, 53.433064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110406, -0.241067, -0.964208,
		0.885263, 0.464853, -0.014854,
		0.451796, -0.851938, 0.264730,
		47.869846, 43.456020, 53.512482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.993687, 43.942566, 52.752636>,  <47.553589, 44.052376, 53.327171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.993687, 43.942566, 52.752636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.974442, 43.586342, 52.933563>,  <47.962894, 43.372608, 53.042118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.974442, 43.586342, 52.933563>,  <47.993687, 43.942566, 52.752636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.974442, 43.586342, 52.933563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130408, -0.454564, -0.881116,
		0.990292, 0.016589, 0.138008,
		-0.048116, -0.890559, 0.452315,
		47.960007, 43.319176, 53.069260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.477871, 43.628963, 52.334106>,  <47.993687, 43.942566, 52.752636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.477871, 43.628963, 52.334106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.279472, 43.347923, 52.538200>,  <48.160435, 43.179298, 52.660656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.279472, 43.347923, 52.538200>,  <48.477871, 43.628963, 52.334106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.279472, 43.347923, 52.538200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098062, -0.538522, -0.836886,
		0.862771, -0.465125, 0.198205,
		-0.495994, -0.702604, 0.510233,
		48.130672, 43.137142, 52.691269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.810852, 43.012512, 52.277897>,  <48.477871, 43.628963, 52.334106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.810852, 43.012512, 52.277897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.427452, 42.922348, 52.347725>,  <48.197414, 42.868248, 52.389622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.427452, 42.922348, 52.347725>,  <48.810852, 43.012512, 52.277897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.427452, 42.922348, 52.347725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014726, -0.572332, -0.819890,
		0.284723, -0.788432, 0.545259,
		-0.958497, -0.225412, 0.174566,
		48.139904, 42.854725, 52.400093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.785282, 42.288292, 52.458439>,  <48.810852, 43.012512, 52.277897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.785282, 42.288292, 52.458439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.446289, 42.435204, 52.305138>,  <48.242893, 42.523350, 52.213158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.446289, 42.435204, 52.305138>,  <48.785282, 42.288292, 52.458439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.446289, 42.435204, 52.305138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042952, -0.672182, -0.739139,
		-0.529086, -0.642868, 0.553885,
		-0.847480, 0.367278, -0.383255,
		48.192043, 42.545387, 52.190163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.546837, 41.715881, 52.097931>,  <48.785282, 42.288292, 52.458439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.546837, 41.715881, 52.097931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.299576, 42.002083, 51.967731>,  <48.151218, 42.173801, 51.889610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.299576, 42.002083, 51.967731>,  <48.546837, 41.715881, 52.097931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.299576, 42.002083, 51.967731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090334, -0.476009, -0.874789,
		-0.780853, -0.511346, 0.358878,
		-0.618149, 0.715500, -0.325501,
		48.114132, 42.216732, 51.870083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.156982, 41.269367, 51.601578>,  <48.546837, 41.715881, 52.097931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.156982, 41.269367, 51.601578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.085709, 41.650970, 51.505142>,  <48.042946, 41.879932, 51.447281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.085709, 41.650970, 51.505142>,  <48.156982, 41.269367, 51.601578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.085709, 41.650970, 51.505142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036191, -0.238486, -0.970471,
		-0.983331, -0.181648, 0.007968,
		-0.178185, 0.954007, -0.241085,
		48.032253, 41.937172, 51.432816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.564037, 41.246506, 51.106712>,  <48.156982, 41.269367, 51.601578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.564037, 41.246506, 51.106712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.730156, 41.603729, 51.037464>,  <47.829826, 41.818066, 50.995914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.730156, 41.603729, 51.037464>,  <47.564037, 41.246506, 51.106712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.730156, 41.603729, 51.037464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105810, -0.141593, -0.984254,
		-0.903512, 0.427074, 0.035692,
		0.415296, 0.893062, -0.173120,
		47.854744, 41.871647, 50.985527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.152084, 41.579288, 50.646027>,  <47.564037, 41.246506, 51.106712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.152084, 41.579288, 50.646027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.509537, 41.754265, 50.605873>,  <47.724007, 41.859249, 50.581783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.509537, 41.754265, 50.605873>,  <47.152084, 41.579288, 50.646027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.509537, 41.754265, 50.605873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046461, -0.132295, -0.990121,
		-0.446397, 0.889464, -0.097899,
		0.893628, 0.437438, -0.100382,
		47.777626, 41.885498, 50.575760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.584797, 41.934143, 50.434376>,  <47.152084, 41.579288, 50.646027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.584797, 41.934143, 50.434376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.282104, 41.673386, 50.414803>,  <46.100487, 41.516933, 50.403057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.282104, 41.673386, 50.414803>,  <46.584797, 41.934143, 50.434376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.282104, 41.673386, 50.414803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220870, 0.184507, 0.957692,
		-0.615281, 0.735525, -0.283606,
		-0.756734, -0.651890, -0.048931,
		46.055084, 41.477818, 50.400124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.005371, 42.225826, 50.813152>,  <46.584797, 41.934143, 50.434376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.005371, 42.225826, 50.813152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.955940, 41.828911, 50.809353>,  <45.926281, 41.590763, 50.807076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.955940, 41.828911, 50.809353>,  <46.005371, 42.225826, 50.813152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.955940, 41.828911, 50.809353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198226, 0.015307, 0.980037,
		-0.972335, 0.122991, -0.198589,
		-0.123576, -0.992290, -0.009497,
		45.918869, 41.531223, 50.806503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.350521, 42.047974, 51.087528>,  <46.005371, 42.225826, 50.813152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.350521, 42.047974, 51.087528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.563103, 41.712212, 51.133064>,  <45.690651, 41.510754, 51.160385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.563103, 41.712212, 51.133064>,  <45.350521, 42.047974, 51.087528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563103, 41.712212, 51.133064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285449, -0.050932, 0.957040,
		-0.797544, -0.541117, -0.266675,
		0.531453, -0.839404, 0.113841,
		45.722538, 41.460392, 51.167217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041840, 41.831688, 51.604351>,  <45.350521, 42.047974, 51.087528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041840, 41.831688, 51.604351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.366890, 41.598595, 51.601261>,  <45.561920, 41.458736, 51.599407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.366890, 41.598595, 51.601261>,  <45.041840, 41.831688, 51.604351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366890, 41.598595, 51.601261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066899, -0.106445, 0.992066,
		-0.578936, -0.805659, -0.125484,
		0.812624, -0.582738, -0.007727,
		45.610676, 41.423775, 51.598942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831913, 41.230076, 51.887352>,  <45.041840, 41.831688, 51.604351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831913, 41.230076, 51.887352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.227875, 41.262474, 51.933887>,  <45.465450, 41.281914, 51.961807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.227875, 41.262474, 51.933887>,  <44.831913, 41.230076, 51.887352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227875, 41.262474, 51.933887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104735, -0.135144, 0.985275,
		0.095523, -0.987510, -0.125296,
		0.989902, 0.080994, 0.116336,
		45.524845, 41.286774, 51.968788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.959805, 40.621300, 52.139526>,  <44.831913, 41.230076, 51.887352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.959805, 40.621300, 52.139526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.276695, 40.838417, 52.251068>,  <45.466827, 40.968685, 52.317993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.276695, 40.838417, 52.251068>,  <44.959805, 40.621300, 52.139526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276695, 40.838417, 52.251068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207765, -0.189742, 0.959600,
		0.573772, -0.818154, -0.037545,
		0.792224, 0.542791, 0.278852,
		45.514362, 41.001255, 52.334724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.174160, 40.290928, 52.739967>,  <44.959805, 40.621300, 52.139526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.174160, 40.290928, 52.739967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.341240, 40.651703, 52.783836>,  <45.441486, 40.868168, 52.810158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.341240, 40.651703, 52.783836>,  <45.174160, 40.290928, 52.739967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341240, 40.651703, 52.783836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142284, -0.054289, 0.988336,
		0.897376, -0.428431, 0.105656,
		0.417698, 0.901942, 0.109677,
		45.466549, 40.922287, 52.816738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664001, 40.206493, 53.257603>,  <45.174160, 40.290928, 52.739967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664001, 40.206493, 53.257603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.589058, 40.599411, 53.257088>,  <45.544094, 40.835159, 53.256779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.589058, 40.599411, 53.257088>,  <45.664001, 40.206493, 53.257603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589058, 40.599411, 53.257088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013154, -0.001198, 0.999913,
		0.982204, 0.187357, 0.013146,
		-0.187356, 0.982291, -0.001288,
		45.532852, 40.894100, 53.256702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064705, 40.322567, 53.801441>,  <45.664001, 40.206493, 53.257603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064705, 40.322567, 53.801441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.830002, 40.644302, 53.763996>,  <45.689182, 40.837341, 53.741528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.830002, 40.644302, 53.763996>,  <46.064705, 40.322567, 53.801441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.830002, 40.644302, 53.763996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142566, 0.216414, 0.965836,
		0.797116, 0.553363, -0.241653,
		-0.586755, 0.804335, -0.093617,
		45.653976, 40.885601, 53.735912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.449532, 40.892155, 54.081650>,  <46.064705, 40.322567, 53.801441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.449532, 40.892155, 54.081650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.064102, 40.998390, 54.094227>,  <45.832844, 41.062130, 54.101772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.064102, 40.998390, 54.094227>,  <46.449532, 40.892155, 54.081650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.064102, 40.998390, 54.094227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145840, 0.423258, 0.894194,
		0.224181, 0.866207, -0.446574,
		-0.963573, 0.265590, 0.031441,
		45.775032, 41.078068, 54.103661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420753, 41.628281, 54.374958>,  <46.449532, 40.892155, 54.081650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420753, 41.628281, 54.374958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.050354, 41.487068, 54.428467>,  <45.828114, 41.402340, 54.460571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.050354, 41.487068, 54.428467>,  <46.420753, 41.628281, 54.374958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.050354, 41.487068, 54.428467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093200, 0.557143, 0.825170,
		-0.365847, 0.751637, -0.548816,
		-0.925997, -0.353035, 0.133776,
		45.772556, 41.381157, 54.468601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.914944, 42.215824, 54.554951>,  <46.420753, 41.628281, 54.374958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.914944, 42.215824, 54.554951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.756821, 41.877884, 54.699146>,  <45.661945, 41.675121, 54.785664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.756821, 41.877884, 54.699146>,  <45.914944, 42.215824, 54.554951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.756821, 41.877884, 54.699146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247562, 0.475932, 0.843921,
		-0.884558, 0.244366, -0.397294,
		-0.395311, -0.844851, 0.360493,
		45.638229, 41.624428, 54.807293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312050, 42.452721, 54.773491>,  <45.914944, 42.215824, 54.554951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312050, 42.452721, 54.773491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.341530, 42.093117, 54.946163>,  <45.359219, 41.877354, 55.049767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.341530, 42.093117, 54.946163>,  <45.312050, 42.452721, 54.773491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341530, 42.093117, 54.946163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288491, 0.395132, 0.872149,
		-0.954642, -0.188809, -0.230238,
		0.073696, -0.899011, 0.431679,
		45.363640, 41.823414, 55.075668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693001, 42.360558, 55.045700>,  <45.312050, 42.452721, 54.773491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693001, 42.360558, 55.045700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.973042, 42.152122, 55.240971>,  <45.141068, 42.027061, 55.358135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.973042, 42.152122, 55.240971>,  <44.693001, 42.360558, 55.045700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973042, 42.152122, 55.240971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160094, 0.551727, 0.818515,
		-0.695861, -0.651201, 0.302844,
		0.700105, -0.521089, 0.488179,
		45.183071, 41.995796, 55.387424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869343, 42.302444, 55.101849>,  <44.693001, 42.360558, 55.045700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869343, 42.302444, 55.101849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.496204, 42.438385, 55.149677>,  <43.272320, 42.519951, 55.178375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.496204, 42.438385, 55.149677>,  <43.869343, 42.302444, 55.101849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496204, 42.438385, 55.149677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024133, 0.272211, -0.961935,
		-0.359468, -0.900222, -0.245729,
		-0.932845, 0.339854, 0.119576,
		43.216351, 42.540340, 55.185551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465847, 41.954704, 54.669727>,  <43.869343, 42.302444, 55.101849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465847, 41.954704, 54.669727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.278870, 42.301750, 54.737545>,  <43.166683, 42.509975, 54.778236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.278870, 42.301750, 54.737545>,  <43.465847, 41.954704, 54.669727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278870, 42.301750, 54.737545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021784, 0.203038, -0.978928,
		-0.883754, -0.453900, -0.113809,
		-0.467444, 0.867611, 0.169548,
		43.138638, 42.562035, 54.788410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997707, 41.989296, 54.130672>,  <43.465847, 41.954704, 54.669727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997707, 41.989296, 54.130672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.017151, 42.365608, 54.264881>,  <43.028816, 42.591396, 54.345406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.017151, 42.365608, 54.264881>,  <42.997707, 41.989296, 54.130672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017151, 42.365608, 54.264881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051959, 0.337848, -0.939765,
		-0.997466, 0.028243, 0.065303,
		0.048604, 0.940777, 0.335524,
		43.031731, 42.647842, 54.365540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369770, 42.397247, 53.827724>,  <42.997707, 41.989296, 54.130672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369770, 42.397247, 53.827724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.688526, 42.615891, 53.930634>,  <42.879780, 42.747074, 53.992378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.688526, 42.615891, 53.930634>,  <42.369770, 42.397247, 53.827724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688526, 42.615891, 53.930634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033694, 0.384990, -0.922306,
		-0.603186, 0.743643, 0.288377,
		0.796888, 0.546606, 0.257277,
		42.927593, 42.779873, 54.007816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187458, 43.212757, 53.689518>,  <42.369770, 42.397247, 53.827724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187458, 43.212757, 53.689518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.580391, 43.137901, 53.689991>,  <42.816151, 43.092987, 53.690273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.580391, 43.137901, 53.689991>,  <42.187458, 43.212757, 53.689518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580391, 43.137901, 53.689991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063920, 0.329563, -0.941967,
		0.175893, 0.925400, 0.335702,
		0.982332, -0.187144, 0.001183,
		42.875092, 43.081757, 53.690346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531849, 43.849541, 53.351044>,  <42.187458, 43.212757, 53.689518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531849, 43.849541, 53.351044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.809574, 43.562874, 53.324734>,  <42.976208, 43.390873, 53.308949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.809574, 43.562874, 53.324734>,  <42.531849, 43.849541, 53.351044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809574, 43.562874, 53.324734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164885, 0.247371, -0.954788,
		0.700533, 0.652073, 0.289920,
		0.694310, -0.716664, -0.065775,
		43.017868, 43.347874, 53.305000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140163, 44.113190, 53.027943>,  <42.531849, 43.849541, 53.351044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140163, 44.113190, 53.027943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.108509, 43.721024, 52.955811>,  <43.089516, 43.485722, 52.912533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.108509, 43.721024, 52.955811>,  <43.140163, 44.113190, 53.027943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108509, 43.721024, 52.955811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182317, 0.163609, -0.969532,
		0.980050, -0.109599, 0.165800,
		-0.079134, -0.980418, -0.180327,
		43.084770, 43.426899, 52.901714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508293, 44.074860, 52.470959>,  <43.140163, 44.113190, 53.027943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508293, 44.074860, 52.470959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.356323, 43.706421, 52.504982>,  <43.265141, 43.485355, 52.525394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.356323, 43.706421, 52.504982>,  <43.508293, 44.074860, 52.470959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356323, 43.706421, 52.504982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013724, -0.097556, -0.995136,
		0.924918, -0.376904, 0.049705,
		-0.379920, -0.921101, 0.085058,
		43.242348, 43.430092, 52.530499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856293, 43.754238, 52.007080>,  <43.508293, 44.074860, 52.470959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856293, 43.754238, 52.007080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.547363, 43.507965, 52.069630>,  <43.362007, 43.360199, 52.107159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.547363, 43.507965, 52.069630>,  <43.856293, 43.754238, 52.007080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547363, 43.507965, 52.069630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050981, -0.185294, -0.981360,
		0.633185, -0.765895, 0.111718,
		-0.772319, -0.615687, 0.156372,
		43.315666, 43.323257, 52.116543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975586, 43.146114, 51.645401>,  <43.856293, 43.754238, 52.007080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975586, 43.146114, 51.645401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.578476, 43.165024, 51.689529>,  <43.340210, 43.176369, 51.716007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.578476, 43.165024, 51.689529>,  <43.975586, 43.146114, 51.645401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578476, 43.165024, 51.689529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118255, -0.228276, -0.966388,
		-0.020499, -0.972448, 0.232216,
		-0.992772, 0.047271, 0.110318,
		43.280643, 43.179207, 51.722626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694561, 42.493443, 51.423264>,  <43.975586, 43.146114, 51.645401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694561, 42.493443, 51.423264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.390274, 42.751785, 51.397427>,  <43.207703, 42.906792, 51.381924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.390274, 42.751785, 51.397427>,  <43.694561, 42.493443, 51.423264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390274, 42.751785, 51.397427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138057, -0.258240, -0.956165,
		-0.634232, -0.718453, 0.285613,
		-0.760717, 0.645861, -0.064597,
		43.162060, 42.945545, 51.378048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179958, 42.154041, 51.092827>,  <43.694561, 42.493443, 51.423264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179958, 42.154041, 51.092827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.065163, 42.534569, 51.047886>,  <42.996284, 42.762886, 51.020920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.065163, 42.534569, 51.047886>,  <43.179958, 42.154041, 51.092827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065163, 42.534569, 51.047886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264670, -0.191464, -0.945141,
		-0.920645, -0.241508, 0.306734,
		-0.286987, 0.951323, -0.112351,
		42.979065, 42.819965, 51.014179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459682, 42.092064, 50.870514>,  <43.179958, 42.154041, 51.092827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459682, 42.092064, 50.870514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.622498, 42.436005, 50.747238>,  <42.720188, 42.642368, 50.673275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.622498, 42.436005, 50.747238>,  <42.459682, 42.092064, 50.870514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622498, 42.436005, 50.747238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275631, -0.206046, -0.938921,
		-0.870832, 0.467122, 0.153132,
		0.407038, 0.859850, -0.308185,
		42.744610, 42.693958, 50.654781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023468, 42.373894, 50.410473>,  <42.459682, 42.092064, 50.870514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023468, 42.373894, 50.410473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.317478, 42.617882, 50.292042>,  <42.493885, 42.764275, 50.220982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.317478, 42.617882, 50.292042>,  <42.023468, 42.373894, 50.410473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317478, 42.617882, 50.292042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192951, -0.230447, -0.953763,
		-0.650001, 0.758173, -0.051690,
		0.735029, 0.609974, -0.296081,
		42.537987, 42.800873, 50.203217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.303810, 46.485680, 54.165432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.548935, 46.175941, 54.102367>,  <41.696011, 45.990101, 54.064529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.548935, 46.175941, 54.102367>,  <41.303810, 46.485680, 54.165432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548935, 46.175941, 54.102367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016214, -0.211792, 0.977180,
		-0.790065, -0.596269, -0.142343,
		0.612809, -0.774343, -0.157661,
		41.732777, 45.943638, 54.055069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986744, 45.939396, 54.445377>,  <41.303810, 46.485680, 54.165432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986744, 45.939396, 54.445377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.371357, 45.831841, 54.422935>,  <41.602127, 45.767307, 54.409470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.371357, 45.831841, 54.422935>,  <40.986744, 45.939396, 54.445377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371357, 45.831841, 54.422935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002976, -0.214453, 0.976730,
		-0.274662, -0.938994, -0.207004,
		0.961536, -0.268886, -0.056108,
		41.659817, 45.751175, 54.406105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068932, 45.192886, 54.673641>,  <40.986744, 45.939396, 54.445377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068932, 45.192886, 54.673641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.408234, 45.397827, 54.727230>,  <41.611816, 45.520794, 54.759384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.408234, 45.397827, 54.727230>,  <41.068932, 45.192886, 54.673641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408234, 45.397827, 54.727230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069699, -0.142763, 0.987300,
		0.524975, -0.846824, -0.085389,
		0.848259, 0.512356, 0.133969,
		41.662712, 45.551533, 54.767422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318665, 44.854481, 55.224403>,  <41.068932, 45.192886, 54.673641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318665, 44.854481, 55.224403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.561302, 45.172432, 55.230213>,  <41.706882, 45.363205, 55.233700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.561302, 45.172432, 55.230213>,  <41.318665, 44.854481, 55.224403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561302, 45.172432, 55.230213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101825, -0.095803, 0.990179,
		0.788465, -0.599155, -0.139052,
		0.606592, 0.794880, 0.014528,
		41.743279, 45.410896, 55.234573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779404, 44.658073, 55.654724>,  <41.318665, 44.854481, 55.224403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779404, 44.658073, 55.654724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.853012, 45.051094, 55.643906>,  <41.897179, 45.286907, 55.637413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.853012, 45.051094, 55.643906>,  <41.779404, 44.658073, 55.654724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853012, 45.051094, 55.643906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148273, -0.000545, 0.988946,
		0.971674, -0.186000, -0.145786,
		0.184023, 0.982550, -0.027050,
		41.908218, 45.345860, 55.635792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305809, 44.783096, 56.041389>,  <41.779404, 44.658073, 55.654724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305809, 44.783096, 56.041389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.115494, 45.134430, 56.022804>,  <42.001305, 45.345230, 56.011654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.115494, 45.134430, 56.022804>,  <42.305809, 44.783096, 56.041389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115494, 45.134430, 56.022804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006004, 0.049584, 0.998752,
		0.879538, 0.475476, -0.018318,
		-0.475791, 0.878330, -0.046466,
		41.972755, 45.397930, 56.008865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661053, 45.246815, 56.480175>,  <42.305809, 44.783096, 56.041389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661053, 45.246815, 56.480175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.302410, 45.418793, 56.437744>,  <42.087227, 45.521980, 56.412285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.302410, 45.418793, 56.437744>,  <42.661053, 45.246815, 56.480175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302410, 45.418793, 56.437744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004657, 0.230378, 0.973090,
		0.442811, 0.872970, -0.204555,
		-0.896603, 0.429943, -0.106079,
		42.033428, 45.547775, 56.405922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746239, 45.947475, 56.693474>,  <42.661053, 45.246815, 56.480175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746239, 45.947475, 56.693474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.359085, 45.853333, 56.728806>,  <42.126793, 45.796844, 56.750004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.359085, 45.853333, 56.728806>,  <42.746239, 45.947475, 56.693474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359085, 45.853333, 56.728806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010819, 0.312035, 0.950009,
		-0.251155, 0.920457, -0.299468,
		-0.967887, -0.235359, 0.088328,
		42.068718, 45.782726, 56.755302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406231, 46.513119, 57.054501>,  <42.746239, 45.947475, 56.693474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406231, 46.513119, 57.054501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.133469, 46.222221, 57.085777>,  <41.969810, 46.047684, 57.104546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.133469, 46.222221, 57.085777>,  <42.406231, 46.513119, 57.054501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133469, 46.222221, 57.085777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080948, 0.181283, 0.980094,
		-0.726945, 0.662004, -0.182488,
		-0.681908, -0.727246, 0.078195,
		41.928898, 46.004047, 57.109234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787735, 46.769966, 57.323090>,  <42.406231, 46.513119, 57.054501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787735, 46.769966, 57.323090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.793648, 46.381012, 57.416260>,  <41.797195, 46.147640, 57.472164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.793648, 46.381012, 57.416260>,  <41.787735, 46.769966, 57.323090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793648, 46.381012, 57.416260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039950, 0.232193, 0.971849,
		-0.999092, -0.023670, -0.035415,
		0.014780, -0.972382, 0.232928,
		41.798080, 46.089298, 57.486137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330246, 46.736725, 57.873672>,  <41.787735, 46.769966, 57.323090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330246, 46.736725, 57.873672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.541283, 46.397102, 57.884644>,  <41.667904, 46.193329, 57.891228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.541283, 46.397102, 57.884644>,  <41.330246, 46.736725, 57.873672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541283, 46.397102, 57.884644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000566, 0.032639, 0.999467,
		-0.849497, -0.527296, 0.017700,
		0.527593, -0.849054, 0.027428,
		41.699562, 46.142387, 57.892872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039425, 46.289505, 58.369591>,  <41.330246, 46.736725, 57.873672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039425, 46.289505, 58.369591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.415443, 46.160004, 58.326694>,  <41.641052, 46.082302, 58.300957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.415443, 46.160004, 58.326694>,  <41.039425, 46.289505, 58.369591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415443, 46.160004, 58.326694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145178, 0.095326, 0.984803,
		-0.308612, -0.941326, 0.136613,
		0.940044, -0.323756, -0.107241,
		41.697456, 46.062878, 58.294521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280563, 45.868214, 58.971626>,  <41.039425, 46.289505, 58.369591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280563, 45.868214, 58.971626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.618996, 45.994942, 58.800156>,  <41.822056, 46.070980, 58.697273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.618996, 45.994942, 58.800156>,  <41.280563, 45.868214, 58.971626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618996, 45.994942, 58.800156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381533, 0.201680, 0.902085,
		0.372254, -0.926796, 0.049761,
		0.846085, 0.316819, -0.428679,
		41.872822, 46.089989, 58.671551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874241, 45.500271, 59.325790>,  <41.280563, 45.868214, 58.971626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874241, 45.500271, 59.325790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.948887, 45.854591, 59.155838>,  <41.993675, 46.067184, 59.053867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.948887, 45.854591, 59.155838>,  <41.874241, 45.500271, 59.325790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948887, 45.854591, 59.155838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392981, 0.329068, 0.858650,
		0.900412, -0.327203, -0.286697,
		0.186610, 0.885806, -0.424882,
		42.004871, 46.120335, 59.028374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716450, 44.890038, 59.733757>,  <41.874241, 45.500271, 59.325790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716450, 44.890038, 59.733757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.591694, 44.552750, 59.908890>,  <41.516842, 44.350376, 60.013969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.591694, 44.552750, 59.908890>,  <41.716450, 44.890038, 59.733757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591694, 44.552750, 59.908890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287269, -0.522946, -0.802499,
		0.905649, -0.124514, 0.405333,
		-0.311890, -0.843222, 0.437836,
		41.498127, 44.299782, 60.040241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260262, 44.426960, 59.614346>,  <41.716450, 44.890038, 59.733757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260262, 44.426960, 59.614346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.972427, 44.165497, 59.708096>,  <41.799728, 44.008617, 59.764343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.972427, 44.165497, 59.708096>,  <42.260262, 44.426960, 59.614346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972427, 44.165497, 59.708096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267726, -0.572574, -0.774908,
		0.640719, -0.494864, 0.587016,
		-0.719584, -0.653658, 0.234371,
		41.756554, 43.969398, 59.778408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654465, 43.831482, 59.636227>,  <42.260262, 44.426960, 59.614346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654465, 43.831482, 59.636227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.273949, 43.710251, 59.613655>,  <42.045639, 43.637512, 59.600113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.273949, 43.710251, 59.613655>,  <42.654465, 43.831482, 59.636227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273949, 43.710251, 59.613655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244198, -0.629090, -0.737979,
		0.188168, -0.715814, 0.672461,
		-0.951294, -0.303077, -0.056426,
		41.988560, 43.619328, 59.596725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598297, 43.093185, 59.794689>,  <42.654465, 43.831482, 59.636227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598297, 43.093185, 59.794689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.275200, 43.188141, 59.578842>,  <42.081341, 43.245113, 59.449333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.275200, 43.188141, 59.578842>,  <42.598297, 43.093185, 59.794689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275200, 43.188141, 59.578842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329226, -0.577669, -0.746933,
		-0.489033, -0.780991, 0.388458,
		-0.807749, 0.237384, -0.539622,
		42.032875, 43.259357, 59.416954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501999, 42.478008, 59.484848>,  <42.598297, 43.093185, 59.794689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501999, 42.478008, 59.484848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.272804, 42.732498, 59.278198>,  <42.135288, 42.885193, 59.154205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.272804, 42.732498, 59.278198>,  <42.501999, 42.478008, 59.484848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272804, 42.732498, 59.278198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347127, -0.382637, -0.856208,
		-0.742419, -0.669934, -0.001602,
		-0.572989, 0.636221, -0.516629,
		42.100906, 42.923363, 59.123211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067234, 42.042892, 58.927937>,  <42.501999, 42.478008, 59.484848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067234, 42.042892, 58.927937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.082733, 42.418663, 58.791718>,  <42.092033, 42.644127, 58.709988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.082733, 42.418663, 58.791718>,  <42.067234, 42.042892, 58.927937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082733, 42.418663, 58.791718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087308, -0.342679, -0.935387,
		-0.995427, 0.006515, -0.095299,
		0.038751, 0.939430, -0.340543,
		42.094360, 42.700493, 58.689556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585651, 42.043884, 58.337013>,  <42.067234, 42.042892, 58.927937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585651, 42.043884, 58.337013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.828941, 42.360283, 58.310509>,  <41.974915, 42.550121, 58.294605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.828941, 42.360283, 58.310509>,  <41.585651, 42.043884, 58.337013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828941, 42.360283, 58.310509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211295, -0.241806, -0.947040,
		-0.765124, 0.562015, -0.314205,
		0.608227, 0.790993, -0.066261,
		42.011410, 42.597580, 58.290630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391479, 42.405396, 57.762436>,  <41.585651, 42.043884, 58.337013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391479, 42.405396, 57.762436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.765766, 42.522713, 57.840836>,  <41.990337, 42.593102, 57.887875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.765766, 42.522713, 57.840836>,  <41.391479, 42.405396, 57.762436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765766, 42.522713, 57.840836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245979, -0.144233, -0.958484,
		-0.252845, 0.945080, -0.207104,
		0.935715, 0.293291, 0.196002,
		42.046482, 42.610699, 57.899635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495075, 42.904049, 57.263660>,  <41.391479, 42.405396, 57.762436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495075, 42.904049, 57.263660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.862968, 42.808281, 57.388092>,  <42.083706, 42.750820, 57.462749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.862968, 42.808281, 57.388092>,  <41.495075, 42.904049, 57.263660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862968, 42.808281, 57.388092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295445, -0.099575, -0.950156,
		0.258460, 0.965797, -0.020848,
		0.919734, -0.239418, 0.311076,
		42.138889, 42.736454, 57.481415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966999, 43.475262, 57.066463>,  <41.495075, 42.904049, 57.263660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966999, 43.475262, 57.066463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.203365, 43.156181, 57.114616>,  <42.345184, 42.964733, 57.143509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.203365, 43.156181, 57.114616>,  <41.966999, 43.475262, 57.066463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203365, 43.156181, 57.114616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268217, 0.053538, -0.961869,
		0.760837, 0.600675, 0.245593,
		0.590919, -0.797699, 0.120378,
		42.380642, 42.916870, 57.150730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631989, 43.656796, 56.726315>,  <41.966999, 43.475262, 57.066463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631989, 43.656796, 56.726315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.691917, 43.262428, 56.756042>,  <42.727875, 43.025810, 56.773880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.691917, 43.262428, 56.756042>,  <42.631989, 43.656796, 56.726315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691917, 43.262428, 56.756042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448262, 0.000732, -0.893902,
		0.881258, 0.167242, 0.442058,
		0.149821, -0.985916, 0.074323,
		42.736862, 42.966652, 56.778339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277340, 43.539135, 56.444370>,  <42.631989, 43.656796, 56.726315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277340, 43.539135, 56.444370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.103172, 43.179077, 56.449303>,  <42.998672, 42.963043, 56.452263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.103172, 43.179077, 56.449303>,  <43.277340, 43.539135, 56.444370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103172, 43.179077, 56.449303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444481, -0.226882, -0.866580,
		0.782843, -0.371847, 0.498885,
		-0.435423, -0.900141, 0.012334,
		42.972546, 42.909035, 56.453003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774349, 43.227009, 56.120937>,  <43.277340, 43.539135, 56.444370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774349, 43.227009, 56.120937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.455795, 42.990265, 56.071182>,  <43.264664, 42.848221, 56.041328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.455795, 42.990265, 56.071182>,  <43.774349, 43.227009, 56.120937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455795, 42.990265, 56.071182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191612, -0.051845, -0.980100,
		0.573630, -0.804374, 0.154696,
		-0.796388, -0.591856, -0.124388,
		43.216881, 42.812710, 56.033867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993614, 42.615665, 55.741329>,  <43.774349, 43.227009, 56.120937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993614, 42.615665, 55.741329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.599174, 42.624748, 55.675484>,  <43.362511, 42.630199, 55.635975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.599174, 42.624748, 55.675484>,  <43.993614, 42.615665, 55.741329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599174, 42.624748, 55.675484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165883, 0.076061, -0.983208,
		-0.009807, -0.996845, -0.078771,
		-0.986097, 0.022710, -0.164614,
		43.303345, 42.631561, 55.626099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334526, 41.948338, 55.783642>,  <43.993614, 42.615665, 55.741329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334526, 41.948338, 55.783642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.727356, 41.928871, 55.856487>,  <44.963055, 41.917191, 55.900192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.727356, 41.928871, 55.856487>,  <44.334526, 41.948338, 55.783642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727356, 41.928871, 55.856487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142998, 0.437127, 0.887959,
		-0.122817, -0.898082, 0.422332,
		0.982073, -0.048664, 0.182110,
		45.021976, 41.914272, 55.911121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432323, 41.677814, 56.562263>,  <44.334526, 41.948338, 55.783642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432323, 41.677814, 56.562263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.774437, 41.849121, 56.445595>,  <44.979706, 41.951904, 56.375591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.774437, 41.849121, 56.445595>,  <44.432323, 41.677814, 56.562263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774437, 41.849121, 56.445595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155238, 0.325265, 0.932794,
		0.494355, -0.843085, 0.211711,
		0.855286, 0.428266, -0.291675,
		45.031021, 41.977600, 56.358093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934883, 41.496380, 57.056328>,  <44.432323, 41.677814, 56.562263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934883, 41.496380, 57.056328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.088028, 41.831520, 56.900673>,  <45.179913, 42.032604, 56.807281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.088028, 41.831520, 56.900673>,  <44.934883, 41.496380, 57.056328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088028, 41.831520, 56.900673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014119, 0.415874, 0.909312,
		0.923699, -0.353633, 0.147392,
		0.382860, 0.837850, -0.389136,
		45.202885, 42.082874, 56.783932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532322, 41.769482, 57.481106>,  <44.934883, 41.496380, 57.056328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.532322, 41.769482, 57.481106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.407883, 42.093964, 57.283051>,  <45.333218, 42.288654, 57.164219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.407883, 42.093964, 57.283051>,  <45.532322, 41.769482, 57.481106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.407883, 42.093964, 57.283051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031867, 0.529602, 0.847648,
		0.949842, 0.247926, -0.190611,
		-0.311102, 0.811206, -0.495138,
		45.314552, 42.337326, 57.134510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.070786, 42.245453, 57.686630>,  <45.532322, 41.769482, 57.481106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.070786, 42.245453, 57.686630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.745338, 42.437149, 57.554962>,  <45.550072, 42.552166, 57.475960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.745338, 42.437149, 57.554962>,  <46.070786, 42.245453, 57.686630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.745338, 42.437149, 57.554962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002754, 0.569339, 0.822098,
		0.581396, 0.667966, -0.464543,
		-0.813616, 0.479244, -0.329172,
		45.501255, 42.580921, 57.456211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.134480, 42.939068, 57.912853>,  <46.070786, 42.245453, 57.686630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.134480, 42.939068, 57.912853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.742073, 42.915932, 57.838821>,  <45.506630, 42.902050, 57.794403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.742073, 42.915932, 57.838821>,  <46.134480, 42.939068, 57.912853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742073, 42.915932, 57.838821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190069, 0.475756, 0.858795,
		0.038383, 0.877673, -0.477719,
		-0.981020, -0.057837, -0.185080,
		45.447765, 42.898582, 57.783298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864632, 43.619637, 57.773537>,  <46.134480, 42.939068, 57.912853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864632, 43.619637, 57.773537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.561943, 43.388596, 57.896011>,  <45.380329, 43.249973, 57.969498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.561943, 43.388596, 57.896011>,  <45.864632, 43.619637, 57.773537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.561943, 43.388596, 57.896011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071506, 0.538688, 0.839465,
		-0.649816, 0.613346, -0.448939,
		-0.756721, -0.577599, 0.306190,
		45.334927, 43.215317, 57.987869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864216, 44.445675, 57.716995>,  <45.864632, 43.619637, 57.773537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864216, 44.445675, 57.716995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.225845, 44.611137, 57.759968>,  <46.442822, 44.710415, 57.785751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.225845, 44.611137, 57.759968>,  <45.864216, 44.445675, 57.716995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.225845, 44.611137, 57.759968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242063, -0.288452, -0.926391,
		-0.352219, 0.863530, -0.360913,
		0.904073, 0.413656, 0.107430,
		46.497066, 44.735233, 57.792198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007599, 44.889500, 57.110046>,  <45.864216, 44.445675, 57.716995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007599, 44.889500, 57.110046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.363037, 44.806587, 57.273720>,  <46.576302, 44.756840, 57.371925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.363037, 44.806587, 57.273720>,  <46.007599, 44.889500, 57.110046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363037, 44.806587, 57.273720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320958, -0.356327, -0.877506,
		0.327692, 0.911079, -0.250103,
		0.888597, -0.207279, 0.409184,
		46.629616, 44.744404, 57.396477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.516418, 45.091171, 56.673195>,  <46.007599, 44.889500, 57.110046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.516418, 45.091171, 56.673195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.737579, 44.857246, 56.910610>,  <46.870277, 44.716892, 57.053059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.737579, 44.857246, 56.910610>,  <46.516418, 45.091171, 56.673195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.737579, 44.857246, 56.910610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474548, -0.364504, -0.801212,
		0.684908, 0.724657, 0.075987,
		0.552906, -0.584816, 0.593536,
		46.903450, 44.681801, 57.088673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.254047, 45.268009, 56.602768>,  <46.516418, 45.091171, 56.673195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.254047, 45.268009, 56.602768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.199936, 44.885948, 56.708130>,  <47.167469, 44.656712, 56.771347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.199936, 44.885948, 56.708130>,  <47.254047, 45.268009, 56.602768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.199936, 44.885948, 56.708130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526768, -0.294503, -0.797360,
		0.839174, 0.030887, 0.542985,
		-0.135283, -0.955151, 0.263409,
		47.159351, 44.599403, 56.787151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.969204, 44.893631, 56.506123>,  <47.254047, 45.268009, 56.602768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.969204, 44.893631, 56.506123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.724426, 44.577621, 56.521000>,  <47.577560, 44.388016, 56.529926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.724426, 44.577621, 56.521000>,  <47.969204, 44.893631, 56.506123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.724426, 44.577621, 56.521000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548570, -0.457859, -0.699598,
		0.569729, -0.407712, 0.713569,
		-0.611948, -0.790024, 0.037197,
		47.540840, 44.340614, 56.532158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.338684, 44.337307, 56.524712>,  <47.969204, 44.893631, 56.506123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.338684, 44.337307, 56.524712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.985672, 44.184418, 56.415134>,  <47.773865, 44.092682, 56.349388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.985672, 44.184418, 56.415134>,  <48.338684, 44.337307, 56.524712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.985672, 44.184418, 56.415134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447915, -0.505831, -0.737229,
		0.143222, -0.773328, 0.617617,
		-0.882530, -0.382228, -0.273939,
		47.720913, 44.069748, 56.332954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.460323, 43.552879, 56.438663>,  <48.338684, 44.337307, 56.524712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.460323, 43.552879, 56.438663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<48.146118, 43.683632, 56.228477>,  <47.957596, 43.762085, 56.102367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<48.146118, 43.683632, 56.228477>,  <48.460323, 43.552879, 56.438663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.146118, 43.683632, 56.228477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315792, -0.518500, -0.794628,
		-0.532205, -0.790129, 0.304061,
		-0.785514, 0.326885, -0.525465,
		47.910461, 43.781696, 56.070839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.822510, 47.039856, 58.412491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.480492, 46.880646, 58.279545>,  <44.275280, 46.785118, 58.199776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.480492, 46.880646, 58.279545>,  <44.822510, 47.039856, 58.412491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480492, 46.880646, 58.279545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226878, 0.289196, -0.929996,
		0.466286, -0.870596, -0.156972,
		-0.855046, -0.398030, -0.332367,
		44.223976, 46.761238, 58.179836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022404, 46.783176, 57.792759>,  <44.822510, 47.039856, 58.412491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022404, 46.783176, 57.792759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.623695, 46.782089, 57.760643>,  <44.384472, 46.781437, 57.741371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.623695, 46.782089, 57.760643>,  <45.022404, 46.783176, 57.792759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623695, 46.782089, 57.760643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076764, 0.262587, -0.961850,
		0.023693, -0.964905, -0.261530,
		-0.996768, -0.002713, -0.080292,
		44.324665, 46.781277, 57.736557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911461, 46.425518, 57.184357>,  <45.022404, 46.783176, 57.792759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911461, 46.425518, 57.184357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.574432, 46.630669, 57.250114>,  <44.372215, 46.753757, 57.289570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.574432, 46.630669, 57.250114>,  <44.911461, 46.425518, 57.184357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574432, 46.630669, 57.250114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087950, 0.170120, -0.981491,
		-0.531349, -0.841439, -0.098232,
		-0.842575, 0.512875, 0.164398,
		44.321659, 46.784531, 57.299435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387051, 46.167736, 56.737423>,  <44.911461, 46.425518, 57.184357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387051, 46.167736, 56.737423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.264252, 46.532143, 56.847549>,  <44.190571, 46.750786, 56.913628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.264252, 46.532143, 56.847549>,  <44.387051, 46.167736, 56.737423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264252, 46.532143, 56.847549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235077, 0.207738, -0.949517,
		-0.922220, -0.356223, 0.150384,
		-0.306999, 0.911016, 0.275320,
		44.172153, 46.805447, 56.930145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839214, 46.257156, 56.256207>,  <44.387051, 46.167736, 56.737423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839214, 46.257156, 56.256207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.913811, 46.629639, 56.381477>,  <43.958569, 46.853127, 56.456642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.913811, 46.629639, 56.381477>,  <43.839214, 46.257156, 56.256207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913811, 46.629639, 56.381477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253988, 0.353633, -0.900241,
		-0.949059, 0.088340, 0.302463,
		0.186488, 0.931203, 0.313181,
		43.969757, 46.909000, 56.475433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264713, 46.723381, 56.016533>,  <43.839214, 46.257156, 56.256207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264713, 46.723381, 56.016533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.595673, 46.942825, 56.064613>,  <43.794247, 47.074490, 56.093464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.595673, 46.942825, 56.064613>,  <43.264713, 46.723381, 56.016533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595673, 46.942825, 56.064613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171684, 0.450850, -0.875933,
		-0.534737, 0.704105, 0.467218,
		0.827394, 0.548608, 0.120203,
		43.843891, 47.107407, 56.100674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072350, 47.445435, 55.834373>,  <43.264713, 46.723381, 56.016533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072350, 47.445435, 55.834373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.464752, 47.372101, 55.809013>,  <43.700191, 47.328102, 55.793797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.464752, 47.372101, 55.809013>,  <43.072350, 47.445435, 55.834373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464752, 47.372101, 55.809013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026631, 0.451021, -0.892116,
		0.192147, 0.873482, 0.447336,
		0.981005, -0.183330, -0.063401,
		43.759052, 47.317101, 55.789993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341064, 48.019230, 55.492332>,  <43.072350, 47.445435, 55.834373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341064, 48.019230, 55.492332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.634995, 47.749680, 55.461536>,  <43.811352, 47.587952, 55.443058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.634995, 47.749680, 55.461536>,  <43.341064, 48.019230, 55.492332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634995, 47.749680, 55.461536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214432, 0.338499, -0.916208,
		0.643467, 0.656745, 0.393237,
		0.734826, -0.673873, -0.076986,
		43.855442, 47.547516, 55.438442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801952, 48.357315, 55.049824>,  <43.341064, 48.019230, 55.492332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801952, 48.357315, 55.049824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.956612, 47.988449, 55.053963>,  <44.049408, 47.767128, 55.056446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.956612, 47.988449, 55.053963>,  <43.801952, 48.357315, 55.049824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956612, 47.988449, 55.053963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441454, 0.175217, -0.880010,
		0.809703, 0.344827, 0.474842,
		0.386652, -0.922168, 0.010351,
		44.072609, 47.711800, 55.057068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396992, 48.444584, 54.676746>,  <43.801952, 48.357315, 55.049824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396992, 48.444584, 54.676746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.324772, 48.051231, 54.669178>,  <44.281441, 47.815220, 54.664635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.324772, 48.051231, 54.669178>,  <44.396992, 48.444584, 54.676746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324772, 48.051231, 54.669178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434285, -0.062441, -0.898609,
		0.882496, -0.170458, 0.438343,
		-0.180546, -0.983384, -0.018923,
		44.270607, 47.756214, 54.663502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021008, 48.272636, 54.487030>,  <44.396992, 48.444584, 54.676746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021008, 48.272636, 54.487030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.772598, 47.972374, 54.396843>,  <44.623554, 47.792213, 54.342731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.772598, 47.972374, 54.396843>,  <45.021008, 48.272636, 54.487030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772598, 47.972374, 54.396843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421570, -0.077393, -0.903487,
		0.660762, -0.656139, 0.364519,
		-0.621024, -0.750661, -0.225471,
		44.586292, 47.747177, 54.329201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459614, 47.650845, 54.332275>,  <45.021008, 48.272636, 54.487030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459614, 47.650845, 54.332275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.103050, 47.611740, 54.155262>,  <44.889111, 47.588276, 54.049053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.103050, 47.611740, 54.155262>,  <45.459614, 47.650845, 54.332275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.103050, 47.611740, 54.155262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443935, 0.008094, -0.896022,
		0.091183, -0.995177, 0.036187,
		-0.891407, -0.097767, -0.442532,
		44.835629, 47.582413, 54.022503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092728, 47.121098, 54.508160>,  <45.459614, 47.650845, 54.332275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.092728, 47.121098, 54.508160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.447205, 47.297989, 54.563435>,  <46.659889, 47.404125, 54.596600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.447205, 47.297989, 54.563435>,  <46.092728, 47.121098, 54.508160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.447205, 47.297989, 54.563435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323002, 0.375861, 0.868561,
		0.332165, -0.814347, 0.475926,
		0.886192, 0.442231, 0.138188,
		46.713062, 47.430656, 54.604889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223042, 47.032139, 55.226219>,  <46.092728, 47.121098, 54.508160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223042, 47.032139, 55.226219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.506477, 47.304726, 55.153004>,  <46.676537, 47.468277, 55.109074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.506477, 47.304726, 55.153004>,  <46.223042, 47.032139, 55.226219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.506477, 47.304726, 55.153004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106745, 0.359933, 0.926851,
		0.697504, -0.637216, 0.327787,
		0.708586, 0.681472, -0.183036,
		46.719055, 47.509167, 55.098095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.667610, 47.012711, 55.754284>,  <46.223042, 47.032139, 55.226219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.667610, 47.012711, 55.754284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.689102, 47.378769, 55.594479>,  <46.702000, 47.598404, 55.498596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.689102, 47.378769, 55.594479>,  <46.667610, 47.012711, 55.754284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.689102, 47.378769, 55.594479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128779, 0.403103, 0.906048,
		0.990216, 0.002763, 0.139513,
		0.053734, 0.915150, -0.399515,
		46.705223, 47.653313, 55.474625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.217968, 47.311661, 56.168026>,  <46.667610, 47.012711, 55.754284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.217968, 47.311661, 56.168026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.030182, 47.623978, 56.003120>,  <46.917511, 47.811367, 55.904179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.030182, 47.623978, 56.003120>,  <47.217968, 47.311661, 56.168026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.030182, 47.623978, 56.003120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093043, 0.420567, 0.902478,
		0.878033, 0.462043, -0.124796,
		-0.469469, 0.780794, -0.412261,
		46.889339, 47.858215, 55.879440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.485596, 47.919064, 56.483624>,  <47.217968, 47.311661, 56.168026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.485596, 47.919064, 56.483624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.139870, 48.050095, 56.330967>,  <46.932434, 48.128716, 56.239372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.139870, 48.050095, 56.330967>,  <47.485596, 47.919064, 56.483624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.139870, 48.050095, 56.330967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199989, 0.472390, 0.858401,
		0.461479, 0.818253, -0.342781,
		-0.864316, 0.327581, -0.381640,
		46.880573, 48.148369, 56.216476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.498600, 48.603230, 56.738533>,  <47.485596, 47.919064, 56.483624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.498600, 48.603230, 56.738533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.120071, 48.512970, 56.645966>,  <46.892952, 48.458813, 56.590424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.120071, 48.512970, 56.645966>,  <47.498600, 48.603230, 56.738533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.120071, 48.512970, 56.645966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305813, 0.393280, 0.867069,
		-0.104640, 0.891299, -0.441176,
		-0.946324, -0.225648, -0.231418,
		46.836174, 48.445274, 56.576542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051971, 49.207836, 56.954716>,  <47.498600, 48.603230, 56.738533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051971, 49.207836, 56.954716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.760460, 48.937134, 56.912987>,  <46.585552, 48.774712, 56.887951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.760460, 48.937134, 56.912987>,  <47.051971, 49.207836, 56.954716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.760460, 48.937134, 56.912987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387816, 0.282375, 0.877419,
		-0.564345, 0.679898, -0.468246,
		-0.728776, -0.676760, -0.104319,
		46.541828, 48.734104, 56.881691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.524765, 49.491302, 57.221306>,  <47.051971, 49.207836, 56.954716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.524765, 49.491302, 57.221306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.408005, 49.108734, 57.218460>,  <46.337948, 48.879192, 57.216755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.408005, 49.108734, 57.218460>,  <46.524765, 49.491302, 57.221306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408005, 49.108734, 57.218460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507651, 0.148626, 0.848647,
		-0.810608, 0.251330, -0.528913,
		-0.291900, -0.956422, -0.007111,
		46.320435, 48.821808, 57.216328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857628, 49.506985, 57.501556>,  <46.524765, 49.491302, 57.221306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857628, 49.506985, 57.501556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.985863, 49.130478, 57.543957>,  <46.062805, 48.904572, 57.569397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.985863, 49.130478, 57.543957>,  <45.857628, 49.506985, 57.501556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.985863, 49.130478, 57.543957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424821, -0.042856, 0.904262,
		-0.846611, -0.334928, -0.413610,
		0.320588, -0.941268, 0.106002,
		46.082039, 48.848099, 57.575756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.289982, 48.987244, 57.597015>,  <45.857628, 49.506985, 57.501556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.289982, 48.987244, 57.597015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.615921, 48.822556, 57.760239>,  <45.811485, 48.723743, 57.858173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.615921, 48.822556, 57.760239>,  <45.289982, 48.987244, 57.597015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.615921, 48.822556, 57.760239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486466, -0.102880, 0.867621,
		-0.315239, -0.905483, -0.284120,
		0.814847, -0.411723, 0.408055,
		45.860374, 48.699039, 57.882656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056812, 48.351467, 58.000443>,  <45.289982, 48.987244, 57.597015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056812, 48.351467, 58.000443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.426285, 48.427940, 58.133263>,  <45.647968, 48.473824, 58.212955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.426285, 48.427940, 58.133263>,  <45.056812, 48.351467, 58.000443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426285, 48.427940, 58.133263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230316, -0.415539, 0.879933,
		0.306207, -0.889256, -0.339794,
		0.923684, 0.191182, 0.332051,
		45.703388, 48.485294, 58.232880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145065, 47.820446, 58.432632>,  <45.056812, 48.351467, 58.000443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145065, 47.820446, 58.432632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.420769, 48.088898, 58.541821>,  <45.586189, 48.249969, 58.607334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.420769, 48.088898, 58.541821>,  <45.145065, 47.820446, 58.432632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420769, 48.088898, 58.541821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303282, -0.074899, 0.949953,
		0.657983, -0.737550, 0.151916,
		0.689259, 0.671126, 0.272968,
		45.627548, 48.290234, 58.623711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547989, 47.473309, 58.923164>,  <45.145065, 47.820446, 58.432632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547989, 47.473309, 58.923164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.595215, 47.866623, 58.978615>,  <45.623550, 48.102612, 59.011887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.595215, 47.866623, 58.978615>,  <45.547989, 47.473309, 58.923164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595215, 47.866623, 58.978615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249933, -0.105683, 0.962479,
		0.961038, -0.148281, 0.233277,
		0.118064, 0.983282, 0.138625,
		45.630634, 48.161606, 59.020203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897152, 47.540848, 59.560570>,  <45.547989, 47.473309, 58.923164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.897152, 47.540848, 59.560570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.678375, 47.863091, 59.469486>,  <45.547112, 48.056438, 59.414837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.678375, 47.863091, 59.469486>,  <45.897152, 47.540848, 59.560570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678375, 47.863091, 59.469486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447660, -0.051590, 0.892714,
		0.707432, 0.590196, 0.388856,
		-0.546938, 0.805610, -0.227710,
		45.514294, 48.104774, 59.401173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159718, 47.072372, 59.070717>,  <45.897152, 47.540848, 59.560570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159718, 47.072372, 59.070717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.162338, 46.841316, 59.397224>,  <46.163910, 46.702682, 59.593128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.162338, 46.841316, 59.397224>,  <46.159718, 47.072372, 59.070717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.162338, 46.841316, 59.397224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162558, -0.804809, -0.570840,
		0.986677, 0.136429, 0.088628,
		0.006550, -0.577642, 0.816264,
		46.164303, 46.668022, 59.642105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.714333, 46.841434, 59.079952>,  <46.159718, 47.072372, 59.070717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.714333, 46.841434, 59.079952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.504532, 46.580345, 59.298622>,  <46.378651, 46.423691, 59.429825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.504532, 46.580345, 59.298622>,  <46.714333, 46.841434, 59.079952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.504532, 46.580345, 59.298622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212316, -0.722070, -0.658435,
		0.824510, -0.229285, 0.517312,
		-0.524505, -0.652720, 0.546673,
		46.347179, 46.384529, 59.462624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.113247, 46.307831, 59.233383>,  <46.714333, 46.841434, 59.079952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.113247, 46.307831, 59.233383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.740074, 46.168777, 59.270874>,  <46.516171, 46.085346, 59.293369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.740074, 46.168777, 59.270874>,  <47.113247, 46.307831, 59.233383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.740074, 46.168777, 59.270874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244770, -0.803276, -0.542989,
		0.264051, -0.483631, 0.834493,
		-0.932934, -0.347635, 0.093728,
		46.460194, 46.064487, 59.298992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.185555, 45.634007, 59.542179>,  <47.113247, 46.307831, 59.233383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.185555, 45.634007, 59.542179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.843231, 45.655647, 59.336395>,  <46.637836, 45.668633, 59.212925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.843231, 45.655647, 59.336395>,  <47.185555, 45.634007, 59.542179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.843231, 45.655647, 59.336395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354862, -0.662216, -0.659957,
		-0.376392, -0.747357, 0.547527,
		-0.855804, 0.054106, -0.514462,
		46.586491, 45.671879, 59.182056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.025242, 44.946091, 59.362316>,  <47.185555, 45.634007, 59.542179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.025242, 44.946091, 59.362316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.794670, 45.167923, 59.122261>,  <46.656326, 45.301022, 58.978230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.794670, 45.167923, 59.122261>,  <47.025242, 44.946091, 59.362316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.794670, 45.167923, 59.122261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211098, -0.608434, -0.765013,
		-0.789408, -0.567665, 0.233649,
		-0.576432, 0.554585, -0.600136,
		46.621742, 45.334297, 58.942219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.565899, 44.467991, 58.997646>,  <47.025242, 44.946091, 59.362316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.565899, 44.467991, 58.997646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.528099, 44.803658, 58.783405>,  <46.505421, 45.005058, 58.654861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.528099, 44.803658, 58.783405>,  <46.565899, 44.467991, 58.997646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.528099, 44.803658, 58.783405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128454, -0.523234, -0.842452,
		-0.987203, -0.148409, -0.058351,
		-0.094496, 0.839167, -0.535602,
		46.499752, 45.055408, 58.622726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129944, 44.283127, 58.447975>,  <46.565899, 44.467991, 58.997646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129944, 44.283127, 58.447975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.305542, 44.616829, 58.314529>,  <46.410900, 44.817051, 58.234463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.305542, 44.616829, 58.314529>,  <46.129944, 44.283127, 58.447975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.305542, 44.616829, 58.314529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164498, -0.439652, -0.882976,
		-0.883303, 0.332744, -0.330239,
		0.438995, 0.834259, -0.333610,
		46.437241, 44.867107, 58.214447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405758, 44.108578, 58.176208>,  <46.129944, 44.283127, 58.447975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405758, 44.108578, 58.176208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.247662, 43.761009, 58.295380>,  <45.152802, 43.552467, 58.366882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.247662, 43.761009, 58.295380>,  <45.405758, 44.108578, 58.176208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247662, 43.761009, 58.295380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478668, 0.471649, 0.740557,
		-0.784002, 0.150091, -0.602340,
		-0.395244, -0.868919, 0.297929,
		45.129089, 43.500332, 58.384758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721786, 44.200897, 58.306549>,  <45.405758, 44.108578, 58.176208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721786, 44.200897, 58.306549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.752144, 43.861549, 58.516121>,  <44.770359, 43.657940, 58.641865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.752144, 43.861549, 58.516121>,  <44.721786, 44.200897, 58.306549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.752144, 43.861549, 58.516121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620126, 0.371310, 0.691067,
		-0.780823, -0.377349, -0.497919,
		0.075891, -0.848373, 0.523931,
		44.774910, 43.607037, 58.673302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074947, 43.967529, 58.485104>,  <44.721786, 44.200897, 58.306549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074947, 43.967529, 58.485104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.306461, 43.775330, 58.748657>,  <44.445370, 43.660011, 58.906792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.306461, 43.775330, 58.748657>,  <44.074947, 43.967529, 58.485104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306461, 43.775330, 58.748657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683177, 0.155485, 0.713508,
		-0.445287, -0.863102, -0.238274,
		0.578782, -0.480499, 0.658887,
		44.480095, 43.631180, 58.946323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550278, 43.578728, 58.822277>,  <44.074947, 43.967529, 58.485104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550278, 43.578728, 58.822277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.871243, 43.591736, 59.060631>,  <44.063820, 43.599541, 59.203644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.871243, 43.591736, 59.060631>,  <43.550278, 43.578728, 58.822277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871243, 43.591736, 59.060631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594941, -0.034580, 0.803025,
		0.046723, -0.998873, -0.008398,
		0.802410, 0.032523, 0.595886,
		44.111965, 43.601490, 59.239395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393108, 43.130222, 59.306286>,  <43.550278, 43.578728, 58.822277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393108, 43.130222, 59.306286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.665058, 43.368126, 59.477882>,  <43.828228, 43.510868, 59.580841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.665058, 43.368126, 59.477882>,  <43.393108, 43.130222, 59.306286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665058, 43.368126, 59.477882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472190, -0.092531, 0.876627,
		0.561075, -0.798562, 0.217929,
		0.679876, 0.594757, 0.428990,
		43.869022, 43.546555, 59.606579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669552, 42.781403, 59.939884>,  <43.393108, 43.130222, 59.306286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669552, 42.781403, 59.939884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.726917, 43.174828, 59.983768>,  <43.761337, 43.410881, 60.010101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.726917, 43.174828, 59.983768>,  <43.669552, 42.781403, 59.939884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726917, 43.174828, 59.983768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480446, -0.027727, 0.876586,
		0.865219, -0.178425, 0.468572,
		0.143413, 0.983563, 0.109714,
		43.769939, 43.469898, 60.016682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635662, 42.770828, 60.607853>,  <43.669552, 42.781403, 59.939884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635662, 42.770828, 60.607853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.638302, 43.162811, 60.528214>,  <43.639885, 43.398003, 60.480431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.638302, 43.162811, 60.528214>,  <43.635662, 42.770828, 60.607853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638302, 43.162811, 60.528214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351179, 0.188696, 0.917097,
		0.936285, 0.063868, 0.345386,
		0.006600, 0.979956, -0.199102,
		43.640282, 43.456799, 60.468483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866539, 43.026218, 61.242016>,  <43.635662, 42.770828, 60.607853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866539, 43.026218, 61.242016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.702484, 43.343422, 61.061829>,  <43.604053, 43.533745, 60.953716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.702484, 43.343422, 61.061829>,  <43.866539, 43.026218, 61.242016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702484, 43.343422, 61.061829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531370, 0.193656, 0.824708,
		0.741240, 0.577605, 0.341959,
		-0.410133, 0.793013, -0.450468,
		43.579445, 43.581326, 60.926689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042175, 43.571587, 61.645351>,  <43.866539, 43.026218, 61.242016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042175, 43.571587, 61.645351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.707806, 43.647713, 61.439434>,  <43.507183, 43.693386, 61.315884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.707806, 43.647713, 61.439434>,  <44.042175, 43.571587, 61.645351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707806, 43.647713, 61.439434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456044, 0.281042, 0.844417,
		0.305382, 0.940637, -0.148139,
		-0.835922, 0.190311, -0.514797,
		43.457027, 43.704807, 61.284996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<46.624950, 40.980423, 45.739792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.231293, 41.050728, 45.730316>,  <45.995098, 41.092911, 45.724632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.231293, 41.050728, 45.730316>,  <46.624950, 40.980423, 45.739792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231293, 41.050728, 45.730316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026190, -0.011915, 0.999586,
		0.175405, 0.984361, 0.016330,
		-0.984148, 0.175760, -0.023690,
		45.936047, 41.103455, 45.723209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.500378, 41.442581, 46.325035>,  <46.624950, 40.980423, 45.739792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.500378, 41.442581, 46.325035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.132866, 41.323936, 46.220837>,  <45.912357, 41.252750, 46.158318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.132866, 41.323936, 46.220837>,  <46.500378, 41.442581, 46.325035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.132866, 41.323936, 46.220837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275913, 0.010578, 0.961124,
		-0.282329, 0.954938, -0.091559,
		-0.918783, -0.296616, -0.260493,
		45.857231, 41.234951, 46.142689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092453, 41.861916, 46.660000>,  <46.500378, 41.442581, 46.325035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.092453, 41.861916, 46.660000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.854935, 41.549873, 46.581169>,  <45.712421, 41.362648, 46.533871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.854935, 41.549873, 46.581169>,  <46.092453, 41.861916, 46.660000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.854935, 41.549873, 46.581169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180132, -0.109825, 0.977492,
		-0.784190, 0.615935, -0.075308,
		-0.593801, -0.780105, -0.197073,
		45.676796, 41.315842, 46.522049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.510395, 41.946316, 46.989517>,  <46.092453, 41.861916, 46.660000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.510395, 41.946316, 46.989517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.538956, 41.550705, 46.937798>,  <45.556091, 41.313339, 46.906765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.538956, 41.550705, 46.937798>,  <45.510395, 41.946316, 46.989517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538956, 41.550705, 46.937798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183221, -0.140431, 0.972990,
		-0.980475, -0.045784, -0.191239,
		0.071403, -0.989031, -0.129300,
		45.560375, 41.253994, 46.899006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874825, 41.660675, 47.270439>,  <45.510395, 41.946316, 46.989517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874825, 41.660675, 47.270439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.159729, 41.380196, 47.257736>,  <45.330669, 41.211906, 47.250114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.159729, 41.380196, 47.257736>,  <44.874825, 41.660675, 47.270439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159729, 41.380196, 47.257736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104322, -0.150498, 0.983091,
		-0.694121, -0.696902, -0.180344,
		0.712259, -0.701198, -0.031762,
		45.373405, 41.169838, 47.248207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592453, 41.246883, 47.716488>,  <44.874825, 41.660675, 47.270439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592453, 41.246883, 47.716488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.977608, 41.141792, 47.691738>,  <45.208698, 41.078735, 47.676888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.977608, 41.141792, 47.691738>,  <44.592453, 41.246883, 47.716488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977608, 41.141792, 47.691738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047970, -0.059012, 0.997104,
		-0.265623, -0.963063, -0.044219,
		0.962883, -0.262732, -0.061873,
		45.266472, 41.062973, 47.673176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.610748, 40.745152, 48.243412>,  <44.592453, 41.246883, 47.716488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.610748, 40.745152, 48.243412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.985451, 40.857933, 48.160477>,  <45.210274, 40.925602, 48.110718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.985451, 40.857933, 48.160477>,  <44.610748, 40.745152, 48.243412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.985451, 40.857933, 48.160477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251147, -0.128974, 0.959318,
		0.243741, -0.950720, -0.191629,
		0.936758, 0.281952, -0.207335,
		45.266479, 40.942520, 48.098278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003262, 40.264999, 48.505280>,  <44.610748, 40.745152, 48.243412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003262, 40.264999, 48.505280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.233002, 40.590446, 48.469162>,  <45.370846, 40.785713, 48.447491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.233002, 40.590446, 48.469162>,  <45.003262, 40.264999, 48.505280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.233002, 40.590446, 48.469162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010189, 0.103183, 0.994610,
		0.818545, -0.572177, 0.050974,
		0.574353, 0.813614, -0.090290,
		45.405308, 40.834530, 48.442074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.435715, 40.170910, 49.043957>,  <45.003262, 40.264999, 48.505280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.435715, 40.170910, 49.043957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.515030, 40.553947, 48.960346>,  <45.562618, 40.783772, 48.910179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.515030, 40.553947, 48.960346>,  <45.435715, 40.170910, 49.043957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515030, 40.553947, 48.960346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207568, 0.167399, 0.963791,
		0.957913, -0.234498, -0.165572,
		0.198291, 0.957595, -0.209028,
		45.574516, 40.841225, 48.897636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.062428, 40.319256, 49.400604>,  <45.435715, 40.170910, 49.043957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.062428, 40.319256, 49.400604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.922531, 40.684227, 49.315594>,  <45.838593, 40.903210, 49.264587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.922531, 40.684227, 49.315594>,  <46.062428, 40.319256, 49.400604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922531, 40.684227, 49.315594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325564, 0.331080, 0.885660,
		0.878460, 0.240558, -0.412843,
		-0.349737, 0.912424, -0.212524,
		45.817612, 40.957954, 49.251835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.659340, 40.836906, 49.551105>,  <46.062428, 40.319256, 49.400604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.659340, 40.836906, 49.551105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.292778, 40.995293, 49.574451>,  <46.072842, 41.090324, 49.588459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.292778, 40.995293, 49.574451>,  <46.659340, 40.836906, 49.551105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.292778, 40.995293, 49.574451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158630, 0.225444, 0.961255,
		0.367466, 0.890161, -0.269411,
		-0.916409, 0.395965, 0.058363,
		46.017857, 41.114082, 49.591961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.788502, 41.470745, 49.903549>,  <46.659340, 40.836906, 49.551105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.788502, 41.470745, 49.903549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.400513, 41.379356, 49.936916>,  <46.167721, 41.324524, 49.956936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.400513, 41.379356, 49.936916>,  <46.788502, 41.470745, 49.903549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.400513, 41.379356, 49.936916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063385, 0.093665, 0.993584,
		-0.234817, 0.969035, -0.076370,
		-0.969971, -0.228470, 0.083416,
		46.109520, 41.310814, 49.961941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.149952, 42.164249, 50.069004>,  <46.788502, 41.470745, 49.903549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.149952, 42.164249, 50.069004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.539818, 42.081779, 50.103699>,  <47.773739, 42.032299, 50.124516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.539818, 42.081779, 50.103699>,  <47.149952, 42.164249, 50.069004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.539818, 42.081779, 50.103699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074318, -0.067266, -0.994963,
		0.210969, 0.976201, -0.050240,
		0.974664, -0.206173, 0.086740,
		47.832218, 42.019928, 50.129723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.415234, 42.601406, 49.598747>,  <47.149952, 42.164249, 50.069004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.415234, 42.601406, 49.598747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.709427, 42.346718, 49.691402>,  <47.885944, 42.193905, 49.746994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.709427, 42.346718, 49.691402>,  <47.415234, 42.601406, 49.598747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.709427, 42.346718, 49.691402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256085, -0.055280, -0.965072,
		0.627283, 0.769113, 0.122396,
		0.735484, -0.636717, 0.231635,
		47.930073, 42.155704, 49.760895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.047413, 42.895981, 49.304699>,  <47.415234, 42.601406, 49.598747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.047413, 42.895981, 49.304699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.042473, 42.499092, 49.354240>,  <48.039509, 42.260960, 49.383965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.042473, 42.499092, 49.354240>,  <48.047413, 42.895981, 49.304699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.042473, 42.499092, 49.354240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261913, -0.122751, -0.957253,
		0.965012, 0.020614, 0.261393,
		-0.012354, -0.992223, 0.123855,
		48.038765, 42.201424, 49.391396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.626415, 42.717655, 48.920395>,  <48.047413, 42.895981, 49.304699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.626415, 42.717655, 48.920395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.411819, 42.384209, 48.972935>,  <48.283062, 42.184139, 49.004459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.411819, 42.384209, 48.972935>,  <48.626415, 42.717655, 48.920395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.411819, 42.384209, 48.972935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033444, -0.176530, -0.983727,
		0.843242, -0.523369, 0.122586,
		-0.536492, -0.833620, 0.131354,
		48.250874, 42.134121, 49.012341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.961815, 42.242126, 48.537807>,  <48.626415, 42.717655, 48.920395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.961815, 42.242126, 48.537807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.601944, 42.070999, 48.572563>,  <48.386021, 41.968323, 48.593414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.601944, 42.070999, 48.572563>,  <48.961815, 42.242126, 48.537807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.601944, 42.070999, 48.572563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017920, -0.235050, -0.971818,
		0.436185, -0.872767, 0.219136,
		-0.899679, -0.427819, 0.086886,
		48.332039, 41.942654, 48.598629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.061600, 41.510521, 48.468060>,  <48.961815, 42.242126, 48.537807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.061600, 41.510521, 48.468060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.679726, 41.590347, 48.379738>,  <48.450603, 41.638245, 48.326744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.679726, 41.590347, 48.379738>,  <49.061600, 41.510521, 48.468060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.679726, 41.590347, 48.379738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120879, -0.417939, -0.900397,
		-0.271972, -0.886284, 0.374876,
		-0.954683, 0.199568, -0.220801,
		48.393322, 41.650219, 48.313496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.845016, 40.960678, 48.164677>,  <49.061600, 41.510521, 48.468060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.845016, 40.960678, 48.164677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.567635, 41.222908, 48.045116>,  <48.401207, 41.380245, 47.973381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.567635, 41.222908, 48.045116>,  <48.845016, 40.960678, 48.164677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.567635, 41.222908, 48.045116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043790, -0.375736, -0.925692,
		-0.719169, -0.655013, 0.231848,
		-0.693454, 0.655576, -0.298901,
		48.359600, 41.419582, 47.955444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.403217, 40.647377, 47.658508>,  <48.845016, 40.960678, 48.164677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.403217, 40.647377, 47.658508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.356041, 41.037827, 47.585533>,  <48.327736, 41.272095, 47.541748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.356041, 41.037827, 47.585533>,  <48.403217, 40.647377, 47.658508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.356041, 41.037827, 47.585533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116495, -0.196048, -0.973650,
		-0.986164, -0.093576, 0.136834,
		-0.117936, 0.976119, -0.182435,
		48.320660, 41.330662, 47.530804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.820381, 40.602734, 47.264816>,  <48.403217, 40.647377, 47.658508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.820381, 40.602734, 47.264816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.984558, 40.959831, 47.190472>,  <48.083065, 41.174091, 47.145866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.984558, 40.959831, 47.190472>,  <47.820381, 40.602734, 47.264816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.984558, 40.959831, 47.190472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066408, -0.232542, -0.970317,
		-0.909465, 0.385918, -0.154731,
		0.410444, 0.892744, -0.185861,
		48.107693, 41.227654, 47.134712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.493546, 40.884239, 46.689339>,  <47.820381, 40.602734, 47.264816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.493546, 40.884239, 46.689339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.828888, 41.102287, 46.688747>,  <48.030094, 41.233116, 46.688393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.828888, 41.102287, 46.688747>,  <47.493546, 40.884239, 46.689339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.828888, 41.102287, 46.688747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021143, -0.035229, -0.999156,
		-0.544711, 0.837618, -0.041060,
		0.838357, 0.545120, -0.001480,
		48.080395, 41.265823, 46.688305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.405922, 41.341091, 46.131554>,  <47.493546, 40.884239, 46.689339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.405922, 41.341091, 46.131554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.798210, 41.335663, 46.209534>,  <48.033585, 41.332405, 46.256321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.798210, 41.335663, 46.209534>,  <47.405922, 41.341091, 46.131554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.798210, 41.335663, 46.209534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194647, -0.020780, -0.980653,
		0.017355, 0.999692, -0.017739,
		0.980720, -0.013567, 0.194947,
		48.092426, 41.331593, 46.268017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.806973, 41.966438, 45.860191>,  <47.405922, 41.341091, 46.131554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.806973, 41.966438, 45.860191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.068497, 41.667885, 45.909889>,  <48.225410, 41.488750, 45.939709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.068497, 41.667885, 45.909889>,  <47.806973, 41.966438, 45.860191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.068497, 41.667885, 45.909889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308893, 0.113386, -0.944314,
		0.690737, 0.655781, 0.304687,
		0.653810, -0.746388, 0.124246,
		48.264641, 41.443970, 45.947163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.405426, 42.245560, 45.567616>,  <47.806973, 41.966438, 45.860191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.405426, 42.245560, 45.567616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.488823, 41.854485, 45.577858>,  <48.538860, 41.619839, 45.584003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.488823, 41.854485, 45.577858>,  <48.405426, 42.245560, 45.567616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.488823, 41.854485, 45.577858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224408, 0.022339, -0.974239,
		0.951930, 0.208871, 0.224059,
		0.208496, -0.977688, 0.025608,
		48.551373, 41.561176, 45.585541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.165314, 42.168186, 45.339111>,  <48.405426, 42.245560, 45.567616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.165314, 42.168186, 45.339111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.974678, 41.819870, 45.290794>,  <48.860298, 41.610882, 45.261803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.974678, 41.819870, 45.290794>,  <49.165314, 42.168186, 45.339111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.974678, 41.819870, 45.290794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297172, -0.030259, -0.954344,
		0.827379, -0.490723, 0.273196,
		-0.476585, -0.870790, -0.120794,
		48.831703, 41.558632, 45.254555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.505199, 42.494556, 44.713947>,  <49.165314, 42.168186, 45.339111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.505199, 42.494556, 44.713947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.670853, 42.852760, 44.648762>,  <49.770245, 43.067680, 44.609650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.670853, 42.852760, 44.648762>,  <49.505199, 42.494556, 44.713947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.670853, 42.852760, 44.648762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024838, 0.190095, 0.981451,
		0.909877, -0.402406, 0.100968,
		0.414135, 0.895507, -0.162968,
		49.795094, 43.121414, 44.599873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.010059, 42.597904, 45.173531>,  <49.505199, 42.494556, 44.713947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.010059, 42.597904, 45.173531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.832558, 42.943573, 45.078629>,  <49.726059, 43.150974, 45.021687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.832558, 42.943573, 45.078629>,  <50.010059, 42.597904, 45.173531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.832558, 42.943573, 45.078629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082557, 0.224199, 0.971040,
		0.892339, 0.450487, -0.028145,
		-0.443751, 0.864174, -0.237252,
		49.699432, 43.202824, 45.007454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.368378, 43.237083, 45.439362>,  <50.010059, 42.597904, 45.173531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.368378, 43.237083, 45.439362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.980591, 43.329323, 45.406006>,  <49.747917, 43.384666, 45.385994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.980591, 43.329323, 45.406006>,  <50.368378, 43.237083, 45.439362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.980591, 43.329323, 45.406006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021959, 0.257062, 0.966145,
		0.244231, 0.938479, -0.244150,
		-0.969468, 0.230601, -0.083390,
		49.689751, 43.398502, 45.380989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.254726, 43.949059, 45.757538>,  <50.368378, 43.237083, 45.439362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.254726, 43.949059, 45.757538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.897018, 43.770058, 45.759480>,  <49.682392, 43.662659, 45.760643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.897018, 43.770058, 45.759480>,  <50.254726, 43.949059, 45.757538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.897018, 43.770058, 45.759480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197435, 0.404226, 0.893096,
		-0.401622, 0.797711, -0.449840,
		-0.894270, -0.447502, 0.004850,
		49.628738, 43.635807, 45.760933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.885777, 44.457779, 45.906136>,  <50.254726, 43.949059, 45.757538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.885777, 44.457779, 45.906136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.681824, 44.130516, 46.012444>,  <49.559452, 43.934158, 46.076229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.681824, 44.130516, 46.012444>,  <49.885777, 44.457779, 45.906136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.681824, 44.130516, 46.012444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166729, 0.397079, 0.902513,
		-0.843930, 0.415868, -0.338876,
		-0.509887, -0.818158, 0.265769,
		49.528858, 43.885067, 46.092175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.158642, 44.619469, 46.104759>,  <49.885777, 44.457779, 45.906136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.158642, 44.619469, 46.104759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.236229, 44.267853, 46.278957>,  <49.282784, 44.056881, 46.383476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.236229, 44.267853, 46.278957>,  <49.158642, 44.619469, 46.104759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.236229, 44.267853, 46.278957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001451, 0.444187, 0.895933,
		-0.981007, -0.173152, 0.087434,
		0.193970, -0.879043, 0.435499,
		49.294418, 44.004139, 46.409607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.633514, 44.585876, 46.601074>,  <49.158642, 44.619469, 46.104759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.633514, 44.585876, 46.601074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.914825, 44.325279, 46.714890>,  <49.083611, 44.168922, 46.783180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.914825, 44.325279, 46.714890>,  <48.633514, 44.585876, 46.601074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.914825, 44.325279, 46.714890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111399, 0.294305, 0.949197,
		-0.702136, -0.699244, 0.134402,
		0.703275, -0.651493, 0.284537,
		49.125809, 44.129833, 46.800251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.331974, 44.007969, 47.041061>,  <48.633514, 44.585876, 46.601074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.331974, 44.007969, 47.041061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.716934, 44.008675, 47.149719>,  <48.947910, 44.009098, 47.214912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.716934, 44.008675, 47.149719>,  <48.331974, 44.007969, 47.041061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.716934, 44.008675, 47.149719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257259, 0.327047, 0.909317,
		-0.087238, -0.945006, 0.315203,
		0.962397, 0.001762, 0.271643,
		49.005653, 44.009205, 47.231213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.436871, 43.610241, 47.740749>,  <48.331974, 44.007969, 47.041061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.436871, 43.610241, 47.740749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.732132, 43.876335, 47.695866>,  <48.909290, 44.035992, 47.668934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.732132, 43.876335, 47.695866>,  <48.436871, 43.610241, 47.740749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.732132, 43.876335, 47.695866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221578, 0.396169, 0.891041,
		0.637204, -0.632863, 0.439836,
		0.738156, 0.665233, -0.112212,
		48.953579, 44.075905, 47.662201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.713799, 43.603802, 48.353470>,  <48.436871, 43.610241, 47.740749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.713799, 43.603802, 48.353470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.865005, 43.941505, 48.201508>,  <48.955730, 44.144127, 48.110329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.865005, 43.941505, 48.201508>,  <48.713799, 43.603802, 48.353470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.865005, 43.941505, 48.201508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165852, 0.465470, 0.869386,
		0.910823, -0.265633, 0.315977,
		0.378015, 0.844261, -0.379905,
		48.978409, 44.194782, 48.087536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.178005, 43.905895, 48.925480>,  <48.713799, 43.603802, 48.353470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.178005, 43.905895, 48.925480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.122025, 44.211937, 48.674072>,  <49.088436, 44.395561, 48.523228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.122025, 44.211937, 48.674072>,  <49.178005, 43.905895, 48.925480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.122025, 44.211937, 48.674072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236449, 0.590576, 0.771565,
		0.961512, 0.256595, 0.098253,
		-0.139954, 0.765101, -0.628517,
		49.080040, 44.441467, 48.485516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.519951, 44.488724, 49.162643>,  <49.178005, 43.905895, 48.925480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.519951, 44.488724, 49.162643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.257767, 44.672371, 48.922783>,  <49.100456, 44.782558, 48.778866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.257767, 44.672371, 48.922783>,  <49.519951, 44.488724, 49.162643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.257767, 44.672371, 48.922783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010941, 0.799690, 0.600314,
		0.755152, 0.386920, -0.529187,
		-0.655459, 0.459118, -0.599654,
		49.061131, 44.810104, 48.742886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.680424, 45.117435, 49.318649>,  <49.519951, 44.488724, 49.162643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.680424, 45.117435, 49.318649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.323761, 45.149719, 49.140465>,  <49.109764, 45.169090, 49.033554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.323761, 45.149719, 49.140465>,  <49.680424, 45.117435, 49.318649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.323761, 45.149719, 49.140465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308176, 0.612596, 0.727842,
		0.331629, 0.786265, -0.521353,
		-0.891655, 0.080705, -0.445463,
		49.056263, 45.173931, 49.006824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.528934, 45.865002, 49.403378>,  <49.680424, 45.117435, 49.318649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.528934, 45.865002, 49.403378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.175835, 45.691849, 49.330318>,  <48.963974, 45.587955, 49.286484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.175835, 45.691849, 49.330318>,  <49.528934, 45.865002, 49.403378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.175835, 45.691849, 49.330318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401465, 0.492998, 0.771867,
		-0.244084, 0.754694, -0.608983,
		-0.882751, -0.432885, -0.182650,
		48.911011, 45.561985, 49.275524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.979572, 46.359898, 49.321564>,  <49.528934, 45.865002, 49.403378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.979572, 46.359898, 49.321564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.750397, 46.042969, 49.405434>,  <48.612892, 45.852810, 49.455753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.750397, 46.042969, 49.405434>,  <48.979572, 46.359898, 49.321564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.750397, 46.042969, 49.405434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436655, 0.511578, 0.740014,
		-0.693595, 0.332428, -0.639075,
		-0.572938, -0.792325, 0.209672,
		48.578514, 45.805271, 49.468334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.377735, 46.619762, 49.491451>,  <48.979572, 46.359898, 49.321564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.377735, 46.619762, 49.491451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.372154, 46.252731, 49.650375>,  <48.368805, 46.032513, 49.745731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.372154, 46.252731, 49.650375>,  <48.377735, 46.619762, 49.491451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.372154, 46.252731, 49.650375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390402, 0.370810, 0.842666,
		-0.920539, -0.143358, -0.363396,
		-0.013948, -0.917577, 0.397313,
		48.367970, 45.977459, 49.769569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.731171, 46.615623, 50.020374>,  <48.377735, 46.619762, 49.491451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.731171, 46.615623, 50.020374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.969109, 46.308609, 50.115913>,  <48.111874, 46.124401, 50.173237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.969109, 46.308609, 50.115913>,  <47.731171, 46.615623, 50.020374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.969109, 46.308609, 50.115913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289661, 0.072501, 0.954380,
		-0.749836, -0.636894, -0.179198,
		0.594847, -0.767535, 0.238847,
		48.147564, 46.078350, 50.187569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.355892, 46.040436, 50.227024>,  <47.731171, 46.615623, 50.020374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.355892, 46.040436, 50.227024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.710152, 46.032692, 50.412609>,  <47.922707, 46.028046, 50.523960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.710152, 46.032692, 50.412609>,  <47.355892, 46.040436, 50.227024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.710152, 46.032692, 50.412609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462364, 0.055876, 0.884928,
		-0.043063, -0.998250, 0.040532,
		0.885644, -0.019368, 0.463961,
		47.975845, 46.026882, 50.551796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.257339, 45.680832, 50.902435>,  <47.355892, 46.040436, 50.227024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.257339, 45.680832, 50.902435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.605446, 45.873505, 50.943665>,  <47.814308, 45.989109, 50.968403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.605446, 45.873505, 50.943665>,  <47.257339, 45.680832, 50.902435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.605446, 45.873505, 50.943665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179105, 0.114496, 0.977145,
		0.458873, -0.868834, 0.185913,
		0.870263, 0.481683, 0.103073,
		47.866524, 46.018009, 50.974586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.573826, 45.272270, 51.398830>,  <47.257339, 45.680832, 50.902435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.573826, 45.272270, 51.398830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.736206, 45.637764, 51.405678>,  <47.833633, 45.857059, 51.409786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.736206, 45.637764, 51.405678>,  <47.573826, 45.272270, 51.398830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.736206, 45.637764, 51.405678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045120, 0.001327, 0.998981,
		0.912782, -0.406307, 0.041766,
		0.405948, 0.913735, 0.017121,
		47.857990, 45.911884, 51.410812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.980755, 45.345348, 52.033348>,  <47.573826, 45.272270, 51.398830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.980755, 45.345348, 52.033348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.942986, 45.726738, 51.918823>,  <47.920326, 45.955570, 51.850109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.942986, 45.726738, 51.918823>,  <47.980755, 45.345348, 52.033348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.942986, 45.726738, 51.918823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130562, 0.273255, 0.953040,
		0.986934, 0.127368, 0.098687,
		-0.094421, 0.953472, -0.286314,
		47.914658, 46.012779, 51.832928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.421196, 45.688839, 52.661655>,  <47.980755, 45.345348, 52.033348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.421196, 45.688839, 52.661655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.197868, 45.965836, 52.478905>,  <48.063869, 46.132034, 52.369255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.197868, 45.965836, 52.478905>,  <48.421196, 45.688839, 52.661655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.197868, 45.965836, 52.478905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252256, 0.382929, 0.888669,
		0.790344, 0.611414, -0.039114,
		-0.558322, 0.692487, -0.456878,
		48.030373, 46.173580, 52.341843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.622562, 46.374794, 53.006664>,  <48.421196, 45.688839, 52.661655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.622562, 46.374794, 53.006664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.257690, 46.413040, 52.847271>,  <48.038769, 46.435986, 52.751637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.257690, 46.413040, 52.847271>,  <48.622562, 46.374794, 53.006664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.257690, 46.413040, 52.847271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342818, 0.354711, 0.869860,
		0.224517, 0.930074, -0.290782,
		-0.912178, 0.095613, -0.398485,
		47.984035, 46.441723, 52.727726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.461277, 47.116394, 53.224941>,  <48.622562, 46.374794, 53.006664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.461277, 47.116394, 53.224941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.114029, 46.938263, 53.137257>,  <47.905682, 46.831387, 53.084644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.114029, 46.938263, 53.137257>,  <48.461277, 47.116394, 53.224941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.114029, 46.938263, 53.137257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418552, 0.419393, 0.805558,
		-0.266800, 0.791072, -0.550475,
		-0.868120, -0.445325, -0.219211,
		47.853592, 46.804665, 53.071495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.012070, 47.638462, 53.134636>,  <48.461277, 47.116394, 53.224941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.012070, 47.638462, 53.134636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.801033, 47.316582, 53.243519>,  <47.674412, 47.123455, 53.308849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.801033, 47.316582, 53.243519>,  <48.012070, 47.638462, 53.134636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.801033, 47.316582, 53.243519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398971, 0.517619, 0.756897,
		-0.749976, 0.290733, -0.594147,
		-0.527596, -0.804702, 0.272208,
		47.642754, 47.075172, 53.325180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.339108, 47.931229, 53.199554>,  <48.012070, 47.638462, 53.134636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.339108, 47.931229, 53.199554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.348961, 47.571686, 53.374573>,  <47.354874, 47.355961, 53.479584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.348961, 47.571686, 53.374573>,  <47.339108, 47.931229, 53.199554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.348961, 47.571686, 53.374573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514411, 0.363891, 0.776508,
		-0.857190, -0.244209, -0.453418,
		0.024636, -0.898858, 0.437547,
		47.356350, 47.302029, 53.505836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.695984, 47.821033, 53.376480>,  <47.339108, 47.931229, 53.199554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.695984, 47.821033, 53.376480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.887962, 47.581627, 53.633053>,  <47.003151, 47.437984, 53.786995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.887962, 47.581627, 53.633053>,  <46.695984, 47.821033, 53.376480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.887962, 47.581627, 53.633053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484238, 0.428946, 0.762574,
		-0.731551, -0.676599, -0.083953,
		0.479945, -0.598515, 0.641430,
		47.031944, 47.402073, 53.825481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196472, 47.605755, 53.931717>,  <46.695984, 47.821033, 53.376480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196472, 47.605755, 53.931717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.551697, 47.503830, 54.084778>,  <46.764832, 47.442677, 54.176613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.551697, 47.503830, 54.084778>,  <46.196472, 47.605755, 53.931717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.551697, 47.503830, 54.084778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326126, 0.237470, 0.915014,
		-0.324024, -0.937379, 0.127787,
		0.888060, -0.254812, 0.382650,
		46.818115, 47.427387, 54.199574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595646, 47.179482, 53.770111>,  <46.196472, 47.605755, 53.931717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595646, 47.179482, 53.770111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.250881, 47.360847, 53.679306>,  <45.044022, 47.469666, 53.624825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.250881, 47.360847, 53.679306>,  <45.595646, 47.179482, 53.770111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250881, 47.360847, 53.679306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255286, 0.001204, -0.966865,
		-0.438114, -0.891301, -0.116788,
		-0.861908, 0.453411, -0.227009,
		44.992310, 47.496872, 53.611202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285908, 46.736122, 53.222649>,  <45.595646, 47.179482, 53.770111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285908, 46.736122, 53.222649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.120388, 47.099548, 53.199726>,  <45.021076, 47.317604, 53.185974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.120388, 47.099548, 53.199726>,  <45.285908, 46.736122, 53.222649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120388, 47.099548, 53.199726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138040, 0.000403, -0.990427,
		-0.899843, -0.417745, -0.125585,
		-0.413796, 0.908565, -0.057303,
		44.996250, 47.372116, 53.182537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607468, 46.738110, 52.783119>,  <45.285908, 46.736122, 53.222649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.607468, 46.738110, 52.783119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.749413, 47.111420, 52.760971>,  <44.834579, 47.335407, 52.747681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.749413, 47.111420, 52.760971>,  <44.607468, 46.738110, 52.783119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749413, 47.111420, 52.760971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074056, -0.030980, -0.996773,
		-0.931979, 0.357822, 0.058121,
		0.354867, 0.933276, -0.055372,
		44.855873, 47.391403, 52.744358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163517, 47.030037, 52.281570>,  <44.607468, 46.738110, 52.783119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163517, 47.030037, 52.281570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.471497, 47.284828, 52.296726>,  <44.656284, 47.437702, 52.305820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.471497, 47.284828, 52.296726>,  <44.163517, 47.030037, 52.281570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471497, 47.284828, 52.296726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083029, -0.041137, -0.995698,
		-0.632676, 0.769786, -0.084561,
		0.769952, 0.636975, 0.037888,
		44.702484, 47.475922, 52.308094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115372, 47.561527, 51.784420>,  <44.163517, 47.030037, 52.281570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115372, 47.561527, 51.784420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.508179, 47.571358, 51.859299>,  <44.743862, 47.577255, 51.904228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.508179, 47.571358, 51.859299>,  <44.115372, 47.561527, 51.784420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508179, 47.571358, 51.859299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188780, -0.111393, -0.975681,
		-0.003126, 0.993473, -0.114029,
		0.982015, 0.024576, 0.187200,
		44.802784, 47.578732, 51.915459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
