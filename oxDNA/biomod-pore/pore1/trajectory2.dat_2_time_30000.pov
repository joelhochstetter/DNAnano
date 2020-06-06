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
	<52.357307, 40.347443, 46.274273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.381569, 40.744545, 46.232780>,  <52.396126, 40.982807, 46.207886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.381569, 40.744545, 46.232780>,  <52.357307, 40.347443, 46.274273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.381569, 40.744545, 46.232780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437985, 0.119854, 0.890957,
		0.896934, -0.008603, 0.442081,
		0.060650, 0.992754, -0.103733,
		52.399765, 41.042370, 46.201660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.318222, 40.611736, 46.945538>,  <52.357307, 40.347443, 46.274273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.318222, 40.611736, 46.945538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.241119, 40.951263, 46.748619>,  <52.194859, 41.154980, 46.630466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.241119, 40.951263, 46.748619>,  <52.318222, 40.611736, 46.945538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.241119, 40.951263, 46.748619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735251, 0.207304, 0.645315,
		0.649808, 0.486353, 0.584132,
		-0.192758, 0.848814, -0.492299,
		52.183292, 41.205906, 46.600929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.498260, 41.045784, 47.414234>,  <52.318222, 40.611736, 46.945538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.498260, 41.045784, 47.414234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.261711, 41.270103, 47.182449>,  <52.119781, 41.404694, 47.043377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.261711, 41.270103, 47.182449>,  <52.498260, 41.045784, 47.414234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.261711, 41.270103, 47.182449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447364, 0.369711, 0.814358,
		0.670925, 0.740824, 0.032243,
		-0.591375, 0.560798, -0.579466,
		52.084297, 41.438343, 47.008610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.507923, 41.749641, 47.673687>,  <52.498260, 41.045784, 47.414234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.507923, 41.749641, 47.673687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.173279, 41.734764, 47.455070>,  <51.972492, 41.725838, 47.323902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.173279, 41.734764, 47.455070>,  <52.507923, 41.749641, 47.673687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.173279, 41.734764, 47.455070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501649, 0.452851, 0.737072,
		0.220084, 0.890810, -0.397518,
		-0.836607, -0.037197, -0.546540,
		51.922298, 41.723606, 47.291107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.263046, 42.349434, 47.750771>,  <52.507923, 41.749641, 47.673687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.263046, 42.349434, 47.750771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.947281, 42.136322, 47.628799>,  <51.757824, 42.008457, 47.555618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.947281, 42.136322, 47.628799>,  <52.263046, 42.349434, 47.750771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.947281, 42.136322, 47.628799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525739, 0.330342, 0.783883,
		-0.316904, 0.779118, -0.540877,
		-0.789411, -0.532776, -0.304926,
		51.710457, 41.976490, 47.537323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.756275, 42.853313, 47.852524>,  <52.263046, 42.349434, 47.750771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.756275, 42.853313, 47.852524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.561089, 42.505867, 47.818130>,  <51.443977, 42.297398, 47.797493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.561089, 42.505867, 47.818130>,  <51.756275, 42.853313, 47.852524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.561089, 42.505867, 47.818130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479800, 0.184634, 0.857731,
		-0.729165, 0.459797, -0.506858,
		-0.487965, -0.868618, -0.085982,
		51.414700, 42.245281, 47.792336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.026169, 43.017723, 48.026093>,  <51.756275, 42.853313, 47.852524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.026169, 43.017723, 48.026093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.081764, 42.624176, 48.071136>,  <51.115120, 42.388046, 48.098164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.081764, 42.624176, 48.071136>,  <51.026169, 43.017723, 48.026093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.081764, 42.624176, 48.071136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658784, -0.006959, 0.752300,
		-0.739383, -0.178742, -0.649125,
		0.138986, -0.983872, 0.112607,
		51.123459, 42.329014, 48.104919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.406097, 42.741692, 48.110325>,  <51.026169, 43.017723, 48.026093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.406097, 42.741692, 48.110325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.633850, 42.464417, 48.287094>,  <50.770504, 42.298054, 48.393154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.633850, 42.464417, 48.287094>,  <50.406097, 42.741692, 48.110325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.633850, 42.464417, 48.287094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638591, -0.034426, 0.768776,
		-0.517691, -0.719936, -0.462264,
		0.569384, -0.693186, 0.441923,
		50.804665, 42.256462, 48.419670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.894680, 42.299461, 48.429012>,  <50.406097, 42.741692, 48.110325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.894680, 42.299461, 48.429012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.246140, 42.222946, 48.604004>,  <50.457016, 42.177036, 48.709000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.246140, 42.222946, 48.604004>,  <49.894680, 42.299461, 48.429012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.246140, 42.222946, 48.604004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439947, 0.031702, 0.897464,
		-0.185547, -0.981021, -0.056304,
		0.878646, -0.191293, 0.437480,
		50.509735, 42.165558, 48.735249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.784679, 41.640270, 48.933865>,  <49.894680, 42.299461, 48.429012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.784679, 41.640270, 48.933865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.102333, 41.855515, 49.046848>,  <50.292927, 41.984661, 49.114639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.102333, 41.855515, 49.046848>,  <49.784679, 41.640270, 48.933865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.102333, 41.855515, 49.046848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473409, 0.256300, 0.842730,
		0.381088, -0.802962, 0.458284,
		0.794139, 0.538110, 0.282456,
		50.340576, 42.016949, 49.131584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.767826, 41.419186, 49.655403>,  <49.784679, 41.640270, 48.933865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.767826, 41.419186, 49.655403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.973946, 41.755135, 49.587189>,  <50.097618, 41.956703, 49.546261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.973946, 41.755135, 49.587189>,  <49.767826, 41.419186, 49.655403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.973946, 41.755135, 49.587189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200414, 0.311567, 0.928849,
		0.833249, -0.444454, 0.328872,
		0.515296, 0.839873, -0.170538,
		50.128536, 42.007095, 49.536026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.243462, 41.482449, 50.179993>,  <49.767826, 41.419186, 49.655403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.243462, 41.482449, 50.179993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.233536, 41.864708, 50.062607>,  <50.227581, 42.094063, 49.992176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.233536, 41.864708, 50.062607>,  <50.243462, 41.482449, 50.179993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.233536, 41.864708, 50.062607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189485, 0.283739, 0.939993,
		0.981570, 0.078935, 0.174040,
		-0.024816, 0.955647, -0.293466,
		50.226089, 42.151402, 49.974567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.493454, 41.782131, 50.719097>,  <50.243462, 41.482449, 50.179993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.493454, 41.782131, 50.719097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.328331, 42.091606, 50.526852>,  <50.229256, 42.277290, 50.411503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.328331, 42.091606, 50.526852>,  <50.493454, 41.782131, 50.719097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.328331, 42.091606, 50.526852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148111, 0.463632, 0.873561,
		0.898694, 0.431799, -0.076800,
		-0.412810, 0.773689, -0.480618,
		50.204487, 42.323711, 50.382668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.769493, 42.470303, 51.064892>,  <50.493454, 41.782131, 50.719097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.769493, 42.470303, 51.064892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.418930, 42.531029, 50.882088>,  <50.208591, 42.567467, 50.772408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.418930, 42.531029, 50.882088>,  <50.769493, 42.470303, 51.064892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.418930, 42.531029, 50.882088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307361, 0.554217, 0.773545,
		0.370720, 0.818409, -0.439059,
		-0.876411, 0.151819, -0.457006,
		50.156006, 42.576576, 50.744987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.684978, 43.122059, 51.149784>,  <50.769493, 42.470303, 51.064892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.684978, 43.122059, 51.149784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.314293, 42.985558, 51.086864>,  <50.091881, 42.903656, 51.049110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.314293, 42.985558, 51.086864>,  <50.684978, 43.122059, 51.149784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.314293, 42.985558, 51.086864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354459, 0.654935, 0.667397,
		-0.124730, 0.674244, -0.727899,
		-0.926715, -0.341255, -0.157302,
		50.036278, 42.883183, 51.039673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.253128, 43.687996, 51.084660>,  <50.684978, 43.122059, 51.149784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.253128, 43.687996, 51.084660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.014854, 43.385139, 51.191917>,  <49.871891, 43.203426, 51.256271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.014854, 43.385139, 51.191917>,  <50.253128, 43.687996, 51.084660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.014854, 43.385139, 51.191917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448723, 0.590573, 0.670724,
		-0.666189, 0.279217, -0.691541,
		-0.595684, -0.757140, 0.268142,
		49.836151, 43.157997, 51.272362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.552429, 43.962189, 51.384979>,  <50.253128, 43.687996, 51.084660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.552429, 43.962189, 51.384979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.570122, 43.589355, 51.528793>,  <49.580738, 43.365654, 51.615082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.570122, 43.589355, 51.528793>,  <49.552429, 43.962189, 51.384979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.570122, 43.589355, 51.528793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371503, 0.318727, 0.872008,
		-0.927377, -0.172139, -0.332174,
		0.044233, -0.932085, 0.359531,
		49.583393, 43.309731, 51.636654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.803574, 43.904598, 51.655766>,  <49.552429, 43.962189, 51.384979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.803574, 43.904598, 51.655766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.033066, 43.629303, 51.833374>,  <49.170761, 43.464127, 51.939938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.033066, 43.629303, 51.833374>,  <48.803574, 43.904598, 51.655766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.033066, 43.629303, 51.833374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472863, 0.164306, 0.865681,
		-0.668754, -0.706630, -0.231177,
		0.573732, -0.688243, 0.444019,
		49.205185, 43.422829, 51.966579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.287609, 43.499973, 52.061119>,  <48.803574, 43.904598, 51.655766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.287609, 43.499973, 52.061119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.664474, 43.446892, 52.184223>,  <48.890594, 43.415043, 52.258087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.664474, 43.446892, 52.184223>,  <48.287609, 43.499973, 52.061119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.664474, 43.446892, 52.184223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298938, 0.082443, 0.950705,
		-0.151534, -0.987721, 0.038005,
		0.942164, -0.132702, 0.307760,
		48.947124, 43.407082, 52.276550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.297638, 42.961235, 52.574406>,  <48.287609, 43.499973, 52.061119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.297638, 42.961235, 52.574406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.617981, 43.189842, 52.645947>,  <48.810188, 43.327007, 52.688869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.617981, 43.189842, 52.645947>,  <48.297638, 42.961235, 52.574406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.617981, 43.189842, 52.645947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329158, 0.170605, 0.928735,
		0.500280, -0.802655, 0.324752,
		0.800858, 0.571522, 0.178850,
		48.858238, 43.361298, 52.699600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.426521, 42.917694, 53.377228>,  <48.297638, 42.961235, 52.574406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.426521, 42.917694, 53.377228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.691666, 43.201973, 53.282982>,  <48.850754, 43.372540, 53.226433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.691666, 43.201973, 53.282982>,  <48.426521, 42.917694, 53.377228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.691666, 43.201973, 53.282982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096674, 0.393290, 0.914318,
		0.742474, -0.583289, 0.329404,
		0.662862, 0.710702, -0.235619,
		48.890526, 43.415184, 53.212296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.776691, 43.044159, 53.984818>,  <48.426521, 42.917694, 53.377228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.776691, 43.044159, 53.984818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.857544, 43.377686, 53.779335>,  <48.906055, 43.577801, 53.656044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.857544, 43.377686, 53.779335>,  <48.776691, 43.044159, 53.984818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.857544, 43.377686, 53.779335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196257, 0.548378, 0.812874,
		0.959493, -0.063486, 0.274485,
		0.202128, 0.833817, -0.513705,
		48.918182, 43.627831, 53.625225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.303902, 43.403976, 54.368614>,  <48.776691, 43.044159, 53.984818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.303902, 43.403976, 54.368614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.062119, 43.639664, 54.154156>,  <48.917049, 43.781078, 54.025482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.062119, 43.639664, 54.154156>,  <49.303902, 43.403976, 54.368614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.062119, 43.639664, 54.154156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228870, 0.516192, 0.825327,
		0.763054, 0.621581, -0.177160,
		-0.604457, 0.589222, -0.536143,
		48.880783, 43.816429, 53.993313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.347305, 44.052113, 54.686035>,  <49.303902, 43.403976, 54.368614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.347305, 44.052113, 54.686035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.020500, 44.111626, 54.463196>,  <48.824417, 44.147335, 54.329491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.020500, 44.111626, 54.463196>,  <49.347305, 44.052113, 54.686035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.020500, 44.111626, 54.463196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291512, 0.727005, 0.621678,
		0.497510, 0.670318, -0.550598,
		-0.817010, 0.148785, -0.557098,
		48.775398, 44.156261, 54.296066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.300335, 44.719944, 54.429981>,  <49.347305, 44.052113, 54.686035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.300335, 44.719944, 54.429981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.933357, 44.562401, 54.452507>,  <48.713169, 44.467876, 54.466022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.933357, 44.562401, 54.452507>,  <49.300335, 44.719944, 54.429981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.933357, 44.562401, 54.452507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212779, 0.605308, 0.767025,
		-0.336185, 0.691721, -0.639141,
		-0.917445, -0.393858, 0.056312,
		48.658123, 44.444244, 54.469402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.095955, 45.130196, 54.883759>,  <49.300335, 44.719944, 54.429981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.095955, 45.130196, 54.883759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.776375, 44.889748, 54.876411>,  <48.584629, 44.745480, 54.872002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.776375, 44.889748, 54.876411>,  <49.095955, 45.130196, 54.883759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.776375, 44.889748, 54.876411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334649, 0.418992, 0.844071,
		-0.499692, 0.680515, -0.535917,
		-0.798948, -0.601120, -0.018367,
		48.536690, 44.709412, 54.870903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.486538, 45.547977, 54.889690>,  <49.095955, 45.130196, 54.883759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.486538, 45.547977, 54.889690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.402214, 45.184547, 55.033936>,  <48.351620, 44.966488, 55.120483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.402214, 45.184547, 55.033936>,  <48.486538, 45.547977, 54.889690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.402214, 45.184547, 55.033936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390421, 0.416464, 0.821054,
		-0.896176, 0.032294, -0.442522,
		-0.210809, -0.908578, 0.360617,
		48.338970, 44.911972, 55.142120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.978264, 45.691174, 55.372562>,  <48.486538, 45.547977, 54.889690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.978264, 45.691174, 55.372562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.059708, 45.308456, 55.455593>,  <48.108574, 45.078827, 55.505413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.059708, 45.308456, 55.455593>,  <47.978264, 45.691174, 55.372562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.059708, 45.308456, 55.455593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264442, 0.150395, 0.952603,
		-0.942662, -0.248855, -0.222393,
		0.203613, -0.956793, 0.207579,
		48.120792, 45.021420, 55.517868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.417137, 45.434238, 55.746811>,  <47.978264, 45.691174, 55.372562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.417137, 45.434238, 55.746811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730736, 45.205826, 55.844193>,  <47.918896, 45.068779, 55.902622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730736, 45.205826, 55.844193>,  <47.417137, 45.434238, 55.746811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.730736, 45.205826, 55.844193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293702, 0.004296, 0.955887,
		-0.546892, -0.820914, -0.164346,
		0.783995, -0.571037, 0.243453,
		47.965935, 45.034515, 55.917229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.211182, 44.838253, 56.227329>,  <47.417137, 45.434238, 55.746811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.211182, 44.838253, 56.227329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.599495, 44.886612, 56.310234>,  <47.832485, 44.915627, 56.359978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.599495, 44.886612, 56.310234>,  <47.211182, 44.838253, 56.227329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.599495, 44.886612, 56.310234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208250, -0.004509, 0.978065,
		0.119183, -0.992654, 0.020800,
		0.970787, 0.120901, 0.207258,
		47.890732, 44.922882, 56.372410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.423965, 44.299282, 56.724205>,  <47.211182, 44.838253, 56.227329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.423965, 44.299282, 56.724205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.688187, 44.598228, 56.752808>,  <47.846722, 44.777596, 56.769970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.688187, 44.598228, 56.752808>,  <47.423965, 44.299282, 56.724205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.688187, 44.598228, 56.752808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085472, -0.019759, 0.996145,
		0.745896, -0.664120, 0.050826,
		0.660555, 0.747365, 0.071502,
		47.886353, 44.822437, 56.774258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.989532, 44.095173, 57.157368>,  <47.423965, 44.299282, 56.724205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.989532, 44.095173, 57.157368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.970322, 44.494072, 57.179985>,  <47.958794, 44.733410, 57.193558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.970322, 44.494072, 57.179985>,  <47.989532, 44.095173, 57.157368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.970322, 44.494072, 57.179985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036239, -0.058314, 0.997640,
		0.998189, 0.045865, 0.038940,
		-0.048027, 0.997244, 0.056547,
		47.955914, 44.793243, 57.196949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.145721, 44.207691, 57.808250>,  <47.989532, 44.095173, 57.157368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.145721, 44.207691, 57.808250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.053497, 44.582970, 57.705002>,  <47.998165, 44.808136, 57.643055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.053497, 44.582970, 57.705002>,  <48.145721, 44.207691, 57.808250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.053497, 44.582970, 57.705002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248804, 0.199606, 0.947762,
		0.940712, 0.282736, 0.187407,
		-0.230559, 0.938199, -0.258118,
		47.984329, 44.864429, 57.627567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.461807, 44.727798, 58.362309>,  <48.145721, 44.207691, 57.808250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.461807, 44.727798, 58.362309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.170197, 44.919464, 58.166786>,  <47.995232, 45.034462, 58.049473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.170197, 44.919464, 58.166786>,  <48.461807, 44.727798, 58.362309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.170197, 44.919464, 58.166786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458686, 0.188074, 0.868468,
		0.508068, 0.857340, 0.082676,
		-0.729023, 0.479163, -0.488804,
		47.951488, 45.063213, 58.020145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.401176, 45.430531, 58.716045>,  <48.461807, 44.727798, 58.362309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.401176, 45.430531, 58.716045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.065323, 45.398117, 58.501217>,  <47.863811, 45.378670, 58.372318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.065323, 45.398117, 58.501217>,  <48.401176, 45.430531, 58.716045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.065323, 45.398117, 58.501217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516386, 0.425687, 0.743059,
		0.168409, 0.901235, -0.399268,
		-0.839633, -0.081038, -0.537074,
		47.813435, 45.373806, 58.340096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.055183, 46.081726, 58.834579>,  <48.401176, 45.430531, 58.716045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.055183, 46.081726, 58.834579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.774590, 45.815048, 58.733833>,  <47.606232, 45.655041, 58.673386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.774590, 45.815048, 58.733833>,  <48.055183, 46.081726, 58.834579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.774590, 45.815048, 58.733833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574682, 0.320146, 0.753158,
		-0.421490, 0.673075, -0.607714,
		-0.701489, -0.666691, -0.251866,
		47.564144, 45.615040, 58.658272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.498501, 46.480621, 58.649761>,  <48.055183, 46.081726, 58.834579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.498501, 46.480621, 58.649761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.355499, 46.116386, 58.732727>,  <47.269699, 45.897846, 58.782505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.355499, 46.116386, 58.732727>,  <47.498501, 46.480621, 58.649761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.355499, 46.116386, 58.732727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563676, 0.387464, 0.729480,
		-0.744620, 0.143880, -0.651797,
		-0.357505, -0.910588, 0.207412,
		47.248249, 45.843208, 58.794952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.783337, 46.536896, 58.709934>,  <47.498501, 46.480621, 58.649761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.783337, 46.536896, 58.709934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868637, 46.197403, 58.903503>,  <46.919819, 45.993706, 59.019646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868637, 46.197403, 58.903503>,  <46.783337, 46.536896, 58.709934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.868637, 46.197403, 58.903503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450550, 0.354067, 0.819537,
		-0.866907, -0.392800, -0.306889,
		0.213256, -0.848731, 0.483919,
		46.932613, 45.942783, 59.048679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.134907, 46.454525, 59.132694>,  <46.783337, 46.536896, 58.709934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.134907, 46.454525, 59.132694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.433945, 46.245674, 59.296883>,  <46.613369, 46.120365, 59.395397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.433945, 46.245674, 59.296883>,  <46.134907, 46.454525, 59.132694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.433945, 46.245674, 59.296883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233997, 0.371337, 0.898529,
		-0.621566, -0.767786, 0.155434,
		0.747597, -0.522124, 0.410470,
		46.658222, 46.089039, 59.420025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.773312, 46.055080, 59.672840>,  <46.134907, 46.454525, 59.132694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.773312, 46.055080, 59.672840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163139, 46.077866, 59.759529>,  <46.397038, 46.091537, 59.811543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163139, 46.077866, 59.759529>,  <45.773312, 46.055080, 59.672840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163139, 46.077866, 59.759529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223624, 0.185179, 0.956923,
		0.014373, -0.981053, 0.193208,
		0.974570, 0.056960, 0.216726,
		46.455509, 46.094952, 59.824547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.846142, 45.631176, 60.292675>,  <45.773312, 46.055080, 59.672840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.846142, 45.631176, 60.292675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.166321, 45.870346, 60.275856>,  <46.358429, 46.013847, 60.265766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.166321, 45.870346, 60.275856>,  <45.846142, 45.631176, 60.292675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.166321, 45.870346, 60.275856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106830, 0.211338, 0.971557,
		0.589808, -0.773187, 0.233041,
		0.800446, 0.597928, -0.042049,
		46.406456, 46.049725, 60.263241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.370541, 45.426762, 60.888790>,  <45.846142, 45.631176, 60.292675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.370541, 45.426762, 60.888790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.441902, 45.805016, 60.780022>,  <46.484718, 46.031967, 60.714760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.441902, 45.805016, 60.780022>,  <46.370541, 45.426762, 60.888790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.441902, 45.805016, 60.780022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094375, 0.291524, 0.951897,
		0.979422, -0.144156, 0.141252,
		0.178400, 0.945639, -0.271920,
		46.495422, 46.088707, 60.698444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.020935, 45.703171, 61.204708>,  <46.370541, 45.426762, 60.888790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.020935, 45.703171, 61.204708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739044, 45.976128, 61.127045>,  <46.569908, 46.139900, 61.080444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739044, 45.976128, 61.127045>,  <47.020935, 45.703171, 61.204708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.739044, 45.976128, 61.127045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147661, 0.126602, 0.980902,
		0.693939, 0.719941, 0.011542,
		-0.704731, 0.682390, -0.194161,
		46.527626, 46.180843, 61.068798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.971855, 46.130741, 61.761993>,  <47.020935, 45.703171, 61.204708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.971855, 46.130741, 61.761993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.646027, 46.263664, 61.571815>,  <46.450531, 46.343418, 61.457710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.646027, 46.263664, 61.571815>,  <46.971855, 46.130741, 61.761993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.646027, 46.263664, 61.571815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441245, 0.177076, 0.879743,
		0.376536, 0.926399, 0.002389,
		-0.814570, 0.332309, -0.475444,
		46.401657, 46.363358, 61.429184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.827423, 46.855618, 61.934864>,  <46.971855, 46.130741, 61.761993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.827423, 46.855618, 61.934864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517258, 46.616295, 61.854103>,  <46.331158, 46.472702, 61.805645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517258, 46.616295, 61.854103>,  <46.827423, 46.855618, 61.934864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.517258, 46.616295, 61.854103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253234, 0.001735, 0.967404,
		-0.578449, 0.801269, -0.152856,
		-0.775416, -0.598302, -0.201904,
		46.284634, 46.436806, 61.793533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.203453, 47.145908, 62.179783>,  <46.827423, 46.855618, 61.934864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.203453, 47.145908, 62.179783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187759, 46.746216, 62.178764>,  <46.178345, 46.506401, 62.178154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187759, 46.746216, 62.178764>,  <46.203453, 47.145908, 62.179783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.187759, 46.746216, 62.178764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521853, 0.018314, 0.852839,
		-0.852133, 0.034788, -0.522168,
		-0.039232, -0.999227, -0.002549,
		46.175991, 46.446449, 62.178001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557701, 46.873444, 62.104095>,  <46.203453, 47.145908, 62.179783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557701, 46.873444, 62.104095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833298, 46.685486, 62.324821>,  <45.998653, 46.572712, 62.457256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833298, 46.685486, 62.324821>,  <45.557701, 46.873444, 62.104095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833298, 46.685486, 62.324821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589492, 0.079629, 0.803840,
		-0.421658, -0.879125, -0.222133,
		0.688988, -0.469891, 0.551813,
		46.039993, 46.544518, 62.490364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051296, 47.436768, 61.841118>,  <45.557701, 46.873444, 62.104095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051296, 47.436768, 61.841118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.206577, 47.804413, 61.814182>,  <45.299744, 48.024998, 61.798019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.206577, 47.804413, 61.814182>,  <45.051296, 47.436768, 61.841118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.206577, 47.804413, 61.814182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482554, -0.264978, -0.834823,
		-0.785138, 0.291585, -0.546385,
		0.388201, 0.919111, -0.067339,
		45.323036, 48.080147, 61.793980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955265, 47.761623, 61.170597>,  <45.051296, 47.436768, 61.841118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955265, 47.761623, 61.170597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247978, 47.991623, 61.316948>,  <45.423607, 48.129623, 61.404758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247978, 47.991623, 61.316948>,  <44.955265, 47.761623, 61.170597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247978, 47.991623, 61.316948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413556, 0.052080, -0.908988,
		-0.541720, 0.816496, -0.199682,
		0.731786, 0.574997, 0.365880,
		45.467514, 48.164124, 61.426712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.013660, 48.428707, 60.883076>,  <44.955265, 47.761623, 61.170597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.013660, 48.428707, 60.883076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378441, 48.306602, 60.992737>,  <45.597309, 48.233341, 61.058533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378441, 48.306602, 60.992737>,  <45.013660, 48.428707, 60.883076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378441, 48.306602, 60.992737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337417, 0.177824, -0.924407,
		0.233436, 0.935518, 0.265167,
		0.911952, -0.305262, 0.274149,
		45.652027, 48.215023, 61.074982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529312, 48.270145, 60.314758>,  <45.013660, 48.428707, 60.883076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529312, 48.270145, 60.314758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.830742, 48.412781, 60.535652>,  <46.011600, 48.498363, 60.668190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.830742, 48.412781, 60.535652>,  <45.529312, 48.270145, 60.314758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.830742, 48.412781, 60.535652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451515, 0.329785, -0.829082,
		-0.477762, 0.874120, 0.087512,
		0.753577, 0.356590, 0.552236,
		46.056816, 48.519756, 60.701324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458210, 48.996761, 60.213539>,  <45.529312, 48.270145, 60.314758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458210, 48.996761, 60.213539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.817184, 48.844307, 60.302391>,  <46.032570, 48.752834, 60.355701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.817184, 48.844307, 60.302391>,  <45.458210, 48.996761, 60.213539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817184, 48.844307, 60.302391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328173, 0.240325, -0.913535,
		0.294796, 0.892738, 0.340755,
		0.897439, -0.381133, 0.222126,
		46.086418, 48.729965, 60.369030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906506, 49.524509, 60.072231>,  <45.458210, 48.996761, 60.213539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906506, 49.524509, 60.072231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029549, 49.146248, 60.030064>,  <46.103374, 48.919289, 60.004765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029549, 49.146248, 60.030064>,  <45.906506, 49.524509, 60.072231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.029549, 49.146248, 60.030064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242363, 0.185006, -0.952383,
		0.920130, 0.267409, 0.286101,
		0.307607, -0.945656, -0.105419,
		46.121830, 48.862553, 59.998436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.398968, 49.597279, 59.580379>,  <45.906506, 49.524509, 60.072231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.398968, 49.597279, 59.580379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.330582, 49.203224, 59.573708>,  <46.289551, 48.966793, 59.569702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.330582, 49.203224, 59.573708>,  <46.398968, 49.597279, 59.580379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.330582, 49.203224, 59.573708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358338, -0.046396, -0.932438,
		0.917805, -0.165388, 0.360944,
		-0.170961, -0.985137, -0.016683,
		46.279293, 48.907684, 59.568703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.985970, 49.346775, 59.299671>,  <46.398968, 49.597279, 59.580379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.985970, 49.346775, 59.299671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698700, 49.082588, 59.212021>,  <46.526340, 48.924076, 59.159431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698700, 49.082588, 59.212021>,  <46.985970, 49.346775, 59.299671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.698700, 49.082588, 59.212021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344709, -0.064115, -0.936517,
		0.604487, -0.748115, 0.273714,
		-0.718172, -0.660465, -0.219125,
		46.483250, 48.884449, 59.146282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.299389, 48.743610, 59.037403>,  <46.985970, 49.346775, 59.299671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.299389, 48.743610, 59.037403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.919472, 48.731247, 58.912868>,  <46.691521, 48.723827, 58.838146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.919472, 48.731247, 58.912868>,  <47.299389, 48.743610, 59.037403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.919472, 48.731247, 58.912868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312500, -0.142148, -0.939222,
		-0.015221, -0.989363, 0.144672,
		-0.949796, -0.030914, -0.311339,
		46.634533, 48.721973, 58.819466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.302818, 48.311543, 58.476612>,  <47.299389, 48.743610, 59.037403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.302818, 48.311543, 58.476612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.949539, 48.491264, 58.422817>,  <46.737572, 48.599098, 58.390541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.949539, 48.491264, 58.422817>,  <47.302818, 48.311543, 58.476612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.949539, 48.491264, 58.422817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064471, -0.167715, -0.983725,
		-0.464548, -0.877494, 0.119158,
		-0.883198, 0.449305, -0.134485,
		46.684578, 48.626057, 58.382473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.843842, 47.871941, 58.031738>,  <47.302818, 48.311543, 58.476612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.843842, 47.871941, 58.031738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696411, 48.242195, 57.997437>,  <46.607952, 48.464348, 57.976856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696411, 48.242195, 57.997437>,  <46.843842, 47.871941, 58.031738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.696411, 48.242195, 57.997437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039732, -0.076474, -0.996280,
		-0.928750, -0.370608, -0.008591,
		-0.368572, 0.925636, -0.085750,
		46.585838, 48.519886, 57.971710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289543, 47.795723, 57.621037>,  <46.843842, 47.871941, 58.031738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289543, 47.795723, 57.621037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459579, 48.157661, 57.611603>,  <46.561600, 48.374825, 57.605942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459579, 48.157661, 57.611603>,  <46.289543, 47.795723, 57.621037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.459579, 48.157661, 57.611603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004000, -0.027936, -0.999602,
		-0.905144, 0.424823, -0.015494,
		0.425086, 0.904845, -0.023587,
		46.587105, 48.429115, 57.604527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982410, 48.009003, 57.001476>,  <46.289543, 47.795723, 57.621037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982410, 48.009003, 57.001476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.312775, 48.220116, 57.080788>,  <46.510994, 48.346783, 57.128372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.312775, 48.220116, 57.080788>,  <45.982410, 48.009003, 57.001476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.312775, 48.220116, 57.080788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230734, 0.004469, -0.973007,
		-0.514424, 0.849367, -0.118086,
		0.825912, 0.527784, 0.198277,
		46.560547, 48.378452, 57.140270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.050591, 48.406147, 56.398029>,  <45.982410, 48.009003, 57.001476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.050591, 48.406147, 56.398029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.394402, 48.505760, 56.576553>,  <46.600689, 48.565529, 56.683666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.394402, 48.505760, 56.576553>,  <46.050591, 48.406147, 56.398029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.394402, 48.505760, 56.576553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458415, 0.010445, -0.888677,
		-0.225971, 0.968439, -0.105182,
		0.859531, 0.249032, 0.446307,
		46.652260, 48.580471, 56.710445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.199108, 48.889912, 55.902355>,  <46.050591, 48.406147, 56.398029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.199108, 48.889912, 55.902355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517883, 48.758270, 56.104969>,  <46.709148, 48.679287, 56.226536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517883, 48.758270, 56.104969>,  <46.199108, 48.889912, 55.902355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.517883, 48.758270, 56.104969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527342, -0.029931, -0.849126,
		0.294608, 0.943821, 0.149695,
		0.796942, -0.329100, 0.506534,
		46.756966, 48.659542, 56.256927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.830193, 49.220409, 55.602856>,  <46.199108, 48.889912, 55.902355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.830193, 49.220409, 55.602856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.997276, 48.911659, 55.794575>,  <47.097527, 48.726410, 55.909607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.997276, 48.911659, 55.794575>,  <46.830193, 49.220409, 55.602856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.997276, 48.911659, 55.794575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653094, -0.111664, -0.748999,
		0.631655, 0.625890, 0.457465,
		0.417708, -0.771876, 0.479298,
		47.122589, 48.680096, 55.938366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.638905, 49.323788, 55.499207>,  <46.830193, 49.220409, 55.602856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.638905, 49.323788, 55.499207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.526909, 48.947617, 55.576366>,  <47.459713, 48.721916, 55.622662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.526909, 48.947617, 55.576366>,  <47.638905, 49.323788, 55.499207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.526909, 48.947617, 55.576366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640643, -0.332680, -0.692026,
		0.714971, -0.070179, 0.695623,
		-0.279986, -0.940425, 0.192897,
		47.442913, 48.665489, 55.634235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.208496, 48.972118, 55.351517>,  <47.638905, 49.323788, 55.499207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.208496, 48.972118, 55.351517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.959663, 48.658943, 55.353149>,  <47.810364, 48.471039, 55.354130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.959663, 48.658943, 55.353149>,  <48.208496, 48.972118, 55.351517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.959663, 48.658943, 55.353149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447462, -0.359800, -0.818732,
		0.642490, -0.507489, 0.574162,
		-0.622081, -0.782942, 0.004086,
		47.773041, 48.424061, 55.354374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.673569, 48.433090, 55.339199>,  <48.208496, 48.972118, 55.351517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.673569, 48.433090, 55.339199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.318810, 48.328346, 55.186970>,  <48.105953, 48.265499, 55.095631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.318810, 48.328346, 55.186970>,  <48.673569, 48.433090, 55.339199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.318810, 48.328346, 55.186970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455421, -0.357480, -0.815353,
		0.077457, -0.896459, 0.436304,
		-0.886900, -0.261856, -0.380577,
		48.052738, 48.249790, 55.072796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.861340, 47.964977, 55.024410>,  <48.673569, 48.433090, 55.339199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.861340, 47.964977, 55.024410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.490692, 47.992043, 54.876461>,  <48.268303, 48.008282, 54.787689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.490692, 47.992043, 54.876461>,  <48.861340, 47.964977, 55.024410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.490692, 47.992043, 54.876461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323228, -0.359250, -0.875479,
		-0.192118, -0.930785, 0.311014,
		-0.926614, 0.067667, -0.369874,
		48.212708, 48.012344, 54.765499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.591206, 47.254547, 54.833454>,  <48.861340, 47.964977, 55.024410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.591206, 47.254547, 54.833454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.391022, 47.520760, 54.611961>,  <48.270912, 47.680485, 54.479065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.391022, 47.520760, 54.611961>,  <48.591206, 47.254547, 54.833454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.391022, 47.520760, 54.611961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272409, -0.486053, -0.830389,
		-0.821790, -0.566413, 0.061952,
		-0.500455, 0.665529, -0.553729,
		48.240887, 47.720417, 54.445843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.241512, 46.886703, 54.270351>,  <48.591206, 47.254547, 54.833454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.241512, 46.886703, 54.270351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.257072, 47.258812, 54.124428>,  <48.266407, 47.482075, 54.036873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.257072, 47.258812, 54.124428>,  <48.241512, 46.886703, 54.270351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.257072, 47.258812, 54.124428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410391, -0.347749, -0.843000,
		-0.911080, -0.116922, -0.395301,
		0.038901, 0.930269, -0.364811,
		48.268742, 47.537891, 54.014984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.992928, 46.789555, 53.621765>,  <48.241512, 46.886703, 54.270351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.992928, 46.789555, 53.621765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.181732, 47.141785, 53.604813>,  <48.295013, 47.353123, 53.594643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.181732, 47.141785, 53.604813>,  <47.992928, 46.789555, 53.621765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.181732, 47.141785, 53.604813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486173, -0.300097, -0.820717,
		-0.735421, 0.366782, -0.569761,
		0.472008, 0.880575, -0.042378,
		48.323334, 47.405956, 53.592098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.963467, 47.043674, 52.905922>,  <47.992928, 46.789555, 53.621765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.963467, 47.043674, 52.905922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.268509, 47.261940, 53.044876>,  <48.451534, 47.392899, 53.128246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.268509, 47.261940, 53.044876>,  <47.963467, 47.043674, 52.905922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.268509, 47.261940, 53.044876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593638, -0.377060, -0.710929,
		-0.256947, 0.748380, -0.611478,
		0.762608, 0.545668, 0.347382,
		48.497292, 47.425640, 53.149090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.278866, 47.517578, 52.356075>,  <47.963467, 47.043674, 52.905922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.278866, 47.517578, 52.356075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.571350, 47.467628, 52.624325>,  <48.746841, 47.437660, 52.785275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.571350, 47.467628, 52.624325>,  <48.278866, 47.517578, 52.356075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.571350, 47.467628, 52.624325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601415, -0.345939, -0.720157,
		0.321925, 0.929910, -0.177853,
		0.731208, -0.124873, 0.670628,
		48.790710, 47.430168, 52.825512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.862377, 47.702648, 51.957108>,  <48.278866, 47.517578, 52.356075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.862377, 47.702648, 51.957108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.037750, 47.539536, 52.277481>,  <49.142975, 47.441669, 52.469704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.037750, 47.539536, 52.277481>,  <48.862377, 47.702648, 51.957108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.037750, 47.539536, 52.277481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812422, -0.201310, -0.547216,
		0.384380, 0.890611, 0.243031,
		0.438432, -0.407782, 0.800931,
		49.169281, 47.417202, 52.517761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.527676, 47.938713, 52.018459>,  <48.862377, 47.702648, 51.957108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.527676, 47.938713, 52.018459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.510612, 47.584038, 52.202618>,  <49.500374, 47.371235, 52.313114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.510612, 47.584038, 52.202618>,  <49.527676, 47.938713, 52.018459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.510612, 47.584038, 52.202618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699368, -0.355589, -0.620033,
		0.713488, 0.295539, 0.635289,
		-0.042657, -0.886687, 0.460399,
		49.497814, 47.318031, 52.340736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.133701, 47.770027, 51.906948>,  <49.527676, 47.938713, 52.018459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.133701, 47.770027, 51.906948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.978897, 47.426491, 52.041180>,  <49.886013, 47.220367, 52.121719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.978897, 47.426491, 52.041180>,  <50.133701, 47.770027, 51.906948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.978897, 47.426491, 52.041180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647286, -0.512238, -0.564475,
		0.656690, -0.001246, 0.754160,
		-0.387013, -0.858842, 0.335575,
		49.862793, 47.168839, 52.141853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.681831, 47.383049, 52.116131>,  <50.133701, 47.770027, 51.906948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.681831, 47.383049, 52.116131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.387695, 47.123962, 52.036400>,  <50.211212, 46.968510, 51.988560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.387695, 47.123962, 52.036400>,  <50.681831, 47.383049, 52.116131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.387695, 47.123962, 52.036400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582172, -0.453190, -0.675052,
		0.346907, -0.612441, 0.710333,
		-0.735345, -0.647715, -0.199331,
		50.167091, 46.929649, 51.976601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.075333, 46.689182, 51.953999>,  <50.681831, 47.383049, 52.116131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.075333, 46.689182, 51.953999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.707909, 46.681625, 51.796062>,  <50.487453, 46.677090, 51.701302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.707909, 46.681625, 51.796062>,  <51.075333, 46.689182, 51.953999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.707909, 46.681625, 51.796062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357530, -0.465740, -0.809481,
		-0.168597, -0.884720, 0.434563,
		-0.918557, -0.018893, -0.394836,
		50.432343, 46.675957, 51.677612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.947773, 45.936806, 51.736481>,  <51.075333, 46.689182, 51.953999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.947773, 45.936806, 51.736481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.696014, 46.167763, 51.528450>,  <50.544960, 46.306335, 51.403633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.696014, 46.167763, 51.528450>,  <50.947773, 45.936806, 51.736481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.696014, 46.167763, 51.528450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219261, -0.510115, -0.831690,
		-0.745510, -0.637494, 0.194464,
		-0.629396, 0.577394, -0.520073,
		50.507195, 46.340981, 51.372429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.587807, 45.514278, 51.323544>,  <50.947773, 45.936806, 51.736481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.587807, 45.514278, 51.323544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.547966, 45.873466, 51.152084>,  <50.524063, 46.088978, 51.049210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.547966, 45.873466, 51.152084>,  <50.587807, 45.514278, 51.323544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.547966, 45.873466, 51.152084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066905, -0.423769, -0.903296,
		-0.992775, -0.118649, -0.017869,
		-0.099603, 0.897966, -0.428645,
		50.518085, 46.142857, 51.023491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.306702, 45.318481, 50.673664>,  <50.587807, 45.514278, 51.323544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.306702, 45.318481, 50.673664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.422150, 45.697029, 50.615593>,  <50.491421, 45.924160, 50.580750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.422150, 45.697029, 50.615593>,  <50.306702, 45.318481, 50.673664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.422150, 45.697029, 50.615593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179802, -0.202513, -0.962632,
		-0.940408, 0.251735, -0.228610,
		0.288625, 0.946371, -0.145182,
		50.508736, 45.980942, 50.572037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.862770, 45.412224, 50.107105>,  <50.306702, 45.318481, 50.673664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.862770, 45.412224, 50.107105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.165024, 45.673004, 50.132347>,  <50.346375, 45.829472, 50.147491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.165024, 45.673004, 50.132347>,  <49.862770, 45.412224, 50.107105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.165024, 45.673004, 50.132347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256033, -0.205318, -0.944612,
		-0.602880, 0.729938, -0.322065,
		0.755634, 0.651947, 0.063106,
		50.391712, 45.868587, 50.151279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.828617, 45.828423, 49.441696>,  <49.862770, 45.412224, 50.107105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.828617, 45.828423, 49.441696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.200874, 45.862679, 49.584000>,  <50.424229, 45.883232, 49.669384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.200874, 45.862679, 49.584000>,  <49.828617, 45.828423, 49.441696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.200874, 45.862679, 49.584000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365078, -0.283316, -0.886820,
		0.024848, 0.955195, -0.294931,
		0.930645, 0.085637, 0.355761,
		50.480068, 45.888371, 49.690727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.237202, 46.260159, 48.908829>,  <49.828617, 45.828423, 49.441696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.237202, 46.260159, 48.908829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.483589, 46.031425, 49.125565>,  <50.631420, 45.894184, 49.255608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.483589, 46.031425, 49.125565>,  <50.237202, 46.260159, 48.908829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.483589, 46.031425, 49.125565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458885, -0.298616, -0.836811,
		0.640319, 0.764091, 0.078468,
		0.615968, -0.571834, 0.541840,
		50.668381, 45.859875, 49.288116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.807785, 46.318504, 48.583900>,  <50.237202, 46.260159, 48.908829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.807785, 46.318504, 48.583900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.873375, 45.994553, 48.809189>,  <50.912727, 45.800182, 48.944363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.873375, 45.994553, 48.809189>,  <50.807785, 46.318504, 48.583900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.873375, 45.994553, 48.809189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435922, -0.452685, -0.777849,
		0.884921, 0.373065, 0.278814,
		0.163973, -0.809876, 0.563217,
		50.922565, 45.751591, 48.978153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.490276, 46.108212, 48.389294>,  <50.807785, 46.318504, 48.583900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.490276, 46.108212, 48.389294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.302773, 45.781326, 48.523415>,  <51.190269, 45.585194, 48.603886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.302773, 45.781326, 48.523415>,  <51.490276, 46.108212, 48.389294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.302773, 45.781326, 48.523415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423229, -0.540971, -0.726792,
		0.775332, -0.198783, 0.599455,
		-0.468762, -0.817212, 0.335301,
		51.162144, 45.536163, 48.624004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.057491, 45.625221, 48.407158>,  <51.490276, 46.108212, 48.389294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.057491, 45.625221, 48.407158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.705956, 45.435524, 48.386276>,  <51.495033, 45.321705, 48.373749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.705956, 45.435524, 48.386276>,  <52.057491, 45.625221, 48.407158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.705956, 45.435524, 48.386276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352560, -0.571809, -0.740767,
		0.321457, -0.669422, 0.669731,
		-0.878844, -0.474245, -0.052200,
		51.442303, 45.293251, 48.370617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.264793, 45.000244, 48.107677>,  <52.057491, 45.625221, 48.407158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.264793, 45.000244, 48.107677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.867668, 44.958687, 48.083904>,  <51.629395, 44.933754, 48.069641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.867668, 44.958687, 48.083904>,  <52.264793, 45.000244, 48.107677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.867668, 44.958687, 48.083904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113430, -0.658282, -0.744176,
		0.038190, -0.745568, 0.665334,
		-0.992811, -0.103889, -0.059430,
		51.569824, 44.927521, 48.066074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.157883, 44.313087, 48.009811>,  <52.264793, 45.000244, 48.107677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.157883, 44.313087, 48.009811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.820038, 44.480804, 47.876652>,  <51.617332, 44.581436, 47.796757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.820038, 44.480804, 47.876652>,  <52.157883, 44.313087, 48.009811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.820038, 44.480804, 47.876652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125471, -0.759504, -0.638287,
		-0.520465, -0.497338, 0.694097,
		-0.844614, 0.419295, -0.332894,
		51.566654, 44.606594, 47.776783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.684837, 43.788929, 47.923004>,  <52.157883, 44.313087, 48.009811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.684837, 43.788929, 47.923004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.579712, 44.080925, 47.670643>,  <51.516636, 44.256123, 47.519226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.579712, 44.080925, 47.670643>,  <51.684837, 43.788929, 47.923004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.579712, 44.080925, 47.670643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000441, -0.653798, -0.756669,
		-0.964848, -0.199138, 0.171503,
		-0.262810, 0.729995, -0.630903,
		51.500870, 44.299923, 47.481373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.333347, 43.492752, 47.436199>,  <51.684837, 43.788929, 47.923004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.333347, 43.492752, 47.436199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.413948, 43.834335, 47.244305>,  <51.462307, 44.039288, 47.129166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.413948, 43.834335, 47.244305>,  <51.333347, 43.492752, 47.436199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.413948, 43.834335, 47.244305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247785, -0.518296, -0.818518,
		-0.947629, 0.046057, -0.316034,
		0.201498, 0.853960, -0.479741,
		51.474396, 44.090523, 47.100384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.064537, 43.360149, 46.837513>,  <51.333347, 43.492752, 47.436199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.064537, 43.360149, 46.837513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.299561, 43.672943, 46.754303>,  <51.440575, 43.860619, 46.704376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.299561, 43.672943, 46.754303>,  <51.064537, 43.360149, 46.837513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.299561, 43.672943, 46.754303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358332, -0.481943, -0.799580,
		-0.725517, 0.395257, -0.563380,
		0.587557, 0.781986, -0.208025,
		51.475826, 43.907539, 46.691895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.829277, 43.690098, 46.189987>,  <51.064537, 43.360149, 46.837513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.829277, 43.690098, 46.189987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.220680, 43.756760, 46.238556>,  <51.455524, 43.796757, 46.267696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.220680, 43.756760, 46.238556>,  <50.829277, 43.690098, 46.189987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.220680, 43.756760, 46.238556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182208, -0.423189, -0.887531,
		-0.096526, 0.890583, -0.444460,
		0.978511, 0.166654, 0.121423,
		51.514233, 43.806755, 46.274982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.235352, 43.991482, 45.833191>,  <50.829277, 43.690098, 46.189987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.235352, 43.991482, 45.833191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.868919, 44.053841, 45.685410>,  <49.649059, 44.091255, 45.596741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.868919, 44.053841, 45.685410>,  <50.235352, 43.991482, 45.833191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.868919, 44.053841, 45.685410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263404, 0.460752, 0.847541,
		0.302361, 0.873729, -0.381019,
		-0.916077, 0.155901, -0.369457,
		49.594097, 44.100613, 45.574574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.111332, 44.755569, 45.860168>,  <50.235352, 43.991482, 45.833191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.111332, 44.755569, 45.860168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.759888, 44.566628, 45.832096>,  <49.549023, 44.453262, 45.815254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.759888, 44.566628, 45.832096>,  <50.111332, 44.755569, 45.860168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.759888, 44.566628, 45.832096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378631, 0.599519, 0.705135,
		-0.291000, 0.646111, -0.705592,
		-0.878611, -0.472353, -0.070177,
		49.496304, 44.424923, 45.811043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.639507, 45.294529, 45.895645>,  <50.111332, 44.755569, 45.860168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.639507, 45.294529, 45.895645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.401382, 44.980354, 45.963394>,  <49.258507, 44.791847, 46.004044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.401382, 44.980354, 45.963394>,  <49.639507, 45.294529, 45.895645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.401382, 44.980354, 45.963394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538218, 0.546320, 0.641761,
		-0.596594, 0.290891, -0.747969,
		-0.595313, -0.785441, 0.169368,
		49.222790, 44.744720, 46.014206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.035656, 45.543861, 45.750576>,  <49.639507, 45.294529, 45.895645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.035656, 45.543861, 45.750576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.012390, 45.233284, 46.001575>,  <48.998432, 45.046940, 46.152176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.012390, 45.233284, 46.001575>,  <49.035656, 45.543861, 45.750576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.012390, 45.233284, 46.001575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570483, 0.541676, 0.617363,
		-0.819248, -0.322071, -0.474451,
		-0.058164, -0.776439, 0.627503,
		48.994942, 45.000351, 46.189827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.390640, 45.525944, 45.999901>,  <49.035656, 45.543861, 45.750576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.390640, 45.525944, 45.999901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.532372, 45.262115, 46.265057>,  <48.617409, 45.103821, 46.424149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.532372, 45.262115, 46.265057>,  <48.390640, 45.525944, 45.999901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.532372, 45.262115, 46.265057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650998, 0.334911, 0.681202,
		-0.671308, -0.672908, -0.310710,
		0.354326, -0.659568, 0.662890,
		48.638668, 45.064243, 46.463924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.758759, 45.250179, 46.381210>,  <48.390640, 45.525944, 45.999901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.758759, 45.250179, 46.381210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.085564, 45.217491, 46.609528>,  <48.281647, 45.197876, 46.746517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.085564, 45.217491, 46.609528>,  <47.758759, 45.250179, 46.381210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.085564, 45.217491, 46.609528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473984, 0.468542, 0.745525,
		-0.328369, -0.879653, 0.344070,
		0.817015, -0.081724, 0.570796,
		48.330669, 45.192974, 46.780766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.539673, 44.899223, 46.962082>,  <47.758759, 45.250179, 46.381210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.539673, 44.899223, 46.962082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.880974, 45.051262, 47.104908>,  <48.085754, 45.142483, 47.190601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.880974, 45.051262, 47.104908>,  <47.539673, 44.899223, 46.962082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.880974, 45.051262, 47.104908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457174, 0.215760, 0.862809,
		0.250909, -0.899431, 0.357867,
		0.853251, 0.380094, 0.357060,
		48.136948, 45.165291, 47.212025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.613400, 44.650169, 47.706352>,  <47.539673, 44.899223, 46.962082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.613400, 44.650169, 47.706352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.842163, 44.975410, 47.662937>,  <47.979424, 45.170555, 47.636890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.842163, 44.975410, 47.662937>,  <47.613400, 44.650169, 47.706352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.842163, 44.975410, 47.662937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262874, 0.306994, 0.914687,
		0.777054, -0.494590, 0.389317,
		0.571913, 0.813102, -0.108536,
		48.013737, 45.219341, 47.630375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.002289, 44.745358, 48.377251>,  <47.613400, 44.650169, 47.706352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.002289, 44.745358, 48.377251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.003075, 45.110512, 48.213966>,  <48.003548, 45.329605, 48.115997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.003075, 45.110512, 48.213966>,  <48.002289, 44.745358, 48.377251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.003075, 45.110512, 48.213966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187864, 0.401281, 0.896482,
		0.982193, 0.074929, 0.172286,
		0.001963, 0.912885, -0.408211,
		48.003662, 45.384377, 48.091503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.322392, 45.187771, 48.857788>,  <48.002289, 44.745358, 48.377251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.322392, 45.187771, 48.857788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.099976, 45.408928, 48.609550>,  <47.966526, 45.541622, 48.460609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.099976, 45.408928, 48.609550>,  <48.322392, 45.187771, 48.857788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.099976, 45.408928, 48.609550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244388, 0.604899, 0.757873,
		0.794417, 0.573071, -0.201227,
		-0.556037, 0.552890, -0.620593,
		47.933163, 45.574795, 48.423374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.363022, 45.716232, 49.208206>,  <48.322392, 45.187771, 48.857788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.363022, 45.716232, 49.208206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.074554, 45.807243, 48.946472>,  <47.901474, 45.861851, 48.789433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.074554, 45.807243, 48.946472>,  <48.363022, 45.716232, 49.208206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.074554, 45.807243, 48.946472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280613, 0.767632, 0.576193,
		0.633387, 0.599144, -0.489742,
		-0.721164, 0.227525, -0.654335,
		47.858204, 45.875500, 48.750172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.490597, 46.415928, 49.053131>,  <48.363022, 45.716232, 49.208206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.490597, 46.415928, 49.053131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.104759, 46.330612, 48.991081>,  <47.873257, 46.279423, 48.953854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.104759, 46.330612, 48.991081>,  <48.490597, 46.415928, 49.053131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.104759, 46.330612, 48.991081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258911, 0.653822, 0.710973,
		-0.050224, 0.725963, -0.685897,
		-0.964595, -0.213294, -0.155122,
		47.815380, 46.266624, 48.944546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.108295, 47.050835, 48.964737>,  <48.490597, 46.415928, 49.053131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.108295, 47.050835, 48.964737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829193, 46.779495, 49.056808>,  <47.661732, 46.616692, 49.112049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829193, 46.779495, 49.056808>,  <48.108295, 47.050835, 48.964737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.829193, 46.779495, 49.056808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434673, 0.656353, 0.616653,
		-0.569379, 0.330224, -0.752834,
		-0.697758, -0.678346, 0.230174,
		47.619865, 46.575993, 49.125862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.481354, 47.433914, 48.920887>,  <48.108295, 47.050835, 48.964737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.481354, 47.433914, 48.920887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.379631, 47.119911, 49.146843>,  <47.318596, 46.931511, 49.282417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.379631, 47.119911, 49.146843>,  <47.481354, 47.433914, 48.920887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.379631, 47.119911, 49.146843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507333, 0.605553, 0.613122,
		-0.823372, -0.130665, -0.552255,
		-0.254307, -0.785005, 0.564886,
		47.303337, 46.884411, 49.316307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.782806, 47.571739, 49.118645>,  <47.481354, 47.433914, 48.920887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.782806, 47.571739, 49.118645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.944168, 47.316597, 49.381065>,  <47.040985, 47.163513, 49.538517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.944168, 47.316597, 49.381065>,  <46.782806, 47.571739, 49.118645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.944168, 47.316597, 49.381065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434986, 0.497101, 0.750785,
		-0.805016, -0.588245, -0.076924,
		0.403406, -0.637854, 0.656052,
		47.065189, 47.125240, 49.577881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.236717, 47.459404, 49.601814>,  <46.782806, 47.571739, 49.118645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.236717, 47.459404, 49.601814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.568886, 47.345718, 49.793491>,  <46.768188, 47.277508, 49.908497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.568886, 47.345718, 49.793491>,  <46.236717, 47.459404, 49.601814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.568886, 47.345718, 49.793491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350625, 0.401819, 0.845934,
		-0.432972, -0.870498, 0.234027,
		0.830420, -0.284210, 0.479195,
		46.818012, 47.260456, 49.937248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.105068, 47.127586, 50.247185>,  <46.236717, 47.459404, 49.601814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.105068, 47.127586, 50.247185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474579, 47.274803, 50.289486>,  <46.696285, 47.363132, 50.314865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474579, 47.274803, 50.289486>,  <46.105068, 47.127586, 50.247185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.474579, 47.274803, 50.289486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199975, 0.228138, 0.952871,
		0.326571, -0.901387, 0.284347,
		0.923775, 0.368042, 0.105752,
		46.751713, 47.385216, 50.321213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.235310, 46.931469, 50.898743>,  <46.105068, 47.127586, 50.247185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.235310, 46.931469, 50.898743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.493164, 47.226494, 50.818295>,  <46.647877, 47.403507, 50.770027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.493164, 47.226494, 50.818295>,  <46.235310, 46.931469, 50.898743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.493164, 47.226494, 50.818295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132595, 0.366956, 0.920740,
		0.752900, -0.566878, 0.334351,
		0.644640, 0.737558, -0.201116,
		46.686558, 47.447762, 50.757961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.812592, 46.898335, 51.452110>,  <46.235310, 46.931469, 50.898743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.812592, 46.898335, 51.452110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.810699, 47.270569, 51.305695>,  <46.809563, 47.493908, 51.217846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.810699, 47.270569, 51.305695>,  <46.812592, 46.898335, 51.452110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.810699, 47.270569, 51.305695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037900, 0.365947, 0.929863,
		0.999270, -0.009472, -0.037001,
		-0.004732, 0.930587, -0.366039,
		46.809280, 47.549744, 51.195881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.250671, 47.318600, 51.832294>,  <46.812592, 46.898335, 51.452110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.250671, 47.318600, 51.832294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104614, 47.676598, 51.729809>,  <47.016979, 47.891396, 51.668316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104614, 47.676598, 51.729809>,  <47.250671, 47.318600, 51.832294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.104614, 47.676598, 51.729809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350951, 0.122578, 0.928336,
		0.862266, 0.428898, 0.269341,
		-0.365146, 0.894998, -0.256217,
		46.995071, 47.945099, 51.652943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.456429, 47.951683, 52.369301>,  <47.250671, 47.318600, 51.832294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.456429, 47.951683, 52.369301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.126656, 48.053848, 52.167282>,  <46.928791, 48.115147, 52.046070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.126656, 48.053848, 52.167282>,  <47.456429, 47.951683, 52.369301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.126656, 48.053848, 52.167282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479730, 0.158081, 0.863058,
		0.300272, 0.953822, -0.007800,
		-0.824437, 0.255410, -0.505044,
		46.879326, 48.130470, 52.015770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.176514, 48.544971, 52.789837>,  <47.456429, 47.951683, 52.369301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.176514, 48.544971, 52.789837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.891609, 48.418686, 52.539078>,  <46.720665, 48.342915, 52.388622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.891609, 48.418686, 52.539078>,  <47.176514, 48.544971, 52.789837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.891609, 48.418686, 52.539078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642714, -0.065645, 0.763288,
		-0.282136, 0.946580, -0.156159,
		-0.712262, -0.315717, -0.626901,
		46.677929, 48.323971, 52.351006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.580750, 49.011009, 52.978130>,  <47.176514, 48.544971, 52.789837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.580750, 49.011009, 52.978130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429207, 48.701500, 52.775055>,  <46.338280, 48.515797, 52.653210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429207, 48.701500, 52.775055>,  <46.580750, 49.011009, 52.978130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429207, 48.701500, 52.775055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520757, -0.275251, 0.808114,
		-0.765036, 0.570543, -0.298665,
		-0.378856, -0.773769, -0.507691,
		46.315552, 48.469368, 52.622749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.854664, 49.131588, 53.065948>,  <46.580750, 49.011009, 52.978130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.854664, 49.131588, 53.065948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956596, 48.752167, 52.990784>,  <46.017754, 48.524513, 52.945686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956596, 48.752167, 52.990784>,  <45.854664, 49.131588, 53.065948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.956596, 48.752167, 52.990784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595780, -0.307072, 0.742128,
		-0.761649, -0.077163, -0.643379,
		0.254829, -0.948553, -0.187908,
		46.033047, 48.467602, 52.934410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259274, 48.785748, 53.010925>,  <45.854664, 49.131588, 53.065948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259274, 48.785748, 53.010925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526817, 48.502937, 53.102779>,  <45.687344, 48.333252, 53.157890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526817, 48.502937, 53.102779>,  <45.259274, 48.785748, 53.010925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526817, 48.502937, 53.102779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621299, -0.362062, 0.694909,
		-0.408182, -0.607468, -0.681447,
		0.668861, -0.707031, 0.229632,
		45.727474, 48.290829, 53.171669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861439, 48.119213, 53.034000>,  <45.259274, 48.785748, 53.010925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861439, 48.119213, 53.034000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190224, 48.021248, 53.239677>,  <45.387493, 47.962471, 53.363083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190224, 48.021248, 53.239677>,  <44.861439, 48.119213, 53.034000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190224, 48.021248, 53.239677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569028, -0.391408, 0.723192,
		0.024141, -0.887028, -0.461085,
		0.821964, -0.244911, 0.514193,
		45.436813, 47.947773, 53.393936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796951, 47.524681, 53.307518>,  <44.861439, 48.119213, 53.034000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796951, 47.524681, 53.307518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073242, 47.681030, 53.550865>,  <45.239017, 47.774841, 53.696873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073242, 47.681030, 53.550865>,  <44.796951, 47.524681, 53.307518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073242, 47.681030, 53.550865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437159, -0.444444, 0.781896,
		0.576008, -0.806031, -0.136116,
		0.690729, 0.390875, 0.608367,
		45.280460, 47.798294, 53.733376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977982, 47.040371, 53.819637>,  <44.796951, 47.524681, 53.307518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977982, 47.040371, 53.819637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110641, 47.375511, 53.993084>,  <45.190239, 47.576595, 54.097153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110641, 47.375511, 53.993084>,  <44.977982, 47.040371, 53.819637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110641, 47.375511, 53.993084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131566, -0.414058, 0.900692,
		0.934184, -0.355762, -0.027089,
		0.331649, 0.837848, 0.433613,
		45.210136, 47.626865, 54.123169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346954, 46.794937, 54.365730>,  <44.977982, 47.040371, 53.819637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346954, 46.794937, 54.365730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.268353, 47.176010, 54.458492>,  <45.221191, 47.404655, 54.514149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.268353, 47.176010, 54.458492>,  <45.346954, 46.794937, 54.365730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.268353, 47.176010, 54.458492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268251, -0.279725, 0.921844,
		0.943096, 0.118934, 0.310524,
		-0.196500, 0.952685, 0.231903,
		45.209404, 47.461815, 54.528065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672554, 46.905537, 55.001438>,  <45.346954, 46.794937, 54.365730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672554, 46.905537, 55.001438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.365318, 47.161316, 54.987892>,  <45.180977, 47.314785, 54.979767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.365318, 47.161316, 54.987892>,  <45.672554, 46.905537, 55.001438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.365318, 47.161316, 54.987892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201725, -0.191439, 0.960551,
		0.607741, 0.744617, 0.276035,
		-0.768087, 0.639450, -0.033862,
		45.134892, 47.353149, 54.977734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695892, 47.236481, 55.707916>,  <45.672554, 46.905537, 55.001438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695892, 47.236481, 55.707916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335930, 47.373802, 55.600346>,  <45.119953, 47.456196, 55.535805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335930, 47.373802, 55.600346>,  <45.695892, 47.236481, 55.707916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335930, 47.373802, 55.600346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284182, 0.006108, 0.958751,
		0.330782, 0.939206, 0.092063,
		-0.899902, 0.343300, -0.268925,
		45.065960, 47.476791, 55.519669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.521038, 47.804607, 56.138783>,  <45.695892, 47.236481, 55.707916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.521038, 47.804607, 56.138783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.155502, 47.708687, 56.007694>,  <44.936180, 47.651134, 55.929043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.155502, 47.708687, 56.007694>,  <45.521038, 47.804607, 56.138783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.155502, 47.708687, 56.007694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336661, -0.003905, 0.941618,
		-0.227079, 0.970814, -0.077163,
		-0.913835, -0.239800, -0.327722,
		44.881351, 47.636745, 55.909378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.019821, 48.317284, 56.452789>,  <45.521038, 47.804607, 56.138783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.019821, 48.317284, 56.452789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802795, 47.990646, 56.374001>,  <44.672581, 47.794662, 56.326725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802795, 47.990646, 56.374001>,  <45.019821, 48.317284, 56.452789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802795, 47.990646, 56.374001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406714, 0.050200, 0.912175,
		-0.734990, 0.575023, -0.359357,
		-0.542562, -0.816595, -0.196974,
		44.640026, 47.745667, 56.314907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397148, 48.566048, 56.624863>,  <45.019821, 48.317284, 56.452789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397148, 48.566048, 56.624863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336018, 48.171112, 56.607872>,  <44.299339, 47.934151, 56.597679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336018, 48.171112, 56.607872>,  <44.397148, 48.566048, 56.624863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336018, 48.171112, 56.607872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533656, 0.046277, 0.844435,
		-0.831779, 0.151717, -0.533972,
		-0.152825, -0.987340, -0.042473,
		44.290169, 47.874908, 56.595131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716694, 48.501801, 56.797356>,  <44.397148, 48.566048, 56.624863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716694, 48.501801, 56.797356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866707, 48.137589, 56.866966>,  <43.956715, 47.919060, 56.908733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866707, 48.137589, 56.866966>,  <43.716694, 48.501801, 56.797356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866707, 48.137589, 56.866966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468679, -0.024269, 0.883035,
		-0.799806, -0.412732, -0.435847,
		0.375035, -0.910529, 0.174029,
		43.979218, 47.864429, 56.919174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100697, 48.065666, 57.023056>,  <43.716694, 48.501801, 56.797356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100697, 48.065666, 57.023056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419666, 47.861008, 57.151009>,  <43.611050, 47.738213, 57.227779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419666, 47.861008, 57.151009>,  <43.100697, 48.065666, 57.023056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419666, 47.861008, 57.151009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482988, -0.223442, 0.846638,
		-0.361707, -0.829632, -0.425299,
		0.797427, -0.511650, 0.319882,
		43.658894, 47.707512, 57.246975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856037, 47.677643, 57.487064>,  <43.100697, 48.065666, 57.023056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856037, 47.677643, 57.487064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243652, 47.630127, 57.573654>,  <43.476219, 47.601616, 57.625607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243652, 47.630127, 57.573654>,  <42.856037, 47.677643, 57.487064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243652, 47.630127, 57.573654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231184, -0.128502, 0.964386,
		-0.086746, -0.984569, -0.151987,
		0.969035, -0.118794, 0.216470,
		43.534363, 47.594490, 57.638596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027416, 46.922668, 57.793133>,  <42.856037, 47.677643, 57.487064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027416, 46.922668, 57.793133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260376, 47.226540, 57.908855>,  <43.400154, 47.408863, 57.978291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260376, 47.226540, 57.908855>,  <43.027416, 46.922668, 57.793133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260376, 47.226540, 57.908855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272281, -0.153038, 0.949969,
		0.765944, -0.632038, 0.117716,
		0.582402, 0.759676, 0.289311,
		43.435097, 47.454441, 57.995647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708046, 46.852688, 58.508587>,  <43.027416, 46.922668, 57.793133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708046, 46.852688, 58.508587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389175, 46.619041, 58.447510>,  <42.197853, 46.478855, 58.410866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389175, 46.619041, 58.447510>,  <42.708046, 46.852688, 58.508587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389175, 46.619041, 58.447510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320269, -0.194746, -0.927093,
		0.511793, -0.787962, 0.342322,
		-0.797180, -0.584114, -0.152690,
		42.150021, 46.443806, 58.401703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958073, 46.146400, 58.293350>,  <42.708046, 46.852688, 58.508587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958073, 46.146400, 58.293350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584484, 46.196014, 58.159294>,  <42.360332, 46.225784, 58.078861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584484, 46.196014, 58.159294>,  <42.958073, 46.146400, 58.293350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584484, 46.196014, 58.159294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278156, -0.336451, -0.899683,
		-0.224350, -0.933497, 0.279733,
		-0.933968, 0.124035, -0.335141,
		42.304295, 46.233227, 58.058750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817551, 45.574512, 57.914539>,  <42.958073, 46.146400, 58.293350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817551, 45.574512, 57.914539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545914, 45.830132, 57.770065>,  <42.382931, 45.983501, 57.683380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545914, 45.830132, 57.770065>,  <42.817551, 45.574512, 57.914539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545914, 45.830132, 57.770065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166863, -0.344770, -0.923737,
		-0.714835, -0.687572, 0.127498,
		-0.679093, 0.639045, -0.361184,
		42.342186, 46.021847, 57.661709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396370, 45.094799, 57.467976>,  <42.817551, 45.574512, 57.914539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396370, 45.094799, 57.467976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332863, 45.474319, 57.358753>,  <42.294758, 45.702034, 57.293221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332863, 45.474319, 57.358753>,  <42.396370, 45.094799, 57.467976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332863, 45.474319, 57.358753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008807, -0.275195, -0.961348,
		-0.987276, -0.155040, 0.035337,
		-0.158772, 0.948805, -0.273059,
		42.285233, 45.758961, 57.276836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940750, 44.951401, 56.967705>,  <42.396370, 45.094799, 57.467976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940750, 44.951401, 56.967705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098026, 45.313850, 56.905289>,  <42.192390, 45.531319, 56.867840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098026, 45.313850, 56.905289>,  <41.940750, 44.951401, 56.967705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098026, 45.313850, 56.905289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140880, -0.108335, -0.984082,
		-0.908602, 0.408911, 0.085058,
		0.393187, 0.906121, -0.156041,
		42.215984, 45.585686, 56.858475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611591, 45.181889, 56.342808>,  <41.940750, 44.951401, 56.967705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611591, 45.181889, 56.342808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920956, 45.434090, 56.369045>,  <42.106575, 45.585411, 56.384789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920956, 45.434090, 56.369045>,  <41.611591, 45.181889, 56.342808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920956, 45.434090, 56.369045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102013, -0.021665, -0.994547,
		-0.625641, 0.775886, -0.081075,
		0.773412, 0.630500, 0.065596,
		42.152981, 45.623241, 56.388725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431381, 45.786999, 55.943005>,  <41.611591, 45.181889, 56.342808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431381, 45.786999, 55.943005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828323, 45.742409, 55.964203>,  <42.066486, 45.715656, 55.976921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828323, 45.742409, 55.964203>,  <41.431381, 45.786999, 55.943005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828323, 45.742409, 55.964203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052855, -0.004193, -0.998593,
		0.111541, 0.993758, 0.001731,
		0.992353, -0.111476, 0.052993,
		42.126030, 45.708965, 55.980103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637760, 46.187317, 55.297112>,  <41.431381, 45.786999, 55.943005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637760, 46.187317, 55.297112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987473, 46.027794, 55.407799>,  <42.197300, 45.932079, 55.474213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987473, 46.027794, 55.407799>,  <41.637760, 46.187317, 55.297112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987473, 46.027794, 55.407799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336005, 0.085793, -0.937945,
		0.350322, 0.913011, 0.209010,
		0.874285, -0.398811, 0.276721,
		42.249760, 45.908150, 55.490814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251144, 46.644497, 55.069042>,  <41.637760, 46.187317, 55.297112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251144, 46.644497, 55.069042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381615, 46.268204, 55.106186>,  <42.459896, 46.042427, 55.128471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381615, 46.268204, 55.106186>,  <42.251144, 46.644497, 55.069042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381615, 46.268204, 55.106186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405286, 0.050426, -0.912798,
		0.854020, 0.335368, 0.397716,
		0.326179, -0.940737, 0.092855,
		42.479469, 45.985981, 55.134041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883953, 46.699146, 54.695610>,  <42.251144, 46.644497, 55.069042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883953, 46.699146, 54.695610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788979, 46.311394, 54.720657>,  <42.731995, 46.078743, 54.735687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788979, 46.311394, 54.720657>,  <42.883953, 46.699146, 54.695610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788979, 46.311394, 54.720657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458231, -0.168613, -0.872694,
		0.856533, -0.178513, 0.484236,
		-0.237436, -0.969383, 0.062623,
		42.717747, 46.020580, 54.739445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490925, 46.470665, 54.425709>,  <42.883953, 46.699146, 54.695610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490925, 46.470665, 54.425709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244976, 46.155762, 54.407173>,  <43.097404, 45.966820, 54.396053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244976, 46.155762, 54.407173>,  <43.490925, 46.470665, 54.425709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244976, 46.155762, 54.407173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356203, -0.224821, -0.906959,
		0.703597, -0.574172, 0.418662,
		-0.614874, -0.787263, -0.046338,
		43.060513, 45.919582, 54.393272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880989, 45.790035, 54.231014>,  <43.490925, 46.470665, 54.425709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880989, 45.790035, 54.231014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494194, 45.730659, 54.148163>,  <43.262115, 45.695034, 54.098454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494194, 45.730659, 54.148163>,  <43.880989, 45.790035, 54.231014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494194, 45.730659, 54.148163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244202, -0.307597, -0.919646,
		0.072798, -0.939867, 0.333691,
		-0.966988, -0.148437, -0.207125,
		43.204098, 45.686127, 54.086025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912647, 45.206913, 53.832947>,  <43.880989, 45.790035, 54.231014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912647, 45.206913, 53.832947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554234, 45.357750, 53.739212>,  <43.339184, 45.448254, 53.682972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554234, 45.357750, 53.739212>,  <43.912647, 45.206913, 53.832947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554234, 45.357750, 53.739212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200046, -0.128285, -0.971352,
		-0.396355, -0.917247, 0.039512,
		-0.896038, 0.377096, -0.234338,
		43.285423, 45.470879, 53.668911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624554, 44.737873, 53.439873>,  <43.912647, 45.206913, 53.832947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.624554, 44.737873, 53.439873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463356, 45.091934, 53.346832>,  <43.366638, 45.304371, 53.291008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463356, 45.091934, 53.346832>,  <43.624554, 44.737873, 53.439873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463356, 45.091934, 53.346832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143948, -0.189685, -0.971236,
		-0.903812, -0.424884, -0.050974,
		-0.402993, 0.885152, -0.232600,
		43.342457, 45.357479, 53.277054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254868, 44.638496, 52.824959>,  <43.624554, 44.737873, 53.439873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254868, 44.638496, 52.824959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290001, 45.036942, 52.827843>,  <43.311081, 45.276009, 52.829575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290001, 45.036942, 52.827843>,  <43.254868, 44.638496, 52.824959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290001, 45.036942, 52.827843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178588, -0.008623, -0.983886,
		-0.979995, 0.087710, -0.178651,
		0.087837, 0.996109, 0.007214,
		43.316353, 45.335773, 52.830006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992874, 44.837463, 52.195999>,  <43.254868, 44.638496, 52.824959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992874, 44.837463, 52.195999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205517, 45.150177, 52.326355>,  <43.333103, 45.337807, 52.404568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205517, 45.150177, 52.326355>,  <42.992874, 44.837463, 52.195999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205517, 45.150177, 52.326355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271879, 0.206895, -0.939828,
		-0.802171, 0.588220, -0.102565,
		0.531605, 0.781788, 0.325890,
		43.364998, 45.384712, 52.424122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937244, 45.396065, 51.680801>,  <42.992874, 44.837463, 52.195999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937244, 45.396065, 51.680801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260765, 45.488632, 51.897057>,  <43.454876, 45.544174, 52.026810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260765, 45.488632, 51.897057>,  <42.937244, 45.396065, 51.680801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260765, 45.488632, 51.897057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495158, 0.227998, -0.838353,
		-0.317274, 0.945760, 0.069817,
		0.808799, 0.231417, 0.540639,
		43.503407, 45.558056, 52.059250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119881, 46.082294, 51.541237>,  <42.937244, 45.396065, 51.680801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119881, 46.082294, 51.541237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448277, 45.883720, 51.654037>,  <43.645313, 45.764576, 51.721718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448277, 45.883720, 51.654037>,  <43.119881, 46.082294, 51.541237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448277, 45.883720, 51.654037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439063, 0.233227, -0.867657,
		0.364966, 0.836155, 0.409444,
		0.820989, -0.496438, 0.282005,
		43.694572, 45.734791, 51.738640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691803, 46.432770, 51.306007>,  <43.119881, 46.082294, 51.541237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691803, 46.432770, 51.306007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823093, 46.062363, 51.380585>,  <43.901867, 45.840118, 51.425331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823093, 46.062363, 51.380585>,  <43.691803, 46.432770, 51.306007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823093, 46.062363, 51.380585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554618, 0.029154, -0.831594,
		0.764636, 0.376351, 0.523155,
		0.328224, -0.926018, 0.186439,
		43.921562, 45.784557, 51.436516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396420, 46.473866, 51.181606>,  <43.691803, 46.432770, 51.306007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396420, 46.473866, 51.181606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347996, 46.076889, 51.173615>,  <44.318939, 45.838703, 51.168819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347996, 46.076889, 51.173615>,  <44.396420, 46.473866, 51.181606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347996, 46.076889, 51.173615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647773, -0.063736, -0.759162,
		0.752152, -0.104848, 0.650595,
		-0.121063, -0.992444, -0.019979,
		44.311676, 45.779156, 51.167622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108158, 46.218311, 51.123676>,  <44.396420, 46.473866, 51.181606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108158, 46.218311, 51.123676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873760, 45.918381, 51.000801>,  <44.733120, 45.738422, 50.927074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873760, 45.918381, 51.000801>,  <45.108158, 46.218311, 51.123676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873760, 45.918381, 51.000801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573683, -0.116165, -0.810798,
		0.572275, -0.651354, 0.498236,
		-0.585994, -0.749829, -0.307192,
		44.697964, 45.693432, 50.908642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549316, 45.658253, 50.906330>,  <45.108158, 46.218311, 51.123676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549316, 45.658253, 50.906330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212265, 45.571411, 50.709213>,  <45.010036, 45.519306, 50.590942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212265, 45.571411, 50.709213>,  <45.549316, 45.658253, 50.906330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212265, 45.571411, 50.709213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534590, -0.227166, -0.814008,
		0.064778, -0.949348, 0.307478,
		-0.842625, -0.217105, -0.492796,
		44.959476, 45.506279, 50.561375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.745636, 45.145931, 50.444515>,  <45.549316, 45.658253, 50.906330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.745636, 45.145931, 50.444515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392159, 45.249062, 50.288254>,  <45.180073, 45.310940, 50.194496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392159, 45.249062, 50.288254>,  <45.745636, 45.145931, 50.444515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392159, 45.249062, 50.288254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281564, -0.373905, -0.883695,
		-0.373905, -0.890911, 0.257824,
		0.883695, -0.257824, 0.390654,
		45.127048, 45.326408, 50.171059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407467, 44.530407, 50.156696>,  <45.745636, 45.145931, 50.444515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407467, 44.530407, 50.156696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239521, 44.843788, 49.973431>,  <45.138752, 45.031818, 49.863472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239521, 44.843788, 49.973431>,  <45.407467, 44.530407, 50.156696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239521, 44.843788, 49.973431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381224, -0.305886, -0.872412,
		-0.823640, -0.540959, -0.170240,
		-0.419865, 0.783453, -0.458166,
		45.113560, 45.078823, 49.835979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064121, 44.209572, 49.573917>,  <45.407467, 44.530407, 50.156696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064121, 44.209572, 49.573917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074017, 44.599487, 49.485218>,  <45.079956, 44.833435, 49.431999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074017, 44.599487, 49.485218>,  <45.064121, 44.209572, 49.573917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074017, 44.599487, 49.485218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264150, -0.220311, -0.938982,
		-0.964164, -0.035344, -0.262942,
		0.024742, 0.974789, -0.221752,
		45.081440, 44.891926, 49.418694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.799824, 44.179176, 48.961643>,  <45.064121, 44.209572, 49.573917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.799824, 44.179176, 48.961643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989464, 44.531044, 48.976624>,  <45.103249, 44.742165, 48.985611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989464, 44.531044, 48.976624>,  <44.799824, 44.179176, 48.961643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989464, 44.531044, 48.976624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172764, -0.051235, -0.983630,
		-0.863354, 0.472811, -0.176267,
		0.474102, 0.879673, 0.037451,
		45.131695, 44.794945, 48.987858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490246, 44.634743, 48.405533>,  <44.799824, 44.179176, 48.961643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490246, 44.634743, 48.405533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854332, 44.765244, 48.507565>,  <45.072784, 44.843544, 48.568783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854332, 44.765244, 48.507565>,  <44.490246, 44.634743, 48.405533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854332, 44.765244, 48.507565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245426, 0.071155, -0.966800,
		-0.333568, 0.942602, -0.015303,
		0.910219, 0.326250, 0.255075,
		45.127399, 44.863117, 48.584087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584843, 45.208206, 47.969681>,  <44.490246, 44.634743, 48.405533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584843, 45.208206, 47.969681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948746, 45.116402, 48.108047>,  <45.167088, 45.061321, 48.191067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948746, 45.116402, 48.108047>,  <44.584843, 45.208206, 47.969681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948746, 45.116402, 48.108047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340560, -0.063888, -0.938050,
		0.237391, 0.971207, 0.020039,
		0.909761, -0.229509, 0.345921,
		45.221672, 45.047550, 48.211823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.974041, 45.560486, 47.523418>,  <44.584843, 45.208206, 47.969681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.974041, 45.560486, 47.523418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193478, 45.274246, 47.696373>,  <45.325138, 45.102501, 47.800148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193478, 45.274246, 47.696373>,  <44.974041, 45.560486, 47.523418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193478, 45.274246, 47.696373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447681, -0.185367, -0.874769,
		0.706138, 0.673463, 0.218672,
		0.548590, -0.715603, 0.432391,
		45.358055, 45.059566, 47.826092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637691, 45.684238, 47.244915>,  <44.974041, 45.560486, 47.523418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637691, 45.684238, 47.244915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644890, 45.306313, 47.375759>,  <45.649208, 45.079556, 47.454266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644890, 45.306313, 47.375759>,  <45.637691, 45.684238, 47.244915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644890, 45.306313, 47.375759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514098, -0.271856, -0.813510,
		0.857543, 0.182807, 0.480835,
		0.017998, -0.944815, 0.327109,
		45.650288, 45.022869, 47.473892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211628, 45.378498, 46.911083>,  <45.637691, 45.684238, 47.244915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211628, 45.378498, 46.911083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.019455, 45.049919, 47.033985>,  <45.904152, 44.852772, 47.107727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.019455, 45.049919, 47.033985>,  <46.211628, 45.378498, 46.911083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019455, 45.049919, 47.033985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083822, -0.391736, -0.916251,
		0.873017, -0.414442, 0.257058,
		-0.480432, -0.821450, 0.307253,
		45.875324, 44.803486, 47.126160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612339, 44.834866, 46.664322>,  <46.211628, 45.378498, 46.911083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612339, 44.834866, 46.664322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.252571, 44.682487, 46.750042>,  <46.036709, 44.591061, 46.801476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.252571, 44.682487, 46.750042>,  <46.612339, 44.834866, 46.664322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252571, 44.682487, 46.750042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032247, -0.431120, -0.901718,
		0.435897, -0.817933, 0.375473,
		-0.899419, -0.380948, 0.214300,
		45.982746, 44.568203, 46.814331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.706902, 44.124599, 46.546890>,  <46.612339, 44.834866, 46.664322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.706902, 44.124599, 46.546890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.315163, 44.201904, 46.523121>,  <46.080120, 44.248287, 46.508858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.315163, 44.201904, 46.523121>,  <46.706902, 44.124599, 46.546890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.315163, 44.201904, 46.523121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057575, -0.548275, -0.834314,
		-0.193824, -0.813660, 0.548078,
		-0.979345, 0.193266, -0.059423,
		46.021358, 44.259884, 46.505295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.318169, 43.445507, 46.522049>,  <46.706902, 44.124599, 46.546890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.318169, 43.445507, 46.522049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.077049, 43.723686, 46.365593>,  <45.932377, 43.890594, 46.271721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.077049, 43.723686, 46.365593>,  <46.318169, 43.445507, 46.522049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.077049, 43.723686, 46.365593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152088, -0.581376, -0.799294,
		-0.783266, -0.422324, 0.456221,
		-0.602797, 0.695446, -0.391141,
		45.896210, 43.932320, 46.248249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.841095, 42.986023, 46.234859>,  <46.318169, 43.445507, 46.522049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.841095, 42.986023, 46.234859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.751549, 43.333809, 46.058712>,  <45.697819, 43.542480, 45.953026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.751549, 43.333809, 46.058712>,  <45.841095, 42.986023, 46.234859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.751549, 43.333809, 46.058712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300771, -0.491411, -0.817345,
		-0.927049, -0.050528, 0.371520,
		-0.223868, 0.869461, -0.440365,
		45.684387, 43.594646, 45.926601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.129623, 42.975430, 45.930508>,  <45.841095, 42.986023, 46.234859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.129623, 42.975430, 45.930508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358124, 43.252449, 45.754307>,  <45.495224, 43.418663, 45.648586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358124, 43.252449, 45.754307>,  <45.129623, 42.975430, 45.930508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358124, 43.252449, 45.754307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276603, -0.342860, -0.897740,
		-0.772762, 0.634681, -0.004299,
		0.571253, 0.692551, -0.440504,
		45.529499, 43.460213, 45.622154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722057, 43.249977, 45.387920>,  <45.129623, 42.975430, 45.930508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722057, 43.249977, 45.387920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088493, 43.355682, 45.267296>,  <45.308357, 43.419106, 45.194923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088493, 43.355682, 45.267296>,  <44.722057, 43.249977, 45.387920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088493, 43.355682, 45.267296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158213, -0.452824, -0.877450,
		-0.368430, 0.851537, -0.373019,
		0.916094, 0.264262, -0.301558,
		45.363323, 43.434959, 45.176826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649197, 43.588123, 44.734943>,  <44.722057, 43.249977, 45.387920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649197, 43.588123, 44.734943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.028473, 43.463806, 44.761292>,  <45.256039, 43.389217, 44.777100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.028473, 43.463806, 44.761292>,  <44.649197, 43.588123, 44.734943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028473, 43.463806, 44.761292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061997, -0.384376, -0.921093,
		0.311589, 0.869289, -0.383730,
		0.948192, -0.310792, 0.065873,
		45.312931, 43.370567, 44.781052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982243, 43.843056, 44.204498>,  <44.649197, 43.588123, 44.734943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982243, 43.843056, 44.204498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229424, 43.548637, 44.315037>,  <45.377731, 43.371986, 44.381359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229424, 43.548637, 44.315037>,  <44.982243, 43.843056, 44.204498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229424, 43.548637, 44.315037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005182, -0.347663, -0.937605,
		0.786198, 0.580828, -0.211026,
		0.617953, -0.736050, 0.276342,
		45.414810, 43.327824, 44.397938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655155, 43.791462, 43.725609>,  <44.982243, 43.843056, 44.204498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655155, 43.791462, 43.725609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588806, 43.444626, 43.913502>,  <45.548996, 43.236526, 44.026237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588806, 43.444626, 43.913502>,  <45.655155, 43.791462, 43.725609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588806, 43.444626, 43.913502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033067, -0.471171, -0.881422,
		0.985592, -0.161739, 0.049484,
		-0.165876, -0.867087, 0.469730,
		45.539043, 43.184502, 44.054420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<45.208622, 42.181812, 53.429035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.556381, 42.373131, 53.478645>,  <45.765038, 42.487923, 53.508411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.556381, 42.373131, 53.478645>,  <45.208622, 42.181812, 53.429035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.556381, 42.373131, 53.478645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220247, -0.150434, -0.963774,
		-0.442311, 0.865219, -0.236130,
		0.869398, 0.478295, 0.124023,
		45.817200, 42.516621, 53.515854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.287384, 42.588432, 52.801250>,  <45.208622, 42.181812, 53.429035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.287384, 42.588432, 52.801250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.646721, 42.527969, 52.966240>,  <45.862324, 42.491692, 53.065235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.646721, 42.527969, 52.966240>,  <45.287384, 42.588432, 52.801250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646721, 42.527969, 52.966240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378415, -0.210624, -0.901354,
		0.223127, 0.965809, -0.132010,
		0.898341, -0.151161, 0.412473,
		45.916222, 42.482620, 53.089981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754875, 42.929344, 52.319828>,  <45.287384, 42.588432, 52.801250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754875, 42.929344, 52.319828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.988403, 42.662758, 52.505295>,  <46.128521, 42.502808, 52.616573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.988403, 42.662758, 52.505295>,  <45.754875, 42.929344, 52.319828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988403, 42.662758, 52.505295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575994, -0.062477, -0.815063,
		0.572178, 0.742915, 0.347404,
		0.583818, -0.666464, 0.463662,
		46.163548, 42.462818, 52.644394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.462036, 43.199577, 52.308754>,  <45.754875, 42.929344, 52.319828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.462036, 43.199577, 52.308754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.496864, 42.805672, 52.368954>,  <46.517761, 42.569328, 52.405075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.496864, 42.805672, 52.368954>,  <46.462036, 43.199577, 52.308754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496864, 42.805672, 52.368954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726155, -0.040685, -0.686326,
		0.681995, 0.169051, 0.711551,
		0.087075, -0.984767, 0.150504,
		46.522987, 42.510242, 52.414104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239632, 43.016312, 52.482185>,  <46.462036, 43.199577, 52.308754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239632, 43.016312, 52.482185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.047417, 42.708931, 52.313156>,  <46.932087, 42.524502, 52.211739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.047417, 42.708931, 52.313156>,  <47.239632, 43.016312, 52.482185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.047417, 42.708931, 52.313156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767601, -0.135526, -0.626435,
		0.424118, -0.625388, 0.654991,
		-0.480534, -0.768454, -0.422570,
		46.903255, 42.478394, 52.186386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.811863, 42.670006, 52.053879>,  <47.239632, 43.016312, 52.482185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.811863, 42.670006, 52.053879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.479805, 42.472900, 51.949535>,  <47.280571, 42.354637, 51.886929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.479805, 42.472900, 51.949535>,  <47.811863, 42.670006, 52.053879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.479805, 42.472900, 51.949535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504321, -0.464140, -0.728172,
		0.237745, -0.736041, 0.633814,
		-0.830143, -0.492765, -0.260854,
		47.230762, 42.325069, 51.871281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.993645, 41.962685, 52.033604>,  <47.811863, 42.670006, 52.053879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.993645, 41.962685, 52.033604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.673805, 42.013611, 51.798847>,  <47.481903, 42.044167, 51.657993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.673805, 42.013611, 51.798847>,  <47.993645, 41.962685, 52.033604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.673805, 42.013611, 51.798847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420006, -0.579944, -0.698040,
		-0.429233, -0.804646, 0.410248,
		-0.799596, 0.127315, -0.586887,
		47.433926, 42.051804, 51.622780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.957626, 41.361195, 51.631168>,  <47.993645, 41.962685, 52.033604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.957626, 41.361195, 51.631168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.745857, 41.631729, 51.426319>,  <47.618793, 41.794052, 51.303410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.745857, 41.631729, 51.426319>,  <47.957626, 41.361195, 51.631168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.745857, 41.631729, 51.426319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348447, -0.377034, -0.858155,
		-0.773493, -0.632778, -0.036057,
		-0.529427, 0.676341, -0.512123,
		47.587029, 41.834633, 51.272682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.880348, 40.916279, 51.034519>,  <47.957626, 41.361195, 51.631168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.880348, 40.916279, 51.034519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.762596, 41.291641, 50.962147>,  <47.691944, 41.516857, 50.918724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.762596, 41.291641, 50.962147>,  <47.880348, 40.916279, 51.034519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.762596, 41.291641, 50.962147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140996, -0.144601, -0.979393,
		-0.945232, -0.313820, -0.089745,
		-0.294376, 0.938407, -0.180929,
		47.674282, 41.573162, 50.907867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.311768, 40.903835, 50.614990>,  <47.880348, 40.916279, 51.034519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.311768, 40.903835, 50.614990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.480827, 41.260170, 50.548317>,  <47.582264, 41.473972, 50.508312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.480827, 41.260170, 50.548317>,  <47.311768, 40.903835, 50.614990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.480827, 41.260170, 50.548317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112376, -0.234006, -0.965719,
		-0.899301, 0.389426, -0.199010,
		0.422645, 0.890836, -0.166680,
		47.607620, 41.527420, 50.498314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.065487, 41.072613, 49.960155>,  <47.311768, 40.903835, 50.614990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.065487, 41.072613, 49.960155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.372185, 41.327286, 49.992989>,  <47.556206, 41.480087, 50.012688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.372185, 41.327286, 49.992989>,  <47.065487, 41.072613, 49.960155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.372185, 41.327286, 49.992989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163455, -0.069979, -0.984066,
		-0.620789, 0.767948, -0.157724,
		0.766748, 0.636678, 0.082083,
		47.602211, 41.518288, 50.017612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.966991, 41.530563, 49.436638>,  <47.065487, 41.072613, 49.960155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.966991, 41.530563, 49.436638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.355515, 41.538727, 49.531414>,  <47.588631, 41.543625, 49.588280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.355515, 41.538727, 49.531414>,  <46.966991, 41.530563, 49.436638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.355515, 41.538727, 49.531414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237687, -0.050523, -0.970027,
		-0.007827, 0.998514, -0.053925,
		0.971310, 0.020409, 0.236938,
		47.646908, 41.544849, 49.602497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.267693, 42.043041, 48.966221>,  <46.966991, 41.530563, 49.436638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.267693, 42.043041, 48.966221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.560089, 41.804108, 49.098183>,  <47.735527, 41.660748, 49.177361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.560089, 41.804108, 49.098183>,  <47.267693, 42.043041, 48.966221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.560089, 41.804108, 49.098183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395314, -0.023369, -0.918249,
		0.556212, 0.801651, 0.219052,
		0.730996, -0.597335, 0.329902,
		47.779388, 41.624908, 49.197155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.838959, 42.433502, 48.686245>,  <47.267693, 42.043041, 48.966221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.838959, 42.433502, 48.686245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.977448, 42.064072, 48.752148>,  <48.060539, 41.842415, 48.791691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.977448, 42.064072, 48.752148>,  <47.838959, 42.433502, 48.686245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.977448, 42.064072, 48.752148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381684, -0.021761, -0.924037,
		0.857000, 0.382806, 0.344979,
		0.346219, -0.923572, 0.164760,
		48.081314, 41.786999, 48.801575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.516888, 42.400177, 48.349682>,  <47.838959, 42.433502, 48.686245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.516888, 42.400177, 48.349682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.419403, 42.014191, 48.388557>,  <48.360912, 41.782600, 48.411880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.419403, 42.014191, 48.388557>,  <48.516888, 42.400177, 48.349682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.419403, 42.014191, 48.388557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415593, -0.194451, -0.888522,
		0.876291, -0.176153, 0.448423,
		-0.243712, -0.964966, 0.097187,
		48.346291, 41.724701, 48.417713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.109234, 42.061089, 48.108959>,  <48.516888, 42.400177, 48.349682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.109234, 42.061089, 48.108959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.812401, 41.793411, 48.093517>,  <48.634300, 41.632805, 48.084251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.812401, 41.793411, 48.093517>,  <49.109234, 42.061089, 48.108959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.812401, 41.793411, 48.093517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226596, -0.196241, -0.954014,
		0.630843, -0.716708, 0.297264,
		-0.742086, -0.669192, -0.038606,
		48.589775, 41.592655, 48.081936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.423775, 41.406609, 47.976925>,  <49.109234, 42.061089, 48.108959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.423775, 41.406609, 47.976925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.042961, 41.375557, 47.858532>,  <48.814472, 41.356926, 47.787498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.042961, 41.375557, 47.858532>,  <49.423775, 41.406609, 47.976925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.042961, 41.375557, 47.858532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305975, -0.251356, -0.918259,
		-0.003109, -0.964776, 0.263053,
		-0.952034, -0.077632, -0.295979,
		48.757351, 41.352268, 47.769737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.468880, 40.876472, 47.476063>,  <49.423775, 41.406609, 47.976925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.468880, 40.876472, 47.476063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.127457, 41.075447, 47.414089>,  <48.922604, 41.194832, 47.376904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.127457, 41.075447, 47.414089>,  <49.468880, 40.876472, 47.476063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.127457, 41.075447, 47.414089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233083, 0.098624, -0.967443,
		-0.465960, -0.861877, -0.200125,
		-0.853554, 0.497436, -0.154934,
		48.871391, 41.224678, 47.367607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.097000, 40.546799, 46.939339>,  <49.468880, 40.876472, 47.476063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.097000, 40.546799, 46.939339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.926109, 40.908447, 46.941650>,  <48.823574, 41.125439, 46.943039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.926109, 40.908447, 46.941650>,  <49.097000, 40.546799, 46.939339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.926109, 40.908447, 46.941650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156534, 0.080261, -0.984406,
		-0.890489, -0.419663, -0.175816,
		-0.427230, 0.904124, 0.005780,
		48.797939, 41.179684, 46.943386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.736683, 40.542480, 46.297497>,  <49.097000, 40.546799, 46.939339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.736683, 40.542480, 46.297497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.738358, 40.932037, 46.388283>,  <48.739361, 41.165771, 46.442753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.738358, 40.932037, 46.388283>,  <48.736683, 40.542480, 46.297497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.738358, 40.932037, 46.388283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105469, 0.225267, -0.968572,
		-0.994414, 0.027993, -0.101772,
		0.004188, 0.973895, 0.226961,
		48.739613, 41.224205, 46.456371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.221844, 40.806335, 45.882477>,  <48.736683, 40.542480, 46.297497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.221844, 40.806335, 45.882477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.475868, 41.106361, 45.956345>,  <48.628281, 41.286377, 46.000664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.475868, 41.106361, 45.956345>,  <48.221844, 40.806335, 45.882477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.475868, 41.106361, 45.956345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112434, 0.326269, -0.938567,
		-0.764238, 0.575282, 0.291533,
		0.635058, 0.750066, 0.184666,
		48.666386, 41.331383, 46.011745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.862003, 41.366909, 45.558956>,  <48.221844, 40.806335, 45.882477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.862003, 41.366909, 45.558956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.238167, 41.483467, 45.629063>,  <48.463863, 41.553402, 45.671127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.238167, 41.483467, 45.629063>,  <47.862003, 41.366909, 45.558956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.238167, 41.483467, 45.629063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033295, 0.434033, -0.900282,
		-0.338411, 0.852468, 0.398467,
		0.940409, 0.291399, 0.175264,
		48.520290, 41.570889, 45.681641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.123573, 41.091904, 45.630966>,  <47.862003, 41.366909, 45.558956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.123573, 41.091904, 45.630966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.796928, 40.910995, 45.487518>,  <46.600941, 40.802452, 45.401451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.796928, 40.910995, 45.487518>,  <47.123573, 41.091904, 45.630966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.796928, 40.910995, 45.487518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344294, -0.116995, 0.931544,
		-0.463264, 0.884175, -0.060174,
		-0.816608, -0.452268, -0.358616,
		46.551945, 40.775314, 45.379932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.631226, 41.308002, 46.071289>,  <47.123573, 41.091904, 45.630966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.631226, 41.308002, 46.071289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.454895, 40.990517, 45.903629>,  <46.349098, 40.800026, 45.803036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.454895, 40.990517, 45.903629>,  <46.631226, 41.308002, 46.071289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.454895, 40.990517, 45.903629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497415, -0.172684, 0.850152,
		-0.747161, 0.583259, -0.318683,
		-0.440828, -0.793718, -0.419145,
		46.322647, 40.752399, 45.777885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979931, 41.459248, 46.116768>,  <46.631226, 41.308002, 46.071289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979931, 41.459248, 46.116768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.956718, 41.061378, 46.082680>,  <45.942791, 40.822659, 46.062225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.956718, 41.061378, 46.082680>,  <45.979931, 41.459248, 46.116768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.956718, 41.061378, 46.082680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500996, -0.044823, 0.864288,
		-0.863501, 0.092855, -0.495725,
		-0.058033, -0.994670, -0.085225,
		45.939308, 40.762978, 46.057114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.267345, 41.257839, 46.235935>,  <45.979931, 41.459248, 46.116768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.267345, 41.257839, 46.235935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.473320, 40.922447, 46.307255>,  <45.596905, 40.721210, 46.350048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.473320, 40.922447, 46.307255>,  <45.267345, 41.257839, 46.235935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473320, 40.922447, 46.307255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609454, -0.211822, 0.764001,
		-0.602831, -0.502080, -0.620090,
		0.514938, -0.838479, 0.178301,
		45.627800, 40.670902, 46.360744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750492, 40.701416, 46.476040>,  <45.267345, 41.257839, 46.235935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750492, 40.701416, 46.476040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.118614, 40.597755, 46.593266>,  <45.339485, 40.535557, 46.663601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.118614, 40.597755, 46.593266>,  <44.750492, 40.701416, 46.476040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118614, 40.597755, 46.593266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359152, -0.262689, 0.895547,
		-0.155097, -0.929428, -0.334828,
		0.920301, -0.259151, 0.293064,
		45.394703, 40.520008, 46.681183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690342, 40.078541, 46.679195>,  <44.750492, 40.701416, 46.476040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690342, 40.078541, 46.679195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.015614, 40.212425, 46.869652>,  <45.210777, 40.292755, 46.983925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.015614, 40.212425, 46.869652>,  <44.690342, 40.078541, 46.679195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015614, 40.212425, 46.869652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425713, -0.215787, 0.878751,
		0.396874, -0.917280, -0.032981,
		0.813178, 0.334713, 0.476139,
		45.259567, 40.312840, 47.012493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775826, 39.597702, 47.195580>,  <44.690342, 40.078541, 46.679195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775826, 39.597702, 47.195580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.000229, 39.906807, 47.314308>,  <45.134872, 40.092270, 47.385544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.000229, 39.906807, 47.314308>,  <44.775826, 39.597702, 47.195580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.000229, 39.906807, 47.314308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335955, -0.115165, 0.934811,
		0.756573, -0.624156, 0.195006,
		0.561009, 0.772766, 0.296819,
		45.168533, 40.138638, 47.403355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179958, 39.361813, 47.795753>,  <44.775826, 39.597702, 47.195580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179958, 39.361813, 47.795753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.188835, 39.761124, 47.817505>,  <45.194160, 40.000710, 47.830555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.188835, 39.761124, 47.817505>,  <45.179958, 39.361813, 47.795753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188835, 39.761124, 47.817505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405013, -0.040749, 0.913402,
		0.914041, -0.042293, 0.403410,
		0.022192, 0.998274, 0.054376,
		45.195492, 40.060604, 47.833817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.670143, 39.540176, 48.345020>,  <45.179958, 39.361813, 47.795753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.670143, 39.540176, 48.345020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.457130, 39.875313, 48.296986>,  <45.329323, 40.076397, 48.268166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.457130, 39.875313, 48.296986>,  <45.670143, 39.540176, 48.345020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457130, 39.875313, 48.296986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093995, 0.082463, 0.992152,
		0.841172, 0.539644, 0.034839,
		-0.532536, 0.837845, -0.120090,
		45.297371, 40.126667, 48.260960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.985504, 40.017178, 48.929493>,  <45.670143, 39.540176, 48.345020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.985504, 40.017178, 48.929493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.633804, 40.183258, 48.836079>,  <45.422787, 40.282906, 48.780029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.633804, 40.183258, 48.836079>,  <45.985504, 40.017178, 48.929493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633804, 40.183258, 48.836079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227177, 0.065442, 0.971652,
		0.418711, 0.907374, 0.036784,
		-0.879245, 0.415198, -0.233536,
		45.370029, 40.307819, 48.766018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.973587, 40.662502, 49.286430>,  <45.985504, 40.017178, 48.929493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.973587, 40.662502, 49.286430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.589134, 40.587242, 49.205605>,  <45.358463, 40.542088, 49.157108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.589134, 40.587242, 49.205605>,  <45.973587, 40.662502, 49.286430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589134, 40.587242, 49.205605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255846, 0.331801, 0.907993,
		-0.103793, 0.924396, -0.367041,
		-0.961129, -0.188150, -0.202064,
		45.300797, 40.530796, 49.144985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.561642, 41.338360, 49.300396>,  <45.973587, 40.662502, 49.286430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.561642, 41.338360, 49.300396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.303707, 41.038696, 49.360977>,  <45.148945, 40.858898, 49.397327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.303707, 41.038696, 49.360977>,  <45.561642, 41.338360, 49.300396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303707, 41.038696, 49.360977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413378, 0.508520, 0.755332,
		-0.642884, 0.424460, -0.637601,
		-0.644840, -0.749161, 0.151457,
		45.110256, 40.813950, 49.406414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967396, 41.686275, 49.347237>,  <45.561642, 41.338360, 49.300396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967396, 41.686275, 49.347237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.908096, 41.322647, 49.502991>,  <44.872517, 41.104469, 49.596443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.908096, 41.322647, 49.502991>,  <44.967396, 41.686275, 49.347237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908096, 41.322647, 49.502991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369481, 0.416133, 0.830853,
		-0.917337, -0.020699, -0.397573,
		-0.148246, -0.909068, 0.389382,
		44.863621, 41.049927, 49.619804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276501, 41.711464, 49.559715>,  <44.967396, 41.686275, 49.347237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276501, 41.711464, 49.559715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.448990, 41.419075, 49.771271>,  <44.552483, 41.243641, 49.898205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.448990, 41.419075, 49.771271>,  <44.276501, 41.711464, 49.559715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448990, 41.419075, 49.771271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403472, 0.368082, 0.837691,
		-0.807005, -0.574623, -0.136202,
		0.431223, -0.730975, 0.528888,
		44.578358, 41.199783, 49.929935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747280, 41.440281, 49.991470>,  <44.276501, 41.711464, 49.559715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747280, 41.440281, 49.991470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.070374, 41.292236, 50.175026>,  <44.264229, 41.203411, 50.285160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.070374, 41.292236, 50.175026>,  <43.747280, 41.440281, 49.991470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070374, 41.292236, 50.175026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394678, 0.238742, 0.887261,
		-0.437943, -0.897786, 0.046765,
		0.807735, -0.370113, 0.458892,
		44.312695, 41.181202, 50.312695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401901, 41.198582, 50.580017>,  <43.747280, 41.440281, 49.991470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401901, 41.198582, 50.580017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.783581, 41.190331, 50.699398>,  <44.012589, 41.185379, 50.771027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.783581, 41.190331, 50.699398>,  <43.401901, 41.198582, 50.580017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783581, 41.190331, 50.699398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282370, 0.267487, 0.921259,
		-0.098839, -0.963341, 0.249411,
		0.954200, -0.020631, 0.298457,
		44.069839, 41.184143, 50.788937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421436, 40.835037, 51.304302>,  <43.401901, 41.198582, 50.580017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421436, 40.835037, 51.304302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.751247, 41.060715, 51.287125>,  <43.949135, 41.196121, 51.276817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.751247, 41.060715, 51.287125>,  <43.421436, 40.835037, 51.304302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751247, 41.060715, 51.287125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115981, 0.242806, 0.963117,
		0.553814, -0.789132, 0.265635,
		0.824524, 0.564196, -0.042945,
		43.998604, 41.229973, 51.274242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694336, 40.667561, 51.851437>,  <43.421436, 40.835037, 51.304302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694336, 40.667561, 51.851437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.861328, 41.016708, 51.750397>,  <43.961521, 41.226196, 51.689774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.861328, 41.016708, 51.750397>,  <43.694336, 40.667561, 51.851437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861328, 41.016708, 51.750397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061355, 0.250267, 0.966231,
		0.906613, -0.418879, 0.050926,
		0.417479, 0.872873, -0.252596,
		43.986572, 41.278572, 51.674618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<44.149094, 40.860313, 52.461060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.107319, 41.198860, 52.252155>,  <44.082256, 41.401989, 52.126812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.107319, 41.198860, 52.252155>,  <44.149094, 40.860313, 52.461060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107319, 41.198860, 52.252155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073382, 0.517143, 0.852748,
		0.991821, 0.127380, 0.008101,
		-0.104434, 0.846367, -0.522261,
		44.075989, 41.452770, 52.095478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563339, 41.268044, 52.741390>,  <44.149094, 40.860313, 52.461060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563339, 41.268044, 52.741390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.298889, 41.506386, 52.559021>,  <44.140221, 41.649391, 52.449600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.298889, 41.506386, 52.559021>,  <44.563339, 41.268044, 52.741390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298889, 41.506386, 52.559021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134349, 0.503837, 0.853287,
		0.738150, 0.625381, -0.253046,
		-0.661124, 0.595857, -0.455926,
		44.100552, 41.685143, 52.422241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739174, 41.933609, 52.921902>,  <44.563339, 41.268044, 52.741390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739174, 41.933609, 52.921902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.354691, 41.949661, 52.812744>,  <44.124001, 41.959293, 52.747250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.354691, 41.949661, 52.812744>,  <44.739174, 41.933609, 52.921902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354691, 41.949661, 52.812744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179714, 0.659416, 0.729982,
		0.209242, 0.750706, -0.626624,
		-0.961208, 0.040130, -0.272890,
		44.066330, 41.961700, 52.730877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524162, 42.666862, 53.008175>,  <44.739174, 41.933609, 52.921902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524162, 42.666862, 53.008175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.176575, 42.469055, 53.015560>,  <43.968021, 42.350372, 53.019993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.176575, 42.469055, 53.015560>,  <44.524162, 42.666862, 53.008175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176575, 42.469055, 53.015560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213376, 0.408094, 0.887654,
		-0.446496, 0.767406, -0.460140,
		-0.868972, -0.494517, 0.018466,
		43.915882, 42.320702, 53.021099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007790, 43.159893, 53.226357>,  <44.524162, 42.666862, 53.008175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007790, 43.159893, 53.226357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.837944, 42.803574, 53.291069>,  <43.736038, 42.589783, 53.329895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.837944, 42.803574, 53.291069>,  <44.007790, 43.159893, 53.226357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837944, 42.803574, 53.291069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146109, 0.243769, 0.958764,
		-0.893507, 0.383467, -0.233662,
		-0.424614, -0.890803, 0.161781,
		43.710560, 42.536331, 53.339603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405315, 43.307388, 53.524048>,  <44.007790, 43.159893, 53.226357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405315, 43.307388, 53.524048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.454552, 42.922974, 53.623047>,  <43.484093, 42.692326, 53.682446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.454552, 42.922974, 53.623047>,  <43.405315, 43.307388, 53.524048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454552, 42.922974, 53.623047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203200, 0.219706, 0.954169,
		-0.971369, -0.167742, -0.168239,
		0.123091, -0.961037, 0.247501,
		43.491478, 42.634663, 53.697296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872463, 43.152122, 53.909599>,  <43.405315, 43.307388, 53.524048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872463, 43.152122, 53.909599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.117500, 42.852684, 54.011055>,  <43.264523, 42.673019, 54.071930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.117500, 42.852684, 54.011055>,  <42.872463, 43.152122, 53.909599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117500, 42.852684, 54.011055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176350, 0.183362, 0.967098,
		-0.770478, -0.637162, -0.019690,
		0.612588, -0.748601, 0.253640,
		43.301277, 42.628105, 54.087147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479774, 42.650860, 54.366653>,  <42.872463, 43.152122, 53.909599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479774, 42.650860, 54.366653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.863483, 42.568207, 54.443695>,  <43.093708, 42.518616, 54.489922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.863483, 42.568207, 54.443695>,  <42.479774, 42.650860, 54.366653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863483, 42.568207, 54.443695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180645, 0.075451, 0.980650,
		-0.217170, -0.975504, 0.035051,
		0.959273, -0.206636, 0.192605,
		43.151264, 42.506218, 54.501476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457886, 42.262619, 54.923046>,  <42.479774, 42.650860, 54.366653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457886, 42.262619, 54.923046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.833458, 42.400215, 54.926571>,  <43.058804, 42.482773, 54.928688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.833458, 42.400215, 54.926571>,  <42.457886, 42.262619, 54.923046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833458, 42.400215, 54.926571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006634, -0.007519, 0.999950,
		0.344036, -0.938944, -0.004778,
		0.938933, 0.343987, 0.008816,
		43.115139, 42.503410, 54.929214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777267, 41.941212, 55.550861>,  <42.457886, 42.262619, 54.923046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777267, 41.941212, 55.550861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.955444, 42.286659, 55.456429>,  <43.062351, 42.493927, 55.399769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.955444, 42.286659, 55.456429>,  <42.777267, 41.941212, 55.550861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955444, 42.286659, 55.456429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020151, 0.253951, 0.967007,
		0.895082, -0.435506, 0.095719,
		0.445445, 0.863622, -0.236083,
		43.089077, 42.545746, 55.385605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362621, 42.080719, 56.127098>,  <42.777267, 41.941212, 55.550861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362621, 42.080719, 56.127098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.305542, 42.427292, 55.935707>,  <43.271294, 42.635235, 55.820873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.305542, 42.427292, 55.935707>,  <43.362621, 42.080719, 56.127098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305542, 42.427292, 55.935707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058167, 0.489929, 0.869820,
		0.988055, 0.096292, -0.120310,
		-0.142700, 0.866428, -0.478476,
		43.262733, 42.687222, 55.792164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886364, 42.508286, 56.313927>,  <43.362621, 42.080719, 56.127098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886364, 42.508286, 56.313927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.592636, 42.750732, 56.191681>,  <43.416401, 42.896202, 56.118336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.592636, 42.750732, 56.191681>,  <43.886364, 42.508286, 56.313927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592636, 42.750732, 56.191681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017390, 0.433275, 0.901094,
		0.678584, 0.667003, -0.307621,
		-0.734317, 0.606119, -0.305612,
		43.372341, 42.932568, 56.099998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016701, 43.196823, 56.631554>,  <43.886364, 42.508286, 56.313927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016701, 43.196823, 56.631554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.634575, 43.214508, 56.514648>,  <43.405300, 43.225121, 56.444504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.634575, 43.214508, 56.514648>,  <44.016701, 43.196823, 56.631554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634575, 43.214508, 56.514648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261349, 0.335599, 0.905025,
		0.138100, 0.940967, -0.309047,
		-0.955314, 0.044215, -0.292267,
		43.347980, 43.227772, 56.426968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743095, 43.964378, 56.693913>,  <44.016701, 43.196823, 56.631554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743095, 43.964378, 56.693913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.461517, 43.680878, 56.712360>,  <43.292568, 43.510777, 56.723427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.461517, 43.680878, 56.712360>,  <43.743095, 43.964378, 56.693913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461517, 43.680878, 56.712360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421757, 0.469374, 0.775763,
		-0.571469, 0.526648, -0.629336,
		-0.703949, -0.708752, 0.046115,
		43.250332, 43.468250, 56.726196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197182, 44.358925, 56.957684>,  <43.743095, 43.964378, 56.693913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197182, 44.358925, 56.957684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.071156, 43.982330, 57.005569>,  <42.995541, 43.756374, 57.034302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.071156, 43.982330, 57.005569>,  <43.197182, 44.358925, 56.957684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071156, 43.982330, 57.005569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607568, 0.296986, 0.736655,
		-0.729105, 0.159363, -0.665589,
		-0.315066, -0.941489, 0.119711,
		42.976635, 43.699883, 57.041481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517891, 44.414509, 57.106060>,  <43.197182, 44.358925, 56.957684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517891, 44.414509, 57.106060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.606178, 44.050774, 57.247135>,  <42.659153, 43.832535, 57.331779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.606178, 44.050774, 57.247135>,  <42.517891, 44.414509, 57.106060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606178, 44.050774, 57.247135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550075, 0.182551, 0.814919,
		-0.805419, -0.373877, -0.459910,
		0.220722, -0.909335, 0.352691,
		42.672394, 43.777973, 57.352943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854572, 44.171818, 57.392532>,  <42.517891, 44.414509, 57.106060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854572, 44.171818, 57.392532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.149857, 43.961754, 57.561882>,  <42.327026, 43.835716, 57.663494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.149857, 43.961754, 57.561882>,  <41.854572, 44.171818, 57.392532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149857, 43.961754, 57.561882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414712, 0.141687, 0.898854,
		-0.532031, -0.839125, -0.113195,
		0.738212, -0.525162, 0.423378,
		42.371319, 43.804207, 57.688896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528069, 43.831676, 57.904972>,  <41.854572, 44.171818, 57.392532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528069, 43.831676, 57.904972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.910370, 43.789207, 58.014713>,  <42.139751, 43.763725, 58.080559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.910370, 43.789207, 58.014713>,  <41.528069, 43.831676, 57.904972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910370, 43.789207, 58.014713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266966, 0.078767, 0.960482,
		-0.123583, -0.991224, 0.046938,
		0.955749, -0.106169, 0.274357,
		42.197094, 43.757359, 58.097019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502613, 43.457008, 58.433590>,  <41.528069, 43.831676, 57.904972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502613, 43.457008, 58.433590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.865067, 43.620598, 58.476799>,  <42.082539, 43.718750, 58.502724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.865067, 43.620598, 58.476799>,  <41.502613, 43.457008, 58.433590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865067, 43.620598, 58.476799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152287, 0.077159, 0.985320,
		0.394634, -0.909279, 0.132198,
		0.906131, 0.408973, 0.108022,
		42.136906, 43.743290, 58.509205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836697, 43.058586, 58.934315>,  <41.502613, 43.457008, 58.433590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836697, 43.058586, 58.934315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.023579, 43.411606, 58.955612>,  <42.135708, 43.623417, 58.968391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.023579, 43.411606, 58.955612>,  <41.836697, 43.058586, 58.934315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023579, 43.411606, 58.955612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173801, 0.032625, 0.984240,
		0.866899, -0.469095, 0.168630,
		0.467203, 0.882545, 0.053246,
		42.163738, 43.676369, 58.971584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977608, 43.120808, 59.619202>,  <41.836697, 43.058586, 58.934315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977608, 43.120808, 59.619202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.110931, 43.481270, 59.508331>,  <42.190926, 43.697548, 59.441811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.110931, 43.481270, 59.508331>,  <41.977608, 43.120808, 59.619202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110931, 43.481270, 59.508331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100417, 0.258384, 0.960809,
		0.937456, -0.348076, -0.004371,
		0.333305, 0.901155, -0.277176,
		42.210922, 43.751617, 59.425179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739208, 43.227886, 59.924225>,  <41.977608, 43.120808, 59.619202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739208, 43.227886, 59.924225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.522392, 43.558525, 59.863647>,  <42.392303, 43.756908, 59.827301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.522392, 43.558525, 59.863647>,  <42.739208, 43.227886, 59.924225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522392, 43.558525, 59.863647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144539, 0.269233, 0.952167,
		0.827832, 0.494218, -0.265409,
		-0.542035, 0.826596, -0.151446,
		42.359783, 43.806503, 59.818214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083107, 43.700668, 60.414566>,  <42.739208, 43.227886, 59.924225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083107, 43.700668, 60.414566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.712463, 43.795883, 60.298130>,  <42.490078, 43.853012, 60.228268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.712463, 43.795883, 60.298130>,  <43.083107, 43.700668, 60.414566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712463, 43.795883, 60.298130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189088, 0.374165, 0.907880,
		0.325028, 0.896291, -0.301693,
		-0.926608, 0.238040, -0.291092,
		42.434483, 43.867294, 60.210804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937126, 44.410240, 60.714096>,  <43.083107, 43.700668, 60.414566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937126, 44.410240, 60.714096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.587906, 44.247589, 60.606430>,  <42.378376, 44.149998, 60.541832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.587906, 44.247589, 60.606430>,  <42.937126, 44.410240, 60.714096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587906, 44.247589, 60.606430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411637, 0.318620, 0.853836,
		-0.261430, 0.856235, -0.445551,
		-0.873046, -0.406624, -0.269161,
		42.325993, 44.125603, 60.525681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184414, 45.055973, 60.396343>,  <42.937126, 44.410240, 60.714096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184414, 45.055973, 60.396343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.515907, 44.946770, 60.591755>,  <43.714806, 44.881248, 60.709003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.515907, 44.946770, 60.591755>,  <43.184414, 45.055973, 60.396343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515907, 44.946770, 60.591755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500895, -0.027490, -0.865072,
		0.249598, 0.961620, 0.113964,
		0.828737, -0.273004, 0.488532,
		43.764530, 44.864868, 60.738316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558857, 45.134888, 59.814365>,  <43.184414, 45.055973, 60.396343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558857, 45.134888, 59.814365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.799397, 45.010857, 60.108910>,  <43.943718, 44.936440, 60.285637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.799397, 45.010857, 60.108910>,  <43.558857, 45.134888, 59.814365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799397, 45.010857, 60.108910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754385, -0.083272, -0.651129,
		0.263220, 0.947057, 0.183844,
		0.601347, -0.310079, 0.736365,
		43.979801, 44.917831, 60.329819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246647, 45.550323, 59.753410>,  <43.558857, 45.134888, 59.814365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246647, 45.550323, 59.753410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.309570, 45.208267, 59.950989>,  <44.347324, 45.003033, 60.069538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.309570, 45.208267, 59.950989>,  <44.246647, 45.550323, 59.753410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.309570, 45.208267, 59.950989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750535, -0.221554, -0.622585,
		0.641835, 0.468661, 0.606963,
		0.157306, -0.855143, 0.493948,
		44.356762, 44.951725, 60.099174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041309, 45.469154, 59.858566>,  <44.246647, 45.550323, 59.753410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041309, 45.469154, 59.858566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.875671, 45.105286, 59.871422>,  <44.776291, 44.886967, 59.879135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.875671, 45.105286, 59.871422>,  <45.041309, 45.469154, 59.858566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875671, 45.105286, 59.871422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718246, -0.348235, -0.602375,
		0.559152, -0.226356, 0.797566,
		-0.414091, -0.909668, 0.032137,
		44.751446, 44.832386, 59.881062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630466, 45.057636, 59.838459>,  <45.041309, 45.469154, 59.858566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630466, 45.057636, 59.838459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.333344, 44.803848, 59.752968>,  <45.155067, 44.651577, 59.701672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.333344, 44.803848, 59.752968>,  <45.630466, 45.057636, 59.838459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333344, 44.803848, 59.752968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562198, -0.417768, -0.713725,
		0.363547, -0.650321, 0.667021,
		-0.742810, -0.634470, -0.213730,
		45.110500, 44.613506, 59.688850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955158, 44.459793, 59.675777>,  <45.630466, 45.057636, 59.838459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955158, 44.459793, 59.675777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.589249, 44.398445, 59.526291>,  <45.369701, 44.361637, 59.436600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.589249, 44.398445, 59.526291>,  <45.955158, 44.459793, 59.675777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589249, 44.398445, 59.526291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399844, -0.475541, -0.783572,
		-0.057540, -0.866221, 0.496338,
		-0.914775, -0.153371, -0.373716,
		45.314816, 44.352432, 59.414177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.910675, 43.744648, 59.486774>,  <45.955158, 44.459793, 59.675777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.910675, 43.744648, 59.486774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.649940, 43.944557, 59.258617>,  <45.493500, 44.064503, 59.121723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.649940, 43.944557, 59.258617>,  <45.910675, 43.744648, 59.486774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.649940, 43.944557, 59.258617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374198, -0.442237, -0.815109,
		-0.659614, -0.744754, 0.101252,
		-0.651832, 0.499769, -0.570391,
		45.454391, 44.094486, 59.087502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572998, 43.293350, 59.002281>,  <45.910675, 43.744648, 59.486774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.572998, 43.293350, 59.002281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.501953, 43.645775, 58.826927>,  <45.459328, 43.857231, 58.721714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.501953, 43.645775, 58.826927>,  <45.572998, 43.293350, 59.002281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501953, 43.645775, 58.826927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096377, -0.427754, -0.898742,
		-0.979370, -0.201879, -0.008940,
		-0.177613, 0.881062, -0.438386,
		45.448669, 43.910095, 58.695412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061775, 43.210846, 58.415852>,  <45.572998, 43.293350, 59.002281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061775, 43.210846, 58.415852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.229515, 43.557922, 58.309078>,  <45.330158, 43.766167, 58.245014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.229515, 43.557922, 58.309078>,  <45.061775, 43.210846, 58.415852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229515, 43.557922, 58.309078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038658, -0.276706, -0.960177,
		-0.906999, 0.412974, -0.082495,
		0.419354, 0.867690, -0.266937,
		45.355320, 43.818230, 58.228996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685200, 43.433594, 57.834888>,  <45.061775, 43.210846, 58.415852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685200, 43.433594, 57.834888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.049507, 43.596451, 57.807384>,  <45.268093, 43.694164, 57.790882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.049507, 43.596451, 57.807384>,  <44.685200, 43.433594, 57.834888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049507, 43.596451, 57.807384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034496, -0.090906, -0.995262,
		-0.411466, 0.908829, -0.068750,
		0.910772, 0.407145, -0.068756,
		45.322739, 43.718594, 57.786758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593460, 43.849804, 57.236202>,  <44.685200, 43.433594, 57.834888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593460, 43.849804, 57.236202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.992081, 43.871941, 57.260918>,  <45.231255, 43.885223, 57.275745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.992081, 43.871941, 57.260918>,  <44.593460, 43.849804, 57.236202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992081, 43.871941, 57.260918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071053, -0.185146, -0.980139,
		-0.042799, 0.981152, -0.188439,
		0.996554, 0.055338, 0.061790,
		45.291046, 43.888542, 57.279453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752522, 44.275082, 56.696507>,  <44.593460, 43.849804, 57.236202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752522, 44.275082, 56.696507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.094494, 44.085754, 56.781414>,  <45.299679, 43.972157, 56.832359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.094494, 44.085754, 56.781414>,  <44.752522, 44.275082, 56.696507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.094494, 44.085754, 56.781414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065939, -0.306719, -0.949513,
		0.514526, 0.825769, -0.231015,
		0.854936, -0.473317, 0.212265,
		45.350975, 43.943760, 56.845093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.252342, 44.388355, 56.158661>,  <44.752522, 44.275082, 56.696507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.252342, 44.388355, 56.158661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.371147, 44.053146, 56.341751>,  <45.442429, 43.852020, 56.451607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.371147, 44.053146, 56.341751>,  <45.252342, 44.388355, 56.158661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371147, 44.053146, 56.341751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198270, -0.414784, -0.888056,
		0.934064, 0.354513, 0.042960,
		0.297008, -0.838018, 0.457724,
		45.460251, 43.801743, 56.479069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708256, 44.184521, 55.777573>,  <45.252342, 44.388355, 56.158661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708256, 44.184521, 55.777573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.662987, 43.838684, 55.973400>,  <45.635826, 43.631184, 56.090897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.662987, 43.838684, 55.973400>,  <45.708256, 44.184521, 55.777573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662987, 43.838684, 55.973400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285087, -0.500275, -0.817588,
		0.951797, 0.047042, 0.303100,
		-0.113172, -0.864588, 0.489571,
		45.629036, 43.579308, 56.120270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342331, 43.854633, 55.841133>,  <45.708256, 44.184521, 55.777573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342331, 43.854633, 55.841133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.063911, 43.567490, 55.846771>,  <45.896858, 43.395203, 55.850155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.063911, 43.567490, 55.846771>,  <46.342331, 43.854633, 55.841133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063911, 43.567490, 55.846771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315657, -0.323576, -0.891997,
		0.644886, -0.616425, 0.451821,
		-0.696048, -0.717857, 0.014091,
		45.855099, 43.352131, 55.850998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.729073, 43.269207, 55.516903>,  <46.342331, 43.854633, 55.841133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.729073, 43.269207, 55.516903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.344780, 43.158348, 55.511597>,  <46.114204, 43.091831, 55.508415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.344780, 43.158348, 55.511597>,  <46.729073, 43.269207, 55.516903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.344780, 43.158348, 55.511597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128932, -0.403596, -0.905807,
		0.245693, -0.871950, 0.423483,
		-0.960735, -0.277151, -0.013261,
		46.056561, 43.075203, 55.507618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.734444, 42.566837, 55.323818>,  <46.729073, 43.269207, 55.516903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.734444, 42.566837, 55.323818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.352707, 42.657799, 55.246346>,  <46.123665, 42.712376, 55.199863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.352707, 42.657799, 55.246346>,  <46.734444, 42.566837, 55.323818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352707, 42.657799, 55.246346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086626, -0.409849, -0.908031,
		-0.285865, -0.883354, 0.371439,
		-0.954347, 0.227398, -0.193682,
		46.066402, 42.726017, 55.188240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455612, 41.958191, 55.005405>,  <46.734444, 42.566837, 55.323818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455612, 41.958191, 55.005405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.205879, 42.255753, 54.910057>,  <46.056038, 42.434288, 54.852848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.205879, 42.255753, 54.910057>,  <46.455612, 41.958191, 55.005405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205879, 42.255753, 54.910057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047690, -0.268287, -0.962158,
		-0.779702, -0.612074, 0.132023,
		-0.624332, 0.743900, -0.238374,
		46.018581, 42.478924, 54.838547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.949940, 41.683216, 54.575317>,  <46.455612, 41.958191, 55.005405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.949940, 41.683216, 54.575317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.938705, 42.078415, 54.514572>,  <45.931965, 42.315536, 54.478123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.938705, 42.078415, 54.514572>,  <45.949940, 41.683216, 54.575317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938705, 42.078415, 54.514572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115818, -0.147688, -0.982229,
		-0.992873, -0.045177, -0.110280,
		-0.028087, 0.988002, -0.151867,
		45.930279, 42.374817, 54.469013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.357574, 41.845921, 54.060444>,  <45.949940, 41.683216, 54.575317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.357574, 41.845921, 54.060444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.624001, 42.144043, 54.048603>,  <45.783855, 42.322914, 54.041500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.624001, 42.144043, 54.048603>,  <45.357574, 41.845921, 54.060444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.624001, 42.144043, 54.048603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172371, -0.192414, -0.966057,
		-0.725699, 0.638359, -0.256629,
		0.666070, 0.745302, -0.029600,
		45.823822, 42.367634, 54.039722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.240627, 39.808403, 49.452015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.502983, 40.109871, 49.435047>,  <44.660397, 40.290752, 49.424866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.502983, 40.109871, 49.435047>,  <44.240627, 39.808403, 49.452015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502983, 40.109871, 49.435047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168801, -0.201215, -0.964893,
		-0.735743, 0.625701, -0.259194,
		0.655888, 0.753665, -0.042424,
		44.699749, 40.335972, 49.422321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127838, 40.193867, 48.853195>,  <44.240627, 39.808403, 49.452015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127838, 40.193867, 48.853195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.498962, 40.314575, 48.940922>,  <44.721638, 40.387001, 48.993557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.498962, 40.314575, 48.940922>,  <44.127838, 40.193867, 48.853195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498962, 40.314575, 48.940922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266286, -0.124021, -0.955882,
		-0.261257, 0.945279, -0.195425,
		0.927812, 0.301770, 0.219314,
		44.777306, 40.405106, 49.006718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219109, 40.875980, 48.518185>,  <44.127838, 40.193867, 48.853195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219109, 40.875980, 48.518185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.574402, 40.704643, 48.584606>,  <44.787579, 40.601841, 48.624458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.574402, 40.704643, 48.584606>,  <44.219109, 40.875980, 48.518185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574402, 40.704643, 48.584606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245616, 0.137312, -0.959593,
		0.388229, 0.893125, 0.227171,
		0.888229, -0.428338, 0.166057,
		44.840870, 40.576141, 48.634422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638554, 41.231262, 48.166115>,  <44.219109, 40.875980, 48.518185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638554, 41.231262, 48.166115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.856270, 40.896713, 48.192162>,  <44.986900, 40.695984, 48.207790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.856270, 40.896713, 48.192162>,  <44.638554, 41.231262, 48.166115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856270, 40.896713, 48.192162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356615, 0.160421, -0.920375,
		0.759326, 0.524170, 0.385577,
		0.544288, -0.836368, 0.065115,
		45.019558, 40.645802, 48.211697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236267, 41.344055, 47.854004>,  <44.638554, 41.231262, 48.166115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236267, 41.344055, 47.854004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.252785, 40.944672, 47.868797>,  <45.262695, 40.705040, 47.877674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.252785, 40.944672, 47.868797>,  <45.236267, 41.344055, 47.854004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252785, 40.944672, 47.868797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478549, -0.012725, -0.877968,
		0.877089, 0.053954, 0.477288,
		0.041296, -0.998462, 0.036981,
		45.265175, 40.645134, 47.879890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.944458, 41.112328, 47.783623>,  <45.236267, 41.344055, 47.854004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.944458, 41.112328, 47.783623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.688972, 40.828491, 47.664612>,  <45.535679, 40.658188, 47.593204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.688972, 40.828491, 47.664612>,  <45.944458, 41.112328, 47.783623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688972, 40.828491, 47.664612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441218, -0.020978, -0.897155,
		0.630371, -0.704303, 0.326483,
		-0.638717, -0.709590, -0.297527,
		45.497356, 40.615616, 47.575356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.330048, 40.533051, 47.670460>,  <45.944458, 41.112328, 47.783623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.330048, 40.533051, 47.670460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.997322, 40.466415, 47.458672>,  <45.797688, 40.426434, 47.331600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.997322, 40.466415, 47.458672>,  <46.330048, 40.533051, 47.670460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.997322, 40.466415, 47.458672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546975, -0.083818, -0.832942,
		0.094379, -0.982457, 0.160840,
		-0.831811, -0.166588, -0.529470,
		45.747780, 40.416439, 47.299831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.557762, 40.064762, 47.151356>,  <46.330048, 40.533051, 47.670460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.557762, 40.064762, 47.151356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.211250, 40.190208, 46.995815>,  <46.003342, 40.265476, 46.902493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.211250, 40.190208, 46.995815>,  <46.557762, 40.064762, 47.151356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211250, 40.190208, 46.995815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373658, -0.109857, -0.921038,
		-0.331572, -0.943173, -0.022019,
		-0.866279, 0.313617, -0.388849,
		45.951366, 40.284294, 46.879162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381882, 39.599770, 46.545021>,  <46.557762, 40.064762, 47.151356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381882, 39.599770, 46.545021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.165413, 39.932869, 46.498264>,  <46.035530, 40.132729, 46.470211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.165413, 39.932869, 46.498264>,  <46.381882, 39.599770, 46.545021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.165413, 39.932869, 46.498264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318547, 0.074363, -0.944986,
		-0.778242, -0.548637, -0.305512,
		-0.541172, 0.832747, -0.116894,
		46.003059, 40.182693, 46.463196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.210361, 39.514935, 45.858273>,  <46.381882, 39.599770, 46.545021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.210361, 39.514935, 45.858273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.102043, 39.896439, 45.910446>,  <46.037052, 40.125340, 45.941750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.102043, 39.896439, 45.910446>,  <46.210361, 39.514935, 45.858273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.102043, 39.896439, 45.910446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308233, 0.214275, -0.926865,
		-0.911955, -0.210786, -0.352005,
		-0.270796, 0.953759, 0.130438,
		46.020805, 40.182568, 45.949577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.790218, 39.670807, 45.327660>,  <46.210361, 39.514935, 45.858273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.790218, 39.670807, 45.327660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.948570, 40.010406, 45.467651>,  <46.043579, 40.214165, 45.551647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.948570, 40.010406, 45.467651>,  <45.790218, 39.670807, 45.327660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.948570, 40.010406, 45.467651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178910, 0.302505, -0.936206,
		-0.900707, 0.433236, -0.032139,
		0.395876, 0.848998, 0.349979,
		46.067333, 40.265106, 45.572643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566105, 40.099491, 44.954094>,  <45.790218, 39.670807, 45.327660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566105, 40.099491, 44.954094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.876366, 40.302254, 45.104511>,  <46.062523, 40.423912, 45.194763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.876366, 40.302254, 45.104511>,  <45.566105, 40.099491, 44.954094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876366, 40.302254, 45.104511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286862, 0.247575, -0.925428,
		-0.562202, 0.825685, 0.046622,
		0.775654, 0.506903, 0.376044,
		46.109062, 40.454327, 45.217323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585747, 40.874302, 44.649979>,  <45.566105, 40.099491, 44.954094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585747, 40.874302, 44.649979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.954926, 40.754501, 44.746700>,  <46.176434, 40.682621, 44.804733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.954926, 40.754501, 44.746700>,  <45.585747, 40.874302, 44.649979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.954926, 40.754501, 44.746700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298418, 0.159944, -0.940938,
		0.243138, 0.940594, 0.236996,
		0.922947, -0.299502, 0.241802,
		46.231808, 40.664650, 44.819241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068291, 41.444969, 44.646099>,  <45.585747, 40.874302, 44.649979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.068291, 41.444969, 44.646099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.244522, 41.100327, 44.545288>,  <46.350262, 40.893539, 44.484802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.244522, 41.100327, 44.545288>,  <46.068291, 41.444969, 44.646099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.244522, 41.100327, 44.545288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094367, 0.323638, -0.941463,
		0.892738, 0.391009, 0.223897,
		0.440583, -0.861609, -0.252026,
		46.376698, 40.841843, 44.469681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.617195, 42.035267, 44.600899>,  <46.068291, 41.444969, 44.646099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.617195, 42.035267, 44.600899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.599274, 42.394600, 44.426086>,  <45.588520, 42.610199, 44.321201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.599274, 42.394600, 44.426086>,  <45.617195, 42.035267, 44.600899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.599274, 42.394600, 44.426086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391741, 0.418226, 0.819528,
		0.918984, -0.134486, -0.370651,
		-0.044801, 0.898332, -0.437026,
		45.585835, 42.664101, 44.294979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.180279, 42.335873, 44.803608>,  <45.617195, 42.035267, 44.600899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.180279, 42.335873, 44.803608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.954170, 42.642097, 44.680721>,  <45.818504, 42.825832, 44.606991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.954170, 42.642097, 44.680721>,  <46.180279, 42.335873, 44.803608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.954170, 42.642097, 44.680721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371691, 0.568861, 0.733651,
		0.736418, 0.300524, -0.606114,
		-0.565274, 0.765561, -0.307217,
		45.784588, 42.871765, 44.588554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.573380, 42.978317, 44.957043>,  <46.180279, 42.335873, 44.803608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.573380, 42.978317, 44.957043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.196098, 43.095879, 44.895100>,  <45.969730, 43.166416, 44.857933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.196098, 43.095879, 44.895100>,  <46.573380, 42.978317, 44.957043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.196098, 43.095879, 44.895100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078577, 0.650307, 0.755597,
		0.322779, 0.700516, -0.636468,
		-0.943207, 0.293903, -0.154861,
		45.913136, 43.184048, 44.848640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.657627, 43.721451, 44.933632>,  <46.573380, 42.978317, 44.957043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.657627, 43.721451, 44.933632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.271240, 43.637184, 44.993679>,  <46.039410, 43.586624, 45.029705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.271240, 43.637184, 44.993679>,  <46.657627, 43.721451, 44.933632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271240, 43.637184, 44.993679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056609, 0.738398, 0.671984,
		-0.252408, 0.640615, -0.725192,
		-0.965963, -0.210667, 0.150114,
		45.981453, 43.573982, 45.038712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195774, 44.262951, 44.872299>,  <46.657627, 43.721451, 44.933632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195774, 44.262951, 44.872299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.007706, 44.013649, 45.122253>,  <45.894863, 43.864067, 45.272228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.007706, 44.013649, 45.122253>,  <46.195774, 44.262951, 44.872299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007706, 44.013649, 45.122253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206505, 0.766065, 0.608687,
		-0.858074, 0.157147, -0.488891,
		-0.470175, -0.623257, 0.624889,
		45.866653, 43.826672, 45.309719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.767254, 44.707909, 45.324619>,  <46.195774, 44.262951, 44.872299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.767254, 44.707909, 45.324619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.734741, 44.353027, 45.506283>,  <45.715233, 44.140099, 45.615280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.734741, 44.353027, 45.506283>,  <45.767254, 44.707909, 45.324619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734741, 44.353027, 45.506283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212489, 0.460614, 0.861791,
		-0.973777, -0.026457, -0.225960,
		-0.081280, -0.887206, 0.454157,
		45.710358, 44.086864, 45.642529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079552, 44.841171, 45.745514>,  <45.767254, 44.707909, 45.324619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079552, 44.841171, 45.745514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.316841, 44.554001, 45.891212>,  <45.459213, 44.381699, 45.978630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.316841, 44.554001, 45.891212>,  <45.079552, 44.841171, 45.745514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316841, 44.554001, 45.891212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021820, 0.437947, 0.898736,
		-0.804744, -0.541097, 0.244134,
		0.593221, -0.717925, 0.364242,
		45.494808, 44.338623, 46.000484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777451, 44.582615, 46.362282>,  <45.079552, 44.841171, 45.745514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777451, 44.582615, 46.362282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149574, 44.441704, 46.403114>,  <45.372849, 44.357155, 46.427616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149574, 44.441704, 46.403114>,  <44.777451, 44.582615, 46.362282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149574, 44.441704, 46.403114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067580, 0.108923, 0.991750,
		-0.360495, -0.929534, 0.077525,
		0.930310, -0.352281, 0.102084,
		45.428669, 44.336021, 46.433739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812637, 44.063278, 46.852604>,  <44.777451, 44.582615, 46.362282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812637, 44.063278, 46.852604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.179337, 44.223061, 46.853973>,  <45.399357, 44.318932, 46.854794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.179337, 44.223061, 46.853973>,  <44.812637, 44.063278, 46.852604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.179337, 44.223061, 46.853973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085007, 0.186711, 0.978730,
		0.390326, -0.897536, 0.205123,
		0.916744, 0.399460, 0.003419,
		45.454361, 44.342899, 46.855000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175163, 43.661434, 47.409309>,  <44.812637, 44.063278, 46.852604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175163, 43.661434, 47.409309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381744, 43.997536, 47.343281>,  <45.505692, 44.199196, 47.303661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381744, 43.997536, 47.343281>,  <45.175163, 43.661434, 47.409309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381744, 43.997536, 47.343281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051648, 0.222988, 0.973452,
		0.854758, -0.494214, 0.158560,
		0.516451, 0.840255, -0.165075,
		45.536678, 44.249611, 47.293758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672733, 43.785717, 47.981438>,  <45.175163, 43.661434, 47.409309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672733, 43.785717, 47.981438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.686516, 44.160309, 47.841827>,  <45.694786, 44.385063, 47.758060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.686516, 44.160309, 47.841827>,  <45.672733, 43.785717, 47.981438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686516, 44.160309, 47.841827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041763, 0.350276, 0.935715,
		0.998533, -0.017662, 0.051178,
		0.034453, 0.936480, -0.349025,
		45.696850, 44.441254, 47.737122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.193619, 44.089016, 48.238659>,  <45.672733, 43.785717, 47.981438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.193619, 44.089016, 48.238659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.917931, 44.365784, 48.152664>,  <45.752518, 44.531845, 48.101067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.917931, 44.365784, 48.152664>,  <46.193619, 44.089016, 48.238659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917931, 44.365784, 48.152664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004465, 0.300766, 0.953687,
		0.724535, 0.656344, -0.210385,
		-0.689224, 0.691919, -0.214985,
		45.711163, 44.573360, 48.088169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.425247, 44.712612, 48.521099>,  <46.193619, 44.089016, 48.238659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.425247, 44.712612, 48.521099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.047714, 44.817207, 48.440296>,  <45.821194, 44.879963, 48.391815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.047714, 44.817207, 48.440296>,  <46.425247, 44.712612, 48.521099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.047714, 44.817207, 48.440296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120108, 0.298036, 0.946968,
		0.307823, 0.918042, -0.249889,
		-0.943832, 0.261485, -0.202007,
		45.764565, 44.895653, 48.379696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.324547, 45.203091, 49.035671>,  <46.425247, 44.712612, 48.521099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.324547, 45.203091, 49.035671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.962166, 45.137123, 48.879700>,  <45.744736, 45.097542, 48.786118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.962166, 45.137123, 48.879700>,  <46.324547, 45.203091, 49.035671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962166, 45.137123, 48.879700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416445, 0.181241, 0.890913,
		-0.076258, 0.969512, -0.232877,
		-0.905957, -0.164920, -0.389927,
		45.690380, 45.087646, 48.762722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.539841, 45.860336, 48.713184>,  <46.324547, 45.203091, 49.035671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.539841, 45.860336, 48.713184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.916603, 45.982010, 48.770153>,  <47.142662, 46.055016, 48.804333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.916603, 45.982010, 48.770153>,  <46.539841, 45.860336, 48.713184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.916603, 45.982010, 48.770153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264065, -0.408620, -0.873670,
		-0.207561, 0.860524, -0.465206,
		0.941907, 0.304184, 0.142420,
		47.199177, 46.073265, 48.812878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.810516, 46.192291, 48.073189>,  <46.539841, 45.860336, 48.713184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.810516, 46.192291, 48.073189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.133049, 46.069756, 48.275570>,  <47.326569, 45.996235, 48.396999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.133049, 46.069756, 48.275570>,  <46.810516, 46.192291, 48.073189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.133049, 46.069756, 48.275570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366580, -0.412473, -0.833957,
		0.464167, 0.857916, -0.220291,
		0.806330, -0.306341, 0.505952,
		47.374947, 45.977852, 48.427357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.350388, 46.460411, 47.691738>,  <46.810516, 46.192291, 48.073189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.350388, 46.460411, 47.691738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.542397, 46.192642, 47.918526>,  <47.657604, 46.031982, 48.054596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.542397, 46.192642, 47.918526>,  <47.350388, 46.460411, 47.691738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.542397, 46.192642, 47.918526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638934, -0.176065, -0.748842,
		0.601115, 0.721717, 0.343201,
		0.480026, -0.669423, 0.566964,
		47.686405, 45.991814, 48.088615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.116474, 46.523121, 47.498791>,  <47.350388, 46.460411, 47.691738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.116474, 46.523121, 47.498791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.087540, 46.170288, 47.684994>,  <48.070179, 45.958588, 47.796715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.087540, 46.170288, 47.684994>,  <48.116474, 46.523121, 47.498791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.087540, 46.170288, 47.684994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642274, -0.398271, -0.654877,
		0.763054, 0.251612, 0.595349,
		-0.072336, -0.882084, 0.465506,
		48.065838, 45.905663, 47.824646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.749088, 46.258640, 47.531479>,  <48.116474, 46.523121, 47.498791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.749088, 46.258640, 47.531479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.541550, 45.922234, 47.592777>,  <48.417027, 45.720390, 47.629555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.541550, 45.922234, 47.592777>,  <48.749088, 46.258640, 47.531479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.541550, 45.922234, 47.592777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544604, -0.463359, -0.699074,
		0.658944, -0.279252, 0.698435,
		-0.518844, -0.841021, 0.153246,
		48.385895, 45.669926, 47.638752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.218113, 45.771152, 47.548702>,  <48.749088, 46.258640, 47.531479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.218113, 45.771152, 47.548702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.888092, 45.563026, 47.460556>,  <48.690079, 45.438148, 47.407669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.888092, 45.563026, 47.460556>,  <49.218113, 45.771152, 47.548702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.888092, 45.563026, 47.460556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520080, -0.546776, -0.656166,
		0.220925, -0.655977, 0.721724,
		-0.825051, -0.520318, -0.220364,
		48.640575, 45.406933, 47.394447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.403408, 45.075394, 47.560066>,  <49.218113, 45.771152, 47.548702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.403408, 45.075394, 47.560066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.075943, 45.109543, 47.332909>,  <48.879463, 45.130032, 47.196613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.075943, 45.109543, 47.332909>,  <49.403408, 45.075394, 47.560066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.075943, 45.109543, 47.332909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467150, -0.476155, -0.745015,
		-0.334004, -0.875208, 0.349932,
		-0.818665, 0.085367, -0.567891,
		48.830345, 45.135155, 47.162540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.150726, 44.399323, 47.428406>,  <49.403408, 45.075394, 47.560066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.150726, 44.399323, 47.428406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.992020, 44.614265, 47.130726>,  <48.896797, 44.743229, 46.952118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.992020, 44.614265, 47.130726>,  <49.150726, 44.399323, 47.428406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.992020, 44.614265, 47.130726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351853, -0.659783, -0.663992,
		-0.847807, -0.525297, 0.072710,
		-0.396766, 0.537354, -0.744196,
		48.872990, 44.775471, 46.907467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.902050, 43.893402, 46.969254>,  <49.150726, 44.399323, 47.428406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.902050, 43.893402, 46.969254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.878036, 44.215866, 46.733795>,  <48.863628, 44.409344, 46.592518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.878036, 44.215866, 46.733795>,  <48.902050, 43.893402, 46.969254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.878036, 44.215866, 46.733795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129297, -0.578466, -0.805394,
		-0.989787, -0.124459, -0.069508,
		-0.060031, 0.806156, -0.588650,
		48.860027, 44.457714, 46.557201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.528904, 43.717892, 46.381233>,  <48.902050, 43.893402, 46.969254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.528904, 43.717892, 46.381233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.742203, 44.037331, 46.269604>,  <48.870182, 44.228996, 46.202625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.742203, 44.037331, 46.269604>,  <48.528904, 43.717892, 46.381233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.742203, 44.037331, 46.269604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322539, -0.496905, -0.805639,
		-0.782057, 0.339594, -0.522554,
		0.533250, 0.798600, -0.279076,
		48.902176, 44.276909, 46.185883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.282169, 43.945511, 45.745998>,  <48.528904, 43.717892, 46.381233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.282169, 43.945511, 45.745998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.655182, 44.088966, 45.762798>,  <48.878990, 44.175041, 45.772881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.655182, 44.088966, 45.762798>,  <48.282169, 43.945511, 45.745998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.655182, 44.088966, 45.762798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188887, -0.385355, -0.903229,
		-0.307748, 0.850223, -0.427098,
		0.932530, 0.358640, 0.042004,
		48.934940, 44.196560, 45.775398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.367340, 44.120049, 45.115517>,  <48.282169, 43.945511, 45.745998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.367340, 44.120049, 45.115517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.737984, 44.111603, 45.265686>,  <48.960369, 44.106537, 45.355789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.737984, 44.111603, 45.265686>,  <48.367340, 44.120049, 45.115517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.737984, 44.111603, 45.265686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364759, -0.192052, -0.911080,
		0.091336, 0.981158, -0.170257,
		0.926611, -0.021111, 0.375427,
		49.015968, 44.105270, 45.378315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<45.838341, 48.503700, 51.266968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.145386, 48.407028, 51.504410>,  <46.329613, 48.349026, 51.646873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.145386, 48.407028, 51.504410>,  <45.838341, 48.503700, 51.266968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.145386, 48.407028, 51.504410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611473, -0.001348, -0.791264,
		0.192035, 0.970354, 0.146747,
		0.767609, -0.241682, 0.593604,
		46.375668, 48.334522, 51.682491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.399338, 48.931538, 51.160809>,  <45.838341, 48.503700, 51.266968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.399338, 48.931538, 51.160809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.562798, 48.589050, 51.287235>,  <46.660873, 48.383560, 51.363091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.562798, 48.589050, 51.287235>,  <46.399338, 48.931538, 51.160809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562798, 48.589050, 51.287235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579687, -0.023995, -0.814486,
		0.704960, 0.516060, 0.486532,
		0.408649, -0.856216, 0.316069,
		46.685390, 48.332184, 51.382057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.921242, 48.719521, 50.707718>,  <46.399338, 48.931538, 51.160809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.921242, 48.719521, 50.707718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.892982, 48.354393, 50.868603>,  <46.876026, 48.135319, 50.965134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.892982, 48.354393, 50.868603>,  <46.921242, 48.719521, 50.707718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892982, 48.354393, 50.868603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553752, -0.371275, -0.745328,
		0.829679, 0.170069, 0.531704,
		-0.070652, -0.912815, 0.402215,
		46.871788, 48.080547, 50.989265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.588066, 48.359596, 50.514046>,  <46.921242, 48.719521, 50.707718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.588066, 48.359596, 50.514046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.318893, 48.078087, 50.605141>,  <47.157391, 47.909180, 50.659798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.318893, 48.078087, 50.605141>,  <47.588066, 48.359596, 50.514046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.318893, 48.078087, 50.605141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275628, -0.524270, -0.805711,
		0.686431, -0.479422, 0.546779,
		-0.672935, -0.703772, 0.227733,
		47.117012, 47.866955, 50.673462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.945965, 47.742699, 50.584385>,  <47.588066, 48.359596, 50.514046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.945965, 47.742699, 50.584385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.567818, 47.648705, 50.494003>,  <47.340927, 47.592308, 50.439774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.567818, 47.648705, 50.494003>,  <47.945965, 47.742699, 50.584385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.567818, 47.648705, 50.494003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325654, -0.649004, -0.687563,
		0.014919, -0.723586, 0.690073,
		-0.945371, -0.234983, -0.225956,
		47.284206, 47.578209, 50.426216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.002876, 46.986656, 50.452225>,  <47.945965, 47.742699, 50.584385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.002876, 46.986656, 50.452225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.648499, 47.072845, 50.287949>,  <47.435871, 47.124557, 50.189381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.648499, 47.072845, 50.287949>,  <48.002876, 46.986656, 50.452225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.648499, 47.072845, 50.287949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135355, -0.726848, -0.673329,
		-0.443594, -0.652124, 0.614784,
		-0.885948, 0.215470, -0.410694,
		47.382713, 47.137486, 50.164742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.604340, 46.302071, 50.428284>,  <48.002876, 46.986656, 50.452225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.604340, 46.302071, 50.428284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.427124, 46.539764, 50.159775>,  <47.320793, 46.682381, 49.998669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.427124, 46.539764, 50.159775>,  <47.604340, 46.302071, 50.428284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.427124, 46.539764, 50.159775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007213, -0.746376, -0.665486,
		-0.896474, -0.299676, 0.326386,
		-0.443037, 0.594237, -0.671268,
		47.294212, 46.718037, 49.958393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.092743, 45.874573, 50.090611>,  <47.604340, 46.302071, 50.428284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.092743, 45.874573, 50.090611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.151604, 46.184433, 49.844597>,  <47.186920, 46.370350, 49.696987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.151604, 46.184433, 49.844597>,  <47.092743, 45.874573, 50.090611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.151604, 46.184433, 49.844597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016425, -0.619804, -0.784585,
		-0.988977, 0.125558, -0.078484,
		0.147155, 0.774647, -0.615034,
		47.195751, 46.416828, 49.660088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612526, 45.812256, 49.470715>,  <47.092743, 45.874573, 50.090611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612526, 45.812256, 49.470715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.931007, 46.036270, 49.379131>,  <47.122097, 46.170681, 49.324181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.931007, 46.036270, 49.379131>,  <46.612526, 45.812256, 49.470715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.931007, 46.036270, 49.379131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146178, -0.545266, -0.825419,
		-0.587109, 0.623731, -0.516007,
		0.796201, 0.560040, -0.228955,
		47.169868, 46.204281, 49.310444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925655, 45.840351, 49.101765>,  <46.612526, 45.812256, 49.470715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.925655, 45.840351, 49.101765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671371, 45.536591, 49.046371>,  <45.518799, 45.354336, 49.013138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671371, 45.536591, 49.046371>,  <45.925655, 45.840351, 49.101765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671371, 45.536591, 49.046371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511923, 0.280481, 0.811952,
		-0.577757, 0.587060, -0.567061,
		-0.635714, -0.759402, -0.138479,
		45.480656, 45.308769, 49.004829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191330, 46.131432, 48.982994>,  <45.925655, 45.840351, 49.101765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.191330, 46.131432, 48.982994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152496, 45.754272, 49.110447>,  <45.129196, 45.527977, 49.186920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152496, 45.754272, 49.110447>,  <45.191330, 46.131432, 48.982994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152496, 45.754272, 49.110447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588545, 0.312559, 0.745601,
		-0.802614, -0.115143, -0.585280,
		-0.097084, -0.942894, 0.318631,
		45.123371, 45.471405, 49.206036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466648, 46.063782, 49.223835>,  <45.191330, 46.131432, 48.982994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466648, 46.063782, 49.223835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.673859, 45.772835, 49.403870>,  <44.798183, 45.598267, 49.511890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.673859, 45.772835, 49.403870>,  <44.466648, 46.063782, 49.223835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.673859, 45.772835, 49.403870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494398, 0.174783, 0.851482,
		-0.698012, -0.663613, -0.269069,
		0.518026, -0.727372, 0.450089,
		44.829266, 45.554623, 49.538895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018978, 45.705425, 49.553116>,  <44.466648, 46.063782, 49.223835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018978, 45.705425, 49.553116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350403, 45.610527, 49.755974>,  <44.549259, 45.553589, 49.877689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350403, 45.610527, 49.755974>,  <44.018978, 45.705425, 49.553116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350403, 45.610527, 49.755974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539593, -0.096664, 0.836359,
		-0.149412, -0.966625, -0.208116,
		0.828562, -0.237260, 0.507141,
		44.598972, 45.539352, 49.908115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908951, 45.124859, 49.929504>,  <44.018978, 45.705425, 49.553116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908951, 45.124859, 49.929504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221321, 45.270340, 50.132629>,  <44.408745, 45.357628, 50.254505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221321, 45.270340, 50.132629>,  <43.908951, 45.124859, 49.929504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221321, 45.270340, 50.132629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444145, -0.248307, 0.860859,
		0.439192, -0.897810, -0.032372,
		0.780926, 0.363704, 0.507813,
		44.455601, 45.379452, 50.284973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020611, 44.648911, 50.535713>,  <43.908951, 45.124859, 49.929504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020611, 44.648911, 50.535713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225067, 44.971642, 50.654213>,  <44.347740, 45.165279, 50.725311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225067, 44.971642, 50.654213>,  <44.020611, 44.648911, 50.535713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225067, 44.971642, 50.654213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435658, -0.053906, 0.898496,
		0.740904, -0.588318, 0.323949,
		0.511139, 0.806831, 0.296245,
		44.378410, 45.213692, 50.743088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216972, 44.480347, 51.150105>,  <44.020611, 44.648911, 50.535713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216972, 44.480347, 51.150105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250648, 44.878922, 51.148182>,  <44.270855, 45.118065, 51.147026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250648, 44.878922, 51.148182>,  <44.216972, 44.480347, 51.150105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.250648, 44.878922, 51.148182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358546, 0.034799, 0.932863,
		0.929707, -0.076816, 0.360199,
		0.084194, 0.996438, -0.004811,
		44.275906, 45.177853, 51.146740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499569, 44.653339, 51.728706>,  <44.216972, 44.480347, 51.150105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499569, 44.653339, 51.728706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330307, 45.001862, 51.629295>,  <44.228748, 45.210976, 51.569649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330307, 45.001862, 51.629295>,  <44.499569, 44.653339, 51.728706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330307, 45.001862, 51.629295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213290, 0.170794, 0.961944,
		0.880595, 0.460059, 0.113569,
		-0.423154, 0.871306, -0.248526,
		44.203362, 45.263252, 51.554737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617535, 45.097469, 52.344658>,  <44.499569, 44.653339, 51.728706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617535, 45.097469, 52.344658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352692, 45.322838, 52.147003>,  <44.193787, 45.458057, 52.028412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352692, 45.322838, 52.147003>,  <44.617535, 45.097469, 52.344658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352692, 45.322838, 52.147003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439917, 0.241596, 0.864930,
		0.606702, 0.790055, 0.087896,
		-0.662107, 0.563422, -0.494136,
		44.154060, 45.491863, 51.998764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584869, 45.681961, 52.734913>,  <44.617535, 45.097469, 52.344658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584869, 45.681961, 52.734913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251862, 45.650185, 52.515606>,  <44.052055, 45.631119, 52.384022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251862, 45.650185, 52.515606>,  <44.584869, 45.681961, 52.734913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251862, 45.650185, 52.515606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553971, 0.127736, 0.822678,
		0.004679, 0.988621, -0.150351,
		-0.832523, -0.079441, -0.548265,
		44.002106, 45.626354, 52.351128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199081, 46.289646, 52.776112>,  <44.584869, 45.681961, 52.734913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199081, 46.289646, 52.776112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946999, 45.990341, 52.693211>,  <43.795750, 45.810760, 52.643471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946999, 45.990341, 52.693211>,  <44.199081, 46.289646, 52.776112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946999, 45.990341, 52.693211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541822, 0.232628, 0.807659,
		-0.556124, 0.621284, -0.552026,
		-0.630202, -0.748258, -0.207255,
		43.757938, 45.765865, 52.631035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542439, 46.612530, 52.958389>,  <44.199081, 46.289646, 52.776112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542439, 46.612530, 52.958389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478348, 46.219818, 52.917542>,  <43.439892, 45.984192, 52.893032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478348, 46.219818, 52.917542>,  <43.542439, 46.612530, 52.958389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478348, 46.219818, 52.917542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495849, -0.009399, 0.868358,
		-0.853499, 0.189773, -0.485310,
		-0.160229, -0.981783, -0.102121,
		43.430279, 45.925282, 52.886906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744839, 46.447987, 52.965527>,  <43.542439, 46.612530, 52.958389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744839, 46.447987, 52.965527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942131, 46.115334, 53.067596>,  <43.060505, 45.915741, 53.128838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942131, 46.115334, 53.067596>,  <42.744839, 46.447987, 52.965527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942131, 46.115334, 53.067596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410090, 0.036406, 0.911318,
		-0.767171, -0.554133, -0.323087,
		0.493229, -0.831632, 0.255174,
		43.090099, 45.865845, 53.144150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196819, 46.042625, 53.297955>,  <42.744839, 46.447987, 52.965527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196819, 46.042625, 53.297955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543285, 45.883858, 53.419418>,  <42.751163, 45.788597, 53.492298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543285, 45.883858, 53.419418>,  <42.196819, 46.042625, 53.297955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543285, 45.883858, 53.419418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330407, 0.001055, 0.943838,
		-0.374950, -0.917852, -0.130232,
		0.866166, -0.396922, 0.303660,
		42.803135, 45.764782, 53.510517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<48.520107, 43.901718, 55.984657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.400650, 44.255890, 55.842209>,  <48.328976, 44.468395, 55.756741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.400650, 44.255890, 55.842209>,  <48.520107, 43.901718, 55.984657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.400650, 44.255890, 55.842209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051715, -0.387615, -0.920369,
		-0.952964, -0.256442, 0.161548,
		-0.298640, 0.885433, -0.356121,
		48.311058, 44.521519, 55.735371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.950108, 43.749397, 55.595547>,  <48.520107, 43.901718, 55.984657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.950108, 43.749397, 55.595547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.090981, 44.097923, 55.458855>,  <48.175507, 44.307037, 55.376839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.090981, 44.097923, 55.458855>,  <47.950108, 43.749397, 55.595547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.090981, 44.097923, 55.458855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025959, -0.355890, -0.934167,
		-0.935569, 0.337872, -0.102722,
		0.352187, 0.871312, -0.341731,
		48.196636, 44.359318, 55.356335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.532166, 43.879181, 54.954323>,  <47.950108, 43.749397, 55.595547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.532166, 43.879181, 54.954323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.832581, 44.141182, 54.921036>,  <48.012829, 44.298382, 54.901066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.832581, 44.141182, 54.921036>,  <47.532166, 43.879181, 54.954323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.832581, 44.141182, 54.921036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169165, -0.312712, -0.934663,
		-0.638225, 0.687886, -0.345660,
		0.751034, 0.654999, -0.083215,
		48.057892, 44.337681, 54.896072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.412220, 44.065632, 54.253536>,  <47.532166, 43.879181, 54.954323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.412220, 44.065632, 54.253536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.788422, 44.166588, 54.344536>,  <48.014141, 44.227161, 54.399136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.788422, 44.166588, 54.344536>,  <47.412220, 44.065632, 54.253536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.788422, 44.166588, 54.344536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318335, -0.420360, -0.849682,
		-0.118819, 0.871549, -0.475694,
		0.940502, 0.252389, 0.227498,
		48.070572, 44.242306, 54.412785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.695766, 44.292027, 53.636387>,  <47.412220, 44.065632, 54.253536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.695766, 44.292027, 53.636387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.040237, 44.251076, 53.835545>,  <48.246918, 44.226505, 53.955040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.040237, 44.251076, 53.835545>,  <47.695766, 44.292027, 53.636387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.040237, 44.251076, 53.835545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438353, -0.346326, -0.829401,
		0.257346, 0.932511, -0.253369,
		0.861174, -0.102378, 0.497894,
		48.298588, 44.220364, 53.984913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.219791, 44.614769, 53.213470>,  <47.695766, 44.292027, 53.636387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.219791, 44.614769, 53.213470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.399467, 44.362633, 53.466736>,  <48.507275, 44.211349, 53.618694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.399467, 44.362633, 53.466736>,  <48.219791, 44.614769, 53.213470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.399467, 44.362633, 53.466736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482988, -0.424884, -0.765634,
		0.751633, 0.649726, 0.113594,
		0.449189, -0.630340, 0.633167,
		48.534225, 44.173531, 53.656685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.931419, 44.744305, 52.968620>,  <48.219791, 44.614769, 53.213470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.931419, 44.744305, 52.968620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.931000, 44.406502, 53.182835>,  <48.930748, 44.203819, 53.311363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.931000, 44.406502, 53.182835>,  <48.931419, 44.744305, 52.968620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.931000, 44.406502, 53.182835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632680, -0.415290, -0.653644,
		0.774413, 0.338136, 0.534742,
		-0.001052, -0.844510, 0.535538,
		48.930683, 44.153149, 53.343494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.541180, 44.444336, 52.838501>,  <48.931419, 44.744305, 52.968620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.541180, 44.444336, 52.838501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.334709, 44.125092, 52.962814>,  <49.210827, 43.933544, 53.037403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.334709, 44.125092, 52.962814>,  <49.541180, 44.444336, 52.838501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.334709, 44.125092, 52.962814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405683, -0.547397, -0.731968,
		0.754312, -0.251744, 0.606331,
		-0.516172, -0.798111, 0.310780,
		49.179859, 43.885658, 53.056049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.013580, 43.959557, 52.878895>,  <49.541180, 44.444336, 52.838501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.013580, 43.959557, 52.878895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.663879, 43.767960, 52.847263>,  <49.454060, 43.653000, 52.828285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.663879, 43.767960, 52.847263>,  <50.013580, 43.959557, 52.878895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.663879, 43.767960, 52.847263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382097, -0.578406, -0.720727,
		0.299484, -0.660311, 0.688694,
		-0.874249, -0.478994, -0.079080,
		49.401604, 43.624260, 52.823540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.158688, 43.186081, 52.702827>,  <50.013580, 43.959557, 52.878895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.158688, 43.186081, 52.702827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.781448, 43.249855, 52.586105>,  <49.555107, 43.288120, 52.516071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.781448, 43.249855, 52.586105>,  <50.158688, 43.186081, 52.702827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.781448, 43.249855, 52.586105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182037, -0.486816, -0.854326,
		-0.278266, -0.858830, 0.430091,
		-0.943097, 0.159437, -0.291804,
		49.498520, 43.297688, 52.498566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.871136, 42.531246, 52.539768>,  <50.158688, 43.186081, 52.702827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.871136, 42.531246, 52.539768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.695778, 42.835480, 52.348217>,  <49.590561, 43.018021, 52.233288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.695778, 42.835480, 52.348217>,  <49.871136, 42.531246, 52.539768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.695778, 42.835480, 52.348217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250235, -0.408453, -0.877809,
		-0.863243, -0.504663, -0.011259,
		-0.438399, 0.760580, -0.478879,
		49.564259, 43.063652, 52.204552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.591351, 42.133022, 52.084572>,  <49.871136, 42.531246, 52.539768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.591351, 42.133022, 52.084572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.572334, 42.500389, 51.927471>,  <49.560925, 42.720810, 51.833210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.572334, 42.500389, 51.927471>,  <49.591351, 42.133022, 52.084572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.572334, 42.500389, 51.927471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250128, -0.369720, -0.894843,
		-0.967045, -0.140777, -0.212146,
		-0.047539, 0.918417, -0.392748,
		49.558071, 42.775913, 51.809647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.104504, 42.136089, 51.544556>,  <49.591351, 42.133022, 52.084572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.104504, 42.136089, 51.544556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.323761, 42.461411, 51.466503>,  <49.455315, 42.656605, 51.419670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.323761, 42.461411, 51.466503>,  <49.104504, 42.136089, 51.544556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.323761, 42.461411, 51.466503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152742, -0.326720, -0.932697,
		-0.822321, 0.481444, -0.303315,
		0.548141, 0.813305, -0.195132,
		49.488205, 42.705402, 51.407963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.848618, 42.413177, 50.855072>,  <49.104504, 42.136089, 51.544556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.848618, 42.413177, 50.855072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.221458, 42.541916, 50.921520>,  <49.445164, 42.619160, 50.961388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.221458, 42.541916, 50.921520>,  <48.848618, 42.413177, 50.855072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.221458, 42.541916, 50.921520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292657, -0.399069, -0.868962,
		-0.213380, 0.858580, -0.466165,
		0.932105, 0.321846, 0.166116,
		49.501091, 42.638470, 50.971355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.265354, 42.627331, 50.387959>,  <48.848618, 42.413177, 50.855072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.265354, 42.627331, 50.387959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.071983, 42.278236, 50.415142>,  <47.955959, 42.068779, 50.431454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.071983, 42.278236, 50.415142>,  <48.265354, 42.627331, 50.387959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.071983, 42.278236, 50.415142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486276, 0.332293, 0.808156,
		-0.727894, 0.357640, -0.585034,
		-0.483432, -0.872740, 0.067962,
		47.926952, 42.016415, 50.435532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.486111, 42.748188, 50.400169>,  <48.265354, 42.627331, 50.387959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.486111, 42.748188, 50.400169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.536713, 42.385445, 50.560966>,  <47.567074, 42.167797, 50.657444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.536713, 42.385445, 50.560966>,  <47.486111, 42.748188, 50.400169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.536713, 42.385445, 50.560966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595814, 0.254542, 0.761718,
		-0.793097, -0.335877, -0.508118,
		0.126506, -0.906860, 0.401997,
		47.574665, 42.113388, 50.681564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.779018, 42.633686, 50.619358>,  <47.486111, 42.748188, 50.400169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.779018, 42.633686, 50.619358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.039368, 42.391068, 50.801987>,  <47.195576, 42.245495, 50.911564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.039368, 42.391068, 50.801987>,  <46.779018, 42.633686, 50.619358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.039368, 42.391068, 50.801987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526653, 0.072425, 0.846989,
		-0.546809, -0.791739, -0.272302,
		0.650873, -0.606550, 0.456575,
		47.234631, 42.209103, 50.938961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.348541, 42.184959, 50.928421>,  <46.779018, 42.633686, 50.619358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.348541, 42.184959, 50.928421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.686119, 42.152458, 51.140514>,  <46.888668, 42.132957, 51.267769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.686119, 42.152458, 51.140514>,  <46.348541, 42.184959, 50.928421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.686119, 42.152458, 51.140514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536421, -0.130931, 0.833733,
		0.001682, -0.988056, -0.154084,
		0.843949, -0.081251, 0.530234,
		46.939304, 42.128082, 51.299583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.253510, 41.666714, 51.378288>,  <46.348541, 42.184959, 50.928421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.253510, 41.666714, 51.378288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.556953, 41.866272, 51.545914>,  <46.739017, 41.986008, 51.646488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.556953, 41.866272, 51.545914>,  <46.253510, 41.666714, 51.378288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556953, 41.866272, 51.545914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479850, -0.007290, 0.877320,
		0.440750, -0.866629, 0.233867,
		0.758606, 0.498900, 0.419065,
		46.784534, 42.015942, 51.671635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407269, 41.265835, 51.939583>,  <46.253510, 41.666714, 51.378288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407269, 41.265835, 51.939583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.562607, 41.627014, 52.013191>,  <46.655811, 41.843723, 52.057354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.562607, 41.627014, 52.013191>,  <46.407269, 41.265835, 51.939583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562607, 41.627014, 52.013191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429206, 0.000527, 0.903207,
		0.815456, -0.429739, 0.387757,
		0.388348, 0.902953, 0.184017,
		46.679111, 41.897900, 52.068398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.645409, 41.261120, 52.592445>,  <46.407269, 41.265835, 51.939583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.645409, 41.261120, 52.592445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.633057, 41.658134, 52.545269>,  <46.625645, 41.896343, 52.516964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.633057, 41.658134, 52.545269>,  <46.645409, 41.261120, 52.592445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633057, 41.658134, 52.545269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267852, 0.105466, 0.957670,
		0.962965, 0.061160, 0.262598,
		-0.030876, 0.992540, -0.117942,
		46.623795, 41.955898, 52.509888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.934418, 41.609192, 53.221588>,  <46.645409, 41.261120, 52.592445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.934418, 41.609192, 53.221588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.705582, 41.889740, 53.051506>,  <46.568279, 42.058067, 52.949455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.705582, 41.889740, 53.051506>,  <46.934418, 41.609192, 53.221588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.705582, 41.889740, 53.051506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268807, 0.329463, 0.905095,
		0.774894, 0.632091, 0.000050,
		-0.572086, 0.701366, -0.425209,
		46.533955, 42.100151, 52.923943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.126633, 42.234348, 53.528423>,  <46.934418, 41.609192, 53.221588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.126633, 42.234348, 53.528423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.762573, 42.321571, 53.387527>,  <46.544136, 42.373905, 53.302990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.762573, 42.321571, 53.387527>,  <47.126633, 42.234348, 53.528423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.762573, 42.321571, 53.387527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215654, 0.476583, 0.852269,
		0.353717, 0.851656, -0.386738,
		-0.910152, 0.218060, -0.352239,
		46.489529, 42.386990, 53.281857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.000881, 42.727543, 53.959908>,  <47.126633, 42.234348, 53.528423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.000881, 42.727543, 53.959908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.639328, 42.659027, 53.803112>,  <46.422398, 42.617916, 53.709034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.639328, 42.659027, 53.803112>,  <47.000881, 42.727543, 53.959908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.639328, 42.659027, 53.803112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424955, 0.464664, 0.776853,
		0.049076, 0.868762, -0.492792,
		-0.903883, -0.171290, -0.391989,
		46.368164, 42.607639, 53.685516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.668648, 43.390587, 53.938099>,  <47.000881, 42.727543, 53.959908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.668648, 43.390587, 53.938099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.417183, 43.081696, 53.974854>,  <46.266304, 42.896358, 53.996906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.417183, 43.081696, 53.974854>,  <46.668648, 43.390587, 53.938099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.417183, 43.081696, 53.974854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277320, 0.332992, 0.901227,
		-0.726553, 0.541085, -0.423495,
		-0.628661, -0.772233, 0.091882,
		46.228584, 42.850025, 54.002419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984867, 43.659569, 54.158207>,  <46.668648, 43.390587, 53.938099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984867, 43.659569, 54.158207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.980782, 43.274704, 54.267120>,  <45.978329, 43.043785, 54.332466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.980782, 43.274704, 54.267120>,  <45.984867, 43.659569, 54.158207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.980782, 43.274704, 54.267120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439563, 0.248897, 0.863038,
		-0.898154, -0.110869, -0.425474,
		-0.010215, -0.962163, 0.272282,
		45.977718, 42.986053, 54.348804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367905, 43.543808, 54.495373>,  <45.984867, 43.659569, 54.158207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367905, 43.543808, 54.495373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.572166, 43.214066, 54.593075>,  <45.694725, 43.016220, 54.651695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.572166, 43.214066, 54.593075>,  <45.367905, 43.543808, 54.495373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572166, 43.214066, 54.593075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364976, 0.049386, 0.929706,
		-0.778474, -0.563909, -0.275652,
		0.510657, -0.824359, 0.244259,
		45.725365, 42.966759, 54.666351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866405, 43.067997, 54.814838>,  <45.367905, 43.543808, 54.495373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866405, 43.067997, 54.814838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.230484, 42.973976, 54.951248>,  <45.448929, 42.917564, 55.033096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.230484, 42.973976, 54.951248>,  <44.866405, 43.067997, 54.814838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230484, 42.973976, 54.951248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291146, 0.222532, 0.930437,
		-0.294590, -0.946166, 0.134113,
		0.910192, -0.235051, 0.341028,
		45.503540, 42.903461, 55.053558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426327, 42.516754, 54.717113>,  <44.866405, 43.067997, 54.814838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426327, 42.516754, 54.717113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.031311, 42.526833, 54.654968>,  <43.794304, 42.532879, 54.617680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.031311, 42.526833, 54.654968>,  <44.426327, 42.516754, 54.717113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031311, 42.526833, 54.654968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136208, -0.357838, -0.923796,
		-0.078871, -0.933443, 0.349946,
		-0.987536, 0.025195, -0.155366,
		43.735050, 42.534389, 54.608360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181488, 41.824486, 54.491718>,  <44.426327, 42.516754, 54.717113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181488, 41.824486, 54.491718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.907059, 42.075623, 54.344685>,  <43.742401, 42.226307, 54.256466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.907059, 42.075623, 54.344685>,  <44.181488, 41.824486, 54.491718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907059, 42.075623, 54.344685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107348, -0.412359, -0.904675,
		-0.719572, -0.660130, 0.215509,
		-0.686070, 0.627844, -0.367585,
		43.701237, 42.263977, 54.234409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866482, 41.395279, 53.938629>,  <44.181488, 41.824486, 54.491718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866482, 41.395279, 53.938629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.724670, 41.763306, 53.871960>,  <43.639584, 41.984123, 53.831959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.724670, 41.763306, 53.871960>,  <43.866482, 41.395279, 53.938629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724670, 41.763306, 53.871960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109974, -0.135987, -0.984588,
		-0.928554, -0.367399, -0.052972,
		-0.354533, 0.920068, -0.166675,
		43.618309, 42.039326, 53.821957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246296, 41.342442, 53.488125>,  <43.866482, 41.395279, 53.938629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246296, 41.342442, 53.488125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.404140, 41.708183, 53.451797>,  <43.498848, 41.927628, 53.430000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.404140, 41.708183, 53.451797>,  <43.246296, 41.342442, 53.488125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404140, 41.708183, 53.451797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018782, -0.106848, -0.994098,
		-0.918658, 0.390573, -0.059337,
		0.394608, 0.914350, -0.090821,
		43.522522, 41.982487, 53.424553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820625, 41.692307, 52.936508>,  <43.246296, 41.342442, 53.488125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820625, 41.692307, 52.936508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.163651, 41.896172, 52.964298>,  <43.369465, 42.018490, 52.980972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.163651, 41.896172, 52.964298>,  <42.820625, 41.692307, 52.936508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163651, 41.896172, 52.964298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119121, -0.065394, -0.990724,
		-0.500389, 0.857888, -0.116791,
		0.857567, 0.509659, 0.069471,
		43.420921, 42.049068, 52.985138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810299, 42.232140, 52.448715>,  <42.820625, 41.692307, 52.936508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810299, 42.232140, 52.448715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.185959, 42.121552, 52.530251>,  <43.411354, 42.055199, 52.579174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.185959, 42.121552, 52.530251>,  <42.810299, 42.232140, 52.448715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185959, 42.121552, 52.530251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199859, -0.042823, -0.978888,
		0.279366, 0.960067, 0.015039,
		0.939154, -0.276474, 0.203841,
		43.467705, 42.038609, 52.591404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214558, 42.536125, 51.930225>,  <42.810299, 42.232140, 52.448715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214558, 42.536125, 51.930225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.466431, 42.257568, 52.067947>,  <43.617554, 42.090435, 52.150581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.466431, 42.257568, 52.067947>,  <43.214558, 42.536125, 51.930225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466431, 42.257568, 52.067947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212060, -0.272292, -0.938556,
		0.747353, 0.664002, -0.023780,
		0.629678, -0.696390, 0.344306,
		43.655334, 42.048653, 52.171238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789871, 42.532505, 51.451557>,  <43.214558, 42.536125, 51.930225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789871, 42.532505, 51.451557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.897846, 42.207108, 51.657608>,  <43.962631, 42.011868, 51.781239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.897846, 42.207108, 51.657608>,  <43.789871, 42.532505, 51.451557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897846, 42.207108, 51.657608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398489, -0.392639, -0.828880,
		0.876550, 0.429020, 0.218180,
		0.269940, -0.813497, 0.515127,
		43.978828, 41.963058, 51.812145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551811, 42.395702, 51.374863>,  <43.789871, 42.532505, 51.451557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551811, 42.395702, 51.374863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.378536, 42.047585, 51.468609>,  <44.274570, 41.838715, 51.524857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.378536, 42.047585, 51.468609>,  <44.551811, 42.395702, 51.374863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378536, 42.047585, 51.468609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373817, -0.410100, -0.831913,
		0.820125, -0.272767, 0.502984,
		-0.433192, -0.870297, 0.234368,
		44.248577, 41.786495, 51.538918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044548, 41.961002, 51.104042>,  <44.551811, 42.395702, 51.374863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044548, 41.961002, 51.104042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.726044, 41.724167, 51.153687>,  <44.534943, 41.582066, 51.183475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.726044, 41.724167, 51.153687>,  <45.044548, 41.961002, 51.104042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726044, 41.724167, 51.153687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291015, -0.554758, -0.779458,
		0.530359, -0.584532, 0.614037,
		-0.796260, -0.592087, 0.124114,
		44.487167, 41.546539, 51.190922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286072, 41.277882, 51.284943>,  <45.044548, 41.961002, 51.104042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286072, 41.277882, 51.284943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.920372, 41.249069, 51.125465>,  <44.700951, 41.231781, 51.029778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.920372, 41.249069, 51.125465>,  <45.286072, 41.277882, 51.284943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920372, 41.249069, 51.125465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365331, -0.571992, -0.734410,
		-0.175150, -0.817091, 0.549259,
		-0.914252, -0.072029, -0.398693,
		44.646095, 41.227459, 51.005856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361271, 40.645824, 50.882160>,  <45.286072, 41.277882, 51.284943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361271, 40.645824, 50.882160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.046379, 40.831459, 50.719730>,  <44.857445, 40.942841, 50.622272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.046379, 40.831459, 50.719730>,  <45.361271, 40.645824, 50.882160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046379, 40.831459, 50.719730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120739, -0.529764, -0.839507,
		-0.604729, -0.709911, 0.361011,
		-0.787226, 0.464086, -0.406078,
		44.810211, 40.970684, 50.597908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038063, 40.150791, 50.589417>,  <45.361271, 40.645824, 50.882160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038063, 40.150791, 50.589417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.910675, 40.472054, 50.388016>,  <44.834240, 40.664810, 50.267174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.910675, 40.472054, 50.388016>,  <45.038063, 40.150791, 50.589417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.910675, 40.472054, 50.388016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147181, -0.482823, -0.863261,
		-0.936436, -0.349032, 0.035557,
		-0.318473, 0.803156, -0.503504,
		44.815132, 40.713001, 50.236965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525093, 39.876366, 50.115261>,  <45.038063, 40.150791, 50.589417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525093, 39.876366, 50.115261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.620613, 40.234970, 49.966000>,  <44.677925, 40.450134, 49.876442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.620613, 40.234970, 49.966000>,  <44.525093, 39.876366, 50.115261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620613, 40.234970, 49.966000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000326, -0.384345, -0.923190,
		-0.971068, 0.220339, -0.092075,
		0.238803, 0.896510, -0.373153,
		44.692253, 40.503922, 49.854053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.984833, 45.468758, 53.796265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.370544, 45.521187, 53.888336>,  <42.601971, 45.552643, 53.943581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.370544, 45.521187, 53.888336>,  <41.984833, 45.468758, 53.796265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370544, 45.521187, 53.888336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202036, -0.198047, 0.959145,
		0.171307, -0.971389, -0.164491,
		0.964280, 0.131075, 0.230182,
		42.659828, 45.560509, 53.957390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093307, 44.996902, 54.295223>,  <41.984833, 45.468758, 53.796265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093307, 44.996902, 54.295223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.389725, 45.263252, 54.329773>,  <42.567577, 45.423061, 54.350502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.389725, 45.263252, 54.329773>,  <42.093307, 44.996902, 54.295223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389725, 45.263252, 54.329773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077474, -0.042978, 0.996067,
		0.666970, -0.744823, 0.019739,
		0.741046, 0.665876, 0.086370,
		42.612038, 45.463017, 54.355682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578209, 44.729679, 54.729729>,  <42.093307, 44.996902, 54.295223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578209, 44.729679, 54.729729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.604343, 45.128510, 54.745575>,  <42.620022, 45.367809, 54.755081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.604343, 45.128510, 54.745575>,  <42.578209, 44.729679, 54.729729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604343, 45.128510, 54.745575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105095, -0.046356, 0.993381,
		0.992314, -0.060737, -0.107817,
		0.065333, 0.997077, 0.039617,
		42.623943, 45.427631, 54.757462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147476, 44.888100, 55.230484>,  <42.578209, 44.729679, 54.729729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147476, 44.888100, 55.230484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.919853, 45.215828, 55.202496>,  <42.783279, 45.412464, 55.185703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.919853, 45.215828, 55.202496>,  <43.147476, 44.888100, 55.230484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919853, 45.215828, 55.202496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071032, 0.133754, 0.988465,
		0.819226, 0.557521, -0.134311,
		-0.569055, 0.819317, -0.069973,
		42.749138, 45.461624, 55.181503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357975, 45.273666, 55.738304>,  <43.147476, 44.888100, 55.230484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357975, 45.273666, 55.738304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.009773, 45.459251, 55.672619>,  <42.800854, 45.570602, 55.633209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.009773, 45.459251, 55.672619>,  <43.357975, 45.273666, 55.738304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009773, 45.459251, 55.672619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130608, 0.103917, 0.985973,
		0.474517, 0.879740, -0.029863,
		-0.870503, 0.463961, -0.164212,
		42.748623, 45.598438, 55.623356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415375, 45.881405, 55.997250>,  <43.357975, 45.273666, 55.738304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415375, 45.881405, 55.997250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.017998, 45.835968, 56.002357>,  <42.779572, 45.808704, 56.005424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.017998, 45.835968, 56.002357>,  <43.415375, 45.881405, 55.997250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017998, 45.835968, 56.002357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022642, 0.305076, 0.952059,
		-0.112044, 0.945529, -0.305649,
		-0.993445, -0.113593, 0.012773,
		42.719963, 45.801891, 56.006191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211308, 46.406193, 56.459309>,  <43.415375, 45.881405, 55.997250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211308, 46.406193, 56.459309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.882660, 46.181244, 56.422028>,  <42.685471, 46.046276, 56.399658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.882660, 46.181244, 56.422028>,  <43.211308, 46.406193, 56.459309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882660, 46.181244, 56.422028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272583, 0.244002, 0.930678,
		-0.500645, 0.790065, -0.353769,
		-0.821616, -0.562371, -0.093199,
		42.636173, 46.012531, 56.394070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693451, 46.821922, 56.559361>,  <43.211308, 46.406193, 56.459309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693451, 46.821922, 56.559361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.560829, 46.455460, 56.649452>,  <42.481255, 46.235580, 56.703506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.560829, 46.455460, 56.649452>,  <42.693451, 46.821922, 56.559361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560829, 46.455460, 56.649452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243155, 0.313651, 0.917877,
		-0.911561, 0.249565, -0.326762,
		-0.331559, -0.916155, 0.225229,
		42.461361, 46.180614, 56.717022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003841, 46.950745, 56.765030>,  <42.693451, 46.821922, 56.559361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003841, 46.950745, 56.765030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.088303, 46.588486, 56.912117>,  <42.138981, 46.371132, 57.000370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.088303, 46.588486, 56.912117>,  <42.003841, 46.950745, 56.765030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088303, 46.588486, 56.912117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422659, 0.254613, 0.869788,
		-0.881347, -0.339081, -0.329016,
		0.211157, -0.905647, 0.367718,
		42.151649, 46.316792, 57.022434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403355, 46.746487, 57.256886>,  <42.003841, 46.950745, 56.765030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403355, 46.746487, 57.256886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.707565, 46.510162, 57.364624>,  <41.890091, 46.368370, 57.429268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.707565, 46.510162, 57.364624>,  <41.403355, 46.746487, 57.256886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707565, 46.510162, 57.364624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342562, -0.012693, 0.939409,
		-0.551592, -0.806712, -0.212042,
		0.760524, -0.590809, 0.269348,
		41.935722, 46.332920, 57.445427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035374, 46.213970, 57.753860>,  <41.403355, 46.746487, 57.256886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035374, 46.213970, 57.753860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.426373, 46.210091, 57.838158>,  <41.660973, 46.207764, 57.888737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.426373, 46.210091, 57.838158>,  <41.035374, 46.213970, 57.753860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426373, 46.210091, 57.838158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210865, -0.014656, 0.977405,
		-0.006404, -0.999845, -0.016375,
		0.977494, -0.009712, 0.210739,
		41.719620, 46.207180, 57.901379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151772, 45.664642, 58.175365>,  <41.035374, 46.213970, 57.753860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151772, 45.664642, 58.175365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.447838, 45.926674, 58.236076>,  <41.625477, 46.083893, 58.272503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.447838, 45.926674, 58.236076>,  <41.151772, 45.664642, 58.175365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447838, 45.926674, 58.236076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072712, -0.146421, 0.986546,
		0.668485, -0.741241, -0.060744,
		0.740163, 0.655075, 0.151777,
		41.669888, 46.123196, 58.281609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635967, 45.451496, 58.766609>,  <41.151772, 45.664642, 58.175365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635967, 45.451496, 58.766609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.581352, 45.841919, 58.698875>,  <41.548584, 46.076172, 58.658234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.581352, 45.841919, 58.698875>,  <41.635967, 45.451496, 58.766609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581352, 45.841919, 58.698875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433256, 0.094885, 0.896263,
		0.890868, 0.195744, 0.409925,
		-0.136542, 0.976054, -0.169338,
		41.540390, 46.134735, 58.648075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769756, 45.716225, 59.392250>,  <41.635967, 45.451496, 58.766609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769756, 45.716225, 59.392250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.510574, 45.966499, 59.218506>,  <41.355064, 46.116665, 59.114262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.510574, 45.966499, 59.218506>,  <41.769756, 45.716225, 59.392250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510574, 45.966499, 59.218506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477654, 0.110406, 0.871583,
		0.593294, 0.772222, 0.227324,
		-0.647957, 0.625687, -0.434358,
		41.316189, 46.154205, 59.088200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815380, 44.991127, 59.606380>,  <41.769756, 45.716225, 59.392250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815380, 44.991127, 59.606380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.971016, 44.625839, 59.654778>,  <42.064396, 44.406666, 59.683815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.971016, 44.625839, 59.654778>,  <41.815380, 44.991127, 59.606380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971016, 44.625839, 59.654778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113223, -0.082940, -0.990102,
		0.914216, 0.398937, 0.071127,
		0.389089, -0.913220, 0.120994,
		42.087742, 44.351871, 59.691074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327454, 44.957989, 59.069614>,  <41.815380, 44.991127, 59.606380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327454, 44.957989, 59.069614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.312393, 44.572708, 59.176064>,  <42.303356, 44.341541, 59.239933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.312393, 44.572708, 59.176064>,  <42.327454, 44.957989, 59.069614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312393, 44.572708, 59.176064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326134, -0.263576, -0.907835,
		0.944573, 0.052610, 0.324057,
		-0.037652, -0.963203, 0.266125,
		42.301098, 44.283749, 59.255901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882957, 44.746944, 58.855335>,  <42.327454, 44.957989, 59.069614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882957, 44.746944, 58.855335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.666389, 44.411613, 58.880844>,  <42.536449, 44.210415, 58.896149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.666389, 44.411613, 58.880844>,  <42.882957, 44.746944, 58.855335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666389, 44.411613, 58.880844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324316, -0.278227, -0.904106,
		0.775682, -0.468821, 0.422522,
		-0.541421, -0.838329, 0.063770,
		42.503963, 44.160114, 58.899975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321266, 44.248829, 58.659714>,  <42.882957, 44.746944, 58.855335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321266, 44.248829, 58.659714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.958946, 44.086227, 58.611916>,  <42.741554, 43.988667, 58.583237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.958946, 44.086227, 58.611916>,  <43.321266, 44.248829, 58.659714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958946, 44.086227, 58.611916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301145, -0.419268, -0.856461,
		0.298055, -0.811768, 0.502190,
		-0.905801, -0.406505, -0.119495,
		42.687206, 43.964275, 58.576069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463757, 43.617275, 58.481312>,  <43.321266, 44.248829, 58.659714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463757, 43.617275, 58.481312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.091560, 43.684349, 58.351040>,  <42.868240, 43.724594, 58.272877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.091560, 43.684349, 58.351040>,  <43.463757, 43.617275, 58.481312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091560, 43.684349, 58.351040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188174, -0.543991, -0.817719,
		-0.314285, -0.822165, 0.474625,
		-0.930492, 0.167685, -0.325678,
		42.812412, 43.734653, 58.253338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247414, 42.983822, 58.255802>,  <43.463757, 43.617275, 58.481312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247414, 42.983822, 58.255802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.974789, 43.230957, 58.098961>,  <42.811214, 43.379238, 58.004856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.974789, 43.230957, 58.098961>,  <43.247414, 42.983822, 58.255802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974789, 43.230957, 58.098961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029880, -0.511893, -0.858529,
		-0.731150, -0.596857, 0.330426,
		-0.681562, 0.617841, -0.392105,
		42.770321, 43.416309, 57.981331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980709, 42.577930, 57.794727>,  <43.247414, 42.983822, 58.255802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980709, 42.577930, 57.794727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.878670, 42.939163, 57.656532>,  <42.817448, 43.155903, 57.573616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.878670, 42.939163, 57.656532>,  <42.980709, 42.577930, 57.794727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878670, 42.939163, 57.656532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061289, -0.341489, -0.937885,
		-0.964971, -0.260426, 0.031764,
		-0.255097, 0.903085, -0.345488,
		42.802139, 43.210091, 57.552887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437256, 42.502266, 57.216587>,  <42.980709, 42.577930, 57.794727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437256, 42.502266, 57.216587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.616371, 42.856331, 57.166027>,  <42.723839, 43.068768, 57.135693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.616371, 42.856331, 57.166027>,  <42.437256, 42.502266, 57.216587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616371, 42.856331, 57.166027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082648, -0.181733, -0.979869,
		-0.890312, 0.428327, -0.154535,
		0.447788, 0.885161, -0.126399,
		42.750706, 43.121880, 57.128109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211025, 42.792458, 56.594955>,  <42.437256, 42.502266, 57.216587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211025, 42.792458, 56.594955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.536083, 43.016502, 56.659302>,  <42.731117, 43.150928, 56.697910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.536083, 43.016502, 56.659302>,  <42.211025, 42.792458, 56.594955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536083, 43.016502, 56.659302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262510, -0.105393, -0.959156,
		-0.520282, 0.821684, -0.232682,
		0.812647, 0.560113, 0.160866,
		42.779877, 43.184536, 56.707561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101948, 43.260967, 56.079872>,  <42.211025, 42.792458, 56.594955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101948, 43.260967, 56.079872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.481377, 43.229500, 56.202522>,  <42.709034, 43.210621, 56.276112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.481377, 43.229500, 56.202522>,  <42.101948, 43.260967, 56.079872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481377, 43.229500, 56.202522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290355, -0.169678, -0.941756,
		0.126116, 0.982355, -0.138110,
		0.948572, -0.078669, 0.306630,
		42.765949, 43.205898, 56.294510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450428, 43.717712, 55.630028>,  <42.101948, 43.260967, 56.079872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450428, 43.717712, 55.630028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.717316, 43.451355, 55.763535>,  <42.877449, 43.291538, 55.843639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.717316, 43.451355, 55.763535>,  <42.450428, 43.717712, 55.630028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717316, 43.451355, 55.763535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278247, -0.192838, -0.940953,
		0.690942, 0.720690, 0.056619,
		0.667217, -0.665898, 0.333770,
		42.917480, 43.251587, 55.863667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075233, 43.859020, 55.286358>,  <42.450428, 43.717712, 55.630028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075233, 43.859020, 55.286358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.110985, 43.490234, 55.437084>,  <43.132435, 43.268963, 55.527519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.110985, 43.490234, 55.437084>,  <43.075233, 43.859020, 55.286358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110985, 43.490234, 55.437084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369335, -0.320676, -0.872214,
		0.924988, 0.217124, 0.311855,
		0.089375, -0.921967, 0.376813,
		43.137798, 43.213646, 55.550129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718357, 43.624718, 55.067131>,  <43.075233, 43.859020, 55.286358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718357, 43.624718, 55.067131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.521709, 43.290886, 55.166561>,  <43.403721, 43.090588, 55.226219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.521709, 43.290886, 55.166561>,  <43.718357, 43.624718, 55.067131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521709, 43.290886, 55.166561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448146, -0.487228, -0.749516,
		0.746644, -0.257077, 0.613543,
		-0.491618, -0.834578, 0.248578,
		43.374226, 43.040512, 55.241135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201183, 43.125908, 55.114803>,  <43.718357, 43.624718, 55.067131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201183, 43.125908, 55.114803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.866020, 42.922447, 55.035625>,  <43.664921, 42.800369, 54.988121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.866020, 42.922447, 55.035625>,  <44.201183, 43.125908, 55.114803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866020, 42.922447, 55.035625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422808, -0.375553, -0.824739,
		0.345168, -0.774747, 0.529742,
		-0.837909, -0.508653, -0.197940,
		43.614647, 42.769852, 54.976242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762909, 42.621357, 55.391842>,  <44.201183, 43.125908, 55.114803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762909, 42.621357, 55.391842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.140648, 42.748894, 55.424187>,  <45.367290, 42.825417, 55.443592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.140648, 42.748894, 55.424187>,  <44.762909, 42.621357, 55.391842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.140648, 42.748894, 55.424187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186392, 0.316151, 0.930219,
		0.271025, -0.893527, 0.357987,
		0.944353, 0.318839, 0.080861,
		45.423954, 42.844547, 55.448444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046295, 42.367336, 56.051075>,  <44.762909, 42.621357, 55.391842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.046295, 42.367336, 56.051075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.298553, 42.667503, 55.971912>,  <45.449909, 42.847603, 55.924416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.298553, 42.667503, 55.971912>,  <45.046295, 42.367336, 56.051075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298553, 42.667503, 55.971912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145655, 0.364925, 0.919573,
		0.762283, -0.551095, 0.339438,
		0.630642, 0.750416, -0.197906,
		45.487747, 42.892628, 55.912540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352871, 42.474213, 56.662857>,  <45.046295, 42.367336, 56.051075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352871, 42.474213, 56.662857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.455757, 42.821022, 56.492157>,  <45.517487, 43.029106, 56.389736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.455757, 42.821022, 56.492157>,  <45.352871, 42.474213, 56.662857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.455757, 42.821022, 56.492157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095266, 0.416708, 0.904035,
		0.961648, -0.273183, 0.024584,
		0.257211, 0.867021, -0.426751,
		45.532921, 43.081127, 56.364132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857880, 42.723354, 57.089207>,  <45.352871, 42.474213, 56.662857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857880, 42.723354, 57.089207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.763222, 43.054131, 56.885178>,  <45.706425, 43.252594, 56.762760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.763222, 43.054131, 56.885178>,  <45.857880, 42.723354, 57.089207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763222, 43.054131, 56.885178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061058, 0.536603, 0.841623,
		0.969675, 0.168024, -0.177477,
		-0.236647, 0.826937, -0.510071,
		45.692226, 43.302212, 56.732155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.393677, 43.195705, 57.152847>,  <45.857880, 42.723354, 57.089207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.393677, 43.195705, 57.152847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.078720, 43.419662, 57.049671>,  <45.889744, 43.554035, 56.987766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.078720, 43.419662, 57.049671>,  <46.393677, 43.195705, 57.152847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.078720, 43.419662, 57.049671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035074, 0.458437, 0.888035,
		0.615448, 0.690189, -0.380609,
		-0.787396, 0.559889, -0.257936,
		45.842503, 43.587627, 56.972290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.589779, 43.862255, 57.300930>,  <46.393677, 43.195705, 57.152847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.589779, 43.862255, 57.300930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.191223, 43.876305, 57.331863>,  <45.952091, 43.884735, 57.350422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.191223, 43.876305, 57.331863>,  <46.589779, 43.862255, 57.300930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.191223, 43.876305, 57.331863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084661, 0.484181, 0.870862,
		-0.006853, 0.874262, -0.485406,
		-0.996386, 0.035127, 0.077334,
		45.892307, 43.886841, 57.355064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.474285, 44.405170, 57.735222>,  <46.589779, 43.862255, 57.300930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.474285, 44.405170, 57.735222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.123779, 44.212509, 57.740356>,  <45.913475, 44.096912, 57.743439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.123779, 44.212509, 57.740356>,  <46.474285, 44.405170, 57.735222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.123779, 44.212509, 57.740356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252937, 0.482523, 0.838567,
		-0.410094, 0.731562, -0.544647,
		-0.876268, -0.481652, 0.012841,
		45.860897, 44.068012, 57.744209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.672894, 45.193832, 57.730392>,  <46.474285, 44.405170, 57.735222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.672894, 45.193832, 57.730392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.018486, 45.265450, 57.918640>,  <47.225842, 45.308418, 58.031590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.018486, 45.265450, 57.918640>,  <46.672894, 45.193832, 57.730392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.018486, 45.265450, 57.918640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487499, -0.063475, -0.870813,
		-0.126037, 0.981792, -0.142123,
		0.863979, 0.179040, 0.470623,
		47.277679, 45.319160, 58.059826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.065807, 45.755039, 57.436317>,  <46.672894, 45.193832, 57.730392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.065807, 45.755039, 57.436317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.346565, 45.544113, 57.627853>,  <47.515018, 45.417557, 57.742775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.346565, 45.544113, 57.627853>,  <47.065807, 45.755039, 57.436317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.346565, 45.544113, 57.627853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510990, -0.095569, -0.854258,
		0.496225, 0.844279, 0.202373,
		0.701891, -0.527314, 0.478841,
		47.557133, 45.385918, 57.771507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.697491, 46.089542, 57.313320>,  <47.065807, 45.755039, 57.436317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.697491, 46.089542, 57.313320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.778267, 45.709770, 57.409485>,  <47.826733, 45.481907, 57.467182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.778267, 45.709770, 57.409485>,  <47.697491, 46.089542, 57.313320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.778267, 45.709770, 57.409485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486219, -0.115898, -0.866117,
		0.850184, 0.291793, 0.438228,
		0.201937, -0.949434, 0.240410,
		47.838848, 45.424938, 57.481609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.336922, 46.058678, 57.074738>,  <47.697491, 46.089542, 57.313320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.336922, 46.058678, 57.074738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<48.253822, 45.670685, 57.125305>,  <48.203964, 45.437889, 57.155647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<48.253822, 45.670685, 57.125305>,  <48.336922, 46.058678, 57.074738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.253822, 45.670685, 57.125305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335780, -0.192101, -0.922144,
		0.918745, -0.149125, 0.365608,
		-0.207748, -0.969979, 0.126419,
		48.191498, 45.379692, 57.163231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.933300, 45.618702, 56.878819>,  <48.336922, 46.058678, 57.074738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.933300, 45.618702, 56.878819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<48.619728, 45.371628, 56.853771>,  <48.431587, 45.223381, 56.838741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<48.619728, 45.371628, 56.853771>,  <48.933300, 45.618702, 56.878819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.619728, 45.371628, 56.853771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234347, -0.200990, -0.951149,
		0.574926, -0.760306, 0.302314,
		-0.783927, -0.617687, -0.062620,
		48.384548, 45.186321, 56.834984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.126038, 44.916626, 56.752289>,  <48.933300, 45.618702, 56.878819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.126038, 44.916626, 56.752289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<48.751175, 44.950630, 56.616928>,  <48.526257, 44.971031, 56.535709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<48.751175, 44.950630, 56.616928>,  <49.126038, 44.916626, 56.752289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.751175, 44.950630, 56.616928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286035, -0.368261, -0.884629,
		-0.199820, -0.925828, 0.320802,
		-0.937153, 0.085006, -0.338405,
		48.470028, 44.976131, 56.515408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.068863, 44.352158, 56.211281>,  <49.126038, 44.916626, 56.752289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.068863, 44.352158, 56.211281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<48.730766, 44.545387, 56.119881>,  <48.527908, 44.661324, 56.065041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<48.730766, 44.545387, 56.119881>,  <49.068863, 44.352158, 56.211281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.730766, 44.545387, 56.119881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004509, -0.434030, -0.900887,
		-0.534372, -0.760433, 0.369037,
		-0.845238, 0.483073, -0.228505,
		48.477196, 44.690308, 56.051331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.325741, 48.391472, 58.288155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.075882, 48.087799, 58.214989>,  <43.925964, 47.905598, 58.171089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.075882, 48.087799, 58.214989>,  <44.325741, 48.391472, 58.288155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075882, 48.087799, 58.214989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480448, -0.188970, -0.856423,
		0.615614, -0.622846, 0.482787,
		-0.624651, -0.759179, -0.182913,
		43.888485, 47.860046, 58.160114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751907, 47.764469, 58.057735>,  <44.325741, 48.391472, 58.288155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.751907, 47.764469, 58.057735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.384766, 47.741165, 57.900688>,  <44.164482, 47.727180, 57.806458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.384766, 47.741165, 57.900688>,  <44.751907, 47.764469, 58.057735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384766, 47.741165, 57.900688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393338, -0.266112, -0.880039,
		-0.053206, -0.962179, 0.267169,
		-0.917853, -0.058264, -0.392621,
		44.109409, 47.723686, 57.782902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.746048, 47.194748, 57.655827>,  <44.751907, 47.764469, 58.057735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.746048, 47.194748, 57.655827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.394547, 47.332527, 57.523682>,  <44.183643, 47.415195, 57.444393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.394547, 47.332527, 57.523682>,  <44.746048, 47.194748, 57.655827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394547, 47.332527, 57.523682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273948, -0.202788, -0.940122,
		-0.390822, -0.916640, 0.083839,
		-0.878755, 0.344453, -0.330365,
		44.130920, 47.435863, 57.424572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538120, 46.697186, 57.165188>,  <44.746048, 47.194748, 57.655827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538120, 46.697186, 57.165188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.357536, 47.045311, 57.086456>,  <44.249184, 47.254185, 57.039219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.357536, 47.045311, 57.086456>,  <44.538120, 46.697186, 57.165188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357536, 47.045311, 57.086456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349155, -0.030690, -0.936562,
		-0.821141, -0.491546, -0.290018,
		-0.451463, 0.870311, -0.196826,
		44.222099, 47.306404, 57.027409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155807, 46.575504, 56.630943>,  <44.538120, 46.697186, 57.165188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155807, 46.575504, 56.630943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.209709, 46.971664, 56.618626>,  <44.242050, 47.209362, 56.611237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.209709, 46.971664, 56.618626>,  <44.155807, 46.575504, 56.630943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209709, 46.971664, 56.618626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160634, -0.052501, -0.985617,
		-0.977772, 0.127871, -0.166167,
		0.134756, 0.990400, -0.030794,
		44.250137, 47.268784, 56.609386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922337, 46.742664, 56.013729>,  <44.155807, 46.575504, 56.630943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922337, 46.742664, 56.013729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.161327, 47.048012, 56.111946>,  <44.304722, 47.231220, 56.170876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.161327, 47.048012, 56.111946>,  <43.922337, 46.742664, 56.013729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161327, 47.048012, 56.111946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230721, 0.129609, -0.964349,
		-0.767977, 0.632829, -0.098687,
		0.597477, 0.763367, 0.245544,
		44.340569, 47.277023, 56.185608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687943, 47.322044, 55.522911>,  <43.922337, 46.742664, 56.013729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687943, 47.322044, 55.522911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.067932, 47.395729, 55.623802>,  <44.295925, 47.439941, 55.684338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.067932, 47.395729, 55.623802>,  <43.687943, 47.322044, 55.522911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067932, 47.395729, 55.623802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224698, 0.157816, -0.961564,
		-0.216937, 0.970134, 0.108529,
		0.949973, 0.184213, 0.252223,
		44.352924, 47.450993, 55.699471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897781, 47.955029, 55.173054>,  <43.687943, 47.322044, 55.522911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897781, 47.955029, 55.173054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.234238, 47.764107, 55.274765>,  <44.436111, 47.649555, 55.335793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.234238, 47.764107, 55.274765>,  <43.897781, 47.955029, 55.173054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234238, 47.764107, 55.274765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387926, 0.204901, -0.898626,
		0.376813, 0.854517, 0.357509,
		0.841145, -0.477301, 0.254280,
		44.486580, 47.620918, 55.351048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320705, 48.403198, 54.854549>,  <43.897781, 47.955029, 55.173054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320705, 48.403198, 54.854549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.557739, 48.086594, 54.914345>,  <44.699959, 47.896629, 54.950222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.557739, 48.086594, 54.914345>,  <44.320705, 48.403198, 54.854549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.557739, 48.086594, 54.914345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536510, 0.249407, -0.806197,
		0.600832, 0.557944, 0.572450,
		0.592586, -0.791514, 0.149491,
		44.735516, 47.849140, 54.959190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037209, 48.690166, 54.875973>,  <44.320705, 48.403198, 54.854549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037209, 48.690166, 54.875973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.076401, 48.301689, 54.789078>,  <45.099915, 48.068604, 54.736942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.076401, 48.301689, 54.789078>,  <45.037209, 48.690166, 54.875973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076401, 48.301689, 54.789078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575951, 0.233353, -0.783471,
		0.811591, -0.048352, 0.582222,
		0.097981, -0.971189, -0.217235,
		45.105797, 48.010334, 54.723907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.693371, 48.672363, 54.716389>,  <45.037209, 48.690166, 54.875973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.693371, 48.672363, 54.716389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.543243, 48.339012, 54.554092>,  <45.453167, 48.139000, 54.456715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.543243, 48.339012, 54.554092>,  <45.693371, 48.672363, 54.716389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.543243, 48.339012, 54.554092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558192, 0.146245, -0.816722,
		0.739974, -0.533006, 0.410297,
		-0.375314, -0.833377, -0.405737,
		45.430649, 48.089001, 54.432373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.224091, 48.222050, 54.574165>,  <45.693371, 48.672363, 54.716389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.224091, 48.222050, 54.574165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.935394, 48.093346, 54.329033>,  <45.762177, 48.016125, 54.181953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.935394, 48.093346, 54.329033>,  <46.224091, 48.222050, 54.574165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.935394, 48.093346, 54.329033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643113, 0.015633, -0.765612,
		0.255925, -0.946692, 0.195646,
		-0.721740, -0.321762, -0.612830,
		45.718872, 47.996819, 54.145184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.879917, 47.780224, 54.680008>,  <46.224091, 48.222050, 54.574165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.879917, 47.780224, 54.680008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.236832, 47.912590, 54.802856>,  <47.450981, 47.992012, 54.876564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.236832, 47.912590, 54.802856>,  <46.879917, 47.780224, 54.680008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.236832, 47.912590, 54.802856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379362, 0.180741, 0.907423,
		0.244774, -0.926189, 0.286810,
		0.892284, 0.330918, 0.307120,
		47.504517, 48.011864, 54.894993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.891682, 47.470570, 55.337383>,  <46.879917, 47.780224, 54.680008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.891682, 47.470570, 55.337383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.163101, 47.764381, 55.339802>,  <47.325954, 47.940670, 55.341251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.163101, 47.764381, 55.339802>,  <46.891682, 47.470570, 55.337383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.163101, 47.764381, 55.339802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245005, 0.218563, 0.944565,
		0.692491, -0.642414, 0.328269,
		0.678549, 0.734530, 0.006042,
		47.366665, 47.984741, 55.341614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.219727, 47.457214, 55.981838>,  <46.891682, 47.470570, 55.337383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.219727, 47.457214, 55.981838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.301033, 47.825333, 55.848129>,  <47.349815, 48.046204, 55.767902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.301033, 47.825333, 55.848129>,  <47.219727, 47.457214, 55.981838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.301033, 47.825333, 55.848129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196063, 0.372742, 0.906986,
		0.959293, -0.118820, 0.256201,
		0.203265, 0.920297, -0.334272,
		47.362011, 48.101421, 55.747849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.754173, 47.691296, 56.350002>,  <47.219727, 47.457214, 55.981838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.754173, 47.691296, 56.350002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.555061, 48.019005, 56.236156>,  <47.435593, 48.215630, 56.167847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.555061, 48.019005, 56.236156>,  <47.754173, 47.691296, 56.350002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.555061, 48.019005, 56.236156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073158, 0.287331, 0.955034,
		0.864213, 0.496218, -0.083091,
		-0.497779, 0.819273, -0.284617,
		47.405727, 48.264786, 56.150772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.902157, 48.244244, 56.873466>,  <47.754173, 47.691296, 56.350002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.902157, 48.244244, 56.873466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.562492, 48.368393, 56.702545>,  <47.358692, 48.442883, 56.599995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.562492, 48.368393, 56.702545>,  <47.902157, 48.244244, 56.873466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.562492, 48.368393, 56.702545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332622, 0.314145, 0.889199,
		0.410221, 0.897206, -0.163523,
		-0.849165, 0.310377, -0.427299,
		47.307743, 48.461506, 56.574356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.857063, 48.835667, 57.189079>,  <47.902157, 48.244244, 56.873466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.857063, 48.835667, 57.189079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.491745, 48.724350, 57.070114>,  <47.272556, 48.657562, 56.998734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.491745, 48.724350, 57.070114>,  <47.857063, 48.835667, 57.189079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.491745, 48.724350, 57.070114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394170, 0.419911, 0.817499,
		-0.102612, 0.863847, -0.493193,
		-0.913291, -0.278288, -0.297415,
		47.217758, 48.640865, 56.980888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.433598, 49.345898, 57.468987>,  <47.857063, 48.835667, 57.189079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.433598, 49.345898, 57.468987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.181198, 49.051399, 57.371181>,  <47.029758, 48.874699, 57.312500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.181198, 49.051399, 57.371181>,  <47.433598, 49.345898, 57.468987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.181198, 49.051399, 57.371181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605039, 0.269768, 0.749101,
		-0.485561, 0.620619, -0.615681,
		-0.630997, -0.736246, -0.244510,
		46.991898, 48.830524, 57.297829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.831371, 49.643913, 57.355183>,  <47.433598, 49.345898, 57.468987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.831371, 49.643913, 57.355183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.742668, 49.264099, 57.443909>,  <46.689445, 49.036209, 57.497143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.742668, 49.264099, 57.443909>,  <46.831371, 49.643913, 57.355183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.742668, 49.264099, 57.443909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513434, 0.307097, 0.801297,
		-0.828980, 0.063811, -0.555627,
		-0.221763, -0.949537, 0.221815,
		46.676140, 48.979237, 57.510452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.236397, 49.755779, 57.836945>,  <46.831371, 49.643913, 57.355183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.236397, 49.755779, 57.836945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.315422, 49.364517, 57.862835>,  <46.362839, 49.129761, 57.878368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.315422, 49.364517, 57.862835>,  <46.236397, 49.755779, 57.836945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.315422, 49.364517, 57.862835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493119, -0.042102, 0.868942,
		-0.847231, -0.203590, -0.490663,
		0.197566, -0.978150, 0.064724,
		46.374691, 49.071072, 57.882252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.618534, 49.349876, 58.221298>,  <46.236397, 49.755779, 57.836945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.618534, 49.349876, 58.221298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.934853, 49.109077, 58.265560>,  <46.124645, 48.964600, 58.292118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.934853, 49.109077, 58.265560>,  <45.618534, 49.349876, 58.221298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.934853, 49.109077, 58.265560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298999, -0.222184, 0.928027,
		-0.534080, -0.766966, -0.355698,
		0.790796, -0.601994, 0.110658,
		46.172092, 48.928478, 58.298759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430367, 48.597645, 58.398727>,  <45.618534, 49.349876, 58.221298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430367, 48.597645, 58.398727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.803284, 48.633011, 58.539021>,  <46.027035, 48.654228, 58.623196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.803284, 48.633011, 58.539021>,  <45.430367, 48.597645, 58.398727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.803284, 48.633011, 58.539021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308178, -0.313486, 0.898194,
		0.189361, -0.945468, -0.265014,
		0.932292, 0.088411, 0.350735,
		46.082970, 48.659534, 58.644241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549168, 48.058491, 58.859390>,  <45.430367, 48.597645, 58.398727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549168, 48.058491, 58.859390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.847672, 48.307076, 58.954796>,  <46.026775, 48.456226, 59.012039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.847672, 48.307076, 58.954796>,  <45.549168, 48.058491, 58.859390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.847672, 48.307076, 58.954796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104800, -0.244152, 0.964057,
		0.657354, -0.744432, -0.117072,
		0.746259, 0.621458, 0.238510,
		46.071548, 48.493511, 59.026348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864101, 47.727364, 59.352013>,  <45.549168, 48.058491, 58.859390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864101, 47.727364, 59.352013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.030548, 48.083809, 59.424419>,  <46.130417, 48.297676, 59.467861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.030548, 48.083809, 59.424419>,  <45.864101, 47.727364, 59.352013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030548, 48.083809, 59.424419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122554, -0.142292, 0.982209,
		0.901016, -0.430895, 0.049999,
		0.416115, 0.891113, 0.181015,
		46.155384, 48.351143, 59.478725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.509281, 47.639050, 59.818726>,  <45.864101, 47.727364, 59.352013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.509281, 47.639050, 59.818726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.383926, 48.015259, 59.871201>,  <46.308716, 48.240982, 59.902683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.383926, 48.015259, 59.871201>,  <46.509281, 47.639050, 59.818726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.383926, 48.015259, 59.871201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004799, -0.136573, 0.990618,
		0.949614, 0.311075, 0.038286,
		-0.313385, 0.940521, 0.131184,
		46.289909, 48.297417, 59.910557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.823418, 47.233177, 60.359200>,  <46.509281, 47.639050, 59.818726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.823418, 47.233177, 60.359200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.735855, 46.858444, 60.468327>,  <46.683319, 46.633606, 60.533802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.735855, 46.858444, 60.468327>,  <46.823418, 47.233177, 60.359200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.735855, 46.858444, 60.468327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219740, -0.319753, -0.921668,
		0.950681, -0.141810, 0.275855,
		-0.218907, -0.936829, 0.272821,
		46.670181, 46.577396, 60.550175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.495399, 46.769928, 60.195858>,  <46.823418, 47.233177, 60.359200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.495399, 46.769928, 60.195858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.158623, 46.557343, 60.233124>,  <46.956554, 46.429790, 60.255482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.158623, 46.557343, 60.233124>,  <47.495399, 46.769928, 60.195858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.158623, 46.557343, 60.233124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255328, -0.544540, -0.798926,
		0.475327, -0.648866, 0.594170,
		-0.841945, -0.531460, 0.093161,
		46.906040, 46.397903, 60.261070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.739784, 46.061695, 60.059441>,  <47.495399, 46.769928, 60.195858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.739784, 46.061695, 60.059441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.346191, 46.065231, 59.988216>,  <47.110035, 46.067352, 59.945484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.346191, 46.065231, 59.988216>,  <47.739784, 46.061695, 60.059441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.346191, 46.065231, 59.988216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137345, -0.599186, -0.788741,
		-0.113663, -0.800561, 0.588374,
		-0.983980, 0.008841, -0.178058,
		47.050999, 46.067883, 59.934799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.584396, 45.403156, 60.024597>,  <47.739784, 46.061695, 60.059441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.584396, 45.403156, 60.024597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.300346, 45.607582, 59.830879>,  <47.129917, 45.730236, 59.714649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.300346, 45.607582, 59.830879>,  <47.584396, 45.403156, 60.024597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.300346, 45.607582, 59.830879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201308, -0.511748, -0.835218,
		-0.674683, -0.690601, 0.260524,
		-0.710125, 0.511062, -0.484291,
		47.087311, 45.760902, 59.685593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.187897, 44.861645, 59.673840>,  <47.584396, 45.403156, 60.024597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.187897, 44.861645, 59.673840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.123993, 45.205772, 59.480213>,  <47.085651, 45.412251, 59.364037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.123993, 45.205772, 59.480213>,  <47.187897, 44.861645, 59.673840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.123993, 45.205772, 59.480213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005398, -0.491122, -0.871074,
		-0.987141, -0.136552, 0.083107,
		-0.159763, 0.860322, -0.484069,
		47.076065, 45.463867, 59.334991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.796040, 44.598076, 59.103127>,  <47.187897, 44.861645, 59.673840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.796040, 44.598076, 59.103127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.942459, 44.964989, 59.040382>,  <47.030312, 45.185135, 59.002735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.942459, 44.964989, 59.040382>,  <46.796040, 44.598076, 59.103127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.942459, 44.964989, 59.040382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232235, -0.253272, -0.939106,
		-0.901153, 0.307327, -0.305734,
		0.366047, 0.917280, -0.156865,
		47.052273, 45.240173, 58.993324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.596718, 44.844044, 58.365849>,  <46.796040, 44.598076, 59.103127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.596718, 44.844044, 58.365849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.908531, 45.073555, 58.466339>,  <47.095619, 45.211262, 58.526634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.908531, 45.073555, 58.466339>,  <46.596718, 44.844044, 58.365849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.908531, 45.073555, 58.466339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322589, -0.023969, -0.946235,
		-0.536904, 0.818662, -0.203779,
		0.779532, 0.573775, 0.251222,
		47.142391, 45.245686, 58.541706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915382, 44.923401, 57.960968>,  <46.596718, 44.844044, 58.365849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915382, 44.923401, 57.960968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.738213, 44.572052, 58.032829>,  <45.631908, 44.361244, 58.075947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.738213, 44.572052, 58.032829>,  <45.915382, 44.923401, 57.960968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738213, 44.572052, 58.032829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247221, 0.312270, 0.917262,
		-0.861798, 0.361867, -0.355466,
		-0.442928, -0.878373, 0.179652,
		45.605335, 44.308540, 58.086723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185783, 45.073448, 58.113316>,  <45.915382, 44.923401, 57.960968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.185783, 45.073448, 58.113316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.302002, 44.738144, 58.297882>,  <45.371731, 44.536961, 58.408623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.302002, 44.738144, 58.297882>,  <45.185783, 45.073448, 58.113316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302002, 44.738144, 58.297882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407517, 0.327899, 0.852298,
		-0.865744, -0.435666, -0.246336,
		0.290545, -0.838258, 0.461418,
		45.389164, 44.486668, 58.436306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563202, 44.880863, 58.495182>,  <45.185783, 45.073448, 58.113316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563202, 44.880863, 58.495182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.854080, 44.660187, 58.658554>,  <45.028606, 44.527779, 58.756577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.854080, 44.660187, 58.658554>,  <44.563202, 44.880863, 58.495182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854080, 44.660187, 58.658554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258536, 0.331058, 0.907502,
		-0.635878, -0.765528, 0.098112,
		0.727199, -0.551695, 0.408429,
		45.072239, 44.494678, 58.781082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177086, 44.367859, 58.789829>,  <44.563202, 44.880863, 58.495182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177086, 44.367859, 58.789829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.531284, 44.397453, 58.973320>,  <44.743801, 44.415211, 59.083416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.531284, 44.397453, 58.973320>,  <44.177086, 44.367859, 58.789829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531284, 44.397453, 58.973320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464126, 0.093790, 0.880790,
		0.022138, -0.992840, 0.117387,
		0.885492, 0.073981, 0.458727,
		44.796932, 44.419647, 59.110939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036396, 43.907261, 59.354042>,  <44.177086, 44.367859, 58.789829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036396, 43.907261, 59.354042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.359928, 44.114700, 59.464928>,  <44.554047, 44.239162, 59.531460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.359928, 44.114700, 59.464928>,  <44.036396, 43.907261, 59.354042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359928, 44.114700, 59.464928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399429, 0.138550, 0.906235,
		0.431564, -0.843718, 0.319206,
		0.808832, 0.518598, 0.277212,
		44.602577, 44.270279, 59.548092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290787, 43.648163, 60.078499>,  <44.036396, 43.907261, 59.354042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290787, 43.648163, 60.078499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.426193, 44.017845, 60.007790>,  <44.507435, 44.239655, 59.965363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.426193, 44.017845, 60.007790>,  <44.290787, 43.648163, 60.078499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426193, 44.017845, 60.007790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506257, 0.337241, 0.793708,
		0.793167, -0.179186, 0.582047,
		0.338511, 0.924208, -0.176773,
		44.527748, 44.295109, 59.954758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646465, 43.797974, 60.684933>,  <44.290787, 43.648163, 60.078499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646465, 43.797974, 60.684933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.527618, 44.137764, 60.510529>,  <44.456310, 44.341640, 60.405888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.527618, 44.137764, 60.510529>,  <44.646465, 43.797974, 60.684933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.527618, 44.137764, 60.510529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240626, 0.375279, 0.895134,
		0.924024, 0.370875, 0.092905,
		-0.297118, 0.849480, -0.436010,
		44.438484, 44.392609, 60.379726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831795, 44.312977, 61.230675>,  <44.646465, 43.797974, 60.684933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831795, 44.312977, 61.230675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.598042, 44.507446, 60.970787>,  <44.457790, 44.624126, 60.814854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.598042, 44.507446, 60.970787>,  <44.831795, 44.312977, 61.230675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598042, 44.507446, 60.970787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404163, 0.519913, 0.752557,
		0.703668, 0.702375, -0.107336,
		-0.584383, 0.486169, -0.649720,
		44.422726, 44.653297, 60.775871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827110, 45.013802, 61.465111>,  <44.831795, 44.312977, 61.230675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827110, 45.013802, 61.465111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.492767, 44.932198, 61.261261>,  <44.292160, 44.883236, 61.138950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.492767, 44.932198, 61.261261>,  <44.827110, 45.013802, 61.465111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.492767, 44.932198, 61.261261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544062, 0.184353, 0.818542,
		-0.073041, 0.961454, -0.265088,
		-0.835860, -0.204012, -0.509625,
		44.242008, 44.870995, 61.108372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<49.809860, 41.896416, 46.016956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.425957, 41.831421, 45.925343>,  <49.195614, 41.792423, 45.870373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.425957, 41.831421, 45.925343>,  <49.809860, 41.896416, 46.016956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.425957, 41.831421, 45.925343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239396, 0.047048, 0.969782,
		-0.146802, 0.985588, -0.084054,
		-0.959760, -0.162488, -0.229039,
		49.138027, 41.782673, 45.856632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.381226, 42.414627, 46.409336>,  <49.809860, 41.896416, 46.016956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.381226, 42.414627, 46.409336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.150215, 42.106369, 46.301575>,  <49.011608, 41.921413, 46.236919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.150215, 42.106369, 46.301575>,  <49.381226, 42.414627, 46.409336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.150215, 42.106369, 46.301575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300563, -0.106105, 0.947842,
		-0.759033, 0.628372, -0.170348,
		-0.577522, -0.770643, -0.269402,
		48.976959, 41.875175, 46.220753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.821426, 42.519100, 46.714245>,  <49.381226, 42.414627, 46.409336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.821426, 42.519100, 46.714245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.807800, 42.125092, 46.646626>,  <48.799625, 41.888687, 46.606052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.807800, 42.125092, 46.646626>,  <48.821426, 42.519100, 46.714245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.807800, 42.125092, 46.646626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514497, -0.127729, 0.847925,
		-0.856815, 0.115864, -0.502438,
		-0.034068, -0.985018, -0.169052,
		48.797581, 41.829586, 46.595909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.132565, 42.270710, 46.818649>,  <48.821426, 42.519100, 46.714245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.132565, 42.270710, 46.818649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.352425, 41.940414, 46.869301>,  <48.484341, 41.742237, 46.899693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.352425, 41.940414, 46.869301>,  <48.132565, 42.270710, 46.818649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.352425, 41.940414, 46.869301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507404, -0.209579, 0.835834,
		-0.663642, -0.523671, -0.534179,
		0.549655, -0.825739, 0.126627,
		48.517323, 41.692692, 46.907288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.696358, 41.854809, 47.194698>,  <48.132565, 42.270710, 46.818649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.696358, 41.854809, 47.194698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.044868, 41.669281, 47.258888>,  <48.253975, 41.557964, 47.297401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.044868, 41.669281, 47.258888>,  <47.696358, 41.854809, 47.194698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.044868, 41.669281, 47.258888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320989, -0.291172, 0.901213,
		-0.371275, -0.836714, -0.402572,
		0.871276, -0.463819, 0.160471,
		48.306252, 41.530136, 47.307030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.518139, 41.218155, 47.485371>,  <47.696358, 41.854809, 47.194698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.518139, 41.218155, 47.485371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.907242, 41.231682, 47.577110>,  <48.140701, 41.239799, 47.632156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.907242, 41.231682, 47.577110>,  <47.518139, 41.218155, 47.485371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.907242, 41.231682, 47.577110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215821, -0.229178, 0.949157,
		0.084662, -0.972797, -0.215636,
		0.972756, 0.033819, 0.229353,
		48.199070, 41.241829, 47.645916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.565125, 40.720947, 48.014153>,  <47.518139, 41.218155, 47.485371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.565125, 40.720947, 48.014153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.884659, 40.960350, 48.038300>,  <48.076382, 41.103992, 48.052788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.884659, 40.960350, 48.038300>,  <47.565125, 40.720947, 48.014153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.884659, 40.960350, 48.038300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012237, -0.084169, 0.996376,
		0.601419, -0.796684, -0.059913,
		0.798840, 0.598507, 0.060370,
		48.124310, 41.139900, 48.056412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.028183, 40.507652, 48.567257>,  <47.565125, 40.720947, 48.014153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.028183, 40.507652, 48.567257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.124893, 40.891724, 48.511261>,  <48.182919, 41.122166, 48.477665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.124893, 40.891724, 48.511261>,  <48.028183, 40.507652, 48.567257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.124893, 40.891724, 48.511261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041066, 0.154265, 0.987176,
		0.969464, -0.232922, 0.076728,
		0.241771, 0.960182, -0.139989,
		48.197426, 41.179779, 48.469265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.361053, 40.578648, 49.134075>,  <48.028183, 40.507652, 48.567257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.361053, 40.578648, 49.134075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.286148, 40.958168, 49.032330>,  <48.241203, 41.185883, 48.971283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.286148, 40.958168, 49.032330>,  <48.361053, 40.578648, 49.134075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.286148, 40.958168, 49.032330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000109, 0.258969, 0.965886,
		0.982309, 0.180849, -0.048599,
		-0.187265, 0.948804, -0.254368,
		48.229969, 41.242809, 48.956020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.778057, 40.903709, 49.548435>,  <48.361053, 40.578648, 49.134075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.778057, 40.903709, 49.548435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.471878, 41.142616, 49.452629>,  <48.288170, 41.285961, 49.395145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.471878, 41.142616, 49.452629>,  <48.778057, 40.903709, 49.548435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.471878, 41.142616, 49.452629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146136, 0.201143, 0.968600,
		0.626687, 0.776413, -0.066683,
		-0.765446, 0.597264, -0.239515,
		48.242245, 41.321796, 49.380775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.943554, 41.564487, 49.884819>,  <48.778057, 40.903709, 49.548435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.943554, 41.564487, 49.884819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.550583, 41.550781, 49.811428>,  <48.314800, 41.542557, 49.767395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.550583, 41.550781, 49.811428>,  <48.943554, 41.564487, 49.884819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.550583, 41.550781, 49.811428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184654, 0.321798, 0.928627,
		0.027220, 0.946188, -0.322471,
		-0.982427, -0.034269, -0.183476,
		48.255856, 41.540501, 49.756386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.792816, 42.122856, 50.148567>,  <48.943554, 41.564487, 49.884819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.792816, 42.122856, 50.148567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.452522, 41.913635, 50.127911>,  <48.248344, 41.788101, 50.115517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.452522, 41.913635, 50.127911>,  <48.792816, 42.122856, 50.148567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.452522, 41.913635, 50.127911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298052, 0.399162, 0.867084,
		-0.432917, 0.753050, -0.495478,
		-0.850733, -0.523054, -0.051644,
		48.197304, 41.756718, 50.112419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.013802, 42.819096, 50.220894>,  <48.792816, 42.122856, 50.148567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.013802, 42.819096, 50.220894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.374046, 42.748627, 50.379822>,  <49.590195, 42.706345, 50.475178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.374046, 42.748627, 50.379822>,  <49.013802, 42.819096, 50.220894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.374046, 42.748627, 50.379822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369454, -0.171167, -0.913349,
		0.228910, 0.969364, -0.089069,
		0.900613, -0.176168, 0.397317,
		49.644230, 42.695778, 50.499016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.477467, 43.297565, 49.854576>,  <49.013802, 42.819096, 50.220894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.477467, 43.297565, 49.854576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.698586, 42.996193, 49.996986>,  <49.831257, 42.815369, 50.082432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.698586, 42.996193, 49.996986>,  <49.477467, 43.297565, 49.854576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.698586, 42.996193, 49.996986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468892, -0.071954, -0.880320,
		0.688880, 0.653575, 0.313504,
		0.552797, -0.753434, 0.356024,
		49.864426, 42.770164, 50.103794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.178806, 43.360931, 49.613518>,  <49.477467, 43.297565, 49.854576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.178806, 43.360931, 49.613518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.159729, 42.975700, 49.719498>,  <50.148285, 42.744560, 49.783085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.159729, 42.975700, 49.719498>,  <50.178806, 43.360931, 49.613518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.159729, 42.975700, 49.719498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489115, -0.253790, -0.834480,
		0.870915, 0.089796, 0.483161,
		-0.047689, -0.963082, 0.264950,
		50.145424, 42.686775, 49.798985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.900787, 43.032612, 49.594936>,  <50.178806, 43.360931, 49.613518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.900787, 43.032612, 49.594936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.666306, 42.708801, 49.607735>,  <50.525616, 42.514515, 49.615414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.666306, 42.708801, 49.607735>,  <50.900787, 43.032612, 49.594936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.666306, 42.708801, 49.607735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531351, -0.413977, -0.739114,
		0.611580, -0.416272, 0.672820,
		-0.586205, -0.809531, 0.031993,
		50.490444, 42.465942, 49.617332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.439560, 42.603241, 49.526501>,  <50.900787, 43.032612, 49.594936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.439560, 42.603241, 49.526501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.103767, 42.422249, 49.406143>,  <50.902294, 42.313652, 49.333931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.103767, 42.422249, 49.406143>,  <51.439560, 42.603241, 49.526501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.103767, 42.422249, 49.406143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485765, -0.376735, -0.788735,
		0.243533, -0.808289, 0.536061,
		-0.839479, -0.452482, -0.300891,
		50.851925, 42.286503, 49.315876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.652676, 41.885864, 49.275024>,  <51.439560, 42.603241, 49.526501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.652676, 41.885864, 49.275024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.301682, 41.982063, 49.109047>,  <51.091084, 42.039783, 49.009460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.301682, 41.982063, 49.109047>,  <51.652676, 41.885864, 49.275024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.301682, 41.982063, 49.109047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309292, -0.377483, -0.872837,
		-0.366543, -0.894244, 0.256855,
		-0.877488, 0.240489, -0.414946,
		51.038437, 42.054211, 48.984562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.556702, 41.330338, 48.913944>,  <51.652676, 41.885864, 49.275024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.556702, 41.330338, 48.913944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.318565, 41.606659, 48.749821>,  <51.175682, 41.772453, 48.651348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.318565, 41.606659, 48.749821>,  <51.556702, 41.330338, 48.913944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.318565, 41.606659, 48.749821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278042, -0.301988, -0.911864,
		-0.753829, -0.656955, -0.012287,
		-0.595343, 0.690806, -0.410309,
		51.139961, 41.813900, 48.626728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.261410, 41.068615, 48.322620>,  <51.556702, 41.330338, 48.913944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.261410, 41.068615, 48.322620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.193207, 41.454796, 48.243809>,  <51.152283, 41.686504, 48.196522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.193207, 41.454796, 48.243809>,  <51.261410, 41.068615, 48.322620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.193207, 41.454796, 48.243809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230321, -0.155365, -0.960632,
		-0.958060, -0.209177, -0.195873,
		-0.170511, 0.965457, -0.197027,
		51.142052, 41.744434, 48.184700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.735962, 41.116158, 47.800220>,  <51.261410, 41.068615, 48.322620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.735962, 41.116158, 47.800220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.970291, 41.440300, 47.795570>,  <51.110889, 41.634785, 47.792782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.970291, 41.440300, 47.795570>,  <50.735962, 41.116158, 47.800220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.970291, 41.440300, 47.795570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352481, -0.267675, -0.896720,
		-0.729774, 0.521222, -0.442445,
		0.585822, 0.810357, -0.011622,
		51.146038, 41.683407, 47.792084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.737499, 41.245354, 47.054314>,  <50.735962, 41.116158, 47.800220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.737499, 41.245354, 47.054314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.024307, 41.484215, 47.198143>,  <51.196392, 41.627533, 47.284439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.024307, 41.484215, 47.198143>,  <50.737499, 41.245354, 47.054314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.024307, 41.484215, 47.198143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496384, -0.075274, -0.864833,
		-0.489370, 0.798589, -0.350389,
		0.717022, 0.597151, 0.359570,
		51.239414, 41.663361, 47.306015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.826546, 41.732052, 46.585144>,  <50.737499, 41.245354, 47.054314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.826546, 41.732052, 46.585144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.157578, 41.727509, 46.809639>,  <51.356197, 41.724785, 46.944336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.157578, 41.727509, 46.809639>,  <50.826546, 41.732052, 46.585144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.157578, 41.727509, 46.809639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551000, -0.174717, -0.816010,
		0.107323, 0.984553, -0.138335,
		0.827575, -0.011354, 0.561240,
		51.405849, 41.724102, 46.978012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.222221, 42.081612, 46.226513>,  <50.826546, 41.732052, 46.585144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.222221, 42.081612, 46.226513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.473312, 41.880684, 46.464382>,  <51.623966, 41.760128, 46.607101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.473312, 41.880684, 46.464382>,  <51.222221, 42.081612, 46.226513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.473312, 41.880684, 46.464382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628309, -0.124040, -0.768012,
		0.459550, 0.855739, 0.237748,
		0.627728, -0.502319, 0.594671,
		51.661633, 41.729988, 46.642784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.921837, 42.326427, 46.068718>,  <51.222221, 42.081612, 46.226513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.921837, 42.326427, 46.068718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.989510, 41.963348, 46.222317>,  <52.030113, 41.745499, 46.314476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.989510, 41.963348, 46.222317>,  <51.921837, 42.326427, 46.068718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.989510, 41.963348, 46.222317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696420, -0.165600, -0.698267,
		0.697408, 0.385558, 0.604125,
		0.169179, -0.907702, 0.384000,
		52.040264, 41.691036, 46.337517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.610020, 42.327370, 46.058514>,  <51.921837, 42.326427, 46.068718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.610020, 42.327370, 46.058514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.507103, 41.941315, 46.077751>,  <52.445354, 41.709682, 46.089294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.507103, 41.941315, 46.077751>,  <52.610020, 42.327370, 46.058514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<52.507103, 41.941315, 46.077751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818562, -0.244125, -0.519961,
		0.513574, -0.094416, 0.852835,
		-0.257291, -0.965137, 0.048091,
		52.429916, 41.651775, 46.092178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.277111, 42.953674, 45.986732>,  <52.610020, 42.327370, 46.058514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.277111, 42.953674, 45.986732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.304535, 43.309990, 45.807045>,  <52.320988, 43.523781, 45.699234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.304535, 43.309990, 45.807045>,  <52.277111, 42.953674, 45.986732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<52.304535, 43.309990, 45.807045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391636, 0.438161, 0.809096,
		0.917563, 0.120460, 0.378904,
		0.068558, 0.890789, -0.449216,
		52.325104, 43.577225, 45.672279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.611568, 43.351086, 46.371376>,  <52.277111, 42.953674, 45.986732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.611568, 43.351086, 46.371376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.348892, 43.565964, 46.159649>,  <52.191288, 43.694889, 46.032612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.348892, 43.565964, 46.159649>,  <52.611568, 43.351086, 46.371376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<52.348892, 43.565964, 46.159649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290585, 0.467440, 0.834901,
		0.695929, 0.702085, -0.150864,
		-0.656691, 0.537193, -0.529320,
		52.151886, 43.727123, 46.000854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.732761, 44.139008, 46.387333>,  <52.611568, 43.351086, 46.371376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.732761, 44.139008, 46.387333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.349846, 44.029930, 46.348904>,  <52.120094, 43.964485, 46.325844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.349846, 44.029930, 46.348904>,  <52.732761, 44.139008, 46.387333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<52.349846, 44.029930, 46.348904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241259, 0.570297, 0.785210,
		-0.159330, 0.774855, -0.611730,
		-0.957292, -0.272693, -0.096075,
		52.062660, 43.948124, 46.320080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.358116, 44.801941, 46.437176>,  <52.732761, 44.139008, 46.387333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.358116, 44.801941, 46.437176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.069221, 44.536789, 46.516136>,  <51.895885, 44.377697, 46.563511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.069221, 44.536789, 46.516136>,  <52.358116, 44.801941, 46.437176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<52.069221, 44.536789, 46.516136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299844, 0.557269, 0.774303,
		-0.623275, 0.500039, -0.601240,
		-0.722234, -0.662881, 0.197398,
		51.852551, 44.337925, 46.575356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.755402, 45.217548, 46.505116>,  <52.358116, 44.801941, 46.437176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.755402, 45.217548, 46.505116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.669930, 44.866356, 46.676460>,  <51.618645, 44.655640, 46.779266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.669930, 44.866356, 46.676460>,  <51.755402, 45.217548, 46.505116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.669930, 44.866356, 46.676460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487032, 0.475855, 0.732368,
		-0.846841, -0.052131, -0.529285,
		-0.213684, -0.877978, 0.428363,
		51.605824, 44.602962, 46.804970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.033722, 45.282738, 46.788883>,  <51.755402, 45.217548, 46.505116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.033722, 45.282738, 46.788883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.200607, 44.982292, 46.993534>,  <51.300739, 44.802025, 47.116325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.200607, 44.982292, 46.993534>,  <51.033722, 45.282738, 46.788883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.200607, 44.982292, 46.993534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445127, 0.321925, 0.835599,
		-0.792336, -0.576360, -0.200030,
		0.417211, -0.751115, 0.511626,
		51.325771, 44.756958, 47.147022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.497013, 45.075401, 47.347176>,  <51.033722, 45.282738, 46.788883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.497013, 45.075401, 47.347176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.843254, 44.929100, 47.483971>,  <51.050999, 44.841320, 47.566048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.843254, 44.929100, 47.483971>,  <50.497013, 45.075401, 47.347176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.843254, 44.929100, 47.483971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185173, 0.400742, 0.897283,
		-0.465230, -0.840019, 0.279158,
		0.865606, -0.365750, 0.341986,
		51.102936, 44.819374, 47.586567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.294796, 44.844803, 47.913319>,  <50.497013, 45.075401, 47.347176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.294796, 44.844803, 47.913319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.689598, 44.861244, 47.975460>,  <50.926479, 44.871109, 48.012745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.689598, 44.861244, 47.975460>,  <50.294796, 44.844803, 47.913319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.689598, 44.861244, 47.975460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160189, 0.328680, 0.930757,
		-0.012807, -0.943547, 0.330992,
		0.987003, 0.041101, 0.155356,
		50.985699, 44.873573, 48.022068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.491730, 44.475964, 48.574448>,  <50.294796, 44.844803, 47.913319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.491730, 44.475964, 48.574448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.780815, 44.739761, 48.491745>,  <50.954266, 44.898041, 48.442123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.780815, 44.739761, 48.491745>,  <50.491730, 44.475964, 48.574448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.780815, 44.739761, 48.491745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001977, 0.297171, 0.954822,
		0.691141, -0.690475, 0.213467,
		0.722718, 0.659495, -0.206752,
		50.997631, 44.937611, 48.429718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.694073, 44.453861, 49.175163>,  <50.491730, 44.475964, 48.574448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.694073, 44.453861, 49.175163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.865738, 44.782433, 49.024925>,  <50.968735, 44.979576, 48.934780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.865738, 44.782433, 49.024925>,  <50.694073, 44.453861, 49.175163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.865738, 44.782433, 49.024925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044151, 0.396265, 0.917074,
		0.902149, -0.410153, 0.133794,
		0.429159, 0.821430, -0.375599,
		50.994484, 45.028862, 48.912247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.191628, 44.629566, 49.556625>,  <50.694073, 44.453861, 49.175163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.191628, 44.629566, 49.556625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.098663, 44.980339, 49.388351>,  <51.042885, 45.190804, 49.287388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.098663, 44.980339, 49.388351>,  <51.191628, 44.629566, 49.556625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.098663, 44.980339, 49.388351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019833, 0.428168, 0.903482,
		0.972415, 0.218324, -0.082120,
		-0.232413, 0.876930, -0.420687,
		51.028938, 45.243420, 49.262146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.610424, 45.106407, 49.937424>,  <51.191628, 44.629566, 49.556625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.610424, 45.106407, 49.937424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.325676, 45.322807, 49.758286>,  <51.154827, 45.452648, 49.650803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.325676, 45.322807, 49.758286>,  <51.610424, 45.106407, 49.937424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.325676, 45.322807, 49.758286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162243, 0.493747, 0.854337,
		0.683315, 0.680835, -0.263710,
		-0.711869, 0.540996, -0.447846,
		51.112114, 45.485107, 49.623932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.666855, 45.849102, 50.174759>,  <51.610424, 45.106407, 49.937424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.666855, 45.849102, 50.174759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.301048, 45.872826, 50.014687>,  <51.081566, 45.887058, 49.918644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.301048, 45.872826, 50.014687>,  <51.666855, 45.849102, 50.174759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.301048, 45.872826, 50.014687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291618, 0.588978, 0.753700,
		0.280398, 0.805970, -0.521334,
		-0.914514, 0.059306, -0.400184,
		51.026695, 45.890617, 49.894630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.422935, 46.615444, 50.199753>,  <51.666855, 45.849102, 50.174759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.422935, 46.615444, 50.199753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.088799, 46.395576, 50.196381>,  <50.888317, 46.263657, 50.194359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.088799, 46.395576, 50.196381>,  <51.422935, 46.615444, 50.199753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.088799, 46.395576, 50.196381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358244, 0.532667, 0.766764,
		-0.416975, 0.643529, -0.641874,
		-0.835340, -0.549669, -0.008432,
		50.838196, 46.230675, 50.193851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.878269, 47.160442, 50.266354>,  <51.422935, 46.615444, 50.199753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.878269, 47.160442, 50.266354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.738831, 46.799011, 50.365974>,  <50.655167, 46.582153, 50.425747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.738831, 46.799011, 50.365974>,  <50.878269, 47.160442, 50.266354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.738831, 46.799011, 50.365974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428208, 0.389904, 0.815238,
		-0.833736, 0.177546, -0.522840,
		-0.348599, -0.903578, 0.249050,
		50.634251, 46.527939, 50.440689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.217354, 47.279335, 50.528851>,  <50.878269, 47.160442, 50.266354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.217354, 47.279335, 50.528851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.304764, 46.913132, 50.663963>,  <50.357212, 46.693409, 50.745033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.304764, 46.913132, 50.663963>,  <50.217354, 47.279335, 50.528851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.304764, 46.913132, 50.663963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510436, 0.187777, 0.839163,
		-0.831685, -0.355798, -0.426272,
		0.218529, -0.915504, 0.337784,
		50.370323, 46.638481, 50.765297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.593014, 46.916935, 50.625668>,  <50.217354, 47.279335, 50.528851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.593014, 46.916935, 50.625668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.871590, 46.762451, 50.867596>,  <50.038734, 46.669762, 51.012753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.871590, 46.762451, 50.867596>,  <49.593014, 46.916935, 50.625668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.871590, 46.762451, 50.867596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541885, 0.269506, 0.796070,
		-0.470453, -0.882161, -0.021586,
		0.696444, -0.386210, 0.604820,
		50.080524, 46.646587, 51.049042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.272232, 46.637955, 51.105301>,  <49.593014, 46.916935, 50.625668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.272232, 46.637955, 51.105301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.630707, 46.650383, 51.282341>,  <49.845791, 46.657841, 51.388565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.630707, 46.650383, 51.282341>,  <49.272232, 46.637955, 51.105301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.630707, 46.650383, 51.282341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441599, 0.159124, 0.882989,
		-0.042992, -0.986769, 0.156326,
		0.896182, 0.031072, 0.442597,
		49.899563, 46.659706, 51.415119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.199162, 46.198078, 51.632130>,  <49.272232, 46.637955, 51.105301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.199162, 46.198078, 51.632130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.512909, 46.423439, 51.735939>,  <49.701157, 46.558655, 51.798225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.512909, 46.423439, 51.735939>,  <49.199162, 46.198078, 51.632130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.512909, 46.423439, 51.735939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458544, 0.244871, 0.854269,
		0.417744, -0.789062, 0.450412,
		0.784364, 0.563400, 0.259526,
		49.748219, 46.592457, 51.813797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.322319, 45.943153, 52.411247>,  <49.199162, 46.198078, 51.632130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.322319, 45.943153, 52.411247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.472237, 46.303452, 52.323448>,  <49.562187, 46.519630, 52.270767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.472237, 46.303452, 52.323448>,  <49.322319, 45.943153, 52.411247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.472237, 46.303452, 52.323448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315353, 0.346503, 0.883453,
		0.871826, -0.261893, 0.413921,
		0.374795, 0.900748, -0.219502,
		49.584675, 46.573677, 52.257599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.500931, 46.190948, 52.990253>,  <49.322319, 45.943153, 52.411247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.500931, 46.190948, 52.990253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.503578, 46.537773, 52.790989>,  <49.505165, 46.745869, 52.671429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.503578, 46.537773, 52.790989>,  <49.500931, 46.190948, 52.990253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.503578, 46.537773, 52.790989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315593, 0.474524, 0.821722,
		0.948871, 0.151781, 0.276777,
		0.006615, 0.867058, -0.498164,
		49.505562, 46.797890, 52.641541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.710522, 46.705864, 53.426395>,  <49.500931, 46.190948, 52.990253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.710522, 46.705864, 53.426395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.513626, 46.925308, 53.156067>,  <49.395489, 47.056973, 52.993870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.513626, 46.925308, 53.156067>,  <49.710522, 46.705864, 53.426395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.513626, 46.925308, 53.156067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354021, 0.583108, 0.731200,
		0.795218, 0.599178, -0.092809,
		-0.492237, 0.548608, -0.675820,
		49.365955, 47.089890, 52.953320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.834530, 47.383102, 53.615932>,  <49.710522, 46.705864, 53.426395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.834530, 47.383102, 53.615932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.501556, 47.395363, 53.394619>,  <49.301773, 47.402718, 53.261833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.501556, 47.395363, 53.394619>,  <49.834530, 47.383102, 53.615932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.501556, 47.395363, 53.394619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469877, 0.490210, 0.734105,
		0.293722, 0.871065, -0.393665,
		-0.832432, 0.030649, -0.553279,
		49.251827, 47.404556, 53.228634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.480400, 47.916763, 53.858559>,  <49.834530, 47.383102, 53.615932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.480400, 47.916763, 53.858559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.188011, 47.765945, 53.631042>,  <49.012577, 47.675457, 53.494534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.188011, 47.765945, 53.631042>,  <49.480400, 47.916763, 53.858559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.188011, 47.765945, 53.631042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676172, 0.512599, 0.529182,
		0.092037, 0.771416, -0.629640,
		-0.730972, -0.377041, -0.568788,
		48.968719, 47.652832, 53.460407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.062828, 48.512878, 53.541550>,  <49.480400, 47.916763, 53.858559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.062828, 48.512878, 53.541550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.857567, 48.171555, 53.578491>,  <48.734409, 47.966759, 53.600655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.857567, 48.171555, 53.578491>,  <49.062828, 48.512878, 53.541550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.857567, 48.171555, 53.578491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654219, 0.458522, 0.601460,
		-0.555580, 0.248222, -0.793546,
		-0.513155, -0.853313, 0.092354,
		48.703621, 47.915562, 53.606197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.385933, 48.735512, 53.615410>,  <49.062828, 48.512878, 53.541550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.385933, 48.735512, 53.615410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.330162, 48.361244, 53.745079>,  <48.296700, 48.136684, 53.822880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.330162, 48.361244, 53.745079>,  <48.385933, 48.735512, 53.615410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.330162, 48.361244, 53.745079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624377, 0.337162, 0.704610,
		-0.768579, -0.104169, -0.631217,
		-0.139423, -0.935666, 0.324177,
		48.288334, 48.080544, 53.842331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.681908, 48.659737, 53.738258>,  <48.385933, 48.735512, 53.615410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.681908, 48.659737, 53.738258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.843834, 48.358040, 53.945038>,  <47.940990, 48.177021, 54.069107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.843834, 48.358040, 53.945038>,  <47.681908, 48.659737, 53.738258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.843834, 48.358040, 53.945038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529938, 0.267202, 0.804841,
		-0.745178, -0.599763, -0.291537,
		0.404814, -0.754247, 0.516950,
		47.965279, 48.131767, 54.100124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.070827, 48.165298, 54.051353>,  <47.681908, 48.659737, 53.738258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.070827, 48.165298, 54.051353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.404526, 48.100586, 54.262207>,  <47.604744, 48.061760, 54.388718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.404526, 48.100586, 54.262207>,  <47.070827, 48.165298, 54.051353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.404526, 48.100586, 54.262207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519812, 0.088168, 0.849719,
		-0.183946, -0.982880, -0.010544,
		0.834242, -0.161783, 0.527130,
		47.654797, 48.052052, 54.420345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.551846, 47.584644, 53.928455>,  <47.070827, 48.165298, 54.051353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.551846, 47.584644, 53.928455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.208336, 47.680840, 53.747490>,  <46.002232, 47.738556, 53.638912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.208336, 47.680840, 53.747490>,  <46.551846, 47.584644, 53.928455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.208336, 47.680840, 53.747490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495726, 0.166826, -0.852305,
		-0.129497, -0.956208, -0.262483,
		-0.858770, 0.240491, -0.452413,
		45.950706, 47.752987, 53.611767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464962, 47.201309, 53.295158>,  <46.551846, 47.584644, 53.928455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464962, 47.201309, 53.295158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.218201, 47.512505, 53.247543>,  <46.070145, 47.699223, 53.218975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.218201, 47.512505, 53.247543>,  <46.464962, 47.201309, 53.295158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218201, 47.512505, 53.247543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426362, 0.203216, -0.881430,
		-0.661553, -0.594506, -0.457068,
		-0.616899, 0.777989, -0.119036,
		46.033131, 47.745903, 53.211834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.171478, 47.188423, 52.680466>,  <46.464962, 47.201309, 53.295158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.171478, 47.188423, 52.680466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.133789, 47.579758, 52.754204>,  <46.111176, 47.814556, 52.798447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.133789, 47.579758, 52.754204>,  <46.171478, 47.188423, 52.680466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133789, 47.579758, 52.754204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323395, 0.205208, -0.923745,
		-0.941561, -0.027425, -0.335724,
		-0.094227, 0.978334, 0.184347,
		46.105522, 47.873257, 52.809509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804386, 47.389507, 52.099529>,  <46.171478, 47.188423, 52.680466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.804386, 47.389507, 52.099529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.963051, 47.719872, 52.259796>,  <46.058250, 47.918091, 52.355957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.963051, 47.719872, 52.259796>,  <45.804386, 47.389507, 52.099529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.963051, 47.719872, 52.259796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287744, 0.302610, -0.908642,
		-0.871700, 0.475716, -0.117615,
		0.396664, 0.825907, 0.400670,
		46.082050, 47.967644, 52.379997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596901, 47.992336, 51.720043>,  <45.804386, 47.389507, 52.099529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.596901, 47.992336, 51.720043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.948128, 48.068596, 51.895615>,  <46.158863, 48.114353, 52.000957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.948128, 48.068596, 51.895615>,  <45.596901, 47.992336, 51.720043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.948128, 48.068596, 51.895615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365881, 0.323727, -0.872544,
		-0.308442, 0.926744, 0.214498,
		0.878063, 0.190649, 0.438929,
		46.211548, 48.125790, 52.027294>
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
