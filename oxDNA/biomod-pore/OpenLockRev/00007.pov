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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
	<40.793854, 35.466179, 50.920429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099754, 35.276863, 51.095318>,  <41.283295, 35.163273, 51.200249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099754, 35.276863, 51.095318>,  <40.793854, 35.466179, 50.920429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099754, 35.276863, 51.095318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628268, 0.698300, -0.343011,
		-0.142966, 0.537007, 0.831375,
		0.764748, -0.473287, 0.437218,
		41.329178, 35.134876, 51.226482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013958, 35.326492, 50.636936>,  <40.793854, 35.466179, 50.920429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013958, 35.326492, 50.636936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103920, 35.324268, 50.247189>,  <40.157898, 35.322933, 50.013340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103920, 35.324268, 50.247189>,  <40.013958, 35.326492, 50.636936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103920, 35.324268, 50.247189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742977, -0.645985, 0.175181,
		-0.630400, -0.763330, -0.141153,
		0.224903, -0.005561, -0.974365,
		40.171391, 35.322601, 49.954880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348011, 34.643116, 50.502781>,  <40.013958, 35.326492, 50.636936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348011, 34.643116, 50.502781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455242, 34.881451, 50.199963>,  <40.519581, 35.024452, 50.018272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455242, 34.881451, 50.199963>,  <40.348011, 34.643116, 50.502781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455242, 34.881451, 50.199963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929495, -0.366591, 0.040621,
		-0.253321, -0.714557, -0.652102,
		0.268081, 0.595836, -0.757042,
		40.535667, 35.060200, 49.972851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655109, 34.236095, 50.063534>,  <40.348011, 34.643116, 50.502781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655109, 34.236095, 50.063534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772217, 34.607189, 49.970928>,  <40.842484, 34.829845, 49.915363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772217, 34.607189, 49.970928>,  <40.655109, 34.236095, 50.063534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772217, 34.607189, 49.970928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956149, -0.282000, 0.079094,
		0.008090, -0.244521, -0.969610,
		0.292770, 0.927731, -0.231517,
		40.860046, 34.885509, 49.901474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356129, 34.193985, 49.765633>,  <40.655109, 34.236095, 50.063534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356129, 34.193985, 49.765633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329449, 34.587830, 49.830254>,  <41.313442, 34.824135, 49.869026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329449, 34.587830, 49.830254>,  <41.356129, 34.193985, 49.765633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329449, 34.587830, 49.830254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978296, 0.032695, 0.204617,
		0.196185, 0.171696, -0.965418,
		-0.066696, 0.984607, 0.161555,
		41.309441, 34.883213, 49.878719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745655, 34.490891, 49.238708>,  <41.356129, 34.193985, 49.765633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745655, 34.490891, 49.238708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761410, 34.739101, 49.551987>,  <41.770863, 34.888027, 49.739952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761410, 34.739101, 49.551987>,  <41.745655, 34.490891, 49.238708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761410, 34.739101, 49.551987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993088, -0.111037, 0.038031,
		0.110563, 0.776285, -0.620611,
		0.039388, 0.620526, 0.783196,
		41.773228, 34.925259, 49.786945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242065, 34.911823, 49.063549>,  <41.745655, 34.490891, 49.238708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242065, 34.911823, 49.063549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224503, 34.956215, 49.460690>,  <42.213966, 34.982849, 49.698975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224503, 34.956215, 49.460690>,  <42.242065, 34.911823, 49.063549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224503, 34.956215, 49.460690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992855, -0.105532, 0.055700,
		0.110959, 0.988204, -0.105552,
		-0.043904, 0.110978, 0.992853,
		42.211330, 34.989510, 49.758545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851589, 35.367878, 49.372009>,  <42.242065, 34.911823, 49.063549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851589, 35.367878, 49.372009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742222, 35.147720, 49.687557>,  <42.676601, 35.015625, 49.876884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742222, 35.147720, 49.687557>,  <42.851589, 35.367878, 49.372009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742222, 35.147720, 49.687557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960510, -0.112210, 0.254618,
		-0.051621, 0.827332, 0.559336,
		-0.273417, -0.550391, 0.788868,
		42.660198, 34.982601, 49.924217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182514, 35.768223, 49.867676>,  <42.851589, 35.367878, 49.372009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182514, 35.768223, 49.867676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109146, 35.392326, 49.983082>,  <43.065125, 35.166790, 50.052326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109146, 35.392326, 49.983082>,  <43.182514, 35.768223, 49.867676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109146, 35.392326, 49.983082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818582, 0.016505, 0.574152,
		-0.544317, 0.341485, 0.766229,
		-0.183417, -0.939742, 0.288518,
		43.054119, 35.110405, 50.069637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408627, 35.768291, 50.512699>,  <43.182514, 35.768223, 49.867676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408627, 35.768291, 50.512699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418644, 35.381882, 50.409809>,  <43.424656, 35.150036, 50.348076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418644, 35.381882, 50.409809>,  <43.408627, 35.768291, 50.512699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418644, 35.381882, 50.409809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880945, -0.100300, 0.462467,
		-0.472555, -0.238183, 0.848505,
		0.025047, -0.966027, -0.257224,
		43.426159, 35.092075, 50.332642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802395, 35.515190, 51.099472>,  <43.408627, 35.768291, 50.512699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802395, 35.515190, 51.099472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811760, 35.218994, 50.830807>,  <43.817379, 35.041275, 50.669609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811760, 35.218994, 50.830807>,  <43.802395, 35.515190, 51.099472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811760, 35.218994, 50.830807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923613, -0.241105, 0.298006,
		-0.382611, -0.627331, 0.678281,
		0.023411, -0.740489, -0.671660,
		43.818783, 34.996849, 50.629307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058369, 34.807549, 51.451576>,  <43.802395, 35.515190, 51.099472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058369, 34.807549, 51.451576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115467, 34.744884, 51.060661>,  <44.149727, 34.707287, 50.826115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115467, 34.744884, 51.060661>,  <44.058369, 34.807549, 51.451576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115467, 34.744884, 51.060661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977745, -0.131063, 0.163820,
		-0.153750, -0.978918, 0.134465,
		0.142743, -0.156660, -0.977283,
		44.158291, 34.697887, 50.767475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469761, 34.319916, 51.480072>,  <44.058369, 34.807549, 51.451576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469761, 34.319916, 51.480072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516254, 34.470798, 51.112549>,  <44.544151, 34.561329, 50.892036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516254, 34.470798, 51.112549>,  <44.469761, 34.319916, 51.480072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516254, 34.470798, 51.112549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974800, -0.220666, 0.032726,
		-0.190405, -0.899458, -0.393346,
		0.116234, 0.377202, -0.918808,
		44.551125, 34.583958, 50.836906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833839, 33.796764, 51.088451>,  <44.469761, 34.319916, 51.480072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833839, 33.796764, 51.088451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894878, 34.149155, 50.909298>,  <44.931503, 34.360588, 50.801807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894878, 34.149155, 50.909298>,  <44.833839, 33.796764, 51.088451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894878, 34.149155, 50.909298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982141, -0.185648, -0.030544,
		-0.110057, -0.435221, -0.893572,
		0.152597, 0.880975, -0.447880,
		44.940659, 34.413448, 50.774933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388615, 33.706482, 50.673225>,  <44.833839, 33.796764, 51.088451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388615, 33.706482, 50.673225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386215, 34.104580, 50.712097>,  <45.384777, 34.343441, 50.735420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386215, 34.104580, 50.712097>,  <45.388615, 33.706482, 50.673225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386215, 34.104580, 50.712097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978918, -0.013997, 0.203776,
		0.204168, 0.096355, -0.974182,
		-0.005999, 0.995249, 0.097182,
		45.384415, 34.403156, 50.741253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.999844, 33.946480, 50.349152>,  <45.388615, 33.706482, 50.673225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.999844, 33.946480, 50.349152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.911041, 34.264740, 50.574596>,  <45.857761, 34.455696, 50.709862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.911041, 34.264740, 50.574596>,  <45.999844, 33.946480, 50.349152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911041, 34.264740, 50.574596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960395, 0.078603, 0.267326,
		0.168396, 0.600636, -0.781588,
		-0.222001, 0.795649, 0.563611,
		45.844440, 34.503433, 50.743679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510715, 34.479904, 50.133167>,  <45.999844, 33.946480, 50.349152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510715, 34.479904, 50.133167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350861, 34.522617, 50.497341>,  <46.254948, 34.548244, 50.715847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350861, 34.522617, 50.497341>,  <46.510715, 34.479904, 50.133167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.350861, 34.522617, 50.497341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913270, 0.131892, 0.385412,
		-0.078924, 0.985496, -0.150230,
		-0.399636, 0.106782, 0.910433,
		46.230968, 34.554653, 50.770470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.775211, 35.100037, 50.372841>,  <46.510715, 34.479904, 50.133167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.775211, 35.100037, 50.372841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.672905, 34.914261, 50.711987>,  <46.611519, 34.802795, 50.915474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.672905, 34.914261, 50.711987>,  <46.775211, 35.100037, 50.372841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.672905, 34.914261, 50.711987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904654, 0.194245, 0.379301,
		-0.340857, 0.864039, 0.370476,
		-0.255768, -0.464440, 0.847867,
		46.596176, 34.774929, 50.966347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.175236, 35.447590, 50.803768>,  <46.775211, 35.100037, 50.372841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.175236, 35.447590, 50.803768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.066483, 35.131607, 51.023602>,  <47.001232, 34.942017, 51.155502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.066483, 35.131607, 51.023602>,  <47.175236, 35.447590, 50.803768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.066483, 35.131607, 51.023602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916004, -0.037380, 0.399424,
		-0.294985, 0.612021, 0.733767,
		-0.271884, -0.789958, 0.549587,
		46.984917, 34.894619, 51.188477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.346622, 35.566746, 51.403610>,  <47.175236, 35.447590, 50.803768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.346622, 35.566746, 51.403610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.322964, 35.169724, 51.446205>,  <47.308769, 34.931511, 51.471764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.322964, 35.169724, 51.446205>,  <47.346622, 35.566746, 51.403610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.322964, 35.169724, 51.446205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882291, -0.002079, 0.470700,
		-0.466973, 0.121796, 0.875844,
		-0.059150, -0.992553, 0.106489,
		47.305218, 34.871956, 51.478153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.589069, 35.398380, 52.086483>,  <47.346622, 35.566746, 51.403610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.589069, 35.398380, 52.086483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.619522, 35.056324, 51.881371>,  <47.637794, 34.851089, 51.758305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.619522, 35.056324, 51.881371>,  <47.589069, 35.398380, 52.086483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.619522, 35.056324, 51.881371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919852, -0.138238, 0.367100,
		-0.384807, -0.499628, 0.776076,
		0.076130, -0.855138, -0.512779,
		47.642361, 34.799782, 51.727535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.260115, 35.337555, 51.895203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.342470, 35.014957, 52.116898>,  <24.391884, 34.821400, 52.249916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.342470, 35.014957, 52.116898>,  <24.260115, 35.337555, 51.895203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.342470, 35.014957, 52.116898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975178, 0.216248, -0.047587,
		-0.081474, 0.550278, 0.830997,
		0.205887, -0.806493, 0.554238,
		24.404236, 34.773010, 52.283169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.786987, 35.544216, 52.405552>,  <24.260115, 35.337555, 51.895203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.786987, 35.544216, 52.405552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.816872, 35.145645, 52.389801>,  <24.834803, 34.906502, 52.380352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.816872, 35.145645, 52.389801>,  <24.786987, 35.544216, 52.405552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.816872, 35.145645, 52.389801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990523, 0.069588, 0.118417,
		-0.115254, -0.047848, 0.992183,
		0.074710, -0.996428, -0.039374,
		24.839285, 34.846718, 52.377987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.214325, 35.300938, 52.927837>,  <24.786987, 35.544216, 52.405552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.214325, 35.300938, 52.927837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.236937, 34.986309, 52.681873>,  <25.250504, 34.797531, 52.534294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.236937, 34.986309, 52.681873>,  <25.214325, 35.300938, 52.927837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236937, 34.986309, 52.681873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991066, 0.118728, -0.060762,
		0.120801, -0.605981, 0.786254,
		0.056530, -0.786569, -0.614909,
		25.253895, 34.750340, 52.497402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849319, 34.962944, 53.134998>,  <25.214325, 35.300938, 52.927837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849319, 34.962944, 53.134998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.784378, 34.787884, 52.781254>,  <25.745413, 34.682846, 52.569008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.784378, 34.787884, 52.781254>,  <25.849319, 34.962944, 53.134998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.784378, 34.787884, 52.781254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984077, -0.006099, -0.177638,
		0.072350, -0.899124, 0.431673,
		-0.162352, -0.437652, -0.884366,
		25.735672, 34.656590, 52.515945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293036, 34.311924, 53.028984>,  <25.849319, 34.962944, 53.134998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293036, 34.311924, 53.028984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.215214, 34.451450, 52.662273>,  <26.168522, 34.535168, 52.442249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.215214, 34.451450, 52.662273>,  <26.293036, 34.311924, 53.028984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215214, 34.451450, 52.662273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978333, 0.136473, -0.155691,
		0.070807, -0.927200, -0.367814,
		-0.194553, 0.348821, -0.916773,
		26.156847, 34.556095, 52.387241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766598, 33.898579, 52.597858>,  <26.293036, 34.311924, 53.028984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766598, 33.898579, 52.597858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.658428, 34.211952, 52.374039>,  <26.593527, 34.399979, 52.239746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.658428, 34.211952, 52.374039>,  <26.766598, 33.898579, 52.597858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658428, 34.211952, 52.374039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880929, -0.033104, -0.472089,
		-0.388375, -0.620590, -0.681200,
		-0.270423, 0.783436, -0.559552,
		26.577301, 34.446983, 52.206173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001816, 33.726173, 51.915810>,  <26.766598, 33.898579, 52.597858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001816, 33.726173, 51.915810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.978039, 34.124844, 51.938126>,  <26.963772, 34.364044, 51.951515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.978039, 34.124844, 51.938126>,  <27.001816, 33.726173, 51.915810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978039, 34.124844, 51.938126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955367, 0.073004, -0.286259,
		-0.289379, 0.036287, -0.956527,
		-0.059443, 0.996671, 0.055793,
		26.960205, 34.423843, 51.954865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415594, 33.869743, 51.408436>,  <27.001816, 33.726173, 51.915810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415594, 33.869743, 51.408436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.385683, 34.243176, 51.548630>,  <27.367737, 34.467236, 51.632748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.385683, 34.243176, 51.548630>,  <27.415594, 33.869743, 51.408436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385683, 34.243176, 51.548630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932625, 0.189895, -0.306839,
		-0.353014, 0.303931, -0.884877,
		-0.074776, 0.933577, 0.350489,
		27.363251, 34.523247, 51.653778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541834, 34.273415, 50.855988>,  <27.415594, 33.869743, 51.408436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541834, 34.273415, 50.855988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.605698, 34.518673, 51.165455>,  <27.644016, 34.665829, 51.351135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.605698, 34.518673, 51.165455>,  <27.541834, 34.273415, 50.855988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605698, 34.518673, 51.165455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857921, 0.301517, -0.416003,
		-0.488344, 0.730164, -0.477892,
		0.159658, 0.613147, 0.773667,
		27.653595, 34.702618, 51.397556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818771, 34.852665, 50.610493>,  <27.541834, 34.273415, 50.855988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818771, 34.852665, 50.610493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.932669, 34.840424, 50.993740>,  <28.001007, 34.833076, 51.223686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.932669, 34.840424, 50.993740>,  <27.818771, 34.852665, 50.610493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932669, 34.840424, 50.993740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951863, 0.127341, -0.278820,
		-0.113473, 0.991387, 0.065394,
		0.284745, -0.030608, 0.958114,
		28.018093, 34.831242, 51.281174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335478, 35.364227, 50.673252>,  <27.818771, 34.852665, 50.610493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335478, 35.364227, 50.673252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.390186, 35.130623, 50.993309>,  <28.423012, 34.990459, 51.185345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.390186, 35.130623, 50.993309>,  <28.335478, 35.364227, 50.673252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390186, 35.130623, 50.993309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978619, 0.204918, -0.017714,
		-0.153618, 0.785457, 0.599549,
		0.136772, -0.584009, 0.800142,
		28.431217, 34.955421, 51.233353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827339, 35.716454, 51.063808>,  <28.335478, 35.364227, 50.673252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827339, 35.716454, 51.063808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.837193, 35.332939, 51.177032>,  <28.843103, 35.102829, 51.244965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.837193, 35.332939, 51.177032>,  <28.827339, 35.716454, 51.063808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837193, 35.332939, 51.177032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999656, 0.026180, 0.001688,
		-0.009029, 0.282919, 0.959101,
		0.024631, -0.958786, 0.283058,
		28.844582, 35.045303, 51.261951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328285, 35.615608, 51.513588>,  <28.827339, 35.716454, 51.063808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328285, 35.615608, 51.513588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.268600, 35.243374, 51.379879>,  <29.232790, 35.020031, 51.299652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.268600, 35.243374, 51.379879>,  <29.328285, 35.615608, 51.513588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268600, 35.243374, 51.379879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984104, -0.106833, -0.141870,
		0.096312, -0.350129, 0.931737,
		-0.149213, -0.930589, -0.334274,
		29.223837, 34.964195, 51.279598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870655, 35.207314, 51.835629>,  <29.328285, 35.615608, 51.513588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870655, 35.207314, 51.835629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.754087, 34.995811, 51.516758>,  <29.684147, 34.868912, 51.325436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.754087, 34.995811, 51.516758>,  <29.870655, 35.207314, 51.835629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754087, 34.995811, 51.516758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949240, -0.262984, -0.172578,
		-0.118394, -0.807007, 0.578552,
		-0.291421, -0.528752, -0.797179,
		29.666660, 34.837185, 51.277603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308104, 34.530056, 51.848816>,  <29.870655, 35.207314, 51.835629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308104, 34.530056, 51.848816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.138206, 34.582306, 51.490479>,  <30.036268, 34.613655, 51.275478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.138206, 34.582306, 51.490479>,  <30.308104, 34.530056, 51.848816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138206, 34.582306, 51.490479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838762, -0.315609, -0.443699,
		-0.340695, -0.939855, 0.024487,
		-0.424741, 0.130627, -0.895841,
		30.010784, 34.621494, 51.221725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332970, 33.873112, 51.481487>,  <30.308104, 34.530056, 51.848816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332970, 33.873112, 51.481487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.321133, 34.170517, 51.214260>,  <30.314030, 34.348961, 51.053925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.321133, 34.170517, 51.214260>,  <30.332970, 33.873112, 51.481487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321133, 34.170517, 51.214260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812492, -0.371408, -0.449346,
		-0.582220, -0.556095, -0.593109,
		-0.029594, 0.743515, -0.668064,
		30.312254, 34.393570, 51.013840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870335, 33.682922, 51.041637>,  <30.332970, 33.873112, 51.481487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870335, 33.682922, 51.041637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.759001, 34.021118, 50.859352>,  <30.692200, 34.224037, 50.749981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.759001, 34.021118, 50.859352>,  <30.870335, 33.682922, 51.041637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759001, 34.021118, 50.859352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845861, -0.009005, -0.533328,
		-0.455026, -0.533917, -0.712659,
		-0.278336, 0.845489, -0.455717,
		30.675501, 34.274765, 50.722637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786337, 33.557186, 50.319042>,  <30.870335, 33.682922, 51.041637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786337, 33.557186, 50.319042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.883327, 33.937057, 50.398354>,  <30.941521, 34.164982, 50.445942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.883327, 33.937057, 50.398354>,  <30.786337, 33.557186, 50.319042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883327, 33.937057, 50.398354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708336, -0.033643, -0.705074,
		-0.662923, 0.311413, -0.680849,
		0.242475, 0.949679, 0.198282,
		30.956070, 34.221962, 50.457840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886019, 33.929050, 49.593739>,  <30.786337, 33.557186, 50.319042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886019, 33.929050, 49.593739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.066755, 34.165848, 49.860683>,  <31.175198, 34.307926, 50.020851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.066755, 34.165848, 49.860683>,  <30.886019, 33.929050, 49.593739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066755, 34.165848, 49.860683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778221, 0.104157, -0.619293,
		-0.436131, 0.799181, -0.413642,
		0.451844, 0.591998, 0.667365,
		31.202309, 34.343449, 50.060894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190603, 34.554806, 49.179989>,  <30.886019, 33.929050, 49.593739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190603, 34.554806, 49.179989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.388102, 34.547024, 49.527744>,  <31.506599, 34.542355, 49.736397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.388102, 34.547024, 49.527744>,  <31.190603, 34.554806, 49.179989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388102, 34.547024, 49.527744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857635, 0.176221, -0.483124,
		-0.143806, 0.984158, 0.103693,
		0.493744, -0.019454, 0.869390,
		31.536224, 34.541187, 49.788563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707619, 35.053822, 49.117443>,  <31.190603, 34.554806, 49.179989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707619, 35.053822, 49.117443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.832788, 34.828465, 49.423298>,  <31.907890, 34.693249, 49.606812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.832788, 34.828465, 49.423298>,  <31.707619, 35.053822, 49.117443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832788, 34.828465, 49.423298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940712, 0.072881, -0.331284,
		0.130917, 0.822967, 0.552799,
		0.312924, -0.563395, 0.764633,
		31.926666, 34.659447, 49.652687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.268867, 34.704334, 35.400452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.470310, 34.956791, 35.164474>,  <24.591177, 35.108265, 35.022888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.470310, 34.956791, 35.164474>,  <24.268867, 34.704334, 35.400452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.470310, 34.956791, 35.164474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052300, 0.703882, 0.708389,
		0.862348, -0.325896, 0.387489,
		0.503608, 0.631143, -0.589947,
		24.621393, 35.146133, 34.987492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.982233, 34.933418, 35.658855>,  <24.268867, 34.704334, 35.400452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.982233, 34.933418, 35.658855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.818754, 35.217674, 35.429787>,  <24.720667, 35.388229, 35.292343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.818754, 35.217674, 35.429787>,  <24.982233, 34.933418, 35.658855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818754, 35.217674, 35.429787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031570, 0.616088, 0.787045,
		0.912125, 0.339740, -0.229357,
		-0.408695, 0.710642, -0.572675,
		24.696146, 35.430866, 35.257984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287466, 35.579388, 35.760777>,  <24.982233, 34.933418, 35.658855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287466, 35.579388, 35.760777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.910088, 35.637604, 35.641628>,  <24.683661, 35.672531, 35.570141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.910088, 35.637604, 35.641628>,  <25.287466, 35.579388, 35.760777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.910088, 35.637604, 35.641628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159513, 0.588366, 0.792705,
		0.290623, 0.795390, -0.531877,
		-0.943448, 0.145537, -0.297867,
		24.627052, 35.681263, 35.552269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.249599, 36.223850, 35.699989>,  <25.287466, 35.579388, 35.760777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.249599, 36.223850, 35.699989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.920128, 36.016125, 35.791080>,  <24.722445, 35.891487, 35.845737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.920128, 36.016125, 35.791080>,  <25.249599, 36.223850, 35.699989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920128, 36.016125, 35.791080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138919, 0.574168, 0.806866,
		-0.549775, 0.632963, -0.545074,
		-0.823680, -0.519316, 0.227733,
		24.673023, 35.860329, 35.859402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.665018, 36.655659, 35.869633>,  <25.249599, 36.223850, 35.699989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.665018, 36.655659, 35.869633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.675156, 36.306210, 36.064011>,  <24.681238, 36.096542, 36.180637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.675156, 36.306210, 36.064011>,  <24.665018, 36.655659, 35.869633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.675156, 36.306210, 36.064011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243147, 0.476894, 0.844661,
		-0.969658, 0.096748, 0.224506,
		0.025346, -0.873620, 0.485948,
		24.682760, 36.044125, 36.209793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.210720, 36.659935, 36.464092>,  <24.665018, 36.655659, 35.869633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.210720, 36.659935, 36.464092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.515644, 36.416428, 36.551983>,  <24.698599, 36.270321, 36.604717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.515644, 36.416428, 36.551983>,  <24.210720, 36.659935, 36.464092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.515644, 36.416428, 36.551983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129306, 0.475903, 0.869940,
		-0.634163, -0.634753, 0.441504,
		0.762311, -0.608773, 0.219723,
		24.744337, 36.233795, 36.617901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.190853, 36.179054, 37.050072>,  <24.210720, 36.659935, 36.464092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.190853, 36.179054, 37.050072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.562883, 36.317955, 37.002117>,  <24.786102, 36.401295, 36.973343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.562883, 36.317955, 37.002117>,  <24.190853, 36.179054, 37.050072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.562883, 36.317955, 37.002117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089401, 0.530484, 0.842967,
		0.356324, -0.773305, 0.524435,
		0.930076, 0.347255, -0.119891,
		24.841906, 36.422131, 36.966148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.486551, 36.159988, 37.738350>,  <24.190853, 36.179054, 37.050072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.486551, 36.159988, 37.738350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.643284, 36.436150, 37.495102>,  <24.737324, 36.601845, 37.349152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.643284, 36.436150, 37.495102>,  <24.486551, 36.159988, 37.738350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.643284, 36.436150, 37.495102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072576, 0.635723, 0.768498,
		0.917170, -0.345258, 0.198990,
		0.391833, 0.690401, -0.608123,
		24.760834, 36.643269, 37.312664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.822212, 36.554062, 38.128635>,  <24.486551, 36.159988, 37.738350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.822212, 36.554062, 38.128635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.860062, 36.774460, 37.796986>,  <24.882771, 36.906700, 37.597996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.860062, 36.774460, 37.796986>,  <24.822212, 36.554062, 38.128635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860062, 36.774460, 37.796986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182148, 0.809220, 0.558556,
		0.978708, -0.203876, -0.023792,
		0.094623, 0.550996, -0.829126,
		24.888449, 36.939758, 37.548248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.465628, 36.824047, 38.127750>,  <24.822212, 36.554062, 38.128635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.465628, 36.824047, 38.127750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.170567, 37.033131, 37.956802>,  <24.993530, 37.158581, 37.854233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.170567, 37.033131, 37.956802>,  <25.465628, 36.824047, 38.127750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.170567, 37.033131, 37.956802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126506, 0.728758, 0.672984,
		0.663225, 0.442363, -0.603695,
		-0.737651, 0.522711, -0.427369,
		24.949272, 37.189945, 37.828590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.692595, 37.468380, 37.911415>,  <25.465628, 36.824047, 38.127750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.692595, 37.468380, 37.911415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.308950, 37.474346, 38.024471>,  <25.078764, 37.477924, 38.092304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.308950, 37.474346, 38.024471>,  <25.692595, 37.468380, 37.911415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308950, 37.474346, 38.024471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193298, 0.763963, 0.615627,
		-0.206744, 0.645088, -0.735608,
		-0.959110, 0.014914, 0.282639,
		25.021217, 37.478821, 38.109264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301483, 37.870804, 37.754452>,  <25.692595, 37.468380, 37.911415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301483, 37.870804, 37.754452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.429346, 37.895000, 38.132690>,  <26.506063, 37.909519, 38.359634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.429346, 37.895000, 38.132690>,  <26.301483, 37.870804, 37.754452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429346, 37.895000, 38.132690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939734, 0.107539, -0.324553,
		-0.121323, 0.992359, -0.022473,
		0.319656, 0.060495, 0.945601,
		26.525244, 37.913147, 38.416370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861107, 37.363693, 37.763405>,  <26.301483, 37.870804, 37.754452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861107, 37.363693, 37.763405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.762079, 37.053242, 37.995380>,  <26.702662, 36.866970, 38.134567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.762079, 37.053242, 37.995380>,  <26.861107, 37.363693, 37.763405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762079, 37.053242, 37.995380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701104, 0.269620, 0.660120,
		-0.668702, 0.570026, 0.477397,
		-0.247570, -0.776128, 0.579943,
		26.687809, 36.820404, 38.169365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038921, 37.487698, 38.538925>,  <26.861107, 37.363693, 37.763405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038921, 37.487698, 38.538925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.042603, 37.096180, 38.457066>,  <27.044811, 36.861271, 38.407948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.042603, 37.096180, 38.457066>,  <27.038921, 37.487698, 38.538925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042603, 37.096180, 38.457066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794450, -0.117132, 0.595927,
		-0.607260, -0.168068, 0.776524,
		0.009201, -0.978792, -0.204651,
		27.045362, 36.802544, 38.395672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240335, 37.136971, 39.126884>,  <27.038921, 37.487698, 38.538925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240335, 37.136971, 39.126884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.317446, 36.867489, 38.841518>,  <27.363712, 36.705799, 38.670300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.317446, 36.867489, 38.841518>,  <27.240335, 37.136971, 39.126884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317446, 36.867489, 38.841518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815048, -0.294902, 0.498728,
		-0.546382, -0.677610, 0.492251,
		0.192777, -0.673704, -0.713414,
		27.375278, 36.665379, 38.627495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263334, 36.375687, 39.334499>,  <27.240335, 37.136971, 39.126884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263334, 36.375687, 39.334499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.527449, 36.437996, 39.040627>,  <27.685917, 36.475380, 38.864304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.527449, 36.437996, 39.040627>,  <27.263334, 36.375687, 39.334499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527449, 36.437996, 39.040627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725024, -0.387342, 0.569479,
		-0.195865, -0.908681, -0.368695,
		0.660286, 0.155772, -0.734682,
		27.725534, 36.484726, 38.820221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909184, 36.614048, 39.618004>,  <27.263334, 36.375687, 39.334499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909184, 36.614048, 39.618004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.800449, 36.540195, 39.995789>,  <27.735209, 36.495884, 40.222462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.800449, 36.540195, 39.995789>,  <27.909184, 36.614048, 39.618004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800449, 36.540195, 39.995789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855343, -0.403402, -0.325046,
		0.441013, -0.896202, -0.048266,
		-0.271836, -0.184633, 0.944466,
		27.718899, 36.484806, 40.279129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663511, 35.867981, 39.794754>,  <27.909184, 36.614048, 39.618004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663511, 35.867981, 39.794754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.474100, 36.130539, 40.029671>,  <27.360453, 36.288074, 40.170620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.474100, 36.130539, 40.029671>,  <27.663511, 35.867981, 39.794754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474100, 36.130539, 40.029671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879834, -0.321647, -0.349909,
		-0.040776, -0.682415, 0.729827,
		-0.473529, 0.656394, 0.587296,
		27.332041, 36.327457, 40.205860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167088, 35.505543, 40.292210>,  <27.663511, 35.867981, 39.794754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167088, 35.505543, 40.292210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.050732, 35.870541, 40.177151>,  <26.980919, 36.089539, 40.108116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.050732, 35.870541, 40.177151>,  <27.167088, 35.505543, 40.292210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050732, 35.870541, 40.177151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883142, -0.371733, -0.286136,
		-0.368026, 0.170801, 0.913993,
		-0.290889, 0.912492, -0.287649,
		26.963465, 36.144287, 40.090855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389454, 35.770985, 40.893707>,  <27.167088, 35.505543, 40.292210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389454, 35.770985, 40.893707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.611557, 35.444656, 40.829052>,  <27.744818, 35.248859, 40.790257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.611557, 35.444656, 40.829052>,  <27.389454, 35.770985, 40.893707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611557, 35.444656, 40.829052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632245, 0.540329, -0.555257,
		0.540329, 0.206113, 0.815820,
		0.555257, -0.815820, -0.161642,
		27.778133, 35.199909, 40.780560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064106, 35.904510, 41.069614>,  <27.389454, 35.770985, 40.893707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064106, 35.904510, 41.069614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.015621, 35.632050, 40.780800>,  <27.986530, 35.468575, 40.607510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.015621, 35.632050, 40.780800>,  <28.064106, 35.904510, 41.069614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015621, 35.632050, 40.780800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416667, 0.625301, -0.659838,
		0.900942, -0.380831, 0.208018,
		-0.121213, -0.681150, -0.722040,
		27.979258, 35.427704, 40.564186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734375, 36.174110, 41.383152>,  <28.064106, 35.904510, 41.069614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734375, 36.174110, 41.383152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.029600, 36.392033, 41.542377>,  <29.206736, 36.522785, 41.637913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.029600, 36.392033, 41.542377>,  <28.734375, 36.174110, 41.383152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029600, 36.392033, 41.542377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038263, -0.622799, 0.781446,
		0.673648, -0.561523, -0.480510,
		0.738061, 0.544805, 0.398062,
		29.251019, 36.555473, 41.661797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164736, 35.723629, 41.774029>,  <28.734375, 36.174110, 41.383152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164736, 35.723629, 41.774029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.237156, 36.083878, 41.932064>,  <29.280609, 36.300026, 42.026886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.237156, 36.083878, 41.932064>,  <29.164736, 35.723629, 41.774029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237156, 36.083878, 41.932064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088622, -0.385155, 0.918587,
		0.979473, -0.201325, 0.010082,
		0.181051, 0.900624, 0.395090,
		29.291471, 36.354065, 42.050591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828037, 35.705734, 42.312649>,  <29.164736, 35.723629, 41.774029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828037, 35.705734, 42.312649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527649, 35.960747, 42.381466>,  <29.347416, 36.113754, 42.422756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527649, 35.960747, 42.381466>,  <29.828037, 35.705734, 42.312649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527649, 35.960747, 42.381466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168048, -0.436480, 0.883880,
		0.638592, 0.634858, 0.434920,
		-0.750973, 0.637526, 0.172046,
		29.302357, 36.152004, 42.433079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940536, 36.209312, 42.857906>,  <29.828037, 35.705734, 42.312649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940536, 36.209312, 42.857906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.556837, 36.109592, 42.804699>,  <29.326618, 36.049763, 42.772774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.556837, 36.109592, 42.804699>,  <29.940536, 36.209312, 42.857906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556837, 36.109592, 42.804699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066888, -0.257034, 0.964085,
		-0.274534, 0.933694, 0.229884,
		-0.959248, -0.249297, -0.133017,
		29.269062, 36.034801, 42.764793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601200, 36.539299, 43.294785>,  <29.940536, 36.209312, 42.857906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601200, 36.539299, 43.294785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.366177, 36.224396, 43.219959>,  <29.225163, 36.035454, 43.175064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.366177, 36.224396, 43.219959>,  <29.601200, 36.539299, 43.294785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366177, 36.224396, 43.219959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297648, -0.004689, 0.954664,
		-0.752448, 0.616601, -0.231572,
		-0.587561, -0.787262, -0.187059,
		29.189909, 35.988216, 43.163841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926020, 36.521072, 43.498997>,  <29.601200, 36.539299, 43.294785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926020, 36.521072, 43.498997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.044456, 36.139072, 43.506012>,  <29.115519, 35.909874, 43.510220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.044456, 36.139072, 43.506012>,  <28.926020, 36.521072, 43.498997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044456, 36.139072, 43.506012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272551, -0.066881, 0.959814,
		-0.915448, -0.288971, -0.280089,
		0.296091, -0.954999, 0.017533,
		29.133284, 35.852573, 43.511272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202150, 37.067791, 44.005699>,  <28.926020, 36.521072, 43.498997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202150, 37.067791, 44.005699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.337114, 37.198166, 44.358952>,  <29.418093, 37.276390, 44.570904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.337114, 37.198166, 44.358952>,  <29.202150, 37.067791, 44.005699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337114, 37.198166, 44.358952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728062, -0.685042, -0.025337,
		0.596723, 0.651523, -0.468443,
		0.337411, 0.325936, 0.883130,
		29.438337, 37.295948, 44.623890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894348, 37.364204, 44.017960>,  <29.202150, 37.067791, 44.005699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894348, 37.364204, 44.017960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.834112, 37.225945, 44.388439>,  <29.797972, 37.142990, 44.610729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.834112, 37.225945, 44.388439>,  <29.894348, 37.364204, 44.017960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834112, 37.225945, 44.388439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886897, -0.461124, -0.027887,
		0.436733, 0.817247, 0.375994,
		-0.150589, -0.345647, 0.926202,
		29.788935, 37.122250, 44.666302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490587, 37.438347, 44.329830>,  <29.894348, 37.364204, 44.017960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490587, 37.438347, 44.329830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.292202, 37.182320, 44.564552>,  <30.173170, 37.028706, 44.705383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.292202, 37.182320, 44.564552>,  <30.490587, 37.438347, 44.329830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292202, 37.182320, 44.564552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847170, -0.504984, 0.165206,
		0.190585, 0.579059, 0.792697,
		-0.495964, -0.640064, 0.586803,
		30.143414, 36.990299, 44.740593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660313, 37.072708, 44.944038>,  <30.490587, 37.438347, 44.329830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660313, 37.072708, 44.944038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.854996, 36.741241, 45.054619>,  <30.971806, 36.542362, 45.120968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.854996, 36.741241, 45.054619>,  <30.660313, 37.072708, 44.944038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854996, 36.741241, 45.054619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843669, 0.527975, 0.097287,
		-0.226577, 0.185881, 0.956092,
		0.486708, -0.828668, 0.276449,
		31.001009, 36.492641, 45.137554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954298, 37.033867, 45.642834>,  <30.660313, 37.072708, 44.944038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954298, 37.033867, 45.642834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.178989, 36.826855, 45.384651>,  <31.313805, 36.702648, 45.229740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.178989, 36.826855, 45.384651>,  <30.954298, 37.033867, 45.642834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178989, 36.826855, 45.384651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790916, 0.564817, 0.235444,
		0.242715, -0.642760, 0.726601,
		0.561730, -0.517535, -0.645459,
		31.347509, 36.671593, 45.191013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581888, 37.299713, 45.708969>,  <30.954298, 37.033867, 45.642834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581888, 37.299713, 45.708969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.689989, 36.957153, 45.532997>,  <31.754850, 36.751617, 45.427414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.689989, 36.957153, 45.532997>,  <31.581888, 37.299713, 45.708969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689989, 36.957153, 45.532997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961454, 0.264118, 0.076475,
		0.050701, -0.443642, 0.894769,
		0.270252, -0.856402, -0.439932,
		31.771065, 36.700233, 45.401016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065540, 36.849861, 46.145733>,  <31.581888, 37.299713, 45.708969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065540, 36.849861, 46.145733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100746, 36.826336, 45.747982>,  <32.121868, 36.812222, 45.509331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100746, 36.826336, 45.747982>,  <32.065540, 36.849861, 46.145733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100746, 36.826336, 45.747982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921758, 0.383263, 0.058919,
		0.377644, -0.921765, 0.087943,
		0.088014, -0.058812, -0.994382,
		32.127151, 36.808693, 45.449669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377895, 37.444256, 46.613361>,  <32.065540, 36.849861, 46.145733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377895, 37.444256, 46.613361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249424, 37.138790, 46.837383>,  <32.172340, 36.955513, 46.971798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249424, 37.138790, 46.837383>,  <32.377895, 37.444256, 46.613361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249424, 37.138790, 46.837383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933876, -0.157220, 0.321180,
		-0.157220, 0.626182, 0.763661,
		-0.321180, -0.763661, 0.560058,
		32.153069, 36.909691, 47.005402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652996, 37.495144, 47.295410>,  <32.377895, 37.444256, 46.613361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652996, 37.495144, 47.295410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611870, 37.106579, 47.209820>,  <32.587193, 36.873440, 47.158466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611870, 37.106579, 47.209820>,  <32.652996, 37.495144, 47.295410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611870, 37.106579, 47.209820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922355, -0.173648, 0.345119,
		-0.372410, -0.161880, 0.913841,
		-0.102819, -0.971412, -0.213979,
		32.581024, 36.815155, 47.145626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639767, 36.924751, 47.896278>,  <32.652996, 37.495144, 47.295410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639767, 36.924751, 47.896278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.802124, 36.874218, 47.534222>,  <32.899540, 36.843899, 47.316986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.802124, 36.874218, 47.534222>,  <32.639767, 36.924751, 47.896278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802124, 36.874218, 47.534222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901360, -0.108295, 0.419313,
		-0.150995, -0.986059, 0.069913,
		0.405896, -0.126330, -0.905146,
		32.923893, 36.836319, 47.262676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288826, 36.657635, 48.504589>,  <32.639767, 36.924751, 47.896278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288826, 36.657635, 48.504589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.923460, 36.567307, 48.640041>,  <31.704239, 36.513107, 48.721313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.923460, 36.567307, 48.640041>,  <32.288826, 36.657635, 48.504589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923460, 36.567307, 48.640041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026589, -0.797086, -0.603281,
		0.406150, -0.560052, 0.722069,
		-0.913419, -0.225823, 0.338628,
		31.649435, 36.499561, 48.741631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311626, 36.024765, 48.842167>,  <32.288826, 36.657635, 48.504589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311626, 36.024765, 48.842167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.986300, 36.121147, 48.630333>,  <31.791103, 36.178978, 48.503235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.986300, 36.121147, 48.630333>,  <32.311626, 36.024765, 48.842167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986300, 36.121147, 48.630333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257473, -0.667181, -0.698983,
		-0.521753, -0.704847, 0.480588,
		-0.813315, 0.240958, -0.529583,
		31.742306, 36.193436, 48.471458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412170, 35.406578, 49.362164>,  <32.311626, 36.024765, 48.842167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412170, 35.406578, 49.362164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.431625, 35.038658, 49.517910>,  <32.443298, 34.817905, 49.611359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.431625, 35.038658, 49.517910>,  <32.412170, 35.406578, 49.362164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431625, 35.038658, 49.517910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977864, -0.035583, -0.206195,
		0.203512, 0.390777, 0.897706,
		0.048633, -0.919797, 0.389369,
		32.446217, 34.762718, 49.634720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918373, 35.412567, 49.924618>,  <32.412170, 35.406578, 49.362164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918373, 35.412567, 49.924618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.870876, 35.047745, 49.767620>,  <32.842381, 34.828850, 49.673424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.870876, 35.047745, 49.767620>,  <32.918373, 35.412567, 49.924618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870876, 35.047745, 49.767620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990591, -0.081722, -0.109777,
		0.068048, -0.401832, 0.913181,
		-0.118739, -0.912059, -0.392491,
		32.835255, 34.774128, 49.649872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437393, 34.959938, 50.260448>,  <32.918373, 35.412567, 49.924618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437393, 34.959938, 50.260448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352104, 34.742126, 49.935974>,  <33.300930, 34.611439, 49.741291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352104, 34.742126, 49.935974>,  <33.437393, 34.959938, 50.260448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352104, 34.742126, 49.935974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977003, -0.119534, -0.176569,
		-0.000816, -0.830179, 0.557497,
		-0.213224, -0.544532, -0.811185,
		33.288136, 34.578766, 49.692619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834557, 34.329742, 50.298344>,  <33.437393, 34.959938, 50.260448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834557, 34.329742, 50.298344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739719, 34.332809, 49.909760>,  <33.682819, 34.334652, 49.676609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739719, 34.332809, 49.909760>,  <33.834557, 34.329742, 50.298344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739719, 34.332809, 49.909760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970929, -0.032035, -0.237214,
		-0.032941, -0.999458, 0.000143,
		-0.237090, 0.007676, -0.971457,
		33.668591, 34.335110, 49.618320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380756, 33.845547, 50.034348>,  <33.834557, 34.329742, 50.298344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380756, 33.845547, 50.034348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.233349, 34.052933, 49.725700>,  <34.144905, 34.177364, 49.540512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.233349, 34.052933, 49.725700>,  <34.380756, 33.845547, 50.034348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233349, 34.052933, 49.725700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881093, -0.069872, -0.467753,
		-0.296427, -0.852240, -0.431066,
		-0.368518, 0.518463, -0.771615,
		34.122795, 34.208473, 49.494217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673599, 33.541313, 49.455505>,  <34.380756, 33.845547, 50.034348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673599, 33.541313, 49.455505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.569183, 33.909874, 49.340347>,  <34.506535, 34.131008, 49.271252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.569183, 33.909874, 49.340347>,  <34.673599, 33.541313, 49.455505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569183, 33.909874, 49.340347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903115, 0.127768, -0.409948,
		-0.340942, -0.367014, -0.865482,
		-0.261037, 0.921399, -0.287895,
		34.490871, 34.186295, 49.253979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872196, 33.638348, 48.730850>,  <34.673599, 33.541313, 49.455505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872196, 33.638348, 48.730850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.802937, 34.011196, 48.858074>,  <34.761379, 34.234905, 48.934410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.802937, 34.011196, 48.858074>,  <34.872196, 33.638348, 48.730850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802937, 34.011196, 48.858074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858554, 0.301092, -0.415005,
		-0.482601, 0.201211, -0.852414,
		-0.173152, 0.932125, 0.318058,
		34.750992, 34.290833, 48.953491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830086, 34.147346, 48.210793>,  <34.872196, 33.638348, 48.730850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830086, 34.147346, 48.210793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.941967, 34.347794, 48.538364>,  <35.009094, 34.468063, 48.734909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.941967, 34.347794, 48.538364>,  <34.830086, 34.147346, 48.210793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941967, 34.347794, 48.538364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889141, 0.186594, -0.417864,
		-0.362207, 0.845023, -0.393373,
		0.279704, 0.501117, 0.818931,
		35.025879, 34.498127, 48.784042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266815, 34.584110, 47.782410>,  <34.830086, 34.147346, 48.210793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266815, 34.584110, 47.782410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.350739, 34.686790, 48.159786>,  <35.401093, 34.748398, 48.386211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.350739, 34.686790, 48.159786>,  <35.266815, 34.584110, 47.782410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350739, 34.686790, 48.159786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922432, 0.267970, -0.278050,
		-0.324191, 0.928599, -0.180569,
		0.209810, 0.256704, 0.943442,
		35.413681, 34.763802, 48.442818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544193, 35.293404, 47.854149>,  <35.266815, 34.584110, 47.782410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544193, 35.293404, 47.854149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.673618, 35.124207, 48.192707>,  <35.751274, 35.022690, 48.395844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.673618, 35.124207, 48.192707>,  <35.544193, 35.293404, 47.854149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673618, 35.124207, 48.192707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935146, 0.006594, -0.354201,
		0.144242, 0.906111, 0.397690,
		0.323567, -0.422989, 0.846395,
		35.770687, 34.997311, 48.446625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101765, 35.693172, 48.079155>,  <35.544193, 35.293404, 47.854149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101765, 35.693172, 48.079155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140297, 35.336788, 48.256657>,  <36.163418, 35.122959, 48.363159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140297, 35.336788, 48.256657>,  <36.101765, 35.693172, 48.079155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140297, 35.336788, 48.256657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946568, -0.055857, -0.317631,
		0.307782, 0.450641, 0.837970,
		0.096331, -0.890956, 0.443754,
		36.169197, 35.069500, 48.389782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734367, 35.772995, 48.201355>,  <36.101765, 35.693172, 48.079155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734367, 35.772995, 48.201355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.681526, 35.380611, 48.258301>,  <36.649822, 35.145180, 48.292469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.681526, 35.380611, 48.258301>,  <36.734367, 35.772995, 48.201355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681526, 35.380611, 48.258301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964539, -0.160323, -0.209671,
		0.228503, 0.109614, 0.967353,
		-0.132106, -0.980959, 0.142361,
		36.641895, 35.086323, 48.301010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306473, 35.581928, 48.663750>,  <36.734367, 35.772995, 48.201355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306473, 35.581928, 48.663750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.206924, 35.253078, 48.458939>,  <37.147194, 35.055767, 48.336052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.206924, 35.253078, 48.458939>,  <37.306473, 35.581928, 48.663750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206924, 35.253078, 48.458939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942986, -0.085046, -0.321784,
		0.221001, -0.562916, 0.796419,
		-0.248870, -0.822127, -0.512027,
		37.132263, 35.006439, 48.305332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773262, 35.138840, 48.858952>,  <37.306473, 35.581928, 48.663750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773262, 35.138840, 48.858952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636330, 34.982361, 48.517246>,  <37.554169, 34.888474, 48.312222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636330, 34.982361, 48.517246>,  <37.773262, 35.138840, 48.858952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636330, 34.982361, 48.517246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934943, -0.051620, -0.351022,
		0.093223, -0.918856, 0.383422,
		-0.342331, -0.391201, -0.854267,
		37.533630, 34.865002, 48.260967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175152, 34.520924, 48.649990>,  <37.773262, 35.138840, 48.858952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175152, 34.520924, 48.649990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004940, 34.708935, 48.340668>,  <37.902813, 34.821743, 48.155075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004940, 34.708935, 48.340668>,  <38.175152, 34.520924, 48.649990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004940, 34.708935, 48.340668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881482, 0.021964, -0.471707,
		-0.204732, -0.882377, -0.423670,
		-0.425528, 0.470031, -0.773302,
		37.877281, 34.849945, 48.108677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033916, 34.653225, 48.592915>,  <38.175152, 34.520924, 48.649990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033916, 34.653225, 48.592915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026527, 34.289303, 48.427067>,  <39.022095, 34.070950, 48.327557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026527, 34.289303, 48.427067>,  <39.033916, 34.653225, 48.592915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026527, 34.289303, 48.427067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921238, 0.145676, -0.360694,
		0.388562, -0.388626, 0.835458,
		-0.018468, -0.909807, -0.414621,
		39.020988, 34.016361, 48.302681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536453, 34.123573, 48.922897>,  <39.033916, 34.653225, 48.592915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536453, 34.123573, 48.922897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.465443, 34.059361, 48.534523>,  <39.422836, 34.020832, 48.301498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.465443, 34.059361, 48.534523>,  <39.536453, 34.123573, 48.922897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465443, 34.059361, 48.534523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956827, 0.202573, -0.208436,
		0.230147, -0.966019, 0.117643,
		-0.177522, -0.160535, -0.970935,
		39.412186, 34.011200, 48.243244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542370, 33.571396, 49.348362>,  <39.536453, 34.123573, 48.922897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542370, 33.571396, 49.348362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.819809, 33.681236, 49.614750>,  <39.986275, 33.747143, 49.774582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.819809, 33.681236, 49.614750>,  <39.542370, 33.571396, 49.348362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819809, 33.681236, 49.614750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547192, -0.400430, 0.735008,
		0.468509, -0.874213, -0.127477,
		0.693600, 0.274603, 0.665967,
		40.027889, 33.763618, 49.814541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656395, 33.055313, 49.856319>,  <39.542370, 33.571396, 49.348362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656395, 33.055313, 49.856319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.798626, 33.369984, 50.058193>,  <39.883965, 33.558784, 50.179317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.798626, 33.369984, 50.058193>,  <39.656395, 33.055313, 49.856319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798626, 33.369984, 50.058193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479209, -0.310151, 0.821076,
		0.802448, -0.533807, 0.266698,
		0.355579, 0.786674, 0.504685,
		39.905300, 33.605988, 50.209599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249680, 32.853233, 50.512825>,  <39.656395, 33.055313, 49.856319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249680, 32.853233, 50.512825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.469700, 33.183437, 50.563381>,  <39.601711, 33.381561, 50.593716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.469700, 33.183437, 50.563381>,  <39.249680, 32.853233, 50.512825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469700, 33.183437, 50.563381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460091, 0.173242, 0.870806,
		0.696964, -0.537140, 0.475102,
		0.550053, 0.825511, 0.126390,
		39.634716, 33.431091, 50.601299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459579, 32.872948, 51.134308>,  <39.249680, 32.853233, 50.512825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459579, 32.872948, 51.134308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.422016, 33.252228, 51.012917>,  <39.399479, 33.479797, 50.940083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.422016, 33.252228, 51.012917>,  <39.459579, 32.872948, 51.134308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422016, 33.252228, 51.012917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530556, 0.210272, 0.821155,
		0.842432, 0.238121, 0.483328,
		-0.093904, 0.948200, -0.303477,
		39.393845, 33.536690, 50.921875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777542, 33.308956, 51.608959>,  <39.459579, 32.872948, 51.134308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777542, 33.308956, 51.608959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472046, 33.479729, 51.415291>,  <39.288746, 33.582191, 51.299088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472046, 33.479729, 51.415291>,  <39.777542, 33.308956, 51.608959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472046, 33.479729, 51.415291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461864, 0.162592, 0.871921,
		0.450976, 0.889545, 0.073008,
		-0.763743, 0.426935, -0.484173,
		39.242924, 33.607811, 51.270039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681210, 33.894806, 51.923004>,  <39.777542, 33.308956, 51.608959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681210, 33.894806, 51.923004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.327339, 33.873760, 51.737709>,  <39.115017, 33.861134, 51.626534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.327339, 33.873760, 51.737709>,  <39.681210, 33.894806, 51.923004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327339, 33.873760, 51.737709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452731, 0.334177, 0.826656,
		0.111313, 0.941041, -0.319455,
		-0.884671, -0.052610, -0.463237,
		39.061939, 33.857979, 51.598740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356331, 34.651493, 52.012749>,  <39.681210, 33.894806, 51.923004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356331, 34.651493, 52.012749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047874, 34.417889, 51.911339>,  <38.862801, 34.277725, 51.850494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047874, 34.417889, 51.911339>,  <39.356331, 34.651493, 52.012749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047874, 34.417889, 51.911339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547435, 0.404922, 0.732361,
		-0.325048, 0.703542, -0.631960,
		-0.771141, -0.584009, -0.253525,
		38.816532, 34.242687, 51.835281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765488, 35.120663, 52.014225>,  <39.356331, 34.651493, 52.012749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765488, 35.120663, 52.014225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.599140, 34.756996, 52.005516>,  <38.499332, 34.538795, 52.000290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.599140, 34.756996, 52.005516>,  <38.765488, 35.120663, 52.014225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599140, 34.756996, 52.005516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650639, 0.280719, 0.705595,
		-0.635390, 0.307601, -0.708280,
		-0.415870, -0.909164, -0.021771,
		38.474380, 34.484245, 51.998985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072399, 35.248970, 52.162556>,  <38.765488, 35.120663, 52.014225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072399, 35.248970, 52.162556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092365, 34.853390, 52.218391>,  <38.104343, 34.616043, 52.251892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092365, 34.853390, 52.218391>,  <38.072399, 35.248970, 52.162556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092365, 34.853390, 52.218391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615481, 0.079614, 0.784121,
		-0.786570, -0.125050, -0.604707,
		0.049911, -0.988951, 0.139587,
		38.107338, 34.556705, 52.260269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403305, 35.029930, 52.256756>,  <38.072399, 35.248970, 52.162556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403305, 35.029930, 52.256756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.630371, 34.759102, 52.444088>,  <37.766609, 34.596603, 52.556488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.630371, 34.759102, 52.444088>,  <37.403305, 35.029930, 52.256756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630371, 34.759102, 52.444088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640360, -0.005625, 0.768055,
		-0.517393, -0.735897, -0.436761,
		0.567666, -0.677070, 0.468328,
		37.800671, 34.555981, 52.584587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901768, 34.396854, 52.469841>,  <37.403305, 35.029930, 52.256756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901768, 34.396854, 52.469841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243660, 34.414101, 52.676750>,  <37.448795, 34.424446, 52.800896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243660, 34.414101, 52.676750>,  <36.901768, 34.396854, 52.469841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243660, 34.414101, 52.676750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517607, -0.003977, 0.855609,
		0.038946, -0.999062, 0.018917,
		0.854732, 0.043114, 0.517276,
		37.500080, 34.427032, 52.831932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841312, 33.939953, 53.017490>,  <36.901768, 34.396854, 52.469841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841312, 33.939953, 53.017490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.134644, 34.168514, 53.164860>,  <37.310642, 34.305649, 53.253281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.134644, 34.168514, 53.164860>,  <36.841312, 33.939953, 53.017490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134644, 34.168514, 53.164860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492963, 0.073695, 0.866924,
		0.468211, -0.817355, 0.335722,
		0.733326, 0.571402, 0.368421,
		37.354641, 34.339935, 53.275387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847260, 33.802059, 53.746094>,  <36.841312, 33.939953, 53.017490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847260, 33.802059, 53.746094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059582, 34.140781, 53.732460>,  <37.186977, 34.344013, 53.724277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059582, 34.140781, 53.732460>,  <36.847260, 33.802059, 53.746094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059582, 34.140781, 53.732460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434765, 0.306610, 0.846741,
		0.727477, -0.434637, 0.530912,
		0.530807, 0.846807, -0.034087,
		37.218822, 34.394825, 53.722233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178616, 33.754841, 54.357155>,  <36.847260, 33.802059, 53.746094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178616, 33.754841, 54.357155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.170650, 34.134872, 54.232613>,  <37.165871, 34.362892, 54.157887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.170650, 34.134872, 54.232613>,  <37.178616, 33.754841, 54.357155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170650, 34.134872, 54.232613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377029, 0.281293, 0.882453,
		0.925987, 0.134966, 0.352607,
		-0.019915, 0.950083, -0.311360,
		37.164677, 34.419899, 54.139206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504940, 34.166489, 54.869560>,  <37.178616, 33.754841, 54.357155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504940, 34.166489, 54.869560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296993, 34.442368, 54.667946>,  <37.172226, 34.607895, 54.546978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296993, 34.442368, 54.667946>,  <37.504940, 34.166489, 54.869560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296993, 34.442368, 54.667946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339012, 0.375007, 0.862810,
		0.784096, 0.619422, 0.038862,
		-0.519870, 0.689700, -0.504033,
		37.141033, 34.649277, 54.516735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578709, 34.850910, 55.252155>,  <37.504940, 34.166489, 54.869560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578709, 34.850910, 55.252155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.249958, 34.920441, 55.035160>,  <37.052708, 34.962158, 54.904961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.249958, 34.920441, 55.035160>,  <37.578709, 34.850910, 55.252155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249958, 34.920441, 55.035160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399455, 0.503083, 0.766383,
		0.406139, 0.846576, -0.344036,
		-0.821880, 0.173831, -0.542490,
		37.003395, 34.972591, 54.872414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401112, 35.515873, 55.412090>,  <37.578709, 34.850910, 55.252155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401112, 35.515873, 55.412090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.064045, 35.368011, 55.255489>,  <36.861805, 35.279297, 55.161530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.064045, 35.368011, 55.255489>,  <37.401112, 35.515873, 55.412090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064045, 35.368011, 55.255489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537741, 0.614803, 0.576933,
		0.027433, 0.696688, -0.716849,
		-0.842664, -0.369652, -0.391504,
		36.811245, 35.257114, 55.138039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952057, 36.042114, 55.209171>,  <37.401112, 35.515873, 55.412090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952057, 36.042114, 55.209171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753654, 35.710129, 55.311256>,  <36.634613, 35.510937, 55.372509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753654, 35.710129, 55.311256>,  <36.952057, 36.042114, 55.209171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753654, 35.710129, 55.311256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594477, 0.538815, 0.596888,
		-0.632912, 0.144338, -0.760651,
		-0.496004, -0.829967, 0.255216,
		36.604855, 35.461140, 55.387821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302441, 36.236729, 55.111187>,  <36.952057, 36.042114, 55.209171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302441, 36.236729, 55.111187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.262642, 35.904823, 55.330856>,  <36.238762, 35.705681, 55.462658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.262642, 35.904823, 55.330856>,  <36.302441, 36.236729, 55.111187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262642, 35.904823, 55.330856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749126, 0.425723, 0.507514,
		-0.654913, -0.360903, -0.663957,
		-0.099498, -0.829765, 0.549173,
		36.232792, 35.655895, 55.495609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538105, 36.155056, 55.106110>,  <36.302441, 36.236729, 55.111187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538105, 36.155056, 55.106110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.696049, 35.933868, 55.399590>,  <35.790817, 35.801155, 55.575676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.696049, 35.933868, 55.399590>,  <35.538105, 36.155056, 55.106110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696049, 35.933868, 55.399590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624848, 0.423818, 0.655701,
		-0.673534, -0.717361, -0.178170,
		0.394863, -0.552966, 0.733697,
		35.814507, 35.767979, 55.619698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978428, 35.912014, 55.511700>,  <35.538105, 36.155056, 55.106110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978428, 35.912014, 55.511700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277649, 35.896202, 55.776684>,  <35.457184, 35.886715, 55.935673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277649, 35.896202, 55.776684>,  <34.978428, 35.912014, 55.511700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277649, 35.896202, 55.776684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544279, 0.534591, 0.646508,
		-0.379702, -0.844186, 0.378387,
		0.748055, -0.039532, 0.662458,
		35.502064, 35.884342, 55.975422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690769, 35.707512, 56.097389>,  <34.978428, 35.912014, 55.511700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690769, 35.707512, 56.097389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028423, 35.895672, 56.200275>,  <35.231014, 36.008568, 56.262009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028423, 35.895672, 56.200275>,  <34.690769, 35.707512, 56.097389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028423, 35.895672, 56.200275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501675, 0.523835, 0.688418,
		0.189093, -0.710157, 0.678175,
		0.844136, 0.470399, 0.257215,
		35.281666, 36.036793, 56.277439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627254, 35.759724, 56.802486>,  <34.690769, 35.707512, 56.097389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627254, 35.759724, 56.802486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.904499, 36.036808, 56.722729>,  <35.070847, 36.203056, 56.674873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.904499, 36.036808, 56.722729>,  <34.627254, 35.759724, 56.802486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904499, 36.036808, 56.722729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374148, 0.582151, 0.721882,
		0.616130, -0.425740, 0.662669,
		0.693107, 0.692709, -0.199391,
		35.112431, 36.244621, 56.662910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742130, 36.082382, 57.430126>,  <34.627254, 35.759724, 56.802486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742130, 36.082382, 57.430126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923424, 36.317490, 57.162064>,  <35.032200, 36.458553, 57.001228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923424, 36.317490, 57.162064>,  <34.742130, 36.082382, 57.430126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923424, 36.317490, 57.162064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188317, 0.797975, 0.572514,
		0.871272, -0.133283, 0.472357,
		0.453236, 0.587768, -0.670154,
		35.059395, 36.493820, 56.961018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285187, 36.527630, 57.823544>,  <34.742130, 36.082382, 57.430126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285187, 36.527630, 57.823544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.214973, 36.753910, 57.501259>,  <35.172844, 36.889679, 57.307888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.214973, 36.753910, 57.501259>,  <35.285187, 36.527630, 57.823544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214973, 36.753910, 57.501259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303920, 0.747304, 0.590905,
		0.936387, 0.348597, 0.040749,
		-0.175536, 0.565700, -0.805711,
		35.162312, 36.923618, 57.259544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662899, 37.171124, 57.878696>,  <35.285187, 36.527630, 57.823544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662899, 37.171124, 57.878696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392746, 37.250271, 57.594524>,  <35.230656, 37.297760, 57.424023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392746, 37.250271, 57.594524>,  <35.662899, 37.171124, 57.878696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392746, 37.250271, 57.594524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360740, 0.751576, 0.552268,
		0.643217, 0.629271, -0.436222,
		-0.675381, 0.197865, -0.710430,
		35.190132, 37.309631, 57.381397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722607, 37.915100, 57.607452>,  <35.662899, 37.171124, 57.878696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722607, 37.915100, 57.607452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353394, 37.799690, 57.505661>,  <35.131866, 37.730446, 57.444588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353394, 37.799690, 57.505661>,  <35.722607, 37.915100, 57.607452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353394, 37.799690, 57.505661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368555, 0.852862, 0.369856,
		0.110319, 0.435179, -0.893560,
		-0.923037, -0.288524, -0.254475,
		35.076481, 37.713135, 57.429317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339516, 38.475956, 57.411686>,  <35.722607, 37.915100, 57.607452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339516, 38.475956, 57.411686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040859, 38.221348, 57.489021>,  <34.861668, 38.068584, 57.535423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040859, 38.221348, 57.489021>,  <35.339516, 38.475956, 57.411686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040859, 38.221348, 57.489021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519718, 0.739554, 0.427731,
		-0.415243, 0.218877, -0.882987,
		-0.746637, -0.636517, 0.193341,
		34.816868, 38.030392, 57.547024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783852, 38.822075, 57.366402>,  <35.339516, 38.475956, 57.411686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783852, 38.822075, 57.366402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.669300, 38.527481, 57.611538>,  <34.600571, 38.350723, 57.758621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.669300, 38.527481, 57.611538>,  <34.783852, 38.822075, 57.366402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669300, 38.527481, 57.611538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452083, 0.667820, 0.591302,
		-0.844755, -0.107721, -0.524200,
		-0.286376, -0.736487, 0.612843,
		34.583385, 38.306534, 57.795391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008163, 38.939400, 57.479450>,  <34.783852, 38.822075, 57.366402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008163, 38.939400, 57.479450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.124184, 38.687164, 57.767403>,  <34.193794, 38.535824, 57.940174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.124184, 38.687164, 57.767403>,  <34.008163, 38.939400, 57.479450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124184, 38.687164, 57.767403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471237, 0.560599, 0.680929,
		-0.832952, -0.536736, -0.134557,
		0.290046, -0.630589, 0.719882,
		34.211197, 38.497986, 57.983368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356606, 38.709599, 57.726906>,  <34.008163, 38.939400, 57.479450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356606, 38.709599, 57.726906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635792, 38.643890, 58.005722>,  <33.803303, 38.604465, 58.173012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635792, 38.643890, 58.005722>,  <33.356606, 38.709599, 57.726906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635792, 38.643890, 58.005722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547780, 0.504496, 0.667399,
		-0.461290, -0.847643, 0.262133,
		0.697961, -0.164273, 0.697040,
		33.845181, 38.594608, 58.214832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001141, 38.562389, 58.333961>,  <33.356606, 38.709599, 57.726906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001141, 38.562389, 58.333961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.365688, 38.652664, 58.471638>,  <33.584419, 38.706829, 58.554245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.365688, 38.652664, 58.471638>,  <33.001141, 38.562389, 58.333961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365688, 38.652664, 58.471638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408296, 0.601264, 0.686859,
		-0.051937, -0.766516, 0.640121,
		0.911371, 0.225685, 0.344193,
		33.639099, 38.720371, 58.574894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015259, 38.390442, 59.079689>,  <33.001141, 38.562389, 58.333961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015259, 38.390442, 59.079689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281754, 38.677757, 58.999500>,  <33.441650, 38.850147, 58.951389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281754, 38.677757, 58.999500>,  <33.015259, 38.390442, 59.079689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281754, 38.677757, 58.999500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519112, 0.639694, 0.566846,
		0.535397, -0.273589, 0.799061,
		0.666238, 0.718290, -0.200467,
		33.481625, 38.893246, 58.939362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216923, 38.585316, 59.753994>,  <33.015259, 38.390442, 59.079689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216923, 38.585316, 59.753994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.350246, 38.895737, 59.539841>,  <33.430241, 39.081989, 59.411346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.350246, 38.895737, 59.539841>,  <33.216923, 38.585316, 59.753994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350246, 38.895737, 59.539841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284332, 0.624160, 0.727723,
		0.898920, -0.090333, 0.428698,
		0.333313, 0.776057, -0.535385,
		33.450241, 39.128555, 59.379227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432255, 39.154858, 60.247963>,  <33.216923, 38.585316, 59.753994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432255, 39.154858, 60.247963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.404957, 39.353779, 59.902008>,  <33.388577, 39.473133, 59.694435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.404957, 39.353779, 59.902008>,  <33.432255, 39.154858, 60.247963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404957, 39.353779, 59.902008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238774, 0.833574, 0.498138,
		0.968674, 0.240510, 0.061852,
		-0.068248, 0.497302, -0.864889,
		33.384483, 39.502968, 59.642540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625553, 39.791599, 60.488968>,  <33.432255, 39.154858, 60.247963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625553, 39.791599, 60.488968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.400074, 39.847374, 60.163315>,  <33.264786, 39.880836, 59.967922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.400074, 39.847374, 60.163315>,  <33.625553, 39.791599, 60.488968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400074, 39.847374, 60.163315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521088, 0.704722, 0.481491,
		0.640872, 0.695646, -0.324590,
		-0.563693, 0.139434, -0.814130,
		33.230965, 39.889206, 59.919075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482456, 40.435131, 60.605145>,  <33.625553, 39.791599, 60.488968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482456, 40.435131, 60.605145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215839, 40.326057, 60.327621>,  <33.055870, 40.260612, 60.161106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215839, 40.326057, 60.327621>,  <33.482456, 40.435131, 60.605145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215839, 40.326057, 60.327621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562595, 0.794623, 0.228171,
		0.489095, 0.542416, -0.683060,
		-0.666538, -0.272689, -0.693807,
		33.015877, 40.244251, 60.119480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386925, 40.999294, 60.191166>,  <33.482456, 40.435131, 60.605145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386925, 40.999294, 60.191166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.062435, 40.782238, 60.104027>,  <32.867741, 40.652004, 60.051743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.062435, 40.782238, 60.104027>,  <33.386925, 40.999294, 60.191166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062435, 40.782238, 60.104027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578581, 0.798812, 0.164753,
		0.084621, 0.259696, -0.961976,
		-0.811224, -0.542639, -0.217851,
		32.819069, 40.619446, 60.038670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997375, 41.424030, 59.787235>,  <33.386925, 40.999294, 60.191166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997375, 41.424030, 59.787235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.716759, 41.163795, 59.903564>,  <32.548389, 41.007652, 59.973362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.716759, 41.163795, 59.903564>,  <32.997375, 41.424030, 59.787235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716759, 41.163795, 59.903564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485516, 0.735072, 0.473226,
		-0.521651, 0.190789, -0.831553,
		-0.701538, -0.650591, 0.290820,
		32.506298, 40.968616, 59.990810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333664, 41.671505, 59.592052>,  <32.997375, 41.424030, 59.787235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333664, 41.671505, 59.592052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300961, 41.431694, 59.910519>,  <32.281338, 41.287807, 60.101597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300961, 41.431694, 59.910519>,  <32.333664, 41.671505, 59.592052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300961, 41.431694, 59.910519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774209, 0.541263, 0.328078,
		-0.627627, -0.589575, -0.508414,
		-0.081759, -0.599529, 0.796166,
		32.276432, 41.251835, 60.149368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595892, 41.634323, 59.704056>,  <32.333664, 41.671505, 59.592052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595892, 41.634323, 59.704056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.759825, 41.495956, 60.041668>,  <31.858185, 41.412937, 60.244236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.759825, 41.495956, 60.041668>,  <31.595892, 41.634323, 59.704056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759825, 41.495956, 60.041668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595767, 0.599165, 0.534848,
		-0.690724, -0.722040, 0.039470,
		0.409831, -0.345917, 0.844026,
		31.882774, 41.392181, 60.294876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999306, 41.449444, 60.096306>,  <31.595892, 41.634323, 59.704056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999306, 41.449444, 60.096306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.309011, 41.518696, 60.339794>,  <31.494835, 41.560249, 60.485886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.309011, 41.518696, 60.339794>,  <30.999306, 41.449444, 60.096306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309011, 41.518696, 60.339794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597101, 0.518595, 0.611988,
		-0.209722, -0.837307, 0.504909,
		0.774265, 0.173134, 0.608718,
		31.541290, 41.570637, 60.522411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704117, 41.677448, 60.653107>,  <30.999306, 41.449444, 60.096306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704117, 41.677448, 60.653107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.074812, 41.776711, 60.765945>,  <31.297230, 41.836269, 60.833649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.074812, 41.776711, 60.765945>,  <30.704117, 41.677448, 60.653107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074812, 41.776711, 60.765945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375614, 0.628925, 0.680712,
		-0.008493, -0.736799, 0.676058,
		0.926737, 0.248155, 0.282093,
		31.352833, 41.851158, 60.850574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712013, 41.644619, 61.370770>,  <30.704117, 41.677448, 60.653107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712013, 41.644619, 61.370770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.032949, 41.867245, 61.284534>,  <31.225512, 42.000820, 61.232792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.032949, 41.867245, 61.284534>,  <30.712013, 41.644619, 61.370770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032949, 41.867245, 61.284534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228289, 0.619904, 0.750735,
		0.551481, -0.553130, 0.624433,
		0.802343, 0.556567, -0.215591,
		31.273651, 42.034214, 61.219856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052767, 41.731915, 61.989708>,  <30.712013, 41.644619, 61.370770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052767, 41.731915, 61.989708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.158041, 42.021961, 61.735168>,  <31.221207, 42.195992, 61.582447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.158041, 42.021961, 61.735168>,  <31.052767, 41.731915, 61.989708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158041, 42.021961, 61.735168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135753, 0.680872, 0.719712,
		0.955146, -0.103033, 0.277634,
		0.263187, 0.725119, -0.636345,
		31.236998, 42.239498, 61.544266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514750, 42.151272, 62.418491>,  <31.052767, 41.731915, 61.989708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514750, 42.151272, 62.418491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.344297, 42.363186, 62.125168>,  <31.242025, 42.490334, 61.949173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.344297, 42.363186, 62.125168>,  <31.514750, 42.151272, 62.418491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344297, 42.363186, 62.125168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211024, 0.730017, 0.650035,
		0.879706, 0.431744, -0.199284,
		-0.426130, 0.529786, -0.733308,
		31.216459, 42.522121, 61.905174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556438, 42.816711, 62.727489>,  <31.514750, 42.151272, 62.418491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556438, 42.816711, 62.727489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.317997, 42.845959, 62.407661>,  <31.174932, 42.863506, 62.215763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.317997, 42.845959, 62.407661>,  <31.556438, 42.816711, 62.727489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317997, 42.845959, 62.407661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354981, 0.869231, 0.344132,
		0.720173, 0.488971, -0.492197,
		-0.596103, 0.073114, -0.799572,
		31.139166, 42.867893, 62.167789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523771, 43.574272, 62.651951>,  <31.556438, 42.816711, 62.727489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523771, 43.574272, 62.651951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.216293, 43.376587, 62.489540>,  <31.031807, 43.257977, 62.392094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.216293, 43.376587, 62.489540>,  <31.523771, 43.574272, 62.651951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216293, 43.376587, 62.489540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614593, 0.746538, 0.254865,
		0.177157, 0.445456, -0.877601,
		-0.768694, -0.494216, -0.406029,
		30.985685, 43.228321, 62.367733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381319, 43.940285, 62.017635>,  <31.523771, 43.574272, 62.651951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381319, 43.940285, 62.017635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.099283, 43.766861, 62.242088>,  <30.930061, 43.662807, 62.376762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.099283, 43.766861, 62.242088>,  <31.381319, 43.940285, 62.017635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099283, 43.766861, 62.242088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589770, 0.797905, -0.124576,
		-0.393723, -0.418779, -0.818295,
		-0.705091, -0.433558, 0.561136,
		30.887756, 43.636795, 62.410431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811850, 44.017643, 61.630589>,  <31.381319, 43.940285, 62.017635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811850, 44.017643, 61.630589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.722134, 43.986092, 62.019119>,  <30.668304, 43.967159, 62.252235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.722134, 43.986092, 62.019119>,  <30.811850, 44.017643, 61.630589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722134, 43.986092, 62.019119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577975, 0.813265, -0.067417,
		-0.784627, -0.576522, -0.227999,
		-0.224291, -0.078881, 0.971325,
		30.654846, 43.962429, 62.310516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021450, 44.069496, 61.853172>,  <30.811850, 44.017643, 61.630589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021450, 44.069496, 61.853172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.279003, 44.230431, 62.113491>,  <30.433535, 44.326992, 62.269684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.279003, 44.230431, 62.113491>,  <30.021450, 44.069496, 61.853172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279003, 44.230431, 62.113491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496970, 0.866647, -0.044089,
		-0.581751, -0.295038, 0.757970,
		0.643885, 0.402337, 0.650798,
		30.472168, 44.351131, 62.308731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798372, 44.474384, 62.429199>,  <30.021450, 44.069496, 61.853172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798372, 44.474384, 62.429199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.142809, 44.659512, 62.344994>,  <30.349472, 44.770588, 62.294472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.142809, 44.659512, 62.344994>,  <29.798372, 44.474384, 62.429199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142809, 44.659512, 62.344994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498060, 0.851071, -0.166177,
		0.102251, 0.247942, 0.963364,
		0.861093, 0.462822, -0.210513,
		30.401136, 44.798359, 62.281841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920626, 45.210728, 62.189106>,  <29.798372, 44.474384, 62.429199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920626, 45.210728, 62.189106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.865999, 45.465706, 61.885788>,  <29.833223, 45.618694, 61.703796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.865999, 45.465706, 61.885788>,  <29.920626, 45.210728, 62.189106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865999, 45.465706, 61.885788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735090, -0.447926, -0.508926,
		-0.664073, -0.626916, -0.407410,
		-0.136564, 0.637447, -0.758296,
		29.825029, 45.656940, 61.658298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866440, 44.829811, 61.690765>,  <29.920626, 45.210728, 62.189106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866440, 44.829811, 61.690765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.987745, 45.190044, 61.566196>,  <30.060530, 45.406185, 61.491455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.987745, 45.190044, 61.566196>,  <29.866440, 44.829811, 61.690765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987745, 45.190044, 61.566196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649624, -0.434492, -0.623864,
		-0.697151, -0.013112, -0.716805,
		0.303266, 0.900580, -0.311424,
		30.078726, 45.460220, 61.472771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741615, 44.971581, 60.889313>,  <29.866440, 44.829811, 61.690765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741615, 44.971581, 60.889313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.042751, 45.179871, 61.050346>,  <30.223433, 45.304844, 61.146969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.042751, 45.179871, 61.050346>,  <29.741615, 44.971581, 60.889313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042751, 45.179871, 61.050346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602449, -0.298785, -0.740124,
		-0.265114, 0.799733, -0.538648,
		0.752841, 0.520725, 0.402586,
		30.268604, 45.336086, 61.171124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110598, 45.319313, 60.390366>,  <29.741615, 44.971581, 60.889313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110598, 45.319313, 60.390366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.358898, 45.258789, 60.698071>,  <30.507879, 45.222473, 60.882694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.358898, 45.258789, 60.698071>,  <30.110598, 45.319313, 60.390366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358898, 45.258789, 60.698071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761208, -0.118576, -0.637575,
		0.187690, 0.981348, 0.041575,
		0.620753, -0.151314, 0.769266,
		30.545124, 45.213394, 60.928852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742542, 45.771000, 60.412712>,  <30.110598, 45.319313, 60.390366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742542, 45.771000, 60.412712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.778131, 45.404926, 60.569950>,  <30.799484, 45.185284, 60.664295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.778131, 45.404926, 60.569950>,  <30.742542, 45.771000, 60.412712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778131, 45.404926, 60.569950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614879, -0.260016, -0.744524,
		0.783587, 0.307949, 0.539592,
		0.088973, -0.915182, 0.393097,
		30.804823, 45.130371, 60.687878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485233, 45.652611, 60.457905>,  <30.742542, 45.771000, 60.412712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485233, 45.652611, 60.457905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.239075, 45.342842, 60.399174>,  <31.091379, 45.156982, 60.363937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.239075, 45.342842, 60.399174>,  <31.485233, 45.652611, 60.457905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239075, 45.342842, 60.399174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538686, -0.277232, -0.795588,
		0.575416, -0.568694, 0.587778,
		-0.615397, -0.774422, -0.146824,
		31.054455, 45.110516, 60.355125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873693, 45.284096, 60.028645>,  <31.485233, 45.652611, 60.457905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873693, 45.284096, 60.028645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.544064, 45.060608, 59.991245>,  <31.346287, 44.926517, 59.968807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.544064, 45.060608, 59.991245>,  <31.873693, 45.284096, 60.028645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544064, 45.060608, 59.991245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342629, -0.360161, -0.867692,
		0.451120, -0.747075, 0.488231,
		-0.824073, -0.558715, -0.093495,
		31.296843, 44.892994, 59.963196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146721, 44.676052, 59.955055>,  <31.873693, 45.284096, 60.028645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146721, 44.676052, 59.955055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.782476, 44.683437, 59.789913>,  <31.563931, 44.687866, 59.690826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.782476, 44.683437, 59.789913>,  <32.146721, 44.676052, 59.955055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782476, 44.683437, 59.789913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327508, -0.577055, -0.748162,
		-0.252051, -0.816497, 0.519426,
		-0.910609, 0.018459, -0.412856,
		31.509295, 44.688976, 59.666058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101215, 44.046631, 59.647770>,  <32.146721, 44.676052, 59.955055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101215, 44.046631, 59.647770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.802603, 44.261799, 59.491138>,  <31.623436, 44.390900, 59.397160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.802603, 44.261799, 59.491138>,  <32.101215, 44.046631, 59.647770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802603, 44.261799, 59.491138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076582, -0.515147, -0.853673,
		-0.660930, -0.667280, 0.343377,
		-0.746529, 0.537922, -0.391578,
		31.578644, 44.423176, 59.373665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840904, 43.585167, 59.248634>,  <32.101215, 44.046631, 59.647770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840904, 43.585167, 59.248634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.706024, 43.936455, 59.112972>,  <31.625095, 44.147228, 59.031574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.706024, 43.936455, 59.112972>,  <31.840904, 43.585167, 59.248634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706024, 43.936455, 59.112972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065009, -0.337671, -0.939017,
		-0.939185, -0.338686, 0.056771,
		-0.337202, 0.878220, -0.339153,
		31.604864, 44.199921, 59.011227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222479, 43.496212, 58.819801>,  <31.840904, 43.585167, 59.248634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222479, 43.496212, 58.819801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.353384, 43.852924, 58.694820>,  <31.431927, 44.066952, 58.619831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.353384, 43.852924, 58.694820>,  <31.222479, 43.496212, 58.819801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353384, 43.852924, 58.694820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075381, -0.304971, -0.949374,
		-0.941921, 0.334249, -0.032583,
		0.327265, 0.891779, -0.312454,
		31.451563, 44.120457, 58.601086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724577, 43.728886, 58.379498>,  <31.222479, 43.496212, 58.819801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724577, 43.728886, 58.379498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.073668, 43.906933, 58.299274>,  <31.283121, 44.013760, 58.251141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.073668, 43.906933, 58.299274>,  <30.724577, 43.728886, 58.379498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073668, 43.906933, 58.299274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060349, -0.309290, -0.949051,
		-0.484468, 0.840364, -0.243062,
		0.872725, 0.445116, -0.200556,
		31.335485, 44.040466, 58.239109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593102, 43.989357, 57.858875>,  <30.724577, 43.728886, 58.379498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593102, 43.989357, 57.858875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.992821, 43.975910, 57.852272>,  <31.232653, 43.967842, 57.848312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.992821, 43.975910, 57.852272>,  <30.593102, 43.989357, 57.858875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992821, 43.975910, 57.852272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030617, -0.479607, -0.876949,
		0.021565, 0.876839, -0.480299,
		0.999299, -0.033617, -0.016504,
		31.292610, 43.965824, 57.847321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822239, 44.252289, 57.196472>,  <30.593102, 43.989357, 57.858875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822239, 44.252289, 57.196472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132429, 44.053585, 57.352352>,  <31.318544, 43.934361, 57.445881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132429, 44.053585, 57.352352>,  <30.822239, 44.252289, 57.196472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132429, 44.053585, 57.352352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043680, -0.573528, -0.818021,
		0.629863, 0.651378, -0.423059,
		0.775477, -0.496762, 0.389696,
		31.365072, 43.904556, 57.469261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327745, 44.115349, 56.632778>,  <30.822239, 44.252289, 57.196472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327745, 44.115349, 56.632778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.395998, 43.842533, 56.917233>,  <31.436949, 43.678844, 57.087906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.395998, 43.842533, 56.917233>,  <31.327745, 44.115349, 56.632778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395998, 43.842533, 56.917233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176028, -0.689009, -0.703052,
		0.969484, 0.245142, 0.002490,
		0.170632, -0.682036, 0.711135,
		31.447187, 43.637924, 57.130573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994808, 43.895638, 56.457691>,  <31.327745, 44.115349, 56.632778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994808, 43.895638, 56.457691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.845964, 43.629379, 56.716442>,  <31.756659, 43.469624, 56.871693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.845964, 43.629379, 56.716442>,  <31.994808, 43.895638, 56.457691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845964, 43.629379, 56.716442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314936, -0.746130, -0.586605,
		0.873126, -0.014556, 0.487278,
		-0.372111, -0.665641, 0.646881,
		31.734331, 43.429688, 56.910507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589348, 43.340839, 56.694164>,  <31.994808, 43.895638, 56.457691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589348, 43.340839, 56.694164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.226917, 43.174244, 56.724018>,  <32.009460, 43.074287, 56.741932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.226917, 43.174244, 56.724018>,  <32.589348, 43.340839, 56.694164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226917, 43.174244, 56.724018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357564, -0.847989, -0.391233,
		0.226233, -0.327799, 0.917260,
		-0.906072, -0.416489, 0.074633,
		31.955095, 43.049297, 56.746407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744579, 42.614403, 56.740108>,  <32.589348, 43.340839, 56.694164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744579, 42.614403, 56.740108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.346272, 42.586224, 56.716541>,  <32.107285, 42.569317, 56.702400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.346272, 42.586224, 56.716541>,  <32.744579, 42.614403, 56.740108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346272, 42.586224, 56.716541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088196, -0.912438, -0.399597,
		-0.025603, -0.403105, 0.914795,
		-0.995774, -0.070450, -0.058914,
		32.047539, 42.565090, 56.698868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527477, 42.116215, 57.117397>,  <32.744579, 42.614403, 56.740108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527477, 42.116215, 57.117397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.254227, 42.165180, 56.829411>,  <32.090275, 42.194561, 56.656620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.254227, 42.165180, 56.829411>,  <32.527477, 42.116215, 57.117397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254227, 42.165180, 56.829411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127576, -0.950689, -0.282693,
		-0.719072, -0.284966, 0.633822,
		-0.683125, 0.122416, -0.719968,
		32.049290, 42.201904, 56.613419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121933, 41.502007, 57.157726>,  <32.527477, 42.116215, 57.117397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121933, 41.502007, 57.157726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.053810, 41.680256, 56.806179>,  <32.012936, 41.787205, 56.595249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.053810, 41.680256, 56.806179>,  <32.121933, 41.502007, 57.157726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053810, 41.680256, 56.806179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022013, -0.889957, -0.455513,
		-0.985145, -0.096924, 0.141759,
		-0.170309, 0.445625, -0.878870,
		32.002716, 41.813942, 56.542519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585596, 41.074844, 56.908970>,  <32.121933, 41.502007, 57.157726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585596, 41.074844, 56.908970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.789433, 41.260918, 56.619438>,  <31.911734, 41.372562, 56.445721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.789433, 41.260918, 56.619438>,  <31.585596, 41.074844, 56.908970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789433, 41.260918, 56.619438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021460, -0.847858, -0.529789,
		-0.860150, 0.254441, -0.442042,
		0.509589, 0.465184, -0.723825,
		31.942308, 41.400475, 56.402290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446672, 40.651249, 56.309643>,  <31.585596, 41.074844, 56.908970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446672, 40.651249, 56.309643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.738098, 40.867477, 56.141369>,  <31.912954, 40.997215, 56.040405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.738098, 40.867477, 56.141369>,  <31.446672, 40.651249, 56.309643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738098, 40.867477, 56.141369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124862, -0.708683, -0.694390,
		-0.673501, 0.453380, -0.583818,
		0.728565, 0.540569, -0.420689,
		31.956667, 41.029648, 56.015163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361557, 40.526794, 55.597473>,  <31.446672, 40.651249, 56.309643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361557, 40.526794, 55.597473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.730556, 40.674526, 55.642361>,  <31.951956, 40.763165, 55.669292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.730556, 40.674526, 55.642361>,  <31.361557, 40.526794, 55.597473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730556, 40.674526, 55.642361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321745, -0.575099, -0.752158,
		-0.213252, 0.729972, -0.649357,
		0.922499, 0.369326, 0.112224,
		32.007305, 40.785324, 55.676029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660803, 40.610703, 54.916527>,  <31.361557, 40.526794, 55.597473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660803, 40.610703, 54.916527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.987919, 40.605988, 55.146683>,  <32.184189, 40.603157, 55.284779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.987919, 40.605988, 55.146683>,  <31.660803, 40.610703, 54.916527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987919, 40.605988, 55.146683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441950, -0.627544, -0.640990,
		0.368642, 0.778492, -0.507990,
		0.817792, -0.011790, 0.575394,
		32.233257, 40.602451, 55.319302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116482, 40.538738, 54.423992>,  <31.660803, 40.610703, 54.916527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116482, 40.538738, 54.423992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.341808, 40.462841, 54.745655>,  <32.477005, 40.417305, 54.938652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.341808, 40.462841, 54.745655>,  <32.116482, 40.538738, 54.423992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341808, 40.462841, 54.745655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512628, -0.683042, -0.520256,
		0.647989, 0.705303, -0.287502,
		0.563314, -0.189739, 0.804162,
		32.510803, 40.405918, 54.986904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857552, 40.637184, 54.255123>,  <32.116482, 40.538738, 54.423992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857552, 40.637184, 54.255123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.878876, 40.399796, 54.576359>,  <32.891670, 40.257362, 54.769100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.878876, 40.399796, 54.576359>,  <32.857552, 40.637184, 54.255123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878876, 40.399796, 54.576359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626176, -0.606601, -0.489836,
		0.777857, 0.528989, 0.339278,
		0.053311, -0.593470, 0.803089,
		32.894871, 40.221756, 54.817284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623512, 40.559830, 54.457859>,  <32.857552, 40.637184, 54.255123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623512, 40.559830, 54.457859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422596, 40.243439, 54.597603>,  <33.302048, 40.053604, 54.681450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422596, 40.243439, 54.597603>,  <33.623512, 40.559830, 54.457859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422596, 40.243439, 54.597603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762820, -0.595596, -0.251737,
		0.407199, 0.140057, 0.902537,
		-0.502290, -0.790980, 0.349364,
		33.271908, 40.006145, 54.702412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203983, 40.102779, 54.873531>,  <33.623512, 40.559830, 54.457859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203983, 40.102779, 54.873531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882374, 39.885559, 54.776661>,  <33.689407, 39.755226, 54.718540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882374, 39.885559, 54.776661>,  <34.203983, 40.102779, 54.873531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882374, 39.885559, 54.776661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588289, -0.785699, -0.191292,
		-0.086398, -0.296273, 0.951187,
		-0.804022, -0.543046, -0.242177,
		33.641167, 39.722645, 54.704006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231392, 39.428265, 55.181492>,  <34.203983, 40.102779, 54.873531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231392, 39.428265, 55.181492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.019127, 39.415169, 54.842712>,  <33.891766, 39.407310, 54.639446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.019127, 39.415169, 54.842712>,  <34.231392, 39.428265, 55.181492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019127, 39.415169, 54.842712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568581, -0.754811, -0.327073,
		-0.628577, -0.655125, 0.419168,
		-0.530666, -0.032741, -0.846948,
		33.859928, 39.405346, 54.588627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271057, 38.716217, 55.046284>,  <34.231392, 39.428265, 55.181492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271057, 38.716217, 55.046284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121780, 38.847324, 54.699112>,  <34.032215, 38.925991, 54.490810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121780, 38.847324, 54.699112>,  <34.271057, 38.716217, 55.046284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121780, 38.847324, 54.699112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613523, -0.614560, -0.495888,
		-0.695931, -0.717552, 0.028251,
		-0.373188, 0.327771, -0.867926,
		34.009823, 38.945656, 54.438732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082245, 38.094452, 54.783283>,  <34.271057, 38.716217, 55.046284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082245, 38.094452, 54.783283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.132168, 38.358280, 54.486801>,  <34.162121, 38.516575, 54.308910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.132168, 38.358280, 54.486801>,  <34.082245, 38.094452, 54.783283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132168, 38.358280, 54.486801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363818, -0.725439, -0.584273,
		-0.923070, -0.196743, -0.330504,
		0.124809, 0.659569, -0.741210,
		34.169609, 38.556152, 54.264439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830841, 37.799812, 54.191811>,  <34.082245, 38.094452, 54.783283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830841, 37.799812, 54.191811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.081738, 38.083294, 54.062622>,  <34.232273, 38.253384, 53.985107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.081738, 38.083294, 54.062622>,  <33.830841, 37.799812, 54.191811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081738, 38.083294, 54.062622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397234, -0.647809, -0.650038,
		-0.669910, 0.279431, -0.687851,
		0.627237, 0.708705, -0.322974,
		34.269909, 38.295906, 53.965729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926189, 37.653809, 53.409550>,  <33.830841, 37.799812, 54.191811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926189, 37.653809, 53.409550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.217400, 37.920990, 53.471287>,  <34.392124, 38.081299, 53.508327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.217400, 37.920990, 53.471287>,  <33.926189, 37.653809, 53.409550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217400, 37.920990, 53.471287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591628, -0.498414, -0.633688,
		-0.346346, 0.552654, -0.758036,
		0.728026, 0.667950, 0.154342,
		34.435806, 38.121376, 53.517590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180214, 37.730175, 52.779690>,  <33.926189, 37.653809, 53.409550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180214, 37.730175, 52.779690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.474625, 37.856571, 53.019157>,  <34.651272, 37.932411, 53.162838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.474625, 37.856571, 53.019157>,  <34.180214, 37.730175, 52.779690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474625, 37.856571, 53.019157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674528, -0.417059, -0.609159,
		0.057190, 0.852179, -0.520115,
		0.736031, 0.315995, 0.598670,
		34.695435, 37.951370, 53.198757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697033, 38.261478, 52.294029>,  <34.180214, 37.730175, 52.779690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697033, 38.261478, 52.294029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.888435, 38.128216, 52.618999>,  <35.003277, 38.048260, 52.813984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.888435, 38.128216, 52.618999>,  <34.697033, 38.261478, 52.294029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888435, 38.128216, 52.618999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744141, -0.337307, -0.576609,
		0.466137, 0.880473, 0.086509,
		0.478508, -0.333153, 0.812428,
		35.031986, 38.028271, 52.862728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381317, 38.381981, 52.158577>,  <34.697033, 38.261478, 52.294029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381317, 38.381981, 52.158577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366840, 38.106323, 52.448067>,  <35.358154, 37.940929, 52.621761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366840, 38.106323, 52.448067>,  <35.381317, 38.381981, 52.158577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366840, 38.106323, 52.448067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720884, -0.519555, -0.458682,
		0.692110, 0.505119, 0.515595,
		-0.036191, -0.689143, 0.723722,
		35.355984, 37.899582, 52.665184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108795, 38.294697, 52.394753>,  <35.381317, 38.381981, 52.158577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108795, 38.294697, 52.394753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904755, 37.963745, 52.488770>,  <35.782330, 37.765175, 52.545177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904755, 37.963745, 52.488770>,  <36.108795, 38.294697, 52.394753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904755, 37.963745, 52.488770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714207, -0.559721, -0.420263,
		0.479272, -0.046510, 0.876433,
		-0.510105, -0.827375, 0.235041,
		35.751724, 37.715534, 52.559280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611076, 37.854591, 52.677555>,  <36.108795, 38.294697, 52.394753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611076, 37.854591, 52.677555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.312012, 37.613632, 52.565758>,  <36.132572, 37.469055, 52.498680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.312012, 37.613632, 52.565758>,  <36.611076, 37.854591, 52.677555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312012, 37.613632, 52.565758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661723, -0.640422, -0.389849,
		0.055851, -0.476422, 0.877441,
		-0.747665, -0.602397, -0.279491,
		36.087711, 37.432915, 52.481911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958416, 37.199997, 52.631184>,  <36.611076, 37.854591, 52.677555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958416, 37.199997, 52.631184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.615807, 37.097286, 52.452106>,  <36.410240, 37.035660, 52.344662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.615807, 37.097286, 52.452106>,  <36.958416, 37.199997, 52.631184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615807, 37.097286, 52.452106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439376, -0.817886, -0.371498,
		-0.270769, -0.514903, 0.813363,
		-0.856524, -0.256782, -0.447694,
		36.358849, 37.020252, 52.317799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748840, 36.535492, 52.898861>,  <36.958416, 37.199997, 52.631184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748840, 36.535492, 52.898861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.566097, 36.573292, 52.545059>,  <36.456451, 36.595970, 52.332779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.566097, 36.573292, 52.545059>,  <36.748840, 36.535492, 52.898861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566097, 36.573292, 52.545059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284656, -0.926525, -0.246015,
		-0.842766, -0.364173, 0.396389,
		-0.456856, 0.094498, -0.884507,
		36.429039, 36.601643, 52.279709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278606, 35.837803, 52.756790>,  <36.748840, 36.535492, 52.898861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278606, 35.837803, 52.756790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.333115, 36.013584, 52.401642>,  <36.365822, 36.119053, 52.188553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.333115, 36.013584, 52.401642>,  <36.278606, 35.837803, 52.756790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333115, 36.013584, 52.401642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374503, -0.852577, -0.364500,
		-0.917157, -0.282838, -0.280760,
		0.136275, 0.439449, -0.887870,
		36.373997, 36.145420, 52.135281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973469, 35.386547, 52.210941>,  <36.278606, 35.837803, 52.756790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973469, 35.386547, 52.210941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.201519, 35.627533, 51.987514>,  <36.338348, 35.772125, 51.853458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.201519, 35.627533, 51.987514>,  <35.973469, 35.386547, 52.210941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201519, 35.627533, 51.987514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283260, -0.782347, -0.554705,
		-0.771180, 0.158033, -0.616691,
		0.570127, 0.602461, -0.558566,
		36.372559, 35.808270, 51.819946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848469, 35.266777, 51.467148>,  <35.973469, 35.386547, 52.210941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848469, 35.266777, 51.467148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213943, 35.429329, 51.469444>,  <36.433228, 35.526859, 51.470821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213943, 35.429329, 51.469444>,  <35.848469, 35.266777, 51.467148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213943, 35.429329, 51.469444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288736, -0.639124, -0.712848,
		-0.286018, 0.652976, -0.701295,
		0.913688, 0.406376, 0.005737,
		36.488049, 35.551243, 51.471165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002136, 35.535614, 50.794735>,  <35.848469, 35.266777, 51.467148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002136, 35.535614, 50.794735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.365421, 35.483772, 50.953907>,  <36.583393, 35.452667, 51.049412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.365421, 35.483772, 50.953907>,  <36.002136, 35.535614, 50.794735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365421, 35.483772, 50.953907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273802, -0.535109, -0.799182,
		0.316512, 0.834783, -0.450508,
		0.908214, -0.129601, 0.397933,
		36.637886, 35.444893, 51.073288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541206, 36.008530, 51.211823>,  <36.002136, 35.535614, 50.794735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541206, 36.008530, 51.211823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904743, 36.125053, 51.331245>,  <36.122868, 36.194969, 51.402901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904743, 36.125053, 51.331245>,  <35.541206, 36.008530, 51.211823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904743, 36.125053, 51.331245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252630, -0.953947, 0.161750,
		0.331932, -0.071580, -0.940584,
		0.908845, 0.291310, 0.298562,
		36.177399, 36.212448, 51.420815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687260, 36.498940, 50.664413>,  <35.541206, 36.008530, 51.211823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687260, 36.498940, 50.664413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435368, 36.194847, 50.728283>,  <35.284233, 36.012394, 50.766605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435368, 36.194847, 50.728283>,  <35.687260, 36.498940, 50.664413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435368, 36.194847, 50.728283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775872, 0.605416, -0.177464,
		0.038246, -0.235639, -0.971088,
		-0.629730, -0.760228, 0.159671,
		35.246449, 35.966778, 50.776184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216709, 36.519516, 50.085487>,  <35.687260, 36.498940, 50.664413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216709, 36.519516, 50.085487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020706, 36.335716, 50.381798>,  <34.903103, 36.225437, 50.559586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020706, 36.335716, 50.381798>,  <35.216709, 36.519516, 50.085487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020706, 36.335716, 50.381798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785803, 0.600710, -0.147177,
		-0.377367, -0.654225, -0.655426,
		-0.490009, -0.459496, 0.740780,
		34.873703, 36.197868, 50.604031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531357, 36.549976, 49.889214>,  <35.216709, 36.519516, 50.085487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531357, 36.549976, 49.889214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490543, 36.430233, 50.268681>,  <34.466057, 36.358387, 50.496361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490543, 36.430233, 50.268681>,  <34.531357, 36.549976, 49.889214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490543, 36.430233, 50.268681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797562, 0.594578, 0.101840,
		-0.594545, -0.746233, -0.299420,
		-0.102032, -0.299354, 0.948671,
		34.459934, 36.340427, 50.553284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862514, 36.095276, 49.979916>,  <34.531357, 36.549976, 49.889214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862514, 36.095276, 49.979916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.996189, 36.298965, 50.297157>,  <34.076393, 36.421181, 50.487503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.996189, 36.298965, 50.297157>,  <33.862514, 36.095276, 49.979916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996189, 36.298965, 50.297157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831135, 0.556029, -0.006794,
		-0.444448, -0.656904, 0.609051,
		0.334187, 0.509224, 0.793102,
		34.096447, 36.451733, 50.535088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216637, 36.256119, 50.234650>,  <33.862514, 36.095276, 49.979916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216637, 36.256119, 50.234650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.471058, 36.479713, 50.447430>,  <33.623711, 36.613873, 50.575096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.471058, 36.479713, 50.447430>,  <33.216637, 36.256119, 50.234650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471058, 36.479713, 50.447430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746220, 0.621087, 0.239597,
		-0.196454, -0.549347, 0.812172,
		0.636052, 0.558989, 0.531948,
		33.661873, 36.647411, 50.607014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916012, 36.361576, 50.908703>,  <33.216637, 36.256119, 50.234650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916012, 36.361576, 50.908703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.167416, 36.667034, 50.849606>,  <33.318256, 36.850307, 50.814148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.167416, 36.667034, 50.849606>,  <32.916012, 36.361576, 50.908703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167416, 36.667034, 50.849606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608536, 0.601080, 0.518061,
		0.484418, -0.235700, 0.842487,
		0.628509, 0.763642, -0.147742,
		33.355968, 36.896126, 50.805283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673595, 36.794594, 51.359230>,  <32.916012, 36.361576, 50.908703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673595, 36.794594, 51.359230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916195, 37.045860, 51.164268>,  <33.061756, 37.196621, 51.047291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916195, 37.045860, 51.164268>,  <32.673595, 36.794594, 51.359230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916195, 37.045860, 51.164268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608637, 0.761250, 0.223741,
		0.511580, 0.160951, 0.844026,
		0.606503, 0.628167, -0.487401,
		33.098145, 37.234310, 51.018047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740326, 37.271103, 51.849033>,  <32.673595, 36.794594, 51.359230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740326, 37.271103, 51.849033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835999, 37.438866, 51.498745>,  <32.893402, 37.539524, 51.288570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835999, 37.438866, 51.498745>,  <32.740326, 37.271103, 51.849033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835999, 37.438866, 51.498745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510268, 0.821613, 0.254124,
		0.826089, 0.386077, 0.410514,
		0.239172, 0.419401, -0.875728,
		32.907753, 37.564686, 51.236027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023590, 37.951550, 52.062317>,  <32.740326, 37.271103, 51.849033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023590, 37.951550, 52.062317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.896404, 37.957954, 51.683128>,  <32.820095, 37.961796, 51.455616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.896404, 37.957954, 51.683128>,  <33.023590, 37.951550, 52.062317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896404, 37.957954, 51.683128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368316, 0.919241, 0.139066,
		0.873638, 0.393370, -0.286386,
		-0.317962, 0.016013, -0.947968,
		32.801014, 37.962757, 51.398739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213821, 38.626030, 51.782219>,  <33.023590, 37.951550, 52.062317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213821, 38.626030, 51.782219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934479, 38.486324, 51.532318>,  <32.766872, 38.402500, 51.382378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934479, 38.486324, 51.532318>,  <33.213821, 38.626030, 51.782219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934479, 38.486324, 51.532318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529105, 0.839744, 0.121980,
		0.482025, 0.415743, -0.771239,
		-0.698355, -0.349269, -0.624749,
		32.724972, 38.381542, 51.344894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938004, 39.253819, 51.526592>,  <33.213821, 38.626030, 51.782219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938004, 39.253819, 51.526592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.672722, 38.971825, 51.426067>,  <32.513554, 38.802628, 51.365753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.672722, 38.971825, 51.426067>,  <32.938004, 39.253819, 51.526592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672722, 38.971825, 51.426067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736605, 0.674298, 0.052309,
		0.132582, 0.219810, -0.966492,
		-0.663201, -0.704987, -0.251313,
		32.473763, 38.760330, 51.350674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510204, 39.534164, 50.963867>,  <32.938004, 39.253819, 51.526592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510204, 39.534164, 50.963867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319759, 39.236557, 51.151375>,  <32.205490, 39.057991, 51.263882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319759, 39.236557, 51.151375>,  <32.510204, 39.534164, 50.963867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319759, 39.236557, 51.151375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795113, 0.591936, 0.131931,
		-0.375643, -0.309913, -0.873411,
		-0.476116, -0.744020, 0.468772,
		32.176926, 39.013351, 51.292007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867634, 39.608150, 50.695568>,  <32.510204, 39.534164, 50.963867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867634, 39.608150, 50.695568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.839930, 39.386444, 51.027348>,  <31.823307, 39.253418, 51.226418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.839930, 39.386444, 51.027348>,  <31.867634, 39.608150, 50.695568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839930, 39.386444, 51.027348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742059, 0.584325, 0.328501,
		-0.666746, -0.592750, -0.451771,
		-0.069262, -0.554267, 0.829452,
		31.819151, 39.220165, 51.276184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108974, 39.393028, 50.849075>,  <31.867634, 39.608150, 50.695568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108974, 39.393028, 50.849075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.306927, 39.391479, 51.196655>,  <31.425699, 39.390553, 51.405205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.306927, 39.391479, 51.196655>,  <31.108974, 39.393028, 50.849075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306927, 39.391479, 51.196655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634603, 0.681509, 0.364451,
		-0.593609, -0.731799, 0.334811,
		0.494881, -0.003869, 0.868952,
		31.455391, 39.390320, 51.457340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616119, 39.172920, 51.401508>,  <31.108974, 39.393028, 50.849075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616119, 39.172920, 51.401508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.889952, 39.337624, 51.642109>,  <31.054251, 39.436447, 51.786469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.889952, 39.337624, 51.642109>,  <30.616119, 39.172920, 51.401508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889952, 39.337624, 51.642109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727688, 0.434308, 0.530892,
		-0.042635, -0.801143, 0.596953,
		0.684582, 0.411761, 0.601498,
		31.095325, 39.461151, 51.822559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374868, 39.062378, 52.133434>,  <30.616119, 39.172920, 51.401508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374868, 39.062378, 52.133434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.654415, 39.346180, 52.169632>,  <30.822144, 39.516460, 52.191349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.654415, 39.346180, 52.169632>,  <30.374868, 39.062378, 52.133434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654415, 39.346180, 52.169632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559431, 0.463394, 0.687243,
		0.445659, -0.530924, 0.720769,
		0.698874, 0.709497, 0.090499,
		30.864077, 39.559032, 52.196777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573944, 39.108177, 52.848206>,  <30.374868, 39.062378, 52.133434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573944, 39.108177, 52.848206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.675591, 39.462345, 52.692539>,  <30.736578, 39.674847, 52.599140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.675591, 39.462345, 52.692539>,  <30.573944, 39.108177, 52.848206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675591, 39.462345, 52.692539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435251, 0.464020, 0.771520,
		0.863703, -0.026670, 0.503296,
		0.254116, 0.885423, -0.389167,
		30.751825, 39.727974, 52.575790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861149, 39.464001, 53.404610>,  <30.573944, 39.108177, 52.848206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861149, 39.464001, 53.404610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.821604, 39.782063, 53.165295>,  <30.797876, 39.972900, 53.021706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.821604, 39.782063, 53.165295>,  <30.861149, 39.464001, 53.404610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821604, 39.782063, 53.165295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270860, 0.557033, 0.785079,
		0.957529, 0.239670, 0.160305,
		-0.098865, 0.795156, -0.598292,
		30.791945, 40.020611, 52.985806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183624, 39.977863, 53.715538>,  <30.861149, 39.464001, 53.404610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183624, 39.977863, 53.715538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.934420, 40.175930, 53.473328>,  <30.784897, 40.294769, 53.327999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.934420, 40.175930, 53.473328>,  <31.183624, 39.977863, 53.715538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934420, 40.175930, 53.473328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255468, 0.602866, 0.755837,
		0.739320, 0.625587, -0.249092,
		-0.623010, 0.495171, -0.605528,
		30.747517, 40.324482, 53.291668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315193, 40.739178, 53.740299>,  <31.183624, 39.977863, 53.715538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315193, 40.739178, 53.740299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.939001, 40.690910, 53.613216>,  <30.713285, 40.661949, 53.536968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.939001, 40.690910, 53.613216>,  <31.315193, 40.739178, 53.740299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939001, 40.690910, 53.613216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329062, 0.557017, 0.762528,
		0.084951, 0.821687, -0.563572,
		-0.940479, -0.120673, -0.317705,
		30.656857, 40.654709, 53.517906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076750, 41.448898, 53.718369>,  <31.315193, 40.739178, 53.740299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076750, 41.448898, 53.718369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.735685, 41.239929, 53.721062>,  <30.531048, 41.114548, 53.722675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.735685, 41.239929, 53.721062>,  <31.076750, 41.448898, 53.718369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735685, 41.239929, 53.721062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354883, 0.588573, 0.726388,
		-0.383444, 0.616973, -0.687252,
		-0.852660, -0.522423, 0.006731,
		30.479887, 41.083202, 53.723080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511633, 41.872051, 53.738506>,  <31.076750, 41.448898, 53.718369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511633, 41.872051, 53.738506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.347355, 41.534496, 53.876598>,  <30.248787, 41.331963, 53.959454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.347355, 41.534496, 53.876598>,  <30.511633, 41.872051, 53.738506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347355, 41.534496, 53.876598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367404, 0.499709, 0.784414,
		-0.834471, 0.195316, -0.515276,
		-0.410697, -0.843885, 0.345233,
		30.224146, 41.281330, 53.980167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743330, 42.065056, 53.938606>,  <30.511633, 41.872051, 53.738506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743330, 42.065056, 53.938606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.810247, 41.711308, 54.112915>,  <29.850397, 41.499058, 54.217499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.810247, 41.711308, 54.112915>,  <29.743330, 42.065056, 53.938606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810247, 41.711308, 54.112915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442607, 0.327589, 0.834736,
		-0.880972, -0.332521, -0.336626,
		0.167292, -0.884373, 0.435773,
		29.860435, 41.445995, 54.243649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230827, 42.066002, 54.349670>,  <29.743330, 42.065056, 53.938606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230827, 42.066002, 54.349670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.474901, 41.790146, 54.505657>,  <29.621346, 41.624634, 54.599251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.474901, 41.790146, 54.505657>,  <29.230827, 42.066002, 54.349670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474901, 41.790146, 54.505657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304324, 0.250435, 0.919059,
		-0.731479, -0.679473, -0.057061,
		0.610185, -0.689637, 0.389968,
		29.657957, 41.583256, 54.622646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813086, 41.658485, 54.766724>,  <29.230827, 42.066002, 54.349670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813086, 41.658485, 54.766724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.181959, 41.629250, 54.918636>,  <29.403284, 41.611706, 55.009785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.181959, 41.629250, 54.918636>,  <28.813086, 41.658485, 54.766724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181959, 41.629250, 54.918636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371215, 0.108238, 0.922217,
		-0.108514, -0.991434, 0.072682,
		0.922184, -0.073093, 0.379781,
		29.458614, 41.607323, 55.032570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798374, 41.230682, 55.249466>,  <28.813086, 41.658485, 54.766724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798374, 41.230682, 55.249466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.113901, 41.449348, 55.361835>,  <29.303217, 41.580547, 55.429256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.113901, 41.449348, 55.361835>,  <28.798374, 41.230682, 55.249466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113901, 41.449348, 55.361835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335650, 0.000251, 0.941987,
		0.514884, -0.837349, 0.183687,
		0.788818, 0.546669, 0.280927,
		29.350546, 41.613350, 55.446114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025669, 40.869541, 55.882008>,  <28.798374, 41.230682, 55.249466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025669, 40.869541, 55.882008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.186417, 41.235821, 55.881279>,  <29.282866, 41.455589, 55.880840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.186417, 41.235821, 55.881279>,  <29.025669, 40.869541, 55.882008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186417, 41.235821, 55.881279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246773, 0.110215, 0.962785,
		0.881819, -0.386465, 0.270261,
		0.401870, 0.915695, -0.001821,
		29.306978, 41.510529, 55.880733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562021, 40.812317, 56.335876>,  <29.025669, 40.869541, 55.882008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562021, 40.812317, 56.335876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.438431, 41.191734, 56.308174>,  <29.364277, 41.419384, 56.291553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.438431, 41.191734, 56.308174>,  <29.562021, 40.812317, 56.335876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438431, 41.191734, 56.308174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304029, -0.029512, 0.952205,
		0.901165, 0.315266, 0.297504,
		-0.308978, 0.948544, -0.069255,
		29.345737, 41.476299, 56.287399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927208, 41.061577, 56.819954>,  <29.562021, 40.812317, 56.335876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927208, 41.061577, 56.819954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.606966, 41.289673, 56.746357>,  <29.414820, 41.426533, 56.702198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.606966, 41.289673, 56.746357>,  <29.927208, 41.061577, 56.819954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606966, 41.289673, 56.746357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168637, 0.080218, 0.982409,
		0.574971, 0.817550, 0.031941,
		-0.800606, 0.570243, -0.183992,
		29.366785, 41.460747, 56.691158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048443, 41.596184, 57.312561>,  <29.927208, 41.061577, 56.819954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048443, 41.596184, 57.312561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.662777, 41.633289, 57.213139>,  <29.431377, 41.655552, 57.153484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.662777, 41.633289, 57.213139>,  <30.048443, 41.596184, 57.312561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662777, 41.633289, 57.213139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213196, 0.286677, 0.934004,
		0.157896, 0.953526, -0.256627,
		-0.964166, 0.092764, -0.248553,
		29.373528, 41.661118, 57.138573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953800, 42.230335, 57.505508>,  <30.048443, 41.596184, 57.312561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953800, 42.230335, 57.505508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598755, 42.047291, 57.484577>,  <29.385729, 41.937466, 57.472019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598755, 42.047291, 57.484577>,  <29.953800, 42.230335, 57.505508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598755, 42.047291, 57.484577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175574, 0.231128, 0.956950,
		-0.425818, 0.858586, -0.285497,
		-0.887611, -0.457612, -0.052327,
		29.332472, 41.910007, 57.468880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513418, 42.717941, 57.843151>,  <29.953800, 42.230335, 57.505508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513418, 42.717941, 57.843151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.317062, 42.369492, 57.838036>,  <29.199249, 42.160419, 57.834965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.317062, 42.369492, 57.838036>,  <29.513418, 42.717941, 57.843151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317062, 42.369492, 57.838036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485346, 0.261247, 0.834380,
		-0.723510, 0.415796, -0.551042,
		-0.490890, -0.871128, -0.012790,
		29.169796, 42.108154, 57.834198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826870, 42.939617, 57.863445>,  <29.513418, 42.717941, 57.843151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826870, 42.939617, 57.863445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.925411, 42.579960, 58.008144>,  <28.984535, 42.364166, 58.094963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.925411, 42.579960, 58.008144>,  <28.826870, 42.939617, 57.863445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925411, 42.579960, 58.008144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232136, 0.307642, 0.922751,
		-0.940970, -0.311295, -0.132934,
		0.246351, -0.899140, 0.361745,
		28.999317, 42.310219, 58.116669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306761, 42.868786, 58.344593>,  <28.826870, 42.939617, 57.863445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306761, 42.868786, 58.344593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.556011, 42.583088, 58.472073>,  <28.705563, 42.411671, 58.548561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.556011, 42.583088, 58.472073>,  <28.306761, 42.868786, 58.344593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556011, 42.583088, 58.472073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150097, 0.290702, 0.944967,
		-0.767583, -0.636671, 0.073939,
		0.623127, -0.714242, 0.318701,
		28.742949, 42.368816, 58.567684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984791, 42.587090, 58.923565>,  <28.306761, 42.868786, 58.344593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984791, 42.587090, 58.923565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.356750, 42.448151, 58.971951>,  <28.579927, 42.364788, 59.000984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.356750, 42.448151, 58.971951>,  <27.984791, 42.587090, 58.923565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356750, 42.448151, 58.971951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008402, 0.308743, 0.951108,
		-0.367714, -0.885453, 0.284182,
		0.929901, -0.347348, 0.120968,
		28.635721, 42.343945, 59.008240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903057, 42.184280, 59.498596>,  <27.984791, 42.587090, 58.923565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903057, 42.184280, 59.498596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.288748, 42.288551, 59.479343>,  <28.520163, 42.351112, 59.467793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.288748, 42.288551, 59.479343>,  <27.903057, 42.184280, 59.498596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288748, 42.288551, 59.479343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083270, 0.470246, 0.878598,
		0.251664, -0.843159, 0.475130,
		0.964225, 0.260676, -0.048134,
		28.578016, 42.366753, 59.464905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156448, 42.476269, 60.105633>,  <27.903057, 42.184280, 59.498596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156448, 42.476269, 60.105633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.486631, 42.567051, 59.898903>,  <28.684740, 42.621521, 59.774864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.486631, 42.567051, 59.898903>,  <28.156448, 42.476269, 60.105633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486631, 42.567051, 59.898903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221873, 0.711451, 0.666791,
		0.519031, -0.665077, 0.536916,
		0.825457, 0.226958, -0.516827,
		28.734268, 42.635139, 59.743855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667536, 41.933369, 60.171001>,  <28.156448, 42.476269, 60.105633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667536, 41.933369, 60.171001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.296820, 41.784603, 60.150063>,  <27.074390, 41.695343, 60.137497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.296820, 41.784603, 60.150063>,  <27.667536, 41.933369, 60.171001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296820, 41.784603, 60.150063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155764, -0.253788, -0.954636,
		0.341754, -0.892902, 0.293139,
		-0.926791, -0.371911, -0.052349,
		27.018782, 41.673031, 60.134357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719942, 41.275257, 59.874451>,  <27.667536, 41.933369, 60.171001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719942, 41.275257, 59.874451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.337542, 41.369370, 59.804356>,  <27.108101, 41.425838, 59.762299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.337542, 41.369370, 59.804356>,  <27.719942, 41.275257, 59.874451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337542, 41.369370, 59.804356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100063, -0.299992, -0.948679,
		-0.275775, -0.924472, 0.263250,
		-0.956000, 0.235281, -0.175235,
		27.050741, 41.439953, 59.751785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327129, 40.627167, 59.524586>,  <27.719942, 41.275257, 59.874451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327129, 40.627167, 59.524586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.157959, 40.974758, 59.421814>,  <27.056456, 41.183311, 59.360149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.157959, 40.974758, 59.421814>,  <27.327129, 40.627167, 59.524586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157959, 40.974758, 59.421814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234598, -0.378871, -0.895221,
		-0.875269, -0.318338, 0.364095,
		-0.422928, 0.868975, -0.256933,
		27.031080, 41.235451, 59.344734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685513, 40.429436, 59.310467>,  <27.327129, 40.627167, 59.524586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685513, 40.429436, 59.310467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.766695, 40.789726, 59.156837>,  <26.815405, 41.005901, 59.064659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.766695, 40.789726, 59.156837>,  <26.685513, 40.429436, 59.310467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766695, 40.789726, 59.156837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169246, -0.354061, -0.919781,
		-0.964451, 0.251677, 0.080585,
		0.202956, 0.900722, -0.384070,
		26.827581, 41.059944, 59.041618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328936, 40.355686, 58.683281>,  <26.685513, 40.429436, 59.310467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328936, 40.355686, 58.683281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.548714, 40.683529, 58.618340>,  <26.680580, 40.880234, 58.579376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.548714, 40.683529, 58.618340>,  <26.328936, 40.355686, 58.683281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548714, 40.683529, 58.618340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107268, -0.123505, -0.986529,
		-0.828617, 0.559457, 0.020058,
		0.549443, 0.819606, -0.162350,
		26.713547, 40.929409, 58.569633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033060, 40.583954, 58.112110>,  <26.328936, 40.355686, 58.683281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033060, 40.583954, 58.112110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.383480, 40.775761, 58.132500>,  <26.593733, 40.890846, 58.144733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.383480, 40.775761, 58.132500>,  <26.033060, 40.583954, 58.112110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383480, 40.775761, 58.132500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148692, -0.168054, -0.974499,
		-0.458723, 0.861290, -0.218524,
		0.876051, 0.479517, 0.050977,
		26.646296, 40.919617, 58.147793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141275, 41.050606, 57.516037>,  <26.033060, 40.583954, 58.112110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141275, 41.050606, 57.516037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.510557, 40.950333, 57.632553>,  <26.732126, 40.890171, 57.702465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.510557, 40.950333, 57.632553>,  <26.141275, 41.050606, 57.516037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510557, 40.950333, 57.632553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254163, -0.170270, -0.952055,
		0.288258, 0.952979, -0.093481,
		0.923205, -0.250678, 0.291294,
		26.787519, 40.875130, 57.719940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526154, 41.299629, 56.965256>,  <26.141275, 41.050606, 57.516037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526154, 41.299629, 56.965256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.768278, 41.055286, 57.169395>,  <26.913553, 40.908680, 57.291878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.768278, 41.055286, 57.169395>,  <26.526154, 41.299629, 56.965256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768278, 41.055286, 57.169395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364264, -0.357497, -0.859946,
		0.707750, 0.706437, 0.006116,
		0.605311, -0.610855, 0.510348,
		26.949871, 40.872028, 57.322498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287491, 41.358479, 56.780918>,  <26.526154, 41.299629, 56.965256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287491, 41.358479, 56.780918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.260546, 40.988689, 56.931019>,  <27.244379, 40.766815, 57.021080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.260546, 40.988689, 56.931019>,  <27.287491, 41.358479, 56.780918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260546, 40.988689, 56.931019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272764, -0.378846, -0.884350,
		0.959720, 0.042786, 0.277682,
		-0.067361, -0.924470, 0.375256,
		27.240337, 40.711349, 57.043594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978350, 41.048683, 56.579098>,  <27.287491, 41.358479, 56.780918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978350, 41.048683, 56.579098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.716139, 40.758640, 56.663483>,  <27.558813, 40.584614, 56.714115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.716139, 40.758640, 56.663483>,  <27.978350, 41.048683, 56.579098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716139, 40.758640, 56.663483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192834, -0.430822, -0.881594,
		0.730137, -0.537227, 0.422240,
		-0.655527, -0.725107, 0.210963,
		27.519482, 40.541107, 56.726772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336027, 40.432945, 56.374249>,  <27.978350, 41.048683, 56.579098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336027, 40.432945, 56.374249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.963705, 40.294426, 56.421032>,  <27.740313, 40.211315, 56.449104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.963705, 40.294426, 56.421032>,  <28.336027, 40.432945, 56.374249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963705, 40.294426, 56.421032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005763, -0.333853, -0.942608,
		0.365475, -0.876708, 0.312747,
		-0.930803, -0.346302, 0.116963,
		27.684464, 40.190536, 56.456120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476494, 39.788910, 56.267246>,  <28.336027, 40.432945, 56.374249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476494, 39.788910, 56.267246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.084326, 39.812542, 56.192112>,  <27.849024, 39.826721, 56.147030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.084326, 39.812542, 56.192112>,  <28.476494, 39.788910, 56.267246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084326, 39.812542, 56.192112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164571, -0.277930, -0.946399,
		-0.108120, -0.958783, 0.262765,
		-0.980422, 0.059081, -0.187838,
		27.790199, 39.830265, 56.135761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177402, 39.138206, 56.056995>,  <28.476494, 39.788910, 56.267246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177402, 39.138206, 56.056995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.913731, 39.394035, 55.898792>,  <27.755527, 39.547535, 55.803871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.913731, 39.394035, 55.898792>,  <28.177402, 39.138206, 56.056995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913731, 39.394035, 55.898792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016084, -0.513840, -0.857735,
		-0.751814, -0.571762, 0.328426,
		-0.659179, 0.639575, -0.395508,
		27.715977, 39.585907, 55.780140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722851, 38.723629, 55.729595>,  <28.177402, 39.138206, 56.056995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722851, 38.723629, 55.729595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.683363, 39.076206, 55.544857>,  <27.659670, 39.287754, 55.434013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.683363, 39.076206, 55.544857>,  <27.722851, 38.723629, 55.729595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683363, 39.076206, 55.544857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163909, -0.443375, -0.881222,
		-0.981524, -0.162695, -0.100707,
		-0.098720, 0.881447, -0.461850,
		27.653748, 39.340641, 55.406303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341667, 38.557972, 55.137096>,  <27.722851, 38.723629, 55.729595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341667, 38.557972, 55.137096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.525438, 38.906094, 55.066105>,  <27.635700, 39.114967, 55.023510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.525438, 38.906094, 55.066105>,  <27.341667, 38.557972, 55.137096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525438, 38.906094, 55.066105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329799, -0.352676, -0.875701,
		-0.824718, 0.343789, -0.449055,
		0.459427, 0.870304, -0.177477,
		27.663267, 39.167183, 55.012863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135414, 38.693546, 54.477699>,  <27.341667, 38.557972, 55.137096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135414, 38.693546, 54.477699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.461096, 38.922691, 54.515423>,  <27.656506, 39.060181, 54.538059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.461096, 38.922691, 54.515423>,  <27.135414, 38.693546, 54.477699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461096, 38.922691, 54.515423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351016, -0.356336, -0.865917,
		-0.462446, 0.738140, -0.491215,
		0.814206, 0.572864, 0.094313,
		27.705359, 39.094551, 54.543716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351589, 38.906105, 53.785099>,  <27.135414, 38.693546, 54.477699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351589, 38.906105, 53.785099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.674793, 38.975334, 54.010368>,  <27.868715, 39.016872, 54.145531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.674793, 38.975334, 54.010368>,  <27.351589, 38.906105, 53.785099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674793, 38.975334, 54.010368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581665, -0.386433, -0.715777,
		0.093746, 0.905933, -0.412913,
		0.808009, 0.173076, 0.563175,
		27.917196, 39.027256, 54.179321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899168, 39.304184, 53.326965>,  <27.351589, 38.906105, 53.785099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899168, 39.304184, 53.326965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.077120, 39.114616, 53.630936>,  <28.183891, 39.000877, 53.813316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.077120, 39.114616, 53.630936>,  <27.899168, 39.304184, 53.326965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077120, 39.114616, 53.630936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679239, -0.374481, -0.631188,
		0.583708, 0.796973, 0.155304,
		0.444881, -0.473918, 0.759922,
		28.210585, 38.972443, 53.858913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676987, 39.488541, 53.267803>,  <27.899168, 39.304184, 53.326965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676987, 39.488541, 53.267803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.671450, 39.162453, 53.499397>,  <28.668127, 38.966801, 53.638355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.671450, 39.162453, 53.499397>,  <28.676987, 39.488541, 53.267803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671450, 39.162453, 53.499397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734611, -0.401121, -0.547219,
		0.678348, 0.417756, 0.604421,
		-0.013842, -0.815219, 0.578987,
		28.667297, 38.917889, 53.673092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368698, 39.336288, 53.280365>,  <28.676987, 39.488541, 53.267803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368698, 39.336288, 53.280365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.150032, 39.012489, 53.366028>,  <29.018833, 38.818211, 53.417427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.150032, 39.012489, 53.366028>,  <29.368698, 39.336288, 53.280365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150032, 39.012489, 53.366028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623189, -0.564143, -0.541644,
		0.559278, -0.162636, 0.812870,
		-0.546666, -0.809501, 0.214160,
		28.986032, 38.769638, 53.430275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808422, 38.859802, 53.663406>,  <29.368698, 39.336288, 53.280365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808422, 38.859802, 53.663406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.512577, 38.650139, 53.494537>,  <29.335070, 38.524342, 53.393215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.512577, 38.650139, 53.494537>,  <29.808422, 38.859802, 53.663406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512577, 38.650139, 53.494537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667433, -0.651963, -0.359830,
		-0.086633, -0.547907, 0.832042,
		-0.739614, -0.524159, -0.422172,
		29.290693, 38.492889, 53.367886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124151, 38.236389, 53.477093>,  <29.808422, 38.859802, 53.663406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124151, 38.236389, 53.477093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.767616, 38.189354, 53.301960>,  <29.553696, 38.161133, 53.196880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.767616, 38.189354, 53.301960>,  <30.124151, 38.236389, 53.477093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767616, 38.189354, 53.301960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392086, -0.684760, -0.614306,
		-0.227571, -0.719219, 0.656457,
		-0.891336, -0.117590, -0.437827,
		29.500216, 38.154076, 53.170612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075956, 37.582409, 53.309792>,  <30.124151, 38.236389, 53.477093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075956, 37.582409, 53.309792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.807888, 37.762226, 53.073559>,  <29.647047, 37.870117, 52.931820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.807888, 37.762226, 53.073559>,  <30.075956, 37.582409, 53.309792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807888, 37.762226, 53.073559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221877, -0.637974, -0.737401,
		-0.708266, -0.625221, 0.327808,
		-0.670171, 0.449543, -0.590577,
		29.606836, 37.897091, 52.896385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690390, 37.032207, 53.011890>,  <30.075956, 37.582409, 53.309792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690390, 37.032207, 53.011890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.644123, 37.335449, 52.755173>,  <29.616364, 37.517395, 52.601143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.644123, 37.335449, 52.755173>,  <29.690390, 37.032207, 53.011890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644123, 37.335449, 52.755173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209873, -0.612894, -0.761784,
		-0.970863, -0.222810, -0.088213,
		-0.115667, 0.758101, -0.641797,
		29.609423, 37.562878, 52.562634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445417, 36.729393, 52.479389>,  <29.690390, 37.032207, 53.011890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445417, 36.729393, 52.479389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.532255, 37.082581, 52.312904>,  <29.584358, 37.294495, 52.213013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.532255, 37.082581, 52.312904>,  <29.445417, 36.729393, 52.479389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532255, 37.082581, 52.312904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215637, -0.459223, -0.861751,
		-0.952035, 0.097331, -0.290096,
		0.217094, 0.882973, -0.416209,
		29.597383, 37.347473, 52.188042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161291, 36.714092, 51.810944>,  <29.445417, 36.729393, 52.479389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161291, 36.714092, 51.810944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.445059, 36.995998, 51.812943>,  <29.615320, 37.165142, 51.814140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.445059, 36.995998, 51.812943>,  <29.161291, 36.714092, 51.810944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445059, 36.995998, 51.812943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326522, -0.322379, -0.888513,
		-0.624584, 0.631962, -0.458824,
		0.709421, 0.704767, 0.004997,
		29.657885, 37.207428, 51.814442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107244, 37.179688, 51.282112>,  <29.161291, 36.714092, 51.810944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107244, 37.179688, 51.282112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.496754, 37.224140, 51.361523>,  <29.730459, 37.250813, 51.409168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.496754, 37.224140, 51.361523>,  <29.107244, 37.179688, 51.282112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496754, 37.224140, 51.361523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215491, -0.170555, -0.961496,
		-0.072989, 0.979061, -0.190029,
		0.973774, 0.111129, 0.198531,
		29.788885, 37.257481, 51.421082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343878, 37.363522, 50.651726>,  <29.107244, 37.179688, 51.282112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343878, 37.363522, 50.651726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.673859, 37.251987, 50.848381>,  <29.871847, 37.185066, 50.966373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.673859, 37.251987, 50.848381>,  <29.343878, 37.363522, 50.651726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673859, 37.251987, 50.848381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430295, -0.254153, -0.866171,
		0.366467, 0.926099, -0.089684,
		0.824953, -0.278832, 0.491635,
		29.921345, 37.168339, 50.995872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892038, 37.672863, 50.307850>,  <29.343878, 37.363522, 50.651726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892038, 37.672863, 50.307850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.066309, 37.361725, 50.489021>,  <30.170872, 37.175041, 50.597725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.066309, 37.361725, 50.489021>,  <29.892038, 37.672863, 50.307850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066309, 37.361725, 50.489021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227436, -0.391732, -0.891526,
		0.870894, 0.491430, 0.006240,
		0.435678, -0.777845, 0.452926,
		30.197012, 37.128372, 50.624901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428038, 37.499287, 49.796680>,  <29.892038, 37.672863, 50.307850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428038, 37.499287, 49.796680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.415495, 37.190502, 50.050640>,  <30.407969, 37.005234, 50.203014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.415495, 37.190502, 50.050640>,  <30.428038, 37.499287, 49.796680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415495, 37.190502, 50.050640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165720, -0.630434, -0.758347,
		0.985674, 0.081435, 0.147698,
		-0.031358, -0.771959, 0.634898,
		30.406088, 36.958916, 50.241108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056801, 37.105171, 49.685707>,  <30.428038, 37.499287, 49.796680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056801, 37.105171, 49.685707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797714, 36.858711, 49.864960>,  <30.642262, 36.710835, 49.972511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797714, 36.858711, 49.864960>,  <31.056801, 37.105171, 49.685707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797714, 36.858711, 49.864960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152216, -0.680982, -0.716305,
		0.746521, -0.395750, 0.534872,
		-0.647716, -0.616153, 0.448128,
		30.603399, 36.673866, 49.999397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401077, 36.433655, 49.840019>,  <31.056801, 37.105171, 49.685707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401077, 36.433655, 49.840019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.011065, 36.349960, 49.810253>,  <30.777058, 36.299744, 49.792393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.011065, 36.349960, 49.810253>,  <31.401077, 36.433655, 49.840019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011065, 36.349960, 49.810253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206298, -0.729353, -0.652292,
		0.082208, -0.651356, 0.754306,
		-0.975030, -0.209235, -0.074415,
		30.718555, 36.287189, 49.787930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417110, 35.704578, 49.820904>,  <31.401077, 36.433655, 49.840019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417110, 35.704578, 49.820904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.056261, 35.802269, 49.678619>,  <30.839752, 35.860882, 49.593250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.056261, 35.802269, 49.678619>,  <31.417110, 35.704578, 49.820904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056261, 35.802269, 49.678619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079265, -0.716556, -0.693011,
		-0.424136, -0.653376, 0.627063,
		-0.902123, 0.244227, -0.355707,
		30.785624, 35.875538, 49.571907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986647, 35.103928, 49.839577>,  <31.417110, 35.704578, 49.820904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986647, 35.103928, 49.839577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.843477, 35.334797, 49.545975>,  <30.757576, 35.473320, 49.369816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.843477, 35.334797, 49.545975>,  <30.986647, 35.103928, 49.839577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843477, 35.334797, 49.545975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003081, -0.786803, -0.617196,
		-0.933746, -0.218646, 0.283393,
		-0.357922, 0.577178, -0.734001,
		30.736101, 35.507950, 49.325775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498421, 34.628021, 49.519562>,  <30.986647, 35.103928, 49.839577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498421, 34.628021, 49.519562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.539326, 34.929626, 49.260025>,  <30.563869, 35.110592, 49.104301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.539326, 34.929626, 49.260025>,  <30.498421, 34.628021, 49.519562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539326, 34.929626, 49.260025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073318, -0.644778, -0.760846,
		-0.992052, 0.125379, -0.010654,
		0.102264, 0.754017, -0.648845,
		30.570005, 35.155830, 49.065372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915489, 34.603947, 49.101295>,  <30.498421, 34.628021, 49.519562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915489, 34.603947, 49.101295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192099, 34.794037, 48.883686>,  <30.358065, 34.908089, 48.753120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192099, 34.794037, 48.883686>,  <29.915489, 34.603947, 49.101295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192099, 34.794037, 48.883686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191916, -0.605187, -0.772604,
		-0.696391, 0.638682, -0.327300,
		0.691526, 0.475221, -0.544020,
		30.399557, 34.936604, 48.720482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706991, 34.565639, 48.254227>,  <29.915489, 34.603947, 49.101295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706991, 34.565639, 48.254227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.099554, 34.642200, 48.260010>,  <30.335091, 34.688137, 48.263481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.099554, 34.642200, 48.260010>,  <29.706991, 34.565639, 48.254227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099554, 34.642200, 48.260010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145740, -0.694033, -0.705038,
		-0.124909, 0.694035, -0.709022,
		0.981406, 0.191399, 0.014458,
		30.393976, 34.699619, 48.264347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142368, 34.632195, 47.538132>,  <29.706991, 34.565639, 48.254227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142368, 34.632195, 47.538132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.391788, 34.513714, 47.827534>,  <30.541441, 34.442627, 48.001175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.391788, 34.513714, 47.827534>,  <30.142368, 34.632195, 47.538132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391788, 34.513714, 47.827534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361685, -0.711156, -0.602861,
		0.693088, 0.637593, -0.336310,
		0.623549, -0.296197, 0.723501,
		30.578854, 34.424854, 48.044582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613829, 34.405876, 47.060223>,  <30.142368, 34.632195, 47.538132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613829, 34.405876, 47.060223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.782452, 34.276787, 47.399197>,  <30.883625, 34.199333, 47.602581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.782452, 34.276787, 47.399197>,  <30.613829, 34.405876, 47.060223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782452, 34.276787, 47.399197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447712, -0.738610, -0.503994,
		0.788571, 0.591868, -0.166881,
		0.421557, -0.322720, 0.847432,
		30.908918, 34.179970, 47.653427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209791, 34.103004, 46.825848>,  <30.613829, 34.405876, 47.060223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209791, 34.103004, 46.825848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.194847, 33.967987, 47.202076>,  <31.185881, 33.886974, 47.427811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.194847, 33.967987, 47.202076>,  <31.209791, 34.103004, 46.825848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194847, 33.967987, 47.202076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448236, -0.846887, -0.286123,
		0.893134, 0.410906, 0.182941,
		-0.037361, -0.337547, 0.940567,
		31.183640, 33.866722, 47.484245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915007, 33.936123, 47.042641>,  <31.209791, 34.103004, 46.825848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915007, 33.936123, 47.042641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627592, 33.729492, 47.228912>,  <31.455143, 33.605515, 47.340675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627592, 33.729492, 47.228912>,  <31.915007, 33.936123, 47.042641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627592, 33.729492, 47.228912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443743, -0.856085, -0.264974,
		0.535537, 0.016247, 0.844355,
		-0.718535, -0.516580, 0.465675,
		31.412031, 33.574520, 47.368614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170116, 33.529049, 46.499260>,  <31.915007, 33.936123, 47.042641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170116, 33.529049, 46.499260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.177273, 33.281742, 46.813564>,  <32.181568, 33.133358, 47.002148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.177273, 33.281742, 46.813564>,  <32.170116, 33.529049, 46.499260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177273, 33.281742, 46.813564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995034, -0.065947, -0.074550,
		0.097910, 0.783197, 0.614016,
		0.017894, -0.618266, 0.785765,
		32.182640, 33.096264, 47.049294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630157, 33.731392, 47.033512>,  <32.170116, 33.529049, 46.499260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630157, 33.731392, 47.033512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.601616, 33.336922, 47.093323>,  <32.584492, 33.100239, 47.129208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.601616, 33.336922, 47.093323>,  <32.630157, 33.731392, 47.033512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601616, 33.336922, 47.093323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967593, -0.032028, 0.250475,
		-0.242224, 0.162554, 0.956506,
		-0.071351, -0.986180, 0.149528,
		32.580212, 33.041069, 47.138180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936916, 33.586952, 47.661587>,  <32.630157, 33.731392, 47.033512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936916, 33.586952, 47.661587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883827, 33.213337, 47.528946>,  <32.851974, 32.989170, 47.449360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883827, 33.213337, 47.528946>,  <32.936916, 33.586952, 47.661587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883827, 33.213337, 47.528946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841401, -0.283009, 0.460380,
		-0.523859, -0.217909, 0.823461,
		-0.132726, -0.934035, -0.331606,
		32.844009, 32.933125, 47.429462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907475, 32.971149, 48.230976>,  <32.936916, 33.586952, 47.661587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907475, 32.971149, 48.230976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.063015, 32.892555, 47.870934>,  <33.156342, 32.845398, 47.654907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.063015, 32.892555, 47.870934>,  <32.907475, 32.971149, 48.230976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063015, 32.892555, 47.870934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844555, -0.314362, 0.433478,
		-0.368129, -0.928747, 0.043699,
		0.388854, -0.196482, -0.900104,
		33.179672, 32.833611, 47.600903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261314, 32.264874, 48.251270>,  <32.907475, 32.971149, 48.230976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261314, 32.264874, 48.251270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.391346, 32.501301, 47.955986>,  <33.469364, 32.643158, 47.778816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.391346, 32.501301, 47.955986>,  <33.261314, 32.264874, 48.251270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391346, 32.501301, 47.955986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908759, 0.020759, 0.416805,
		0.261685, -0.806356, -0.530388,
		0.325083, 0.591067, -0.738215,
		33.488873, 32.678619, 47.734520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809853, 31.859795, 47.839390>,  <33.261314, 32.264874, 48.251270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809853, 31.859795, 47.839390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.876881, 32.253456, 47.816181>,  <33.917095, 32.489651, 47.802258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.876881, 32.253456, 47.816181>,  <33.809853, 31.859795, 47.839390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876881, 32.253456, 47.816181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883016, -0.123653, 0.452760,
		0.438410, -0.127101, -0.889742,
		0.167566, 0.984152, -0.058021,
		33.927151, 32.548702, 47.798775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486198, 31.858948, 47.606419>,  <33.809853, 31.859795, 47.839390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486198, 31.858948, 47.606419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436691, 32.223892, 47.762508>,  <34.406986, 32.442860, 47.856163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436691, 32.223892, 47.762508>,  <34.486198, 31.858948, 47.606419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436691, 32.223892, 47.762508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925603, -0.035602, 0.376818,
		0.357687, 0.407835, -0.840078,
		-0.123771, 0.912361, 0.390228,
		34.399559, 32.497601, 47.879578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033031, 32.381840, 47.423500>,  <34.486198, 31.858948, 47.606419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033031, 32.381840, 47.423500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.869038, 32.476879, 47.775742>,  <34.770641, 32.533901, 47.987087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.869038, 32.476879, 47.775742>,  <35.033031, 32.381840, 47.423500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869038, 32.476879, 47.775742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909119, 0.028573, 0.415555,
		0.073573, 0.970944, -0.227718,
		-0.409987, 0.237597, 0.880601,
		34.746040, 32.548157, 48.039921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473919, 32.891403, 47.650440>,  <35.033031, 32.381840, 47.423500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473919, 32.891403, 47.650440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267323, 32.812202, 47.983673>,  <35.143364, 32.764683, 48.183613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267323, 32.812202, 47.983673>,  <35.473919, 32.891403, 47.650440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267323, 32.812202, 47.983673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829628, 0.125180, 0.544103,
		-0.212017, 0.972176, 0.099611,
		-0.516494, -0.197999, 0.833085,
		35.112373, 32.752804, 48.233597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614136, 33.417805, 48.095940>,  <35.473919, 32.891403, 47.650440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614136, 33.417805, 48.095940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.509056, 33.112606, 48.332184>,  <35.446007, 32.929485, 48.473930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.509056, 33.112606, 48.332184>,  <35.614136, 33.417805, 48.095940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509056, 33.112606, 48.332184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858675, 0.094312, 0.503768,
		-0.440075, 0.639485, 0.630391,
		-0.262699, -0.762997, 0.590615,
		35.430248, 32.883705, 48.509369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708649, 33.704266, 48.841030>,  <35.614136, 33.417805, 48.095940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708649, 33.704266, 48.841030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.690903, 33.306683, 48.881199>,  <35.680256, 33.068134, 48.905300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.690903, 33.306683, 48.881199>,  <35.708649, 33.704266, 48.841030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690903, 33.306683, 48.881199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854179, 0.014391, 0.519780,
		-0.518084, 0.108840, 0.848377,
		-0.044364, -0.993955, 0.100425,
		35.677593, 33.008495, 48.911327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927803, 33.551823, 49.527508>,  <35.708649, 33.704266, 48.841030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927803, 33.551823, 49.527508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.986675, 33.221889, 49.309155>,  <36.021999, 33.023930, 49.178143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.986675, 33.221889, 49.309155>,  <35.927803, 33.551823, 49.527508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986675, 33.221889, 49.309155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969465, 0.010852, 0.244987,
		-0.196149, -0.565274, 0.801243,
		0.147180, -0.824832, -0.545885,
		36.030830, 32.974442, 49.145390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442154, 33.275654, 49.815063>,  <35.927803, 33.551823, 49.527508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442154, 33.275654, 49.815063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464607, 33.063679, 49.476593>,  <36.478081, 32.936493, 49.273510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464607, 33.063679, 49.476593>,  <36.442154, 33.275654, 49.815063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464607, 33.063679, 49.476593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980036, -0.132657, 0.148092,
		-0.190731, -0.837597, 0.511911,
		0.056133, -0.529937, -0.846177,
		36.481445, 32.904697, 49.222740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740917, 32.641727, 49.989761>,  <36.442154, 33.275654, 49.815063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740917, 32.641727, 49.989761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798866, 32.687798, 49.596672>,  <36.833637, 32.715439, 49.360817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798866, 32.687798, 49.596672>,  <36.740917, 32.641727, 49.989761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798866, 32.687798, 49.596672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988698, 0.021875, 0.148316,
		0.038579, -0.993104, -0.110706,
		0.144872, 0.115176, -0.982724,
		36.842327, 32.722351, 49.301853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143429, 32.091888, 49.725250>,  <36.740917, 32.641727, 49.989761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143429, 32.091888, 49.725250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.200794, 32.358505, 49.432632>,  <37.235214, 32.518475, 49.257061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.200794, 32.358505, 49.432632>,  <37.143429, 32.091888, 49.725250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200794, 32.358505, 49.432632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989306, -0.116424, 0.087863,
		-0.026605, -0.736323, -0.676107,
		0.143411, 0.666539, -0.731546,
		37.243816, 32.558468, 49.213169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603943, 31.778324, 49.260159>,  <37.143429, 32.091888, 49.725250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603943, 31.778324, 49.260159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624413, 32.164867, 49.159340>,  <37.636696, 32.396793, 49.098846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624413, 32.164867, 49.159340>,  <37.603943, 31.778324, 49.260159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624413, 32.164867, 49.159340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989487, -0.083243, -0.118262,
		-0.135265, -0.243348, -0.960461,
		0.051173, 0.966360, -0.252050,
		37.639763, 32.454777, 49.083725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885384, 31.856962, 48.596039>,  <37.603943, 31.778324, 49.260159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885384, 31.856962, 48.596039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964180, 32.167370, 48.835701>,  <38.011459, 32.353615, 48.979496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964180, 32.167370, 48.835701>,  <37.885384, 31.856962, 48.596039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964180, 32.167370, 48.835701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957287, -0.020322, -0.288425,
		-0.211647, 0.630379, -0.746878,
		0.196995, 0.776021, 0.599153,
		38.023277, 32.400177, 49.015446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256359, 32.376320, 48.218670>,  <37.885384, 31.856962, 48.596039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256359, 32.376320, 48.218670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379993, 32.412251, 48.597382>,  <38.454174, 32.433811, 48.824608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379993, 32.412251, 48.597382>,  <38.256359, 32.376320, 48.218670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379993, 32.412251, 48.597382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949065, -0.093145, -0.300998,
		0.061149, 0.991592, -0.114045,
		0.309090, 0.089831, 0.946781,
		38.472721, 32.439201, 48.881416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724960, 32.654613, 47.700031>,  <38.256359, 32.376320, 48.218670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724960, 32.654613, 47.700031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.101383, 32.570240, 47.594265>,  <39.327236, 32.519615, 47.530804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.101383, 32.570240, 47.594265>,  <38.724960, 32.654613, 47.700031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101383, 32.570240, 47.594265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337944, -0.619054, -0.708919,
		-0.014155, 0.756492, -0.653850,
		0.941060, -0.210930, -0.264414,
		39.383701, 32.506962, 47.514942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915089, 32.927670, 47.056786>,  <38.724960, 32.654613, 47.700031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915089, 32.927670, 47.056786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118820, 32.592758, 47.136341>,  <39.241058, 32.391811, 47.184074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118820, 32.592758, 47.136341>,  <38.915089, 32.927670, 47.056786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118820, 32.592758, 47.136341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405953, -0.437538, -0.802348,
		0.758809, 0.327916, -0.562744,
		0.509324, -0.837277, 0.198889,
		39.271618, 32.341576, 47.196007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236000, 32.783684, 46.429939>,  <38.915089, 32.927670, 47.056786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236000, 32.783684, 46.429939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.179718, 32.439152, 46.625210>,  <39.145950, 32.232433, 46.742374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.179718, 32.439152, 46.625210>,  <39.236000, 32.783684, 46.429939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179718, 32.439152, 46.625210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322319, -0.426371, -0.845173,
		0.936116, -0.276267, -0.217631,
		-0.140702, -0.861327, 0.488179,
		39.137508, 32.180756, 46.771664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572372, 32.247528, 46.050720>,  <39.236000, 32.783684, 46.429939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572372, 32.247528, 46.050720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.254620, 32.115944, 46.254971>,  <39.063969, 32.036995, 46.377522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.254620, 32.115944, 46.254971>,  <39.572372, 32.247528, 46.050720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254620, 32.115944, 46.254971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453787, -0.237405, -0.858904,
		0.403769, -0.914016, 0.039314,
		-0.794386, -0.328958, 0.510625,
		39.016304, 32.017258, 46.408157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359695, 31.617830, 45.832211>,  <39.572372, 32.247528, 46.050720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359695, 31.617830, 45.832211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.029255, 31.789730, 45.978020>,  <38.830990, 31.892870, 46.065506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.029255, 31.789730, 45.978020>,  <39.359695, 31.617830, 45.832211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029255, 31.789730, 45.978020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528927, -0.368165, -0.764651,
		-0.194402, -0.824484, 0.531446,
		-0.826101, 0.429746, 0.364520,
		38.781425, 31.918653, 46.087376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532185, 30.960148, 45.620750>,  <39.359695, 31.617830, 45.832211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532185, 30.960148, 45.620750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.916393, 31.040876, 45.697338>,  <40.146919, 31.089314, 45.743290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.916393, 31.040876, 45.697338>,  <39.532185, 30.960148, 45.620750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916393, 31.040876, 45.697338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252498, -0.343541, -0.904557,
		-0.116781, 0.917196, -0.380939,
		0.960524, 0.201821, 0.191472,
		40.204552, 31.101423, 45.754780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949993, 31.440292, 45.038269>,  <39.532185, 30.960148, 45.620750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949993, 31.440292, 45.038269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.194675, 31.197405, 45.241093>,  <40.341484, 31.051672, 45.362785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.194675, 31.197405, 45.241093>,  <39.949993, 31.440292, 45.038269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194675, 31.197405, 45.241093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326769, -0.389780, -0.860984,
		0.720446, 0.692356, -0.040009,
		0.611702, -0.607219, 0.507056,
		40.378185, 31.015240, 45.393211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529152, 31.428185, 44.625378>,  <39.949993, 31.440292, 45.038269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529152, 31.428185, 44.625378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.537525, 31.116327, 44.875729>,  <40.542549, 30.929213, 45.025940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.537525, 31.116327, 44.875729>,  <40.529152, 31.428185, 44.625378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537525, 31.116327, 44.875729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298725, -0.592539, -0.748105,
		0.954109, 0.202624, 0.220496,
		0.020932, -0.779642, 0.625876,
		40.543804, 30.882435, 45.063492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123466, 31.101595, 44.508144>,  <40.529152, 31.428185, 44.625378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123466, 31.101595, 44.508144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.819855, 30.854637, 44.590801>,  <40.637688, 30.706463, 44.640396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.819855, 30.854637, 44.590801>,  <41.123466, 31.101595, 44.508144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819855, 30.854637, 44.590801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072919, -0.396019, -0.915342,
		0.646962, -0.679702, 0.345609,
		-0.759027, -0.617394, 0.206646,
		40.592148, 30.669418, 44.652794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287754, 30.346848, 44.422901>,  <41.123466, 31.101595, 44.508144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287754, 30.346848, 44.422901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.935974, 30.496695, 44.305443>,  <40.724907, 30.586603, 44.234966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.935974, 30.496695, 44.305443>,  <41.287754, 30.346848, 44.422901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935974, 30.496695, 44.305443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215799, -0.236075, -0.947470,
		-0.424263, -0.896621, 0.126773,
		-0.879450, 0.374619, -0.293647,
		40.672138, 30.609079, 44.217350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856049, 29.878649, 44.043118>,  <41.287754, 30.346848, 44.422901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856049, 29.878649, 44.043118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.743813, 30.236681, 43.904499>,  <40.676472, 30.451500, 43.821327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.743813, 30.236681, 43.904499>,  <40.856049, 29.878649, 44.043118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743813, 30.236681, 43.904499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014171, -0.357152, -0.933939,
		-0.959723, -0.266964, 0.087528,
		-0.280589, 0.895083, -0.346550,
		40.659637, 30.505205, 43.800533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462631, 29.612780, 43.452282>,  <40.856049, 29.878649, 44.043118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462631, 29.612780, 43.452282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.599655, 29.988577, 43.452930>,  <40.681870, 30.214056, 43.453320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.599655, 29.988577, 43.452930>,  <40.462631, 29.612780, 43.452282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599655, 29.988577, 43.452930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253074, -0.090618, -0.963194,
		-0.904768, 0.330364, -0.268804,
		0.342563, 0.939494, 0.001618,
		40.702423, 30.270426, 43.453415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314636, 29.824718, 42.825745>,  <40.462631, 29.612780, 43.452282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314636, 29.824718, 42.825745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.600338, 30.074606, 42.951965>,  <40.771759, 30.224537, 43.027699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.600338, 30.074606, 42.951965>,  <40.314636, 29.824718, 42.825745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600338, 30.074606, 42.951965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466827, -0.089329, -0.879826,
		-0.521454, 0.775725, -0.355438,
		0.714254, 0.624716, 0.315548,
		40.814613, 30.262020, 43.046631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493244, 30.179834, 42.260044>,  <40.314636, 29.824718, 42.825745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493244, 30.179834, 42.260044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.805096, 30.254614, 42.499119>,  <40.992207, 30.299482, 42.642563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.805096, 30.254614, 42.499119>,  <40.493244, 30.179834, 42.260044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805096, 30.254614, 42.499119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618118, -0.076493, -0.782355,
		-0.100543, 0.979387, -0.175193,
		0.779629, 0.186951, 0.597686,
		41.038986, 30.310699, 42.678425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969418, 30.732943, 42.046242>,  <40.493244, 30.179834, 42.260044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969418, 30.732943, 42.046242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.156933, 30.451918, 42.260395>,  <41.269444, 30.283302, 42.388889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.156933, 30.451918, 42.260395>,  <40.969418, 30.732943, 42.046242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156933, 30.451918, 42.260395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565168, -0.227239, -0.793062,
		0.678837, 0.674365, 0.290538,
		0.468792, -0.702563, 0.535388,
		41.297569, 30.241148, 42.421013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801247, 31.311045, 41.616917>,  <40.969418, 30.732943, 42.046242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801247, 31.311045, 41.616917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.640156, 31.430870, 41.962883>,  <40.543503, 31.502766, 42.170464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.640156, 31.430870, 41.962883>,  <40.801247, 31.311045, 41.616917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640156, 31.430870, 41.962883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140800, -0.913408, 0.381919,
		0.904426, 0.275589, 0.325675,
		-0.402726, 0.299562, 0.864913,
		40.519337, 31.520739, 42.222359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418217, 31.622982, 41.560841>,  <40.801247, 31.311045, 41.616917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418217, 31.622982, 41.560841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.357048, 31.242304, 41.454338>,  <41.320347, 31.013897, 41.390434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.357048, 31.242304, 41.454338>,  <41.418217, 31.622982, 41.560841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357048, 31.242304, 41.454338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368993, 0.194955, -0.908756,
		0.916766, -0.237216, 0.321355,
		-0.152922, -0.951694, -0.266259,
		41.311172, 30.956795, 41.374462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123989, 31.211222, 41.367302>,  <41.418217, 31.622982, 41.560841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123989, 31.211222, 41.367302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.804039, 31.098763, 41.155209>,  <41.612068, 31.031286, 41.027950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.804039, 31.098763, 41.155209>,  <42.123989, 31.211222, 41.367302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804039, 31.098763, 41.155209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447116, 0.310200, -0.838966,
		0.400354, -0.908147, -0.122416,
		-0.799878, -0.281149, -0.530237,
		41.564075, 31.014418, 40.996136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349224, 30.690645, 40.827061>,  <42.123989, 31.211222, 41.367302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349224, 30.690645, 40.827061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.048630, 30.946133, 40.760963>,  <41.868275, 31.099424, 40.721306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.048630, 30.946133, 40.760963>,  <42.349224, 30.690645, 40.827061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048630, 30.946133, 40.760963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437447, 0.294902, -0.849513,
		-0.493869, -0.710683, -0.501021,
		-0.751487, 0.638719, -0.165243,
		41.823185, 31.137749, 40.711391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863194, 30.481424, 40.281109>,  <42.349224, 30.690645, 40.827061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863194, 30.481424, 40.281109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.949421, 30.861973, 40.369125>,  <42.001160, 31.090302, 40.421936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.949421, 30.861973, 40.369125>,  <41.863194, 30.481424, 40.281109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949421, 30.861973, 40.369125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634407, 0.034853, -0.772213,
		-0.742332, 0.306063, -0.596044,
		0.215572, 0.951373, 0.220041,
		42.014091, 31.147385, 40.435139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819775, 30.968191, 39.659164>,  <41.863194, 30.481424, 40.281109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819775, 30.968191, 39.659164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.084236, 31.098278, 39.929604>,  <42.242912, 31.176331, 40.091866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.084236, 31.098278, 39.929604>,  <41.819775, 30.968191, 39.659164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084236, 31.098278, 39.929604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648883, 0.204469, -0.732901,
		-0.376594, 0.923269, -0.075843,
		0.661157, 0.325219, 0.676095,
		42.282585, 31.195843, 40.132431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538063, 31.343725, 39.616444>,  <41.819775, 30.968191, 39.659164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538063, 31.343725, 39.616444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.749901, 31.680838, 39.654911>,  <42.877003, 31.883106, 39.677994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.749901, 31.680838, 39.654911>,  <42.538063, 31.343725, 39.616444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749901, 31.680838, 39.654911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601124, 0.292889, 0.743549,
		0.598483, -0.451589, 0.661729,
		0.529592, 0.842783, 0.096172,
		42.908779, 31.933672, 39.683762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111736, 31.174099, 39.020325>,  <42.538063, 31.343725, 39.616444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111736, 31.174099, 39.020325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.060146, 30.781427, 38.964222>,  <42.029194, 30.545824, 38.930561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.060146, 30.781427, 38.964222>,  <42.111736, 31.174099, 39.020325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060146, 30.781427, 38.964222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896238, 0.054863, 0.440167,
		-0.424408, 0.182471, -0.886895,
		-0.128976, -0.981679, -0.140253,
		42.021454, 30.486923, 38.922146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369457, 31.051655, 38.360073>,  <42.111736, 31.174099, 39.020325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369457, 31.051655, 38.360073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.426235, 30.661705, 38.291401>,  <42.460304, 30.427736, 38.250198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.426235, 30.661705, 38.291401>,  <42.369457, 31.051655, 38.360073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426235, 30.661705, 38.291401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670808, 0.222276, -0.707538,
		0.727920, -0.014730, 0.685504,
		0.141949, -0.974873, -0.171680,
		42.468819, 30.369244, 38.239899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108025, 30.920538, 38.380234>,  <42.369457, 31.051655, 38.360073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108025, 30.920538, 38.380234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.894646, 30.663441, 38.160301>,  <42.766617, 30.509182, 38.028343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.894646, 30.663441, 38.160301>,  <43.108025, 30.920538, 38.380234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894646, 30.663441, 38.160301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494195, 0.290709, -0.819305,
		0.686443, -0.708781, 0.162561,
		-0.533449, -0.642742, -0.549831,
		42.734612, 30.470617, 37.995354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786583, 30.771235, 38.216923>,  <43.108025, 30.920538, 38.380234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786583, 30.771235, 38.216923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.042629, 30.593397, 38.467548>,  <44.196259, 30.486694, 38.617924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.042629, 30.593397, 38.467548>,  <43.786583, 30.771235, 38.216923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042629, 30.593397, 38.467548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761337, 0.476440, -0.439740,
		-0.103016, 0.758514, 0.643463,
		0.640120, -0.444591, 0.626566,
		44.234665, 30.460020, 38.655518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152355, 31.294001, 38.708168>,  <43.786583, 30.771235, 38.216923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152355, 31.294001, 38.708168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.347374, 30.970755, 38.575958>,  <44.464386, 30.776806, 38.496632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.347374, 30.970755, 38.575958>,  <44.152355, 31.294001, 38.708168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347374, 30.970755, 38.575958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743057, 0.582822, -0.328913,
		0.458439, -0.085241, 0.884629,
		0.487545, -0.808116, -0.330528,
		44.493637, 30.728319, 38.476799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846817, 31.453773, 38.682724>,  <44.152355, 31.294001, 38.708168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846817, 31.453773, 38.682724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.820461, 31.140995, 38.434784>,  <44.804649, 30.953327, 38.286018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.820461, 31.140995, 38.434784>,  <44.846817, 31.453773, 38.682724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820461, 31.140995, 38.434784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649145, 0.438188, -0.621773,
		0.757806, -0.443341, 0.478726,
		-0.065885, -0.781946, -0.619854,
		44.800697, 30.906412, 38.248829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.524277, 31.271238, 38.379585>,  <44.846817, 31.453773, 38.682724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.524277, 31.271238, 38.379585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.212040, 31.166943, 38.152359>,  <45.024700, 31.104366, 38.016022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.212040, 31.166943, 38.152359>,  <45.524277, 31.271238, 38.379585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212040, 31.166943, 38.152359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366481, 0.545304, -0.753880,
		0.506330, -0.796656, -0.330105,
		-0.780590, -0.260734, -0.568063,
		44.977863, 31.088720, 37.981941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709259, 31.066420, 37.675358>,  <45.524277, 31.271238, 38.379585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709259, 31.066420, 37.675358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.343910, 31.229252, 37.677746>,  <45.124702, 31.326950, 37.679180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.343910, 31.229252, 37.677746>,  <45.709259, 31.066420, 37.675358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343910, 31.229252, 37.677746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312064, 0.709459, -0.631889,
		-0.261466, -0.575287, -0.775036,
		-0.913374, 0.407079, 0.005973,
		45.069897, 31.351376, 37.679539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426167, 31.362028, 37.681156>,  <45.709259, 31.066420, 37.675358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426167, 31.362028, 37.681156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.471958, 31.137367, 37.353390>,  <46.499432, 31.002571, 37.156731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.471958, 31.137367, 37.353390>,  <46.426167, 31.362028, 37.681156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.471958, 31.137367, 37.353390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338023, 0.753600, -0.563762,
		0.934150, 0.341519, -0.103582,
		0.114476, -0.561651, -0.819416,
		46.506302, 30.968872, 37.107563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.950256, 31.666756, 37.211967>,  <46.426167, 31.362028, 37.681156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.950256, 31.666756, 37.211967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.671497, 31.464460, 37.008572>,  <46.504242, 31.343082, 36.886536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.671497, 31.464460, 37.008572>,  <46.950256, 31.666756, 37.211967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.671497, 31.464460, 37.008572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160768, 0.801142, -0.576476,
		0.698914, -0.320000, -0.639624,
		-0.696902, -0.505739, -0.508484,
		46.462429, 31.312738, 36.856026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.318810, 32.409081, 37.416645>,  <46.950256, 31.666756, 37.211967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.318810, 32.409081, 37.416645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.069687, 32.705753, 37.317024>,  <46.920212, 32.883755, 37.257252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.069687, 32.705753, 37.317024>,  <47.318810, 32.409081, 37.416645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.069687, 32.705753, 37.317024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781818, 0.601998, -0.162353,
		0.029514, -0.295826, -0.954786,
		-0.622807, 0.741677, -0.249050,
		46.882843, 32.928257, 37.242310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.462742, 32.593838, 36.720123>,  <47.318810, 32.409081, 37.416645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.462742, 32.593838, 36.720123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.320980, 32.869961, 36.972431>,  <47.235924, 33.035633, 37.123817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.320980, 32.869961, 36.972431>,  <47.462742, 32.593838, 36.720123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.320980, 32.869961, 36.972431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838481, 0.533207, -0.112424,
		-0.413938, 0.489044, -0.767783,
		-0.354407, 0.690308, 0.630769,
		47.214657, 33.077053, 37.161663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.274399, 33.218529, 36.421116>,  <47.462742, 32.593838, 36.720123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.274399, 33.218529, 36.421116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.388924, 33.274738, 36.800224>,  <47.457638, 33.308464, 37.027691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.388924, 33.274738, 36.800224>,  <47.274399, 33.218529, 36.421116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.388924, 33.274738, 36.800224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804751, 0.501583, -0.317475,
		-0.520000, 0.853621, 0.030526,
		0.286314, 0.140521, 0.947775,
		47.474819, 33.316895, 37.084557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.986156, 32.945602, 35.810474>,  <47.274399, 33.218529, 36.421116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.986156, 32.945602, 35.810474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.092010, 33.267769, 35.598331>,  <47.155525, 33.461067, 35.471046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.092010, 33.267769, 35.598331>,  <46.986156, 32.945602, 35.810474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.092010, 33.267769, 35.598331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302460, -0.452889, -0.838695,
		-0.915688, 0.382361, 0.123754,
		0.264637, 0.805414, -0.530354,
		47.171402, 33.509392, 35.439224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.504101, 33.060482, 35.275528>,  <46.986156, 32.945602, 35.810474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.504101, 33.060482, 35.275528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.829704, 33.235226, 35.122406>,  <47.025066, 33.340073, 35.030533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.829704, 33.235226, 35.122406>,  <46.504101, 33.060482, 35.275528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.829704, 33.235226, 35.122406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288499, -0.267920, -0.919232,
		-0.504137, 0.858703, -0.092056,
		0.814011, 0.436861, -0.382804,
		47.073906, 33.366283, 35.007565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397587, 33.743881, 34.821033>,  <46.504101, 33.060482, 35.275528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397587, 33.743881, 34.821033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.708206, 33.517441, 34.710396>,  <46.894577, 33.381577, 34.644012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.708206, 33.517441, 34.710396>,  <46.397587, 33.743881, 34.821033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.708206, 33.517441, 34.710396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396752, -0.098328, -0.912644,
		0.489451, 0.818451, -0.300958,
		0.776547, -0.566100, -0.276596,
		46.941170, 33.347610, 34.627419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.835598, 34.131474, 34.461517>,  <46.397587, 33.743881, 34.821033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.835598, 34.131474, 34.461517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.815304, 33.746017, 34.356579>,  <46.803127, 33.514744, 34.293613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.815304, 33.746017, 34.356579>,  <46.835598, 34.131474, 34.461517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.815304, 33.746017, 34.356579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542092, 0.247193, -0.803139,
		0.838786, 0.101471, -0.534922,
		-0.050734, -0.963639, -0.262349,
		46.800083, 33.456924, 34.277874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.159153, 34.408443, 35.145752>,  <46.835598, 34.131474, 34.461517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.159153, 34.408443, 35.145752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.267681, 34.737373, 35.345821>,  <47.332798, 34.934731, 35.465862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.267681, 34.737373, 35.345821>,  <47.159153, 34.408443, 35.145752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.267681, 34.737373, 35.345821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937380, -0.107838, -0.331193,
		-0.218410, 0.558709, -0.800088,
		0.271321, 0.822323, 0.500170,
		47.349079, 34.984070, 35.495872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.316017, 35.083698, 34.781242>,  <47.159153, 34.408443, 35.145752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.316017, 35.083698, 34.781242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.559467, 35.041733, 35.095837>,  <47.705540, 35.016556, 35.284595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.559467, 35.041733, 35.095837>,  <47.316017, 35.083698, 34.781242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.559467, 35.041733, 35.095837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791507, 0.149712, -0.592540,
		-0.055583, 0.983148, 0.174156,
		0.608628, -0.104910, 0.786490,
		47.742054, 35.010262, 35.331783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.005104, 35.759010, 58.200405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.333626, 35.837498, 58.414680>,  <32.530739, 35.884590, 58.543247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.333626, 35.837498, 58.414680>,  <32.005104, 35.759010, 58.200405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333626, 35.837498, 58.414680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560197, -0.454983, -0.692220,
		0.107906, 0.868614, -0.483597,
		0.821301, 0.196215, 0.535691,
		32.580017, 35.896362, 58.575386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369946, 35.953735, 57.696838>,  <32.005104, 35.759010, 58.200405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369946, 35.953735, 57.696838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.605556, 35.852165, 58.003712>,  <32.746922, 35.791222, 58.187836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.605556, 35.852165, 58.003712>,  <32.369946, 35.953735, 57.696838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605556, 35.852165, 58.003712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625270, -0.458207, -0.631731,
		0.511940, 0.851803, -0.111125,
		0.589029, -0.253926, 0.767181,
		32.782265, 35.775986, 58.233868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174019, 36.209576, 57.567162>,  <32.369946, 35.953735, 57.696838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174019, 36.209576, 57.567162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.179489, 35.907074, 57.828819>,  <33.182770, 35.725574, 57.985813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.179489, 35.907074, 57.828819>,  <33.174019, 36.209576, 57.567162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179489, 35.907074, 57.828819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638183, -0.497027, -0.587951,
		0.769763, 0.425499, 0.475831,
		0.013672, -0.756250, 0.654140,
		33.183590, 35.680199, 58.025063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904640, 36.071148, 57.786278>,  <33.174019, 36.209576, 57.567162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904640, 36.071148, 57.786278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.729652, 35.731014, 57.903278>,  <33.624660, 35.526936, 57.973480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.729652, 35.731014, 57.903278>,  <33.904640, 36.071148, 57.786278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729652, 35.731014, 57.903278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636657, -0.522600, -0.567060,
		0.635049, -0.061849, 0.769991,
		-0.437470, -0.850332, 0.292500,
		33.598412, 35.475914, 57.991028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453251, 35.659935, 58.047680>,  <33.904640, 36.071148, 57.786278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453251, 35.659935, 58.047680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.150341, 35.415836, 57.954613>,  <33.968597, 35.269375, 57.898773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.150341, 35.415836, 57.954613>,  <34.453251, 35.659935, 58.047680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150341, 35.415836, 57.954613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626881, -0.579247, -0.521050,
		0.183196, -0.540434, 0.821200,
		-0.757271, -0.610249, -0.232672,
		33.923161, 35.232761, 57.884811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752117, 34.980881, 58.079163>,  <34.453251, 35.659935, 58.047680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752117, 34.980881, 58.079163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.424801, 34.927357, 57.855560>,  <34.228409, 34.895245, 57.721397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.424801, 34.927357, 57.855560>,  <34.752117, 34.980881, 58.079163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424801, 34.927357, 57.855560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477309, -0.700057, -0.531127,
		-0.320269, -0.701438, 0.636720,
		-0.818293, -0.133808, -0.559009,
		34.179314, 34.887215, 57.687859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676205, 34.253788, 57.988930>,  <34.752117, 34.980881, 58.079163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676205, 34.253788, 57.988930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.447529, 34.379509, 57.685776>,  <34.310322, 34.454941, 57.503883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.447529, 34.379509, 57.685776>,  <34.676205, 34.253788, 57.988930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447529, 34.379509, 57.685776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382059, -0.715479, -0.584911,
		-0.726086, -0.623944, 0.288952,
		-0.571691, 0.314299, -0.757883,
		34.276024, 34.473801, 57.458412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524178, 33.609898, 57.620056>,  <34.676205, 34.253788, 57.988930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524178, 33.609898, 57.620056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.427689, 33.900394, 57.362564>,  <34.369797, 34.074692, 57.208069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.427689, 33.900394, 57.362564>,  <34.524178, 33.609898, 57.620056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427689, 33.900394, 57.362564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020379, -0.659379, -0.751535,
		-0.970257, -0.194403, 0.144254,
		-0.241219, 0.726242, -0.643728,
		34.355324, 34.118267, 57.169445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316463, 33.251598, 57.062569>,  <34.524178, 33.609898, 57.620056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316463, 33.251598, 57.062569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.413673, 33.614670, 56.925709>,  <34.472000, 33.832512, 56.843594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.413673, 33.614670, 56.925709>,  <34.316463, 33.251598, 57.062569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413673, 33.614670, 56.925709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171140, -0.387312, -0.905925,
		-0.954803, 0.161609, -0.249466,
		0.243027, 0.907674, -0.342149,
		34.486580, 33.886971, 56.823063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993050, 33.304543, 56.413090>,  <34.316463, 33.251598, 57.062569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993050, 33.304543, 56.413090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.280293, 33.581333, 56.383430>,  <34.452637, 33.747406, 56.365635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.280293, 33.581333, 56.383430>,  <33.993050, 33.304543, 56.413090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280293, 33.581333, 56.383430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072426, -0.180271, -0.980947,
		-0.692155, 0.699054, -0.179570,
		0.718106, 0.691973, -0.074146,
		34.495724, 33.788925, 56.361187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753880, 33.714542, 55.949734>,  <33.993050, 33.304543, 56.413090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753880, 33.714542, 55.949734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.148506, 33.778992, 55.960453>,  <34.385284, 33.817661, 55.966885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.148506, 33.778992, 55.960453>,  <33.753880, 33.714542, 55.949734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148506, 33.778992, 55.960453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058868, -0.197722, -0.978489,
		-0.152355, 0.966926, -0.204552,
		0.986571, 0.161119, 0.026797,
		34.444477, 33.827328, 55.968491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917625, 33.986073, 55.260517>,  <33.753880, 33.714542, 55.949734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917625, 33.986073, 55.260517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.256744, 33.842621, 55.416790>,  <34.460217, 33.756550, 55.510551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.256744, 33.842621, 55.416790>,  <33.917625, 33.986073, 55.260517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256744, 33.842621, 55.416790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293485, -0.296311, -0.908882,
		0.441713, 0.885204, -0.145959,
		0.847795, -0.358628, 0.390678,
		34.511082, 33.735031, 55.533993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432098, 34.275406, 54.910831>,  <33.917625, 33.986073, 55.260517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432098, 34.275406, 54.910831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.585796, 33.935642, 55.055527>,  <34.678017, 33.731785, 55.142345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.585796, 33.935642, 55.055527>,  <34.432098, 34.275406, 54.910831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585796, 33.935642, 55.055527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291636, -0.260083, -0.920492,
		0.875959, 0.459190, 0.147783,
		0.384245, -0.849412, 0.361739,
		34.701069, 33.680820, 55.164047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125404, 34.199631, 54.516228>,  <34.432098, 34.275406, 54.910831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125404, 34.199631, 54.516228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.973286, 33.853416, 54.646591>,  <34.882015, 33.645687, 54.724812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.973286, 33.853416, 54.646591>,  <35.125404, 34.199631, 54.516228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973286, 33.853416, 54.646591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124517, -0.397097, -0.909291,
		0.916444, -0.305218, 0.258789,
		-0.380296, -0.865538, 0.325912,
		34.859196, 33.593754, 54.744366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412235, 33.744057, 54.149197>,  <35.125404, 34.199631, 54.516228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412235, 33.744057, 54.149197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.145401, 33.479450, 54.286247>,  <34.985302, 33.320686, 54.368477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.145401, 33.479450, 54.286247>,  <35.412235, 33.744057, 54.149197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145401, 33.479450, 54.286247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094370, -0.531245, -0.841946,
		0.738982, -0.529314, 0.416812,
		-0.667083, -0.661518, 0.342630,
		34.945274, 33.280994, 54.389034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779270, 33.075943, 54.007507>,  <35.412235, 33.744057, 54.149197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779270, 33.075943, 54.007507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.380329, 33.068188, 54.035526>,  <35.140965, 33.063534, 54.052338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.380329, 33.068188, 54.035526>,  <35.779270, 33.075943, 54.007507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380329, 33.068188, 54.035526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050742, -0.504199, -0.862095,
		0.052034, -0.863370, 0.501882,
		-0.997356, -0.019392, 0.070044,
		35.081123, 33.062370, 54.056541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607258, 32.344776, 53.927704>,  <35.779270, 33.075943, 54.007507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607258, 32.344776, 53.927704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.283470, 32.558994, 53.831406>,  <35.089199, 32.687527, 53.773628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.283470, 32.558994, 53.831406>,  <35.607258, 32.344776, 53.927704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283470, 32.558994, 53.831406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139674, -0.573871, -0.806947,
		-0.570292, -0.619584, 0.539336,
		-0.809481, 0.535526, -0.240734,
		35.040630, 32.719658, 53.759182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196125, 31.844934, 53.647423>,  <35.607258, 32.344776, 53.927704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196125, 31.844934, 53.647423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.967003, 32.151535, 53.531239>,  <34.829529, 32.335495, 53.461529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.967003, 32.151535, 53.531239>,  <35.196125, 31.844934, 53.647423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967003, 32.151535, 53.531239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125237, -0.432029, -0.893122,
		-0.810065, -0.475212, 0.343464,
		-0.572809, 0.766501, -0.290458,
		34.795158, 32.381485, 53.444099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556190, 31.622084, 53.374847>,  <35.196125, 31.844934, 53.647423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556190, 31.622084, 53.374847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.655220, 31.968794, 53.201687>,  <34.714638, 32.176819, 53.097790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.655220, 31.968794, 53.201687>,  <34.556190, 31.622084, 53.374847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655220, 31.968794, 53.201687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153143, -0.406187, -0.900866,
		-0.956688, 0.289330, 0.032178,
		0.247578, 0.866776, -0.432903,
		34.729492, 32.228828, 53.071815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192322, 31.557550, 52.842003>,  <34.556190, 31.622084, 53.374847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192322, 31.557550, 52.842003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.447323, 31.847872, 52.738621>,  <34.600323, 32.022064, 52.676590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.447323, 31.847872, 52.738621>,  <34.192322, 31.557550, 52.842003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447323, 31.847872, 52.738621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049382, -0.373268, -0.926408,
		-0.768862, 0.577826, -0.273802,
		0.637504, 0.725802, -0.258457,
		34.638573, 32.065613, 52.661083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032875, 31.637379, 52.177994>,  <34.192322, 31.557550, 52.842003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032875, 31.637379, 52.177994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.398323, 31.791084, 52.231106>,  <34.617592, 31.883308, 52.262974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.398323, 31.791084, 52.231106>,  <34.032875, 31.637379, 52.177994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398323, 31.791084, 52.231106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233692, -0.229100, -0.944934,
		-0.332683, 0.894346, -0.299111,
		0.913625, 0.384263, 0.132784,
		34.672409, 31.906363, 52.270943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112114, 32.105240, 51.693382>,  <34.032875, 31.637379, 52.177994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112114, 32.105240, 51.693382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.482243, 31.993021, 51.795429>,  <34.704319, 31.925690, 51.856655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.482243, 31.993021, 51.795429>,  <34.112114, 32.105240, 51.693382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482243, 31.993021, 51.795429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194211, -0.227218, -0.954282,
		0.325685, 0.932559, -0.155764,
		0.925317, -0.280544, 0.255115,
		34.759838, 31.908857, 51.871964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740543, 32.110806, 51.020412>,  <34.112114, 32.105240, 51.693382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740543, 32.110806, 51.020412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.437843, 32.160442, 50.763683>,  <33.256222, 32.190224, 50.609646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.437843, 32.160442, 50.763683>,  <33.740543, 32.110806, 51.020412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437843, 32.160442, 50.763683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497909, 0.526762, 0.688918,
		0.423577, 0.840906, -0.336839,
		-0.756749, 0.124095, -0.641819,
		33.210819, 32.197670, 50.571136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432953, 32.856228, 51.146797>,  <33.740543, 32.110806, 51.020412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432953, 32.856228, 51.146797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.127819, 32.647156, 50.994537>,  <32.944740, 32.521713, 50.903183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.127819, 32.647156, 50.994537>,  <33.432953, 32.856228, 51.146797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127819, 32.647156, 50.994537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592822, 0.330319, 0.734474,
		-0.258156, 0.785939, -0.561833,
		-0.762835, -0.522676, -0.380647,
		32.898968, 32.490353, 50.880344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950859, 33.289860, 51.121670>,  <33.432953, 32.856228, 51.146797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950859, 33.289860, 51.121670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.760647, 32.938309, 51.106491>,  <32.646519, 32.727379, 51.097385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.760647, 32.938309, 51.106491>,  <32.950859, 33.289860, 51.121670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760647, 32.938309, 51.106491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600104, 0.292550, 0.744507,
		-0.643230, 0.376810, -0.666536,
		-0.475532, -0.878879, -0.037948,
		32.617989, 32.674644, 51.095108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146469, 33.408394, 51.046688>,  <32.950859, 33.289860, 51.121670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146469, 33.408394, 51.046688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.216129, 33.064312, 51.238403>,  <32.257923, 32.857864, 51.353432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.216129, 33.064312, 51.238403>,  <32.146469, 33.408394, 51.046688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216129, 33.064312, 51.238403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721264, 0.219945, 0.656812,
		-0.670411, -0.460077, -0.582133,
		0.174147, -0.860205, 0.479290,
		32.268372, 32.806252, 51.382191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394831, 33.235794, 51.229458>,  <32.146469, 33.408394, 51.046688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394831, 33.235794, 51.229458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.645651, 33.015648, 51.449966>,  <31.796143, 32.883560, 51.582272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.645651, 33.015648, 51.449966>,  <31.394831, 33.235794, 51.229458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645651, 33.015648, 51.449966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621668, 0.072886, 0.779883,
		-0.469404, -0.831734, -0.296444,
		0.627048, -0.550370, 0.551275,
		31.833765, 32.850536, 51.615349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960897, 32.748699, 51.579777>,  <31.394831, 33.235794, 51.229458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960897, 32.748699, 51.579777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.295080, 32.722763, 51.798065>,  <31.495590, 32.707203, 51.929039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.295080, 32.722763, 51.798065>,  <30.960897, 32.748699, 51.579777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295080, 32.722763, 51.798065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513705, 0.260660, 0.817412,
		-0.195250, -0.963251, 0.184460,
		0.835455, -0.064842, 0.545721,
		31.545717, 32.703312, 51.961781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797272, 32.363712, 52.209549>,  <30.960897, 32.748699, 51.579777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797272, 32.363712, 52.209549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.116945, 32.575378, 52.323593>,  <31.308750, 32.702377, 52.392021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.116945, 32.575378, 52.323593>,  <30.797272, 32.363712, 52.209549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116945, 32.575378, 52.323593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404521, 0.122647, 0.906267,
		0.444600, -0.839606, 0.312077,
		0.799183, 0.529168, 0.285110,
		31.356701, 32.734127, 52.409126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897650, 32.227650, 52.879440>,  <30.797272, 32.363712, 52.209549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897650, 32.227650, 52.879440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.087675, 32.577053, 52.836937>,  <31.201691, 32.786697, 52.811436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.087675, 32.577053, 52.836937>,  <30.897650, 32.227650, 52.879440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087675, 32.577053, 52.836937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368929, 0.307349, 0.877170,
		0.798877, -0.377511, 0.468274,
		0.475065, 0.873511, -0.106259,
		31.230194, 32.839108, 52.805058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314049, 32.409176, 53.578449>,  <30.897650, 32.227650, 52.879440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314049, 32.409176, 53.578449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.260933, 32.758415, 53.390800>,  <31.229063, 32.967957, 53.278214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.260933, 32.758415, 53.390800>,  <31.314049, 32.409176, 53.578449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260933, 32.758415, 53.390800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196520, 0.440721, 0.875868,
		0.971466, 0.208497, 0.113058,
		-0.132789, 0.873095, -0.469119,
		31.221096, 33.020344, 53.250065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739153, 32.972935, 53.983803>,  <31.314049, 32.409176, 53.578449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739153, 32.972935, 53.983803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.480757, 33.182590, 53.761822>,  <31.325718, 33.308384, 53.628632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.480757, 33.182590, 53.761822>,  <31.739153, 32.972935, 53.983803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480757, 33.182590, 53.761822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198398, 0.586735, 0.785099,
		0.737111, 0.617269, -0.275038,
		-0.645992, 0.524138, -0.554953,
		31.286959, 33.339832, 53.595337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803522, 33.613491, 54.217999>,  <31.739153, 32.972935, 53.983803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803522, 33.613491, 54.217999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.453579, 33.644428, 54.026733>,  <31.243612, 33.662991, 53.911972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.453579, 33.644428, 54.026733>,  <31.803522, 33.613491, 54.217999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453579, 33.644428, 54.026733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339609, 0.605955, 0.719364,
		0.345383, 0.791730, -0.503859,
		-0.874858, 0.077341, -0.478165,
		31.191122, 33.667629, 53.883286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653055, 34.327915, 54.150757>,  <31.803522, 33.613491, 54.217999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653055, 34.327915, 54.150757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.303484, 34.134575, 54.130295>,  <31.093740, 34.018570, 54.118019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.303484, 34.134575, 54.130295>,  <31.653055, 34.327915, 54.150757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303484, 34.134575, 54.130295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369701, 0.592712, 0.715551,
		-0.315543, 0.644253, -0.696685,
		-0.873930, -0.483353, -0.051155,
		31.041306, 33.989571, 54.114948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150061, 34.836769, 54.074902>,  <31.653055, 34.327915, 54.150757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150061, 34.836769, 54.074902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.971830, 34.507107, 54.214748>,  <30.864893, 34.309311, 54.298656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.971830, 34.507107, 54.214748>,  <31.150061, 34.836769, 54.074902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971830, 34.507107, 54.214748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398374, 0.532264, 0.746990,
		-0.801723, 0.193562, -0.565485,
		-0.445576, -0.824154, 0.349618,
		30.838158, 34.259861, 54.319633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634512, 35.035282, 54.321712>,  <31.150061, 34.836769, 54.074902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634512, 35.035282, 54.321712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.643604, 34.671097, 54.486897>,  <30.649059, 34.452587, 54.586006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.643604, 34.671097, 54.486897>,  <30.634512, 35.035282, 54.321712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643604, 34.671097, 54.486897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365813, 0.376848, 0.850980,
		-0.930411, -0.170409, -0.324494,
		0.022729, -0.910465, 0.412961,
		30.650423, 34.397957, 54.610786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020926, 35.012794, 54.690342>,  <30.634512, 35.035282, 54.321712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020926, 35.012794, 54.690342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.265291, 34.739960, 54.851109>,  <30.411911, 34.576260, 54.947567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.265291, 34.739960, 54.851109>,  <30.020926, 35.012794, 54.690342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265291, 34.739960, 54.851109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248749, 0.316584, 0.915368,
		-0.751604, -0.659187, 0.023736,
		0.610913, -0.682090, 0.401918,
		30.448565, 34.535332, 54.971684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609657, 34.741302, 55.115372>,  <30.020926, 35.012794, 54.690342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609657, 34.741302, 55.115372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.970291, 34.622585, 55.241264>,  <30.186672, 34.551353, 55.316799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.970291, 34.622585, 55.241264>,  <29.609657, 34.741302, 55.115372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970291, 34.622585, 55.241264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193972, 0.372944, 0.907352,
		-0.386674, -0.879105, 0.278671,
		0.901586, -0.296796, 0.314729,
		30.240767, 34.533546, 55.335682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499289, 34.577187, 55.830101>,  <29.609657, 34.741302, 55.115372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499289, 34.577187, 55.830101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.896774, 34.616203, 55.808132>,  <30.135265, 34.639614, 55.794949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.896774, 34.616203, 55.808132>,  <29.499289, 34.577187, 55.830101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896774, 34.616203, 55.808132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003311, 0.516051, 0.856551,
		0.111893, -0.850986, 0.513131,
		0.993715, 0.097541, -0.054925,
		30.194889, 34.645466, 55.791656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775604, 34.489635, 56.453808>,  <29.499289, 34.577187, 55.830101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775604, 34.489635, 56.453808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.078783, 34.682930, 56.278538>,  <30.260689, 34.798908, 56.173374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.078783, 34.682930, 56.278538>,  <29.775604, 34.489635, 56.453808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078783, 34.682930, 56.278538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174610, 0.496917, 0.850050,
		0.628515, -0.720802, 0.292257,
		0.757945, 0.483238, -0.438179,
		30.306166, 34.827900, 56.147083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.353256, 34.434479, 56.987579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448942, 34.736427, 56.743301>,  <30.506353, 34.917595, 56.596733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448942, 34.736427, 56.743301>,  <30.353256, 34.434479, 56.987579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448942, 34.736427, 56.743301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261591, 0.555596, 0.789229,
		0.935064, -0.348550, -0.064558,
		0.239217, 0.754868, -0.610696,
		30.520708, 34.962887, 56.560093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009237, 34.644943, 57.164711>,  <30.353256, 34.434479, 56.987579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009237, 34.644943, 57.164711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838011, 34.960285, 56.987961>,  <30.735275, 35.149490, 56.881912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838011, 34.960285, 56.987961>,  <31.009237, 34.644943, 57.164711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838011, 34.960285, 56.987961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017764, 0.496180, 0.868038,
		0.903572, 0.363729, -0.226403,
		-0.428068, 0.788357, -0.441873,
		30.709591, 35.196793, 56.855400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362627, 35.199066, 57.474583>,  <31.009237, 34.644943, 57.164711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362627, 35.199066, 57.474583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059921, 35.380974, 57.286755>,  <30.878298, 35.490120, 57.174057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059921, 35.380974, 57.286755>,  <31.362627, 35.199066, 57.474583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059921, 35.380974, 57.286755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068192, 0.659493, 0.748611,
		0.650119, 0.598544, -0.468070,
		-0.756766, 0.454768, -0.469566,
		30.832891, 35.517403, 57.145885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505592, 35.872158, 57.355885>,  <31.362627, 35.199066, 57.474583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505592, 35.872158, 57.355885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107075, 35.883381, 57.323353>,  <30.867964, 35.890114, 57.303833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107075, 35.883381, 57.323353>,  <31.505592, 35.872158, 57.355885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107075, 35.883381, 57.323353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035073, 0.730747, 0.681747,
		0.078553, 0.682072, -0.727054,
		-0.996293, 0.028053, -0.081325,
		30.808187, 35.891796, 57.298954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389027, 36.548809, 57.384693>,  <31.505592, 35.872158, 57.355885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389027, 36.548809, 57.384693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033142, 36.384521, 57.464413>,  <30.819611, 36.285950, 57.512245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033142, 36.384521, 57.464413>,  <31.389027, 36.548809, 57.384693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033142, 36.384521, 57.464413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194773, 0.736340, 0.647971,
		-0.412888, 0.537690, -0.735128,
		-0.889712, -0.410723, 0.199299,
		30.766228, 36.261303, 57.524200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790257, 37.047630, 57.267956>,  <31.389027, 36.548809, 57.384693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790257, 37.047630, 57.267956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628025, 36.771450, 57.507549>,  <30.530685, 36.605743, 57.651306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628025, 36.771450, 57.507549>,  <30.790257, 37.047630, 57.267956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628025, 36.771450, 57.507549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231525, 0.711531, 0.663416,
		-0.884252, 0.130389, -0.448440,
		-0.405580, -0.690451, 0.598984,
		30.506351, 36.564316, 57.687244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018190, 37.169331, 57.386032>,  <30.790257, 37.047630, 57.267956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018190, 37.169331, 57.386032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110123, 36.963699, 57.716583>,  <30.165283, 36.840321, 57.914913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110123, 36.963699, 57.716583>,  <30.018190, 37.169331, 57.386032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110123, 36.963699, 57.716583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512840, 0.657684, 0.551766,
		-0.827147, -0.550614, -0.112483,
		0.229831, -0.514078, 0.826378,
		30.179071, 36.809475, 57.964497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370378, 37.099224, 57.769287>,  <30.018190, 37.169331, 57.386032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370378, 37.099224, 57.769287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691984, 37.067249, 58.004971>,  <29.884947, 37.048065, 58.146381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691984, 37.067249, 58.004971>,  <29.370378, 37.099224, 57.769287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691984, 37.067249, 58.004971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504527, 0.432676, 0.747157,
		-0.314664, -0.897998, 0.307547,
		0.804014, -0.079938, 0.589212,
		29.933189, 37.043266, 58.181736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070883, 36.839027, 58.372612>,  <29.370378, 37.099224, 57.769287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070883, 36.839027, 58.372612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427671, 36.995701, 58.462914>,  <29.641745, 37.089706, 58.517094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427671, 36.995701, 58.462914>,  <29.070883, 36.839027, 58.372612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427671, 36.995701, 58.462914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395666, 0.434768, 0.808965,
		0.218708, -0.810900, 0.542778,
		0.891973, 0.391686, 0.225758,
		29.695263, 37.113205, 58.530640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276144, 36.639889, 59.149200>,  <29.070883, 36.839027, 58.372612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276144, 36.639889, 59.149200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450727, 36.981831, 59.036964>,  <29.555477, 37.186996, 58.969624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450727, 36.981831, 59.036964>,  <29.276144, 36.639889, 59.149200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450727, 36.981831, 59.036964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346775, 0.447595, 0.824261,
		0.830212, -0.262456, 0.491798,
		0.436458, 0.854854, -0.280585,
		29.581665, 37.238285, 58.952789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642996, 36.895706, 59.723892>,  <29.276144, 36.639889, 59.149200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642996, 36.895706, 59.723892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561033, 37.192703, 59.468796>,  <29.511856, 37.370903, 59.315739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561033, 37.192703, 59.468796>,  <29.642996, 36.895706, 59.723892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561033, 37.192703, 59.468796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446124, 0.509098, 0.736065,
		0.871198, 0.435335, 0.226928,
		-0.204907, 0.742497, -0.637739,
		29.499561, 37.415451, 59.277473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724531, 37.318260, 60.164295>,  <29.642996, 36.895706, 59.723892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724531, 37.318260, 60.164295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535587, 37.514626, 59.871479>,  <29.422222, 37.632442, 59.695789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535587, 37.514626, 59.871479>,  <29.724531, 37.318260, 60.164295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535587, 37.514626, 59.871479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469349, 0.562901, 0.680335,
		0.746049, 0.664945, -0.035483,
		-0.472358, 0.490909, -0.732042,
		29.393879, 37.661900, 59.651867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779804, 37.966114, 60.391953>,  <29.724531, 37.318260, 60.164295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779804, 37.966114, 60.391953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493179, 37.988922, 60.113876>,  <29.321203, 38.002605, 59.947033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493179, 37.988922, 60.113876>,  <29.779804, 37.966114, 60.391953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493179, 37.988922, 60.113876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540644, 0.584329, 0.605197,
		0.440727, 0.809511, -0.387880,
		-0.716563, 0.057022, -0.695188,
		29.278210, 38.006027, 59.905319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580873, 38.657280, 60.222355>,  <29.779804, 37.966114, 60.391953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580873, 38.657280, 60.222355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247915, 38.470097, 60.103611>,  <29.048140, 38.357784, 60.032364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247915, 38.470097, 60.103611>,  <29.580873, 38.657280, 60.222355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247915, 38.470097, 60.103611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551059, 0.755706, 0.353895,
		0.058729, 0.458169, -0.886923,
		-0.832397, -0.467963, -0.296860,
		28.998196, 38.329708, 60.014553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167515, 39.261269, 59.961014>,  <29.580873, 38.657280, 60.222355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167515, 39.261269, 59.961014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917162, 38.956585, 60.028023>,  <28.766951, 38.773773, 60.068230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917162, 38.956585, 60.028023>,  <29.167515, 39.261269, 59.961014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917162, 38.956585, 60.028023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641811, 0.625067, 0.444263,
		-0.443117, 0.170536, -0.880094,
		-0.625881, -0.761714, 0.167526,
		28.729397, 38.728069, 60.078281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525656, 39.575985, 59.792347>,  <29.167515, 39.261269, 59.961014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525656, 39.575985, 59.792347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434692, 39.243156, 59.994705>,  <28.380114, 39.043457, 60.116119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434692, 39.243156, 59.994705>,  <28.525656, 39.575985, 59.792347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434692, 39.243156, 59.994705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713454, 0.495947, 0.494996,
		-0.662773, -0.248369, -0.706431,
		-0.227411, -0.832076, 0.505899,
		28.366468, 38.993534, 60.146477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760857, 39.482010, 59.820614>,  <28.525656, 39.575985, 59.792347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760857, 39.482010, 59.820614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911003, 39.282864, 60.133339>,  <28.001091, 39.163376, 60.320972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911003, 39.282864, 60.133339>,  <27.760857, 39.482010, 59.820614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911003, 39.282864, 60.133339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679783, 0.425517, 0.597353,
		-0.630076, -0.755689, -0.178716,
		0.375366, -0.497866, 0.781812,
		28.023613, 39.133503, 60.367882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165939, 39.206303, 60.092838>,  <27.760857, 39.482010, 59.820614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165939, 39.206303, 60.092838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438160, 39.199013, 60.385826>,  <27.601492, 39.194637, 60.561619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438160, 39.199013, 60.385826>,  <27.165939, 39.206303, 60.092838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438160, 39.199013, 60.385826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640212, 0.471394, 0.606561,
		-0.356339, -0.881734, 0.309140,
		0.680552, -0.018226, 0.732473,
		27.642326, 39.193546, 60.605568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759468, 39.073521, 60.644745>,  <27.165939, 39.206303, 60.092838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759468, 39.073521, 60.644745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096277, 39.230297, 60.793007>,  <27.298363, 39.324364, 60.881962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096277, 39.230297, 60.793007>,  <26.759468, 39.073521, 60.644745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096277, 39.230297, 60.793007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539435, 0.607433, 0.583125,
		0.003405, -0.690946, 0.722898,
		0.842021, 0.391942, 0.370652,
		27.348883, 39.347881, 60.904202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622627, 39.155750, 61.386150>,  <26.759468, 39.073521, 60.644745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622627, 39.155750, 61.386150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925707, 39.409363, 61.324310>,  <27.107553, 39.561531, 61.287205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925707, 39.409363, 61.324310>,  <26.622627, 39.155750, 61.386150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925707, 39.409363, 61.324310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401273, 0.639453, 0.655805,
		0.514659, -0.434865, 0.738930,
		0.757698, 0.634029, -0.154601,
		27.153015, 39.599571, 61.277931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786545, 39.366730, 62.125549>,  <26.622627, 39.155750, 61.386150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786545, 39.366730, 62.125549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924284, 39.633930, 61.861671>,  <27.006927, 39.794250, 61.703346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924284, 39.633930, 61.861671>,  <26.786545, 39.366730, 62.125549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924284, 39.633930, 61.861671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477338, 0.729637, 0.489671,
		0.808439, 0.146280, 0.570113,
		0.344347, 0.668006, -0.659692,
		27.027588, 39.834332, 61.663765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951302, 39.952801, 62.531017>,  <26.786545, 39.366730, 62.125549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951302, 39.952801, 62.531017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898893, 40.119335, 62.171127>,  <26.867449, 40.219254, 61.955193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898893, 40.119335, 62.171127>,  <26.951302, 39.952801, 62.531017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898893, 40.119335, 62.171127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260157, 0.861300, 0.436440,
		0.956636, 0.291251, -0.004536,
		-0.131021, 0.416334, -0.899722,
		26.859587, 40.244236, 61.901211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362640, 40.551353, 62.244743>,  <26.951302, 39.952801, 62.531017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362640, 40.551353, 62.244743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975073, 40.551720, 62.145794>,  <26.742533, 40.551937, 62.086422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975073, 40.551720, 62.145794>,  <27.362640, 40.551353, 62.244743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975073, 40.551720, 62.145794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112657, 0.888656, 0.444522,
		0.220239, 0.458575, -0.860932,
		-0.968919, 0.000912, -0.247378,
		26.684397, 40.551994, 62.071579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660084, 41.263496, 62.246056>,  <27.362640, 40.551353, 62.244743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660084, 41.263496, 62.246056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979485, 41.472984, 62.364792>,  <28.171125, 41.598679, 62.436035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979485, 41.472984, 62.364792>,  <27.660084, 41.263496, 62.246056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979485, 41.472984, 62.364792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599509, -0.736564, -0.313149,
		0.054639, 0.428008, -0.902122,
		0.798501, 0.523720, 0.296840,
		28.219034, 41.630100, 62.453842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221191, 41.203365, 61.787441>,  <27.660084, 41.263496, 62.246056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221191, 41.203365, 61.787441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452934, 41.305237, 62.097145>,  <28.591980, 41.366360, 62.282967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452934, 41.305237, 62.097145>,  <28.221191, 41.203365, 61.787441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452934, 41.305237, 62.097145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734589, -0.574748, -0.360615,
		0.353164, 0.777690, -0.520071,
		0.579356, 0.254682, 0.774263,
		28.626741, 41.381641, 62.329426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874907, 41.330448, 61.603165>,  <28.221191, 41.203365, 61.787441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874907, 41.330448, 61.603165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962393, 41.248070, 61.984688>,  <29.014885, 41.198643, 62.213600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962393, 41.248070, 61.984688>,  <28.874907, 41.330448, 61.603165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962393, 41.248070, 61.984688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831269, -0.472594, -0.292657,
		0.511035, 0.856879, 0.067833,
		0.218714, -0.205945, 0.953809,
		29.028008, 41.186287, 62.270832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612820, 41.482014, 61.659489>,  <28.874907, 41.330448, 61.603165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612820, 41.482014, 61.659489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498877, 41.236740, 61.954208>,  <29.430511, 41.089577, 62.131039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498877, 41.236740, 61.954208>,  <29.612820, 41.482014, 61.659489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498877, 41.236740, 61.954208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825963, -0.547082, -0.135964,
		0.486457, 0.569835, 0.662304,
		-0.284857, -0.613180, 0.736795,
		29.413420, 41.052788, 62.175247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235615, 41.362705, 62.080189>,  <29.612820, 41.482014, 61.659489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235615, 41.362705, 62.080189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978907, 41.066151, 62.158649>,  <29.824883, 40.888218, 62.205727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978907, 41.066151, 62.158649>,  <30.235615, 41.362705, 62.080189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978907, 41.066151, 62.158649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733475, -0.668070, -0.125288,
		0.223931, 0.063467, 0.972536,
		-0.641771, -0.741387, 0.196153,
		29.786375, 40.843735, 62.217495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621656, 40.896729, 62.487930>,  <30.235615, 41.362705, 62.080189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621656, 40.896729, 62.487930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315512, 40.685009, 62.341469>,  <30.131824, 40.557976, 62.253593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315512, 40.685009, 62.341469>,  <30.621656, 40.896729, 62.487930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315512, 40.685009, 62.341469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591891, -0.802288, -0.077450,
		-0.252764, -0.275998, 0.927327,
		-0.765360, -0.529300, -0.366150,
		30.085903, 40.526218, 62.231625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722029, 40.266895, 62.798195>,  <30.621656, 40.896729, 62.487930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722029, 40.266895, 62.798195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475258, 40.224670, 62.486233>,  <30.327196, 40.199337, 62.299053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475258, 40.224670, 62.486233>,  <30.722029, 40.266895, 62.798195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475258, 40.224670, 62.486233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554527, -0.761503, -0.335577,
		-0.558480, -0.639507, 0.528327,
		-0.616927, -0.105559, -0.779909,
		30.290180, 40.193005, 62.252258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734648, 39.530582, 62.734226>,  <30.722029, 40.266895, 62.798195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734648, 39.530582, 62.734226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609514, 39.654537, 62.375092>,  <30.534433, 39.728909, 62.159611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609514, 39.654537, 62.375092>,  <30.734648, 39.530582, 62.734226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609514, 39.654537, 62.375092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442746, -0.788721, -0.426492,
		-0.840304, -0.530934, 0.109538,
		-0.312834, 0.309885, -0.897834,
		30.515663, 39.747501, 62.105740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718674, 38.935268, 62.451645>,  <30.734648, 39.530582, 62.734226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718674, 38.935268, 62.451645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712095, 39.190166, 62.143452>,  <30.708149, 39.343105, 61.958534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712095, 39.190166, 62.143452>,  <30.718674, 38.935268, 62.451645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712095, 39.190166, 62.143452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482866, -0.669713, -0.564203,
		-0.875540, -0.381321, -0.296689,
		-0.016445, 0.637244, -0.770487,
		30.707161, 39.381340, 61.912304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468670, 38.571976, 61.734932>,  <30.718674, 38.935268, 62.451645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468670, 38.571976, 61.734932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674635, 38.901436, 61.639874>,  <30.798214, 39.099110, 61.582840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674635, 38.901436, 61.639874>,  <30.468670, 38.571976, 61.734932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674635, 38.901436, 61.639874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459306, -0.499142, -0.734776,
		-0.723812, 0.269194, -0.635319,
		0.514912, 0.823646, -0.237642,
		30.829109, 39.148529, 61.568581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291943, 38.635735, 61.053978>,  <30.468670, 38.571976, 61.734932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291943, 38.635735, 61.053978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639793, 38.825573, 61.108391>,  <30.848503, 38.939476, 61.141037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639793, 38.825573, 61.108391>,  <30.291943, 38.635735, 61.053978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639793, 38.825573, 61.108391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404626, -0.527250, -0.747185,
		-0.282890, 0.704814, -0.650546,
		0.869627, 0.474599, 0.136032,
		30.900681, 38.967953, 61.149200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501942, 38.803303, 60.362595>,  <30.291943, 38.635735, 61.053978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501942, 38.803303, 60.362595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837923, 38.825851, 60.578484>,  <31.039513, 38.839382, 60.708015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837923, 38.825851, 60.578484>,  <30.501942, 38.803303, 60.362595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837923, 38.825851, 60.578484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458546, -0.605602, -0.650370,
		0.290196, 0.793768, -0.534526,
		0.839954, 0.056370, 0.539723,
		31.089909, 38.842762, 60.740402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001440, 38.953568, 59.927647>,  <30.501942, 38.803303, 60.362595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001440, 38.953568, 59.927647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235044, 38.804451, 60.216080>,  <31.375206, 38.714981, 60.389141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235044, 38.804451, 60.216080>,  <31.001440, 38.953568, 59.927647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235044, 38.804451, 60.216080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499846, -0.534774, -0.681301,
		0.639599, 0.758316, -0.125974,
		0.584009, -0.372792, 0.721082,
		31.410248, 38.692612, 60.432404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593060, 38.802509, 59.597301>,  <31.001440, 38.953568, 59.927647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593060, 38.802509, 59.597301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632441, 38.591618, 59.934902>,  <31.656069, 38.465084, 60.137463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632441, 38.591618, 59.934902>,  <31.593060, 38.802509, 59.597301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632441, 38.591618, 59.934902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600041, -0.645151, -0.473003,
		0.793888, 0.553005, 0.252839,
		0.098453, -0.527225, 0.844003,
		31.661976, 38.433449, 60.188103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360050, 38.514500, 59.693199>,  <31.593060, 38.802509, 59.597301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360050, 38.514500, 59.693199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111744, 38.289791, 59.911942>,  <31.962759, 38.154964, 60.043186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111744, 38.289791, 59.911942>,  <32.360050, 38.514500, 59.693199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111744, 38.289791, 59.911942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321348, -0.818567, -0.476113,
		0.715109, -0.119824, 0.688667,
		-0.620770, -0.561774, 0.546859,
		31.925512, 38.121258, 60.076000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848579, 37.983150, 59.993614>,  <32.360050, 38.514500, 59.693199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848579, 37.983150, 59.993614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475124, 37.839874, 59.995731>,  <32.251053, 37.753910, 59.997002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475124, 37.839874, 59.995731>,  <32.848579, 37.983150, 59.993614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475124, 37.839874, 59.995731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329953, -0.865603, -0.376646,
		0.139494, -0.349903, 0.926342,
		-0.933634, -0.358190, 0.005294,
		32.195034, 37.732418, 59.997318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954300, 37.315365, 60.147301>,  <32.848579, 37.983150, 59.993614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954300, 37.315365, 60.147301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583126, 37.338898, 60.000072>,  <32.360420, 37.353016, 59.911736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583126, 37.338898, 60.000072>,  <32.954300, 37.315365, 60.147301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583126, 37.338898, 60.000072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084035, -0.929025, -0.360348,
		-0.363148, -0.365310, 0.857130,
		-0.927934, 0.058831, -0.368073,
		32.304745, 37.356548, 59.889652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596241, 36.679272, 60.444996>,  <32.954300, 37.315365, 60.147301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596241, 36.679272, 60.444996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391376, 36.789169, 60.119492>,  <32.268456, 36.855106, 59.924191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391376, 36.789169, 60.119492>,  <32.596241, 36.679272, 60.444996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391376, 36.789169, 60.119492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185592, -0.889672, -0.417180,
		-0.838596, -0.364692, 0.404669,
		-0.512165, 0.274743, -0.813759,
		32.237728, 36.871593, 59.875362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290573, 36.037003, 60.310326>,  <32.596241, 36.679272, 60.444996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290573, 36.037003, 60.310326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257488, 36.253574, 59.975658>,  <32.237637, 36.383518, 59.774857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257488, 36.253574, 59.975658>,  <32.290573, 36.037003, 60.310326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257488, 36.253574, 59.975658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277782, -0.793747, -0.541113,
		-0.957077, -0.277167, -0.084747,
		-0.082711, 0.541429, -0.836669,
		32.232674, 36.416004, 59.724659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080479, 35.546814, 59.772747>,  <32.290573, 36.037003, 60.310326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080479, 35.546814, 59.772747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171803, 35.874203, 59.561855>,  <32.226597, 36.070637, 59.435318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171803, 35.874203, 59.561855>,  <32.080479, 35.546814, 59.772747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171803, 35.874203, 59.561855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210124, -0.570195, -0.794182,
		-0.950644, 0.070535, -0.302162,
		0.228308, 0.818476, -0.527231,
		32.240295, 36.119747, 59.403687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914213, 35.568142, 59.061153>,  <32.080479, 35.546814, 59.772747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914213, 35.568142, 59.061153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228516, 35.814991, 59.044441>,  <32.417095, 35.963100, 59.034412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228516, 35.814991, 59.044441>,  <31.914213, 35.568142, 59.061153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228516, 35.814991, 59.044441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362233, -0.513861, -0.777647,
		-0.501376, 0.595904, -0.627312,
		0.785754, 0.617127, -0.041782,
		32.464241, 36.000130, 59.031906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.777798, 33.707668, 51.105343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.718678, 34.043991, 51.313648>,  <47.683205, 34.245785, 51.438629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.718678, 34.043991, 51.313648>,  <47.777798, 33.707668, 51.105343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.718678, 34.043991, 51.313648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954536, 0.016555, -0.297634,
		-0.258876, -0.541075, 0.800138,
		-0.147796, 0.840811, 0.520761,
		47.674339, 34.296234, 51.469875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.209846, 33.572456, 51.686359>,  <47.777798, 33.707668, 51.105343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.209846, 33.572456, 51.686359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.243904, 33.966507, 51.626648>,  <47.264339, 34.202938, 51.590820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.243904, 33.966507, 51.626648>,  <47.209846, 33.572456, 51.686359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.243904, 33.966507, 51.626648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989427, 0.065945, -0.129174,
		-0.117408, 0.158700, 0.980321,
		0.085147, 0.985122, -0.149279,
		47.269447, 34.262043, 51.581863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.607746, 33.807873, 51.850109>,  <47.209846, 33.572456, 51.686359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.607746, 33.807873, 51.850109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.727371, 34.149689, 51.680248>,  <46.799145, 34.354778, 51.578331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.727371, 34.149689, 51.680248>,  <46.607746, 33.807873, 51.850109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.727371, 34.149689, 51.680248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951140, 0.231137, -0.204715,
		-0.076784, 0.465127, 0.881908,
		0.299060, 0.854537, -0.424653,
		46.817089, 34.406052, 51.552853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.143562, 34.306427, 52.059204>,  <46.607746, 33.807873, 51.850109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.143562, 34.306427, 52.059204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.294270, 34.453053, 51.718925>,  <46.384693, 34.541027, 51.514759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.294270, 34.453053, 51.718925>,  <46.143562, 34.306427, 52.059204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294270, 34.453053, 51.718925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908958, 0.323218, -0.263298,
		0.178444, 0.872447, 0.454966,
		0.376766, 0.366561, -0.850694,
		46.407299, 34.563023, 51.463718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.789360, 34.919701, 51.920097>,  <46.143562, 34.306427, 52.059204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.789360, 34.919701, 51.920097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.922848, 34.794445, 51.564438>,  <46.002941, 34.719292, 51.351044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.922848, 34.794445, 51.564438>,  <45.789360, 34.919701, 51.920097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922848, 34.794445, 51.564438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819803, 0.369219, -0.437722,
		0.465357, 0.874998, -0.133497,
		0.333716, -0.313138, -0.889144,
		46.022961, 34.700504, 51.297695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.567574, 35.515446, 51.479618>,  <45.789360, 34.919701, 51.920097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.567574, 35.515446, 51.479618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.642914, 35.185093, 51.267036>,  <45.688118, 34.986881, 51.139488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.642914, 35.185093, 51.267036>,  <45.567574, 35.515446, 51.479618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642914, 35.185093, 51.267036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758770, 0.221196, -0.612650,
		0.623531, 0.518648, -0.584990,
		0.188352, -0.825879, -0.531458,
		45.699421, 34.937328, 51.107597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.422642, 35.713955, 50.747887>,  <45.567574, 35.515446, 51.479618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.422642, 35.713955, 50.747887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.393513, 35.315163, 50.758602>,  <45.376038, 35.075886, 50.765030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.393513, 35.315163, 50.758602>,  <45.422642, 35.713955, 50.747887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.393513, 35.315163, 50.758602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900583, 0.054191, -0.431293,
		0.428542, -0.055529, -0.901814,
		-0.072820, -0.996986, 0.026785,
		45.371666, 35.016068, 50.766640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152157, 35.506836, 50.086891>,  <45.422642, 35.713955, 50.747887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152157, 35.506836, 50.086891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.071976, 35.179295, 50.302036>,  <45.023865, 34.982769, 50.431126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.071976, 35.179295, 50.302036>,  <45.152157, 35.506836, 50.086891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071976, 35.179295, 50.302036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865895, -0.108745, -0.488263,
		0.458305, -0.563611, -0.687240,
		-0.200456, -0.818851, 0.537866,
		45.011837, 34.933640, 50.463398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755280, 35.068989, 49.633347>,  <45.152157, 35.506836, 50.086891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755280, 35.068989, 49.633347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.676662, 34.938335, 50.003143>,  <44.629494, 34.859943, 50.225021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.676662, 34.938335, 50.003143>,  <44.755280, 35.068989, 49.633347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676662, 34.938335, 50.003143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969301, -0.077343, -0.233395,
		0.147738, -0.941982, -0.301403,
		-0.196542, -0.326632, 0.924491,
		44.617699, 34.840347, 50.280491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275452, 34.495491, 49.519749>,  <44.755280, 35.068989, 49.633347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275452, 34.495491, 49.519749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.236610, 34.583042, 49.908112>,  <44.213306, 34.635571, 50.141129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.236610, 34.583042, 49.908112>,  <44.275452, 34.495491, 49.519749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236610, 34.583042, 49.908112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985578, -0.156983, -0.063181,
		0.138587, -0.963042, 0.230962,
		-0.097102, 0.218875, 0.970909,
		44.207481, 34.648705, 50.199383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927017, 33.985146, 49.866379>,  <44.275452, 34.495491, 49.519749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927017, 33.985146, 49.866379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.872112, 34.311577, 50.090939>,  <43.839169, 34.507435, 50.225674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.872112, 34.311577, 50.090939>,  <43.927017, 33.985146, 49.866379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872112, 34.311577, 50.090939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988910, -0.080468, -0.124824,
		-0.056693, -0.572307, 0.818078,
		-0.137267, 0.816082, 0.561398,
		43.830933, 34.556400, 50.259357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295448, 33.801830, 50.293343>,  <43.927017, 33.985146, 49.866379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295448, 33.801830, 50.293343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.341587, 34.198414, 50.317703>,  <43.369270, 34.436363, 50.332321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.341587, 34.198414, 50.317703>,  <43.295448, 33.801830, 50.293343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341587, 34.198414, 50.317703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980741, 0.123403, -0.151390,
		-0.157612, -0.042266, 0.986596,
		0.115350, 0.991456, 0.060902,
		43.376190, 34.495850, 50.335976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741112, 33.920807, 50.648117>,  <43.295448, 33.801830, 50.293343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741112, 33.920807, 50.648117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.827866, 34.274345, 50.482334>,  <42.879917, 34.486469, 50.382866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.827866, 34.274345, 50.482334>,  <42.741112, 33.920807, 50.648117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827866, 34.274345, 50.482334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975630, 0.210727, -0.061164,
		0.033277, 0.417620, 0.908012,
		0.216886, 0.883848, -0.414455,
		42.892933, 34.539501, 50.357998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431767, 34.389507, 51.070995>,  <42.741112, 33.920807, 50.648117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431767, 34.389507, 51.070995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.484493, 34.555946, 50.711109>,  <42.516129, 34.655807, 50.495178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.484493, 34.555946, 50.711109>,  <42.431767, 34.389507, 51.070995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484493, 34.555946, 50.711109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965007, 0.261422, -0.020487,
		0.226681, 0.870934, 0.435994,
		0.131821, 0.416093, -0.899716,
		42.524040, 34.680775, 50.441193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041348, 34.971714, 51.059082>,  <42.431767, 34.389507, 51.070995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041348, 34.971714, 51.059082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.100719, 34.962185, 50.663628>,  <42.136341, 34.956467, 50.426353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.100719, 34.962185, 50.663628>,  <42.041348, 34.971714, 51.059082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100719, 34.962185, 50.663628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898243, 0.414942, -0.144855,
		0.413677, 0.909536, 0.040192,
		0.148428, -0.023821, -0.988636,
		42.145248, 34.955040, 50.367035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844093, 35.646835, 50.822845>,  <42.041348, 34.971714, 51.059082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844093, 35.646835, 50.822845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.820110, 35.413944, 50.498520>,  <41.805721, 35.274212, 50.303925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.820110, 35.413944, 50.498520>,  <41.844093, 35.646835, 50.822845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820110, 35.413944, 50.498520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880418, 0.413624, -0.231904,
		0.470393, 0.699951, -0.537401,
		-0.059961, -0.582223, -0.810815,
		41.802124, 35.239277, 50.255276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256924, 36.080372, 50.390537>,  <41.844093, 35.646835, 50.822845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256924, 36.080372, 50.390537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.297092, 35.729198, 50.203285>,  <41.321194, 35.518494, 50.090935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.297092, 35.729198, 50.203285>,  <41.256924, 36.080372, 50.390537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297092, 35.729198, 50.203285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931056, 0.082967, -0.355318,
		0.350785, 0.471540, -0.809074,
		0.100420, -0.877934, -0.468134,
		41.327217, 35.465820, 50.062843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241196, 36.147007, 49.640179>,  <41.256924, 36.080372, 50.390537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241196, 36.147007, 49.640179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.127422, 35.777225, 49.741756>,  <41.059158, 35.555359, 49.802704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.127422, 35.777225, 49.741756>,  <41.241196, 36.147007, 49.640179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127422, 35.777225, 49.741756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913074, 0.180478, -0.365683,
		0.292225, -0.335882, -0.895426,
		-0.284431, -0.924452, 0.253945,
		41.042091, 35.499889, 49.817940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856674, 35.903603, 49.038544>,  <41.241196, 36.147007, 49.640179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856674, 35.903603, 49.038544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.769760, 35.641472, 49.327911>,  <40.717613, 35.484192, 49.501534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.769760, 35.641472, 49.327911>,  <40.856674, 35.903603, 49.038544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769760, 35.641472, 49.327911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945620, -0.042458, -0.322489,
		0.242051, -0.754152, -0.610465,
		-0.217287, -0.655327, 0.723418,
		40.704575, 35.444874, 49.544937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507896, 35.263741, 48.673237>,  <40.856674, 35.903603, 49.038544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507896, 35.263741, 48.673237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.410759, 35.300362, 49.059532>,  <40.352474, 35.322334, 49.291309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.410759, 35.300362, 49.059532>,  <40.507896, 35.263741, 48.673237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410759, 35.300362, 49.059532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960429, 0.117275, -0.252630,
		-0.136385, -0.988871, 0.059448,
		-0.242847, 0.091551, 0.965735,
		40.337906, 35.327827, 49.349251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988060, 34.746674, 48.829411>,  <40.507896, 35.263741, 48.673237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988060, 34.746674, 48.829411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.920708, 35.033558, 49.099892>,  <39.880295, 35.205688, 49.262180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.920708, 35.033558, 49.099892>,  <39.988060, 34.746674, 48.829411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920708, 35.033558, 49.099892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984767, -0.152582, -0.083386,
		0.043371, -0.679944, 0.731980,
		-0.168385, 0.717213, 0.676204,
		39.870193, 35.248722, 49.302753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629429, 34.558506, 49.471413>,  <39.988060, 34.746674, 48.829411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629429, 34.558506, 49.471413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.560410, 34.934311, 49.353062>,  <39.518997, 35.159794, 49.282051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.560410, 34.934311, 49.353062>,  <39.629429, 34.558506, 49.471413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560410, 34.934311, 49.353062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971121, -0.212512, -0.108455,
		-0.164772, 0.268618, 0.949049,
		-0.172551, 0.939512, -0.295876,
		39.508644, 35.216164, 49.264297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925240, 34.710716, 49.427822>,  <39.629429, 34.558506, 49.471413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925240, 34.710716, 49.427822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.021885, 35.040722, 49.223480>,  <39.079872, 35.238724, 49.100876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.021885, 35.040722, 49.223480>,  <38.925240, 34.710716, 49.427822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021885, 35.040722, 49.223480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940721, 0.069994, -0.331880,
		-0.238049, 0.560762, 0.793019,
		0.241612, 0.825014, -0.510859,
		39.094368, 35.288227, 49.070221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321785, 34.243183, 49.529945>,  <38.925240, 34.710716, 49.427822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321785, 34.243183, 49.529945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.031353, 34.348537, 49.275879>,  <37.857094, 34.411751, 49.123440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.031353, 34.348537, 49.275879>,  <38.321785, 34.243183, 49.529945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031353, 34.348537, 49.275879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663880, -0.509083, 0.547812,
		-0.179067, 0.819430, 0.544491,
		-0.726084, 0.263382, -0.635163,
		37.813526, 34.427551, 49.085331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313503, 33.569321, 49.283634>,  <38.321785, 34.243183, 49.529945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313503, 33.569321, 49.283634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.222263, 33.183861, 49.228001>,  <38.167519, 32.952583, 49.194622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.222263, 33.183861, 49.228001>,  <38.313503, 33.569321, 49.283634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222263, 33.183861, 49.228001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939567, 0.255316, -0.228097,
		0.255316, 0.078650, -0.963653,
		0.228097, 0.963653, 0.139083,
		38.153835, 32.894764, 49.186275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817947, 33.679428, 48.712078>,  <38.313503, 33.569321, 49.283634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817947, 33.679428, 48.712078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755962, 33.307339, 48.845150>,  <37.718773, 33.084087, 48.924995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755962, 33.307339, 48.845150>,  <37.817947, 33.679428, 48.712078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755962, 33.307339, 48.845150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970627, 0.080621, -0.226680,
		0.184041, -0.358038, -0.915389,
		-0.154960, -0.930220, 0.332683,
		37.709473, 33.028275, 48.944954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319710, 33.448921, 48.297264>,  <37.817947, 33.679428, 48.712078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319710, 33.448921, 48.297264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314724, 33.188732, 48.601032>,  <37.311733, 33.032619, 48.783295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314724, 33.188732, 48.601032>,  <37.319710, 33.448921, 48.297264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314724, 33.188732, 48.601032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970305, -0.175609, -0.166343,
		0.241564, -0.738947, -0.628971,
		-0.012466, -0.650476, 0.759425,
		37.310986, 32.993591, 48.828861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053841, 32.815727, 48.027172>,  <37.319710, 33.448921, 48.297264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053841, 32.815727, 48.027172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.977375, 32.788578, 48.418854>,  <36.931496, 32.772289, 48.653862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.977375, 32.788578, 48.418854>,  <37.053841, 32.815727, 48.027172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977375, 32.788578, 48.418854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960109, -0.194482, -0.200917,
		0.204076, -0.978555, -0.027989,
		-0.191165, -0.067875, 0.979208,
		36.920025, 32.768215, 48.712616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771740, 32.127609, 48.227173>,  <37.053841, 32.815727, 48.027172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771740, 32.127609, 48.227173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671474, 32.380730, 48.520222>,  <36.611313, 32.532600, 48.696049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671474, 32.380730, 48.520222>,  <36.771740, 32.127609, 48.227173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671474, 32.380730, 48.520222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935818, -0.352118, -0.016050,
		0.247811, -0.689621, 0.680451,
		-0.250667, 0.632801, 0.732618,
		36.596275, 32.570568, 48.740005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265690, 31.836803, 48.559708>,  <36.771740, 32.127609, 48.227173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265690, 31.836803, 48.559708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.198116, 32.194408, 48.725697>,  <36.157570, 32.408970, 48.825291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.198116, 32.194408, 48.725697>,  <36.265690, 31.836803, 48.559708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198116, 32.194408, 48.725697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963283, -0.060621, -0.261556,
		-0.208678, -0.443925, 0.871426,
		-0.168938, 0.894011, 0.414975,
		36.147434, 32.462612, 48.850189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687691, 31.701595, 48.927803>,  <36.265690, 31.836803, 48.559708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687691, 31.701595, 48.927803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.674343, 32.101063, 48.943535>,  <35.666336, 32.340744, 48.952976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.674343, 32.101063, 48.943535>,  <35.687691, 31.701595, 48.927803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674343, 32.101063, 48.943535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960100, -0.021097, -0.278861,
		-0.277660, -0.047070, 0.959526,
		-0.033369, 0.998669, 0.039334,
		35.664333, 32.400665, 48.955334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061035, 31.866259, 49.202641>,  <35.687691, 31.701595, 48.927803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061035, 31.866259, 49.202641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.167572, 32.200352, 49.010204>,  <35.231495, 32.400806, 48.894741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.167572, 32.200352, 49.010204>,  <35.061035, 31.866259, 49.202641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167572, 32.200352, 49.010204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917611, 0.066935, -0.391805,
		-0.295046, 0.545810, 0.784244,
		0.266345, 0.835231, -0.481092,
		35.247475, 32.450920, 48.865875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516682, 32.303478, 49.324951>,  <35.061035, 31.866259, 49.202641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516682, 32.303478, 49.324951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.698330, 32.453472, 49.001678>,  <34.807320, 32.543468, 48.807713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.698330, 32.453472, 49.001678>,  <34.516682, 32.303478, 49.324951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698330, 32.453472, 49.001678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886834, 0.103251, -0.450406,
		-0.085450, 0.921263, 0.379438,
		0.454120, 0.374985, -0.808184,
		34.834564, 32.565968, 48.759224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175343, 32.915409, 49.134132>,  <34.516682, 32.303478, 49.324951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175343, 32.915409, 49.134132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.356300, 32.800797, 48.796318>,  <34.464874, 32.732029, 48.593632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.356300, 32.800797, 48.796318>,  <34.175343, 32.915409, 49.134132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356300, 32.800797, 48.796318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852784, 0.138106, -0.503673,
		0.260953, 0.948064, -0.181871,
		0.452396, -0.286532, -0.844533,
		34.492020, 32.714836, 48.542957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057625, 33.422733, 48.800034>,  <34.175343, 32.915409, 49.134132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057625, 33.422733, 48.800034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.130051, 33.135109, 48.531654>,  <34.173504, 32.962536, 48.370625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.130051, 33.135109, 48.531654>,  <34.057625, 33.422733, 48.800034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130051, 33.135109, 48.531654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924099, 0.109063, -0.366260,
		0.336538, 0.686340, -0.644733,
		0.181062, -0.719057, -0.670950,
		34.184368, 32.919392, 48.330368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.891649, 33.351536, 53.942394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.240149, 33.537655, 54.004917>,  <30.449247, 33.649326, 54.042431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.240149, 33.537655, 54.004917>,  <29.891649, 33.351536, 53.942394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240149, 33.537655, 54.004917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291760, -0.234835, -0.927216,
		-0.394722, 0.853437, -0.340353,
		0.871247, 0.465294, 0.156304,
		30.501522, 33.677242, 54.051807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010059, 33.791012, 53.396576>,  <29.891649, 33.351536, 53.942394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010059, 33.791012, 53.396576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.387547, 33.751007, 53.522682>,  <30.614038, 33.727005, 53.598347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.387547, 33.751007, 53.522682>,  <30.010059, 33.791012, 53.396576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387547, 33.751007, 53.522682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265236, -0.340630, -0.902009,
		0.197605, 0.934863, -0.294931,
		0.943717, -0.100015, 0.315269,
		30.670662, 33.721001, 53.617264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527626, 34.074017, 52.829456>,  <30.010059, 33.791012, 53.396576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527626, 34.074017, 52.829456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.776003, 33.872074, 53.069305>,  <30.925030, 33.750908, 53.213215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.776003, 33.872074, 53.069305>,  <30.527626, 34.074017, 52.829456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776003, 33.872074, 53.069305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550987, -0.262979, -0.791994,
		0.557535, 0.822167, 0.114877,
		0.620941, -0.504860, 0.599623,
		30.962286, 33.720615, 53.249191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295763, 34.141773, 52.670696>,  <30.527626, 34.074017, 52.829456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295763, 34.141773, 52.670696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.260281, 33.784874, 52.847797>,  <31.238991, 33.570736, 52.954056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.260281, 33.784874, 52.847797>,  <31.295763, 34.141773, 52.670696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260281, 33.784874, 52.847797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673217, -0.381309, -0.633547,
		0.734105, 0.241868, 0.634499,
		-0.088706, -0.892246, 0.442751,
		31.233669, 33.517200, 52.980621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956614, 33.863739, 52.710434>,  <31.295763, 34.141773, 52.670696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956614, 33.863739, 52.710434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.714159, 33.545712, 52.719112>,  <31.568686, 33.354897, 52.724319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.714159, 33.545712, 52.719112>,  <31.956614, 33.863739, 52.710434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714159, 33.545712, 52.719112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587016, -0.465595, -0.662294,
		0.536667, -0.388705, 0.748930,
		-0.606135, -0.795065, 0.021694,
		31.532318, 33.307194, 52.725620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443577, 33.483292, 52.580524>,  <31.956614, 33.863739, 52.710434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443577, 33.483292, 52.580524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112755, 33.266304, 52.521599>,  <31.914261, 33.136112, 52.486244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112755, 33.266304, 52.521599>,  <32.443577, 33.483292, 52.580524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112755, 33.266304, 52.521599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508575, -0.610510, -0.607148,
		0.239425, -0.577065, 0.780814,
		-0.827059, -0.542469, -0.147310,
		31.864637, 33.103565, 52.477406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668430, 32.817432, 52.614513>,  <32.443577, 33.483292, 52.580524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668430, 32.817432, 52.614513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.317493, 32.789810, 52.424568>,  <32.106930, 32.773235, 52.310600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.317493, 32.789810, 52.424568>,  <32.668430, 32.817432, 52.614513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317493, 32.789810, 52.424568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414675, -0.607085, -0.677859,
		-0.241470, -0.791630, 0.561260,
		-0.877346, -0.069058, -0.474862,
		32.054291, 32.769093, 52.282108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612251, 32.163239, 52.363636>,  <32.668430, 32.817432, 52.614513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612251, 32.163239, 52.363636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.351665, 32.348221, 52.123058>,  <32.195312, 32.459209, 51.978714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.351665, 32.348221, 52.123058>,  <32.612251, 32.163239, 52.363636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351665, 32.348221, 52.123058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428120, -0.430391, -0.794655,
		-0.626347, -0.775177, 0.082399,
		-0.651463, 0.462453, -0.601443,
		32.156227, 32.486958, 51.942627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397884, 31.626902, 51.818905>,  <32.612251, 32.163239, 52.363636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397884, 31.626902, 51.818905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.343201, 31.992167, 51.665310>,  <32.310390, 32.211327, 51.573154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.343201, 31.992167, 51.665310>,  <32.397884, 31.626902, 51.818905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343201, 31.992167, 51.665310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375877, -0.310819, -0.872988,
		-0.916530, -0.263678, -0.300744,
		-0.136711, 0.913162, -0.383985,
		32.302189, 32.266113, 51.550114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029179, 31.522533, 51.107582>,  <32.397884, 31.626902, 51.818905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029179, 31.522533, 51.107582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.227642, 31.869684, 51.117489>,  <32.346722, 32.077976, 51.123432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.227642, 31.869684, 51.117489>,  <32.029179, 31.522533, 51.107582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227642, 31.869684, 51.117489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406051, -0.206732, -0.890160,
		-0.767428, 0.451722, -0.454974,
		0.496163, 0.867876, 0.024770,
		32.376492, 32.130047, 51.124920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832199, 31.860777, 50.490192>,  <32.029179, 31.522533, 51.107582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832199, 31.860777, 50.490192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.185410, 32.001385, 50.614578>,  <32.397335, 32.085751, 50.689209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.185410, 32.001385, 50.614578>,  <31.832199, 31.860777, 50.490192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185410, 32.001385, 50.614578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410566, -0.257564, -0.874698,
		-0.227379, 0.900053, -0.371757,
		0.883026, 0.351519, 0.310967,
		32.450317, 32.106842, 50.707867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040413, 32.285343, 50.047905>,  <31.832199, 31.860777, 50.490192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040413, 32.285343, 50.047905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403286, 32.218636, 50.202419>,  <32.621010, 32.178612, 50.295128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403286, 32.218636, 50.202419>,  <32.040413, 32.285343, 50.047905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403286, 32.218636, 50.202419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377594, -0.082295, -0.922307,
		0.185602, 0.982556, -0.011686,
		0.907180, -0.166769, 0.386282,
		32.675438, 32.168606, 50.318302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991714, 32.802017, 49.468048>,  <32.040413, 32.285343, 50.047905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991714, 32.802017, 49.468048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.922588, 33.162594, 49.309284>,  <31.881113, 33.378941, 49.214027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.922588, 33.162594, 49.309284>,  <31.991714, 32.802017, 49.468048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922588, 33.162594, 49.309284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968137, -0.229609, -0.099956,
		-0.181238, 0.366986, 0.912400,
		-0.172814, 0.901444, -0.396906,
		31.870745, 33.433025, 49.190212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431366, 32.907589, 49.121288>,  <31.991714, 32.802017, 49.468048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431366, 32.907589, 49.121288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823227, 32.977737, 49.082241>,  <32.058342, 33.019825, 49.058815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823227, 32.977737, 49.082241>,  <31.431366, 32.907589, 49.121288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823227, 32.977737, 49.082241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200704, 0.857238, -0.474195,
		0.000522, 0.484138, 0.874992,
		0.979652, 0.175367, -0.097616,
		32.117123, 33.030346, 49.052956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952570, 33.295486, 48.657040>,  <31.431366, 32.907589, 49.121288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952570, 33.295486, 48.657040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051868, 33.477520, 48.314980>,  <31.111448, 33.586739, 48.109745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051868, 33.477520, 48.314980>,  <30.952570, 33.295486, 48.657040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051868, 33.477520, 48.314980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255612, 0.882266, 0.395308,
		0.934363, 0.120451, 0.335345,
		0.248249, 0.455079, -0.855146,
		31.126343, 33.614044, 48.058437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453249, 33.816795, 48.795185>,  <30.952570, 33.295486, 48.657040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453249, 33.816795, 48.795185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.291142, 33.925426, 48.446014>,  <31.193878, 33.990604, 48.236511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.291142, 33.925426, 48.446014>,  <31.453249, 33.816795, 48.795185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291142, 33.925426, 48.446014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044248, 0.947912, 0.315445,
		0.913127, 0.166465, -0.372141,
		-0.405267, 0.271574, -0.872930,
		31.169561, 34.006897, 48.184135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786987, 34.333038, 48.385872>,  <31.453249, 33.816795, 48.795185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786987, 34.333038, 48.385872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.390717, 34.354362, 48.335728>,  <31.152954, 34.367157, 48.305641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.390717, 34.354362, 48.335728>,  <31.786987, 34.333038, 48.385872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390717, 34.354362, 48.335728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002340, 0.926773, 0.375615,
		0.136200, 0.371821, -0.918259,
		-0.990679, 0.053308, -0.125356,
		31.093513, 34.370354, 48.298122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666084, 35.023125, 48.270046>,  <31.786987, 34.333038, 48.385872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666084, 35.023125, 48.270046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.281595, 34.913898, 48.285442>,  <31.050901, 34.848362, 48.294682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.281595, 34.913898, 48.285442>,  <31.666084, 35.023125, 48.270046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281595, 34.913898, 48.285442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236166, 0.887204, 0.396350,
		-0.142383, 0.371891, -0.917292,
		-0.961224, -0.273067, 0.038495,
		30.993227, 34.831978, 48.296989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281916, 35.595558, 48.078060>,  <31.666084, 35.023125, 48.270046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281916, 35.595558, 48.078060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996439, 35.393764, 48.272438>,  <30.825153, 35.272690, 48.389065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996439, 35.393764, 48.272438>,  <31.281916, 35.595558, 48.078060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996439, 35.393764, 48.272438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188346, 0.806415, 0.560554,
		-0.674664, 0.308536, -0.670547,
		-0.713690, -0.504481, 0.485948,
		30.782331, 35.242420, 48.418224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767031, 36.096054, 48.207253>,  <31.281916, 35.595558, 48.078060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767031, 36.096054, 48.207253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.680304, 35.812592, 48.475815>,  <30.628267, 35.642513, 48.636951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.680304, 35.812592, 48.475815>,  <30.767031, 36.096054, 48.207253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680304, 35.812592, 48.475815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023241, 0.691323, 0.722172,
		-0.975935, 0.140976, -0.166361,
		-0.216818, -0.708659, 0.671410,
		30.615257, 35.599995, 48.677238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215557, 36.379726, 48.517597>,  <30.767031, 36.096054, 48.207253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215557, 36.379726, 48.517597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.356630, 36.112442, 48.779625>,  <30.441275, 35.952072, 48.936840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.356630, 36.112442, 48.779625>,  <30.215557, 36.379726, 48.517597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356630, 36.112442, 48.779625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086446, 0.673789, 0.733849,
		-0.931742, -0.315443, 0.179868,
		0.352681, -0.668209, 0.655067,
		30.462435, 35.911980, 48.976147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657999, 36.364780, 49.067902>,  <30.215557, 36.379726, 48.517597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657999, 36.364780, 49.067902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.982452, 36.192242, 49.225887>,  <30.177124, 36.088718, 49.320679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.982452, 36.192242, 49.225887>,  <29.657999, 36.364780, 49.067902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982452, 36.192242, 49.225887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174319, 0.466323, 0.867269,
		-0.558279, -0.772322, 0.303057,
		0.811134, -0.431349, 0.394969,
		30.225792, 36.062836, 49.344379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487226, 35.988403, 49.725964>,  <29.657999, 36.364780, 49.067902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487226, 35.988403, 49.725964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870378, 36.102543, 49.738888>,  <30.100269, 36.171028, 49.746643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870378, 36.102543, 49.738888>,  <29.487226, 35.988403, 49.725964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870378, 36.102543, 49.738888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193019, 0.556435, 0.808161,
		0.212628, -0.780357, 0.588075,
		0.957879, 0.285347, 0.032310,
		30.157742, 36.188148, 49.748581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710154, 35.858517, 50.421726>,  <29.487226, 35.988403, 49.725964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710154, 35.858517, 50.421726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.992321, 36.113510, 50.297794>,  <30.161621, 36.266506, 50.223434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.992321, 36.113510, 50.297794>,  <29.710154, 35.858517, 50.421726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992321, 36.113510, 50.297794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074872, 0.367660, 0.926941,
		0.704825, -0.677080, 0.211624,
		0.705419, 0.637487, -0.309830,
		30.203947, 36.304756, 50.204845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263262, 35.862972, 50.931511>,  <29.710154, 35.858517, 50.421726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263262, 35.862972, 50.931511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.291611, 36.209080, 50.733002>,  <30.308620, 36.416744, 50.613895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.291611, 36.209080, 50.733002>,  <30.263262, 35.862972, 50.931511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291611, 36.209080, 50.733002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061824, 0.492753, 0.867970,
		0.995567, -0.092197, -0.018572,
		0.070873, 0.865271, -0.496269,
		30.312872, 36.468662, 50.584122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890984, 36.164707, 51.179680>,  <30.263262, 35.862972, 50.931511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890984, 36.164707, 51.179680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.666111, 36.467415, 51.046261>,  <30.531187, 36.649040, 50.966209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.666111, 36.467415, 51.046261>,  <30.890984, 36.164707, 51.179680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666111, 36.467415, 51.046261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059680, 0.365146, 0.929035,
		0.824859, 0.542190, -0.160114,
		-0.562179, 0.756768, -0.333552,
		30.497458, 36.694447, 50.946194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065996, 36.761204, 51.582581>,  <30.890984, 36.164707, 51.179680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065996, 36.761204, 51.582581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.730143, 36.887371, 51.405708>,  <30.528629, 36.963070, 51.299583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.730143, 36.887371, 51.405708>,  <31.065996, 36.761204, 51.582581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730143, 36.887371, 51.405708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194104, 0.586097, 0.786647,
		0.507284, 0.746325, -0.430884,
		-0.839635, 0.315417, -0.442182,
		30.478252, 36.981995, 51.273052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061144, 37.471809, 51.522499>,  <31.065996, 36.761204, 51.582581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061144, 37.471809, 51.522499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.671703, 37.380566, 51.525703>,  <30.438038, 37.325821, 51.527626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.671703, 37.380566, 51.525703>,  <31.061144, 37.471809, 51.522499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671703, 37.380566, 51.525703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138123, 0.616743, 0.774951,
		-0.181711, 0.753389, -0.631970,
		-0.973603, -0.228107, 0.008009,
		30.379622, 37.312134, 51.528107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622425, 37.757229, 51.118034>,  <31.061144, 37.471809, 51.522499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622425, 37.757229, 51.118034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.865576, 38.071301, 51.165325>,  <32.011467, 38.259743, 51.193699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.865576, 38.071301, 51.165325>,  <31.622425, 37.757229, 51.118034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865576, 38.071301, 51.165325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706238, -0.466588, -0.532469,
		-0.362922, 0.407171, -0.838152,
		0.607878, 0.785180, 0.118224,
		32.047939, 38.306854, 51.200794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908882, 37.830639, 50.489090>,  <31.622425, 37.757229, 51.118034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908882, 37.830639, 50.489090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.145142, 37.995697, 50.766464>,  <32.286896, 38.094734, 50.932888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.145142, 37.995697, 50.766464>,  <31.908882, 37.830639, 50.489090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145142, 37.995697, 50.766464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778023, -0.519181, -0.353739,
		0.214050, 0.748446, -0.627703,
		0.590646, 0.412650, 0.693439,
		32.322334, 38.119492, 50.974495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472626, 37.912800, 50.126907>,  <31.908882, 37.830639, 50.489090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472626, 37.912800, 50.126907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.571968, 37.945736, 50.512974>,  <32.631573, 37.965500, 50.744614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.571968, 37.945736, 50.512974>,  <32.472626, 37.912800, 50.126907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571968, 37.945736, 50.512974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758757, -0.635933, -0.140984,
		0.602171, 0.767338, -0.220415,
		0.248351, 0.082345, 0.965164,
		32.646473, 37.970440, 50.802525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091808, 38.245026, 50.131283>,  <32.472626, 37.912800, 50.126907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091808, 38.245026, 50.131283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.053558, 38.033291, 50.468483>,  <33.030609, 37.906250, 50.670803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.053558, 38.033291, 50.468483>,  <33.091808, 38.245026, 50.131283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053558, 38.033291, 50.468483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715554, -0.625280, -0.311462,
		0.691983, 0.573432, 0.438561,
		-0.095621, -0.529340, 0.843004,
		33.024872, 37.874489, 50.721386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714767, 38.078785, 50.263588>,  <33.091808, 38.245026, 50.131283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714767, 38.078785, 50.263588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.536781, 37.813469, 50.504272>,  <33.429989, 37.654282, 50.648682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.536781, 37.813469, 50.504272>,  <33.714767, 38.078785, 50.263588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536781, 37.813469, 50.504272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707738, -0.672143, -0.217558,
		0.548740, 0.329049, 0.768512,
		-0.444962, -0.663288, 0.601713,
		33.403294, 37.614483, 50.684788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202145, 37.833733, 50.646099>,  <33.714767, 38.078785, 50.263588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202145, 37.833733, 50.646099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.912182, 37.562214, 50.692986>,  <33.738205, 37.399303, 50.721119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.912182, 37.562214, 50.692986>,  <34.202145, 37.833733, 50.646099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912182, 37.562214, 50.692986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688453, -0.719679, 0.089973,
		0.023285, 0.145920, 0.989022,
		-0.724907, -0.678800, 0.117217,
		33.694710, 37.358574, 50.728149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511917, 37.433418, 51.230549>,  <34.202145, 37.833733, 50.646099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511917, 37.433418, 51.230549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.244431, 37.183376, 51.069519>,  <34.083939, 37.033352, 50.972900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.244431, 37.183376, 51.069519>,  <34.511917, 37.433418, 51.230549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244431, 37.183376, 51.069519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585467, -0.776451, 0.233137,
		-0.458315, -0.079793, 0.885201,
		-0.668712, -0.625106, -0.402575,
		34.043816, 36.995846, 50.948746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548012, 36.945583, 51.667118>,  <34.511917, 37.433418, 51.230549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548012, 36.945583, 51.667118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.378716, 36.781666, 51.343899>,  <34.277138, 36.683315, 51.149967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.378716, 36.781666, 51.343899>,  <34.548012, 36.945583, 51.667118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378716, 36.781666, 51.343899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675371, -0.737204, 0.020117,
		-0.603940, -0.537217, 0.588773,
		-0.423239, -0.409790, -0.808048,
		34.251743, 36.658730, 51.101486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398022, 36.182499, 51.803291>,  <34.548012, 36.945583, 51.667118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398022, 36.182499, 51.803291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.405567, 36.221371, 51.405258>,  <34.410095, 36.244694, 51.166435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.405567, 36.221371, 51.405258>,  <34.398022, 36.182499, 51.803291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405567, 36.221371, 51.405258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652956, -0.754908, -0.061346,
		-0.757161, -0.648591, -0.077700,
		0.018868, 0.097183, -0.995088,
		34.411228, 36.250526, 51.106731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282806, 35.455124, 51.607140>,  <34.398022, 36.182499, 51.803291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282806, 35.455124, 51.607140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437496, 35.663731, 51.302914>,  <34.530312, 35.788895, 51.120377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437496, 35.663731, 51.302914>,  <34.282806, 35.455124, 51.607140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437496, 35.663731, 51.302914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688171, -0.712218, -0.138446,
		-0.613892, -0.469859, -0.634326,
		0.386728, 0.521515, -0.760568,
		34.553516, 35.820187, 51.074745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314636, 35.042046, 51.052979>,  <34.282806, 35.455124, 51.607140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314636, 35.042046, 51.052979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.595402, 35.318001, 50.982128>,  <34.763863, 35.483574, 50.939617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.595402, 35.318001, 50.982128>,  <34.314636, 35.042046, 51.052979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595402, 35.318001, 50.982128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657083, -0.723167, -0.212772,
		-0.274878, 0.032963, -0.960914,
		0.701914, 0.689887, -0.177123,
		34.805977, 35.524967, 50.928989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706245, 34.758106, 50.456528>,  <34.314636, 35.042046, 51.052979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706245, 34.758106, 50.456528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.906384, 35.031055, 50.669701>,  <35.026466, 35.194824, 50.797604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.906384, 35.031055, 50.669701>,  <34.706245, 34.758106, 50.456528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906384, 35.031055, 50.669701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821975, -0.567764, -0.044736,
		0.272056, 0.460443, -0.844972,
		0.500343, 0.682375, 0.532936,
		35.056488, 35.235767, 50.829582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.673609, 41.466106, 55.516735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.301907, 41.486694, 55.370403>,  <30.078886, 41.499046, 55.282604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.301907, 41.486694, 55.370403>,  <30.673609, 41.466106, 55.516735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301907, 41.486694, 55.370403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283361, -0.536072, -0.795194,
		-0.237044, -0.842602, 0.483562,
		-0.929256, 0.051473, -0.365833,
		30.023130, 41.502136, 55.260654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553089, 40.860584, 55.301044>,  <30.673609, 41.466106, 55.516735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553089, 40.860584, 55.301044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.286896, 41.070251, 55.088486>,  <30.127180, 41.196053, 54.960953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.286896, 41.070251, 55.088486>,  <30.553089, 40.860584, 55.301044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286896, 41.070251, 55.088486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327631, -0.434550, -0.838942,
		-0.670662, -0.732405, 0.117454,
		-0.665485, 0.524165, -0.531395,
		30.087250, 41.227501, 54.929066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309397, 40.288490, 54.847584>,  <30.553089, 40.860584, 55.301044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309397, 40.288490, 54.847584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.149061, 40.616844, 54.684868>,  <30.052860, 40.813858, 54.587238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.149061, 40.616844, 54.684868>,  <30.309397, 40.288490, 54.847584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149061, 40.616844, 54.684868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158281, -0.375290, -0.913293,
		-0.902373, -0.430468, 0.020500,
		-0.400837, 0.820887, -0.406786,
		30.028811, 40.863110, 54.562832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825821, 40.129185, 54.400745>,  <30.309397, 40.288490, 54.847584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825821, 40.129185, 54.400745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.964993, 40.486774, 54.287788>,  <30.048496, 40.701328, 54.220013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.964993, 40.486774, 54.287788>,  <29.825821, 40.129185, 54.400745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964993, 40.486774, 54.287788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231886, -0.373917, -0.898006,
		-0.908391, 0.246958, -0.337398,
		0.347929, 0.893978, -0.282397,
		30.069370, 40.754967, 54.203068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447941, 40.289818, 53.742302>,  <29.825821, 40.129185, 54.400745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447941, 40.289818, 53.742302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769411, 40.527359, 53.757519>,  <29.962294, 40.669884, 53.766647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769411, 40.527359, 53.757519>,  <29.447941, 40.289818, 53.742302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769411, 40.527359, 53.757519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281552, -0.323154, -0.903493,
		-0.524249, 0.736824, -0.426911,
		0.803674, 0.593853, 0.038042,
		30.010513, 40.705517, 53.768932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409899, 40.537090, 53.037804>,  <29.447941, 40.289818, 53.742302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409899, 40.537090, 53.037804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.776680, 40.598141, 53.185261>,  <29.996750, 40.634769, 53.273735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.776680, 40.598141, 53.185261>,  <29.409899, 40.537090, 53.037804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776680, 40.598141, 53.185261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398312, -0.404074, -0.823451,
		0.023281, 0.901903, -0.431310,
		0.916954, 0.152626, 0.368646,
		30.051765, 40.643929, 53.295856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810932, 40.804493, 52.539219>,  <29.409899, 40.537090, 53.037804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810932, 40.804493, 52.539219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.102909, 40.662498, 52.772858>,  <30.278095, 40.577301, 52.913040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.102909, 40.662498, 52.772858>,  <29.810932, 40.804493, 52.539219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102909, 40.662498, 52.772858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471493, -0.357184, -0.806296,
		0.494852, 0.863948, -0.093352,
		0.729942, -0.354983, 0.584099,
		30.321892, 40.556004, 52.948086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373116, 40.832577, 52.043083>,  <29.810932, 40.804493, 52.539219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373116, 40.832577, 52.043083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.525539, 40.616474, 52.343193>,  <30.616995, 40.486813, 52.523258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.525539, 40.616474, 52.343193>,  <30.373116, 40.832577, 52.043083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525539, 40.616474, 52.343193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585757, -0.486781, -0.648022,
		0.715318, 0.686417, 0.130965,
		0.381062, -0.540256, 0.750277,
		30.639858, 40.454399, 52.568275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062786, 40.871742, 52.053635>,  <30.373116, 40.832577, 52.043083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062786, 40.871742, 52.053635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.008453, 40.516407, 52.229088>,  <30.975853, 40.303204, 52.334358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.008453, 40.516407, 52.229088>,  <31.062786, 40.871742, 52.053635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008453, 40.516407, 52.229088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666082, -0.409625, -0.623331,
		0.733406, 0.207495, 0.647350,
		-0.135833, -0.888343, 0.438630,
		30.967703, 40.249905, 52.360676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783590, 40.508354, 52.194004>,  <31.062786, 40.871742, 52.053635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783590, 40.508354, 52.194004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.502270, 40.224037, 52.198811>,  <31.333477, 40.053448, 52.201694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.502270, 40.224037, 52.198811>,  <31.783590, 40.508354, 52.194004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502270, 40.224037, 52.198811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643724, -0.643932, -0.413487,
		0.301639, -0.283072, 0.910431,
		-0.703302, -0.710790, 0.012014,
		31.291279, 40.010799, 52.202415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109402, 39.957520, 52.427757>,  <31.783590, 40.508354, 52.194004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109402, 39.957520, 52.427757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.796919, 39.779667, 52.252480>,  <31.609428, 39.672955, 52.147312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.796919, 39.779667, 52.252480>,  <32.109402, 39.957520, 52.427757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796919, 39.779667, 52.252480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591067, -0.752688, -0.290001,
		-0.200879, -0.485553, 0.850814,
		-0.781209, -0.444633, -0.438194,
		31.562555, 39.646278, 52.121021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203270, 39.338917, 52.493248>,  <32.109402, 39.957520, 52.427757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203270, 39.338917, 52.493248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.926592, 39.318172, 52.205120>,  <31.760584, 39.305725, 52.032242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.926592, 39.318172, 52.205120>,  <32.203270, 39.338917, 52.493248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926592, 39.318172, 52.205120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437406, -0.823748, -0.360714,
		-0.574656, -0.564578, 0.592470,
		-0.691698, -0.051864, -0.720322,
		31.719082, 39.302612, 51.989025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779478, 38.635193, 52.464573>,  <32.203270, 39.338917, 52.493248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779478, 38.635193, 52.464573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.798101, 38.783127, 52.093399>,  <31.809275, 38.871887, 51.870697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.798101, 38.783127, 52.093399>,  <31.779478, 38.635193, 52.464573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798101, 38.783127, 52.093399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405004, -0.856149, -0.320906,
		-0.913129, -0.360875, -0.189645,
		0.046557, 0.369835, -0.927930,
		31.812069, 38.894077, 51.815022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490309, 38.122723, 51.947105>,  <31.779478, 38.635193, 52.464573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490309, 38.122723, 51.947105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.715464, 38.392593, 51.756119>,  <31.850555, 38.554516, 51.641529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.715464, 38.392593, 51.756119>,  <31.490309, 38.122723, 51.947105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715464, 38.392593, 51.756119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486489, -0.737442, -0.468516,
		-0.668198, 0.031440, -0.743319,
		0.562885, 0.674678, -0.477462,
		31.884329, 38.594997, 51.612881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688766, 37.984985, 51.858604>,  <31.490309, 38.122723, 51.947105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688766, 37.984985, 51.858604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.362862, 37.759968, 51.802444>,  <30.167318, 37.624958, 51.768749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.362862, 37.759968, 51.802444>,  <30.688766, 37.984985, 51.858604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362862, 37.759968, 51.802444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486602, 0.531781, 0.693129,
		-0.315253, 0.633052, -0.707008,
		-0.814760, -0.562542, -0.140399,
		30.118433, 37.591206, 51.760326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172817, 38.449150, 51.809017>,  <30.688766, 37.984985, 51.858604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172817, 38.449150, 51.809017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.991903, 38.110928, 51.922489>,  <29.883354, 37.907993, 51.990574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.991903, 38.110928, 51.922489>,  <30.172817, 38.449150, 51.809017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991903, 38.110928, 51.922489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554297, 0.515681, 0.653320,
		-0.698708, 0.138242, -0.701923,
		-0.452285, -0.845554, 0.283684,
		29.856218, 37.857262, 52.007595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447771, 38.571747, 51.772839>,  <30.172817, 38.449150, 51.809017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447771, 38.571747, 51.772839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.514208, 38.277760, 52.035820>,  <29.554070, 38.101368, 52.193607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.514208, 38.277760, 52.035820>,  <29.447771, 38.571747, 51.772839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514208, 38.277760, 52.035820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640972, 0.426191, 0.638370,
		-0.749379, -0.527434, -0.400306,
		0.166091, -0.734966, 0.657449,
		29.564035, 38.057270, 52.233055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860537, 38.708908, 52.195026>,  <29.447771, 38.571747, 51.772839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860537, 38.708908, 52.195026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.078722, 38.440975, 52.396542>,  <29.209633, 38.280216, 52.517448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.078722, 38.440975, 52.396542>,  <28.860537, 38.708908, 52.195026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078722, 38.440975, 52.396542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379581, 0.338476, 0.861018,
		-0.747254, -0.660881, -0.069628,
		0.545463, -0.669828, 0.503785,
		29.242361, 38.240028, 52.547676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354450, 38.247513, 52.442478>,  <28.860537, 38.708908, 52.195026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354450, 38.247513, 52.442478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691990, 38.222599, 52.655659>,  <28.894514, 38.207649, 52.783569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691990, 38.222599, 52.655659>,  <28.354450, 38.247513, 52.442478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691990, 38.222599, 52.655659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486631, 0.329644, 0.809027,
		-0.226080, -0.942048, 0.247857,
		0.843847, -0.062290, 0.532956,
		28.945145, 38.203911, 52.815544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233267, 37.849789, 52.998013>,  <28.354450, 38.247513, 52.442478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233267, 37.849789, 52.998013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.568245, 38.045963, 53.094479>,  <28.769232, 38.163666, 53.152359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.568245, 38.045963, 53.094479>,  <28.233267, 37.849789, 52.998013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568245, 38.045963, 53.094479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430223, 0.319465, 0.844304,
		0.337037, -0.810810, 0.478532,
		0.837445, 0.490437, 0.241158,
		28.819479, 38.193092, 53.166828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388819, 37.661777, 53.690411>,  <28.233267, 37.849789, 52.998013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388819, 37.661777, 53.690411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.568754, 38.014385, 53.633057>,  <28.676716, 38.225952, 53.598644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.568754, 38.014385, 53.633057>,  <28.388819, 37.661777, 53.690411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568754, 38.014385, 53.633057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410153, 0.346525, 0.843620,
		0.793358, -0.320683, 0.517441,
		0.449841, 0.881523, -0.143389,
		28.703707, 38.278843, 53.590038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671556, 37.819084, 54.368576>,  <28.388819, 37.661777, 53.690411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671556, 37.819084, 54.368576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674162, 38.161961, 54.162590>,  <28.675724, 38.367687, 54.038998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674162, 38.161961, 54.162590>,  <28.671556, 37.819084, 54.368576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674162, 38.161961, 54.162590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384905, 0.477445, 0.789870,
		0.922933, 0.193068, 0.333046,
		0.006512, 0.857188, -0.514962,
		28.676115, 38.419117, 54.008102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915836, 38.391682, 54.825146>,  <28.671556, 37.819084, 54.368576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915836, 38.391682, 54.825146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.692656, 38.556419, 54.536957>,  <28.558746, 38.655262, 54.364044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.692656, 38.556419, 54.536957>,  <28.915836, 38.391682, 54.825146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692656, 38.556419, 54.536957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400694, 0.626569, 0.668472,
		0.726728, 0.661664, -0.184574,
		-0.557952, 0.411840, -0.720470,
		28.525270, 38.679970, 54.320816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967838, 39.092216, 54.894131>,  <28.915836, 38.391682, 54.825146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967838, 39.092216, 54.894131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.652657, 39.089981, 54.647846>,  <28.463547, 39.088638, 54.500076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.652657, 39.089981, 54.647846>,  <28.967838, 39.092216, 54.894131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652657, 39.089981, 54.647846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359480, 0.816026, 0.452632,
		0.499902, 0.577989, -0.645001,
		-0.787954, -0.005593, -0.615709,
		28.416271, 39.088303, 54.463135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730503, 39.819424, 54.589012>,  <28.967838, 39.092216, 54.894131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730503, 39.819424, 54.589012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.397264, 39.598175, 54.588348>,  <28.197321, 39.465424, 54.587948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.397264, 39.598175, 54.588348>,  <28.730503, 39.819424, 54.589012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397264, 39.598175, 54.588348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435545, 0.654139, 0.618388,
		-0.340958, 0.515901, -0.785872,
		-0.833096, -0.553126, -0.001664,
		28.147335, 39.432236, 54.587849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190767, 40.260910, 54.677513>,  <28.730503, 39.819424, 54.589012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190767, 40.260910, 54.677513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993025, 39.924644, 54.765965>,  <27.874378, 39.722885, 54.819035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993025, 39.924644, 54.765965>,  <28.190767, 40.260910, 54.677513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993025, 39.924644, 54.765965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501826, 0.483725, 0.717064,
		-0.709775, 0.243517, -0.660998,
		-0.494358, -0.840660, 0.221133,
		27.844717, 39.672447, 54.832306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441841, 40.458363, 54.798515>,  <28.190767, 40.260910, 54.677513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441841, 40.458363, 54.798515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.484076, 40.106125, 54.983299>,  <27.509417, 39.894783, 55.094170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.484076, 40.106125, 54.983299>,  <27.441841, 40.458363, 54.798515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484076, 40.106125, 54.983299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245219, 0.427151, 0.870293,
		-0.963701, -0.205173, -0.170836,
		0.105588, -0.880594, 0.461958,
		27.515751, 39.841946, 55.121887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864082, 40.368977, 55.163765>,  <27.441841, 40.458363, 54.798515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864082, 40.368977, 55.163765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135593, 40.152138, 55.361912>,  <27.298500, 40.022034, 55.480801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135593, 40.152138, 55.361912>,  <26.864082, 40.368977, 55.163765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135593, 40.152138, 55.361912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160922, 0.548373, 0.820604,
		-0.716493, -0.636725, 0.284989,
		0.678779, -0.542096, 0.495369,
		27.339228, 39.989510, 55.510521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.795807, 39.130802, 59.055786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.453991, 38.993393, 58.899960>,  <34.248901, 38.910950, 58.806461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.453991, 38.993393, 58.899960>,  <34.795807, 39.130802, 59.055786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453991, 38.993393, 58.899960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519367, -0.572696, -0.634254,
		-0.005227, -0.744321, 0.667801,
		-0.854536, -0.343518, -0.389569,
		34.197632, 38.890339, 58.783089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791245, 38.365162, 59.112770>,  <34.795807, 39.130802, 59.055786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791245, 38.365162, 59.112770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495613, 38.442291, 58.854599>,  <34.318233, 38.488567, 58.699696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495613, 38.442291, 58.854599>,  <34.791245, 38.365162, 59.112770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495613, 38.442291, 58.854599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338486, -0.722095, -0.603329,
		-0.582394, -0.664378, 0.468421,
		-0.739083, 0.192821, -0.645427,
		34.273888, 38.500137, 58.660973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389294, 37.669411, 58.956200>,  <34.791245, 38.365162, 59.112770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389294, 37.669411, 58.956200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.361786, 37.928104, 58.652355>,  <34.345284, 38.083321, 58.470051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.361786, 37.928104, 58.652355>,  <34.389294, 37.669411, 58.956200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361786, 37.928104, 58.652355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341497, -0.700151, -0.627032,
		-0.937364, -0.302522, -0.172712,
		-0.068767, 0.646737, -0.759606,
		34.341156, 38.122124, 58.424473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151970, 37.310570, 58.464993>,  <34.389294, 37.669411, 58.956200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151970, 37.310570, 58.464993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.305115, 37.622017, 58.266129>,  <34.397003, 37.808884, 58.146809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.305115, 37.622017, 58.266129>,  <34.151970, 37.310570, 58.464993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305115, 37.622017, 58.266129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344730, -0.619709, -0.705069,
		-0.857075, 0.098559, -0.505677,
		0.382863, 0.778619, -0.497160,
		34.419975, 37.855602, 58.116982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821022, 37.248543, 57.819683>,  <34.151970, 37.310570, 58.464993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821022, 37.248543, 57.819683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140682, 37.479244, 57.751904>,  <34.332478, 37.617664, 57.711235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140682, 37.479244, 57.751904>,  <33.821022, 37.248543, 57.819683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140682, 37.479244, 57.751904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293204, -0.620062, -0.727704,
		-0.524772, 0.531865, -0.664631,
		0.799153, 0.576751, -0.169446,
		34.380428, 37.652271, 57.701069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859730, 37.306454, 57.081924>,  <33.821022, 37.248543, 57.819683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859730, 37.306454, 57.081924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.223648, 37.405727, 57.214993>,  <34.442001, 37.465290, 57.294834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.223648, 37.405727, 57.214993>,  <33.859730, 37.306454, 57.081924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223648, 37.405727, 57.214993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414423, -0.499186, -0.760965,
		-0.022791, 0.830193, -0.557010,
		0.909799, 0.248181, 0.332674,
		34.496590, 37.480183, 57.314796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202534, 37.591011, 56.509792>,  <33.859730, 37.306454, 57.081924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202534, 37.591011, 56.509792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486118, 37.475418, 56.767120>,  <34.656269, 37.406063, 56.921516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486118, 37.475418, 56.767120>,  <34.202534, 37.591011, 56.509792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486118, 37.475418, 56.767120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435850, -0.537600, -0.721818,
		0.554442, 0.792133, -0.255185,
		0.708963, -0.288984, 0.643319,
		34.698807, 37.388721, 56.960117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750889, 37.506294, 56.139996>,  <34.202534, 37.591011, 56.509792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750889, 37.506294, 56.139996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.878868, 37.343670, 56.482304>,  <34.955654, 37.246094, 56.687687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.878868, 37.343670, 56.482304>,  <34.750889, 37.506294, 56.139996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878868, 37.343670, 56.482304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633055, -0.580283, -0.512359,
		0.704895, 0.705677, 0.071716,
		0.319945, -0.406559, 0.855771,
		34.974850, 37.221703, 56.739037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405724, 37.310692, 56.008766>,  <34.750889, 37.506294, 56.139996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405724, 37.310692, 56.008766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312569, 37.082497, 56.323803>,  <35.256676, 36.945580, 56.512825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312569, 37.082497, 56.323803>,  <35.405724, 37.310692, 56.008766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312569, 37.082497, 56.323803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506697, -0.762435, -0.402432,
		0.830072, 0.305349, 0.466628,
		-0.232891, -0.570487, 0.787595,
		35.242702, 36.911350, 56.560081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010475, 37.182606, 56.436539>,  <35.405724, 37.310692, 56.008766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010475, 37.182606, 56.436539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.747974, 36.888462, 56.504158>,  <35.590473, 36.711975, 56.544731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.747974, 36.888462, 56.504158>,  <36.010475, 37.182606, 56.436539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747974, 36.888462, 56.504158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602768, -0.645692, -0.468778,
		0.453875, -0.205739, 0.866989,
		-0.656253, -0.735360, 0.169051,
		35.551098, 36.667854, 56.554874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465218, 36.596226, 56.506531>,  <36.010475, 37.182606, 56.436539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465218, 36.596226, 56.506531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.108112, 36.418270, 56.478100>,  <35.893848, 36.311497, 56.461040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.108112, 36.418270, 56.478100>,  <36.465218, 36.596226, 56.506531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108112, 36.418270, 56.478100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433818, -0.806310, -0.402077,
		0.121569, -0.389793, 0.912843,
		-0.892761, -0.444888, -0.071077,
		35.840282, 36.284805, 56.456776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629635, 35.914322, 56.606651>,  <36.465218, 36.596226, 56.506531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629635, 35.914322, 56.606651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.265766, 35.909054, 56.440601>,  <36.047443, 35.905891, 56.340973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.265766, 35.909054, 56.440601>,  <36.629635, 35.914322, 56.606651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265766, 35.909054, 56.440601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242147, -0.828871, -0.504320,
		-0.337437, -0.559285, 0.757190,
		-0.909671, -0.013175, -0.415120,
		35.992867, 35.905102, 56.316067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412193, 35.181583, 56.636326>,  <36.629635, 35.914322, 56.606651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412193, 35.181583, 56.636326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.235317, 35.365387, 56.328217>,  <36.129192, 35.475670, 56.143353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.235317, 35.365387, 56.328217>,  <36.412193, 35.181583, 56.636326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235317, 35.365387, 56.328217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221193, -0.776403, -0.590145,
		-0.869218, -0.431336, 0.241679,
		-0.442191, 0.459507, -0.770273,
		36.102661, 35.503239, 56.097134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255955, 34.583607, 56.182621>,  <36.412193, 35.181583, 56.636326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255955, 34.583607, 56.182621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.208267, 34.910160, 55.956589>,  <36.179657, 35.106091, 55.820969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.208267, 34.910160, 55.956589>,  <36.255955, 34.583607, 56.182621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208267, 34.910160, 55.956589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407108, -0.478899, -0.777765,
		-0.905567, -0.322769, -0.275262,
		-0.119216, 0.816379, -0.565077,
		36.172501, 35.155075, 55.787067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453461, 34.618217, 56.287262>,  <36.255955, 34.583607, 56.182621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453461, 34.618217, 56.287262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.159496, 34.349533, 56.324577>,  <34.983116, 34.188324, 56.346966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.159496, 34.349533, 56.324577>,  <35.453461, 34.618217, 56.287262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159496, 34.349533, 56.324577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306095, 0.451306, 0.838230,
		-0.605149, 0.587474, -0.537279,
		-0.734915, -0.671712, 0.093284,
		34.939022, 34.148018, 56.352562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776741, 35.000351, 56.244518>,  <35.453461, 34.618217, 56.287262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776741, 35.000351, 56.244518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.717499, 34.650757, 56.429653>,  <34.681953, 34.441002, 56.540733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.717499, 34.650757, 56.429653>,  <34.776741, 35.000351, 56.244518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717499, 34.650757, 56.429653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317883, 0.485235, 0.814554,
		-0.936491, -0.026491, -0.349689,
		-0.148103, -0.873982, 0.462839,
		34.673069, 34.388561, 56.568504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091949, 35.079056, 56.345829>,  <34.776741, 35.000351, 56.244518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091949, 35.079056, 56.345829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136818, 34.773464, 56.599998>,  <34.163738, 34.590111, 56.752499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136818, 34.773464, 56.599998>,  <34.091949, 35.079056, 56.345829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136818, 34.773464, 56.599998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551757, 0.483935, 0.679243,
		-0.826427, -0.426789, -0.367245,
		0.112171, -0.763975, 0.635421,
		34.170467, 34.544273, 56.790627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438812, 34.771549, 56.508129>,  <34.091949, 35.079056, 56.345829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438812, 34.771549, 56.508129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.702713, 34.715221, 56.803398>,  <33.861053, 34.681423, 56.980560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.702713, 34.715221, 56.803398>,  <33.438812, 34.771549, 56.508129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702713, 34.715221, 56.803398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590427, 0.510545, 0.625092,
		-0.464897, -0.848242, 0.253687,
		0.659748, -0.140820, 0.738175,
		33.900639, 34.672974, 57.024849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076458, 34.593105, 57.006004>,  <33.438812, 34.771549, 56.508129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076458, 34.593105, 57.006004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400711, 34.683426, 57.222115>,  <33.595261, 34.737617, 57.351780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400711, 34.683426, 57.222115>,  <33.076458, 34.593105, 57.006004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400711, 34.683426, 57.222115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581295, 0.421484, 0.696022,
		-0.070550, -0.878273, 0.472926,
		0.810628, 0.225805, 0.540272,
		33.643898, 34.751167, 57.384197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893234, 34.414116, 57.663963>,  <33.076458, 34.593105, 57.006004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893234, 34.414116, 57.663963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206829, 34.655518, 57.722141>,  <33.394985, 34.800358, 57.757050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206829, 34.655518, 57.722141>,  <32.893234, 34.414116, 57.663963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206829, 34.655518, 57.722141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443539, 0.380629, 0.811415,
		0.434332, -0.700646, 0.566084,
		0.783983, 0.603504, 0.145444,
		33.442024, 34.836567, 57.765774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990833, 34.386818, 58.344204>,  <32.893234, 34.414116, 57.663963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990833, 34.386818, 58.344204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.169270, 34.729359, 58.240154>,  <33.276333, 34.934883, 58.177723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.169270, 34.729359, 58.240154>,  <32.990833, 34.386818, 58.344204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169270, 34.729359, 58.240154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414699, 0.455339, 0.787839,
		0.793113, -0.243574, 0.558251,
		0.446090, 0.856351, -0.260126,
		33.303097, 34.986263, 58.162117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279396, 34.752838, 58.932911>,  <32.990833, 34.386818, 58.344204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279396, 34.752838, 58.932911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232910, 35.028175, 58.646507>,  <33.205017, 35.193378, 58.474663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232910, 35.028175, 58.646507>,  <33.279396, 34.752838, 58.932911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232910, 35.028175, 58.646507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409629, 0.623515, 0.665908,
		0.904819, 0.370690, 0.209502,
		-0.116218, 0.688344, -0.716014,
		33.198044, 35.234680, 58.431702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572178, 35.382732, 59.266491>,  <33.279396, 34.752838, 58.932911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572178, 35.382732, 59.266491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361961, 35.513596, 58.952351>,  <33.235832, 35.592113, 58.763866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361961, 35.513596, 58.952351>,  <33.572178, 35.382732, 59.266491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361961, 35.513596, 58.952351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442083, 0.683678, 0.580644,
		0.726889, 0.652342, -0.214669,
		-0.525542, 0.327162, -0.785347,
		33.204300, 35.611744, 58.716747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717270, 36.166500, 59.185253>,  <33.572178, 35.382732, 59.266491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717270, 36.166500, 59.185253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364525, 36.072166, 59.021935>,  <33.152878, 36.015568, 58.923943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364525, 36.072166, 59.021935>,  <33.717270, 36.166500, 59.185253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364525, 36.072166, 59.021935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445707, 0.699463, 0.558656,
		0.153835, 0.674636, -0.721942,
		-0.881861, -0.235834, -0.408293,
		33.099968, 36.001415, 58.899448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453125, 36.816303, 59.003105>,  <33.717270, 36.166500, 59.185253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453125, 36.816303, 59.003105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.142612, 36.564152, 59.004353>,  <32.956306, 36.412861, 59.005100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.142612, 36.564152, 59.004353>,  <33.453125, 36.816303, 59.003105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142612, 36.564152, 59.004353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548289, 0.677615, 0.490119,
		-0.311078, 0.378757, -0.871650,
		-0.776279, -0.630382, 0.003123,
		32.909729, 36.375038, 59.005291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824520, 37.177677, 58.846493>,  <33.453125, 36.816303, 59.003105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824520, 37.177677, 58.846493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648060, 36.846001, 58.983799>,  <32.542183, 36.646996, 59.066181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648060, 36.846001, 58.983799>,  <32.824520, 37.177677, 58.846493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648060, 36.846001, 58.983799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703753, 0.556987, 0.441018,
		-0.556883, -0.047020, -0.829259,
		-0.441150, -0.829189, 0.343267,
		32.515717, 36.597244, 59.086781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137707, 37.153801, 58.626095>,  <32.824520, 37.177677, 58.846493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137707, 37.153801, 58.626095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155945, 36.935524, 58.960793>,  <32.166889, 36.804558, 59.161610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155945, 36.935524, 58.960793>,  <32.137707, 37.153801, 58.626095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155945, 36.935524, 58.960793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535638, 0.693669, 0.481577,
		-0.843216, -0.470149, -0.260666,
		0.045597, -0.545696, 0.836742,
		32.169624, 36.771816, 59.211815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469055, 37.134727, 58.853767>,  <32.137707, 37.153801, 58.626095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469055, 37.134727, 58.853767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.704525, 37.061020, 59.168602>,  <31.845806, 37.016796, 59.357502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.704525, 37.061020, 59.168602>,  <31.469055, 37.134727, 58.853767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704525, 37.061020, 59.168602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372304, 0.802454, 0.466323,
		-0.717532, -0.567548, 0.403778,
		0.588674, -0.184273, 0.787088,
		31.881126, 37.005737, 59.404728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829674, 36.735821, 59.071331>,  <31.469055, 37.134727, 58.853767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829674, 36.735821, 59.071331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.535648, 36.820911, 58.813824>,  <30.359234, 36.871964, 58.659321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.535648, 36.820911, 58.813824>,  <30.829674, 36.735821, 59.071331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535648, 36.820911, 58.813824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258405, -0.789940, -0.556077,
		-0.626825, -0.575103, 0.525687,
		-0.735063, 0.212722, -0.643764,
		30.315130, 36.884727, 58.620693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552401, 36.033566, 58.900059>,  <30.829674, 36.735821, 59.071331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552401, 36.033566, 58.900059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.447567, 36.298985, 58.619770>,  <30.384666, 36.458237, 58.451595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.447567, 36.298985, 58.619770>,  <30.552401, 36.033566, 58.900059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447567, 36.298985, 58.619770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184323, -0.678318, -0.711273,
		-0.947279, -0.315573, 0.055469,
		-0.262084, 0.663550, -0.700723,
		30.368942, 36.498051, 58.409554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040384, 35.669617, 58.499100>,  <30.552401, 36.033566, 58.900059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040384, 35.669617, 58.499100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.195852, 35.945385, 58.254597>,  <30.289133, 36.110847, 58.107895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.195852, 35.945385, 58.254597>,  <30.040384, 35.669617, 58.499100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195852, 35.945385, 58.254597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056252, -0.679931, -0.731115,
		-0.919658, 0.249778, -0.303050,
		0.388670, 0.689424, -0.611254,
		30.312452, 36.152210, 58.071220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633419, 35.621559, 57.924873>,  <30.040384, 35.669617, 58.499100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633419, 35.621559, 57.924873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.956995, 35.815556, 57.791965>,  <30.151140, 35.931953, 57.712219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.956995, 35.815556, 57.791965>,  <29.633419, 35.621559, 57.924873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956995, 35.815556, 57.791965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058911, -0.629219, -0.774992,
		-0.584935, 0.607346, -0.537570,
		0.808938, 0.484989, -0.332273,
		30.199677, 35.961052, 57.692284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488401, 35.863140, 57.318371>,  <29.633419, 35.621559, 57.924873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488401, 35.863140, 57.318371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.888084, 35.853695, 57.331211>,  <30.127893, 35.848030, 57.338917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.888084, 35.853695, 57.331211>,  <29.488401, 35.863140, 57.318371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888084, 35.853695, 57.331211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016350, -0.491780, -0.870566,
		0.036341, 0.870400, -0.491003,
		0.999206, -0.023609, 0.032102,
		30.187845, 35.846611, 57.340843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759594, 36.178902, 56.697868>,  <29.488401, 35.863140, 57.318371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759594, 36.178902, 56.697868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.076149, 35.966778, 56.819511>,  <30.266083, 35.839504, 56.892498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.076149, 35.966778, 56.819511>,  <29.759594, 36.178902, 56.697868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076149, 35.966778, 56.819511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055839, -0.432675, -0.899819,
		0.608758, 0.729088, -0.312802,
		0.791389, -0.530305, 0.304106,
		30.313566, 35.807686, 56.910744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196913, 36.170044, 56.181026>,  <29.759594, 36.178902, 56.697868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196913, 36.170044, 56.181026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339556, 35.859062, 56.388256>,  <30.425140, 35.672474, 56.512592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339556, 35.859062, 56.388256>,  <30.196913, 36.170044, 56.181026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339556, 35.859062, 56.388256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224697, -0.466884, -0.855296,
		0.906832, 0.421413, 0.008198,
		0.356605, -0.777451, 0.518075,
		30.446537, 35.625828, 56.543678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735363, 36.043896, 55.791382>,  <30.196913, 36.170044, 56.181026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735363, 36.043896, 55.791382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.646650, 35.724854, 56.015751>,  <30.593422, 35.533428, 56.150372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.646650, 35.724854, 56.015751>,  <30.735363, 36.043896, 55.791382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646650, 35.724854, 56.015751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098850, -0.590675, -0.800832,
		0.970073, -0.122162, 0.209845,
		-0.221781, -0.797609, 0.560922,
		30.580116, 35.485573, 56.184029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244616, 35.569847, 55.648209>,  <30.735363, 36.043896, 55.791382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244616, 35.569847, 55.648209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.953911, 35.341881, 55.801579>,  <30.779488, 35.205101, 55.893600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.953911, 35.341881, 55.801579>,  <31.244616, 35.569847, 55.648209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953911, 35.341881, 55.801579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212252, -0.717208, -0.663748,
		0.653275, -0.401004, 0.642205,
		-0.726760, -0.569919, 0.383420,
		30.735882, 35.170906, 55.916603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549942, 34.768246, 55.798531>,  <31.244616, 35.569847, 55.648209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549942, 34.768246, 55.798531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.151070, 34.740288, 55.787636>,  <30.911745, 34.723515, 55.781097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.151070, 34.740288, 55.787636>,  <31.549942, 34.768246, 55.798531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151070, 34.740288, 55.787636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072933, -0.818446, -0.569936,
		0.017542, -0.570317, 0.821237,
		-0.997183, -0.069893, -0.027238,
		30.851915, 34.719318, 55.779465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413748, 34.071556, 55.733299>,  <31.549942, 34.768246, 55.798531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413748, 34.071556, 55.733299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.061974, 34.218689, 55.612442>,  <30.850908, 34.306969, 55.539928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.061974, 34.218689, 55.612442>,  <31.413748, 34.071556, 55.733299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061974, 34.218689, 55.612442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070013, -0.727780, -0.682227,
		-0.470841, -0.578821, 0.665789,
		-0.879436, 0.367835, -0.302144,
		30.798143, 34.329041, 55.521797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002016, 33.522751, 55.618427>,  <31.413748, 34.071556, 55.733299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002016, 33.522751, 55.618427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.853287, 33.825874, 55.403961>,  <30.764050, 34.007748, 55.275280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.853287, 33.825874, 55.403961>,  <31.002016, 33.522751, 55.618427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853287, 33.825874, 55.403961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165380, -0.514260, -0.841538,
		-0.913454, -0.401574, 0.065887,
		-0.371822, 0.757809, -0.536165,
		30.741739, 34.053219, 55.243111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436464, 33.234848, 55.237167>,  <31.002016, 33.522751, 55.618427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436464, 33.234848, 55.237167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.508739, 33.581421, 55.050987>,  <30.552105, 33.789364, 54.939278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.508739, 33.581421, 55.050987>,  <30.436464, 33.234848, 55.237167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508739, 33.581421, 55.050987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068713, -0.460967, -0.884753,
		-0.981137, 0.191849, -0.023757,
		0.180690, 0.866431, -0.465454,
		30.562946, 33.841351, 54.911350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062729, 33.182175, 54.641830>,  <30.436464, 33.234848, 55.237167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062729, 33.182175, 54.641830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.280802, 33.504871, 54.550671>,  <30.411646, 33.698490, 54.495975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.280802, 33.504871, 54.550671>,  <30.062729, 33.182175, 54.641830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280802, 33.504871, 54.550671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038304, -0.247595, -0.968106,
		-0.837441, 0.536526, -0.104083,
		0.545184, 0.806745, -0.227897,
		30.444357, 33.746895, 54.482300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.532627, 40.131416, 55.883968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.913572, 40.030548, 55.952568>,  <27.142139, 39.970028, 55.993729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.913572, 40.030548, 55.952568>,  <26.532627, 40.131416, 55.883968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913572, 40.030548, 55.952568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140122, 0.137660, 0.980518,
		-0.270863, -0.957842, 0.095768,
		0.952365, -0.252167, 0.171502,
		27.199282, 39.954899, 56.004017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435030, 39.947811, 56.621105>,  <26.532627, 40.131416, 55.883968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435030, 39.947811, 56.621105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.827415, 40.000225, 56.563774>,  <27.062847, 40.031673, 56.529373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.827415, 40.000225, 56.563774>,  <26.435030, 39.947811, 56.621105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827415, 40.000225, 56.563774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117532, 0.186951, 0.975313,
		0.154593, -0.973591, 0.167992,
		0.980963, 0.131032, -0.143330,
		27.121704, 40.039536, 56.520775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742380, 39.476578, 57.073318>,  <26.435030, 39.947811, 56.621105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742380, 39.476578, 57.073318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.975082, 39.786671, 56.974873>,  <27.114704, 39.972729, 56.915806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.975082, 39.786671, 56.974873>,  <26.742380, 39.476578, 57.073318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975082, 39.786671, 56.974873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224776, 0.137569, 0.964651,
		0.781690, -0.616509, -0.094223,
		0.581753, 0.775237, -0.246112,
		27.149609, 40.019241, 56.901039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289040, 39.516037, 57.547916>,  <26.742380, 39.476578, 57.073318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289040, 39.516037, 57.547916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.258686, 39.880081, 57.384972>,  <27.240473, 40.098507, 57.287205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.258686, 39.880081, 57.384972>,  <27.289040, 39.516037, 57.547916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258686, 39.880081, 57.384972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029746, 0.410423, 0.911410,
		0.996673, 0.057046, -0.058217,
		-0.075886, 0.910109, -0.407360,
		27.235920, 40.153114, 57.262764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630632, 39.940571, 58.076130>,  <27.289040, 39.516037, 57.547916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630632, 39.940571, 58.076130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.422054, 40.196362, 57.850151>,  <27.296907, 40.349834, 57.714565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.422054, 40.196362, 57.850151>,  <27.630632, 39.940571, 58.076130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422054, 40.196362, 57.850151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095563, 0.614152, 0.783381,
		0.847917, 0.462477, -0.259136,
		-0.521445, 0.639478, -0.564945,
		27.265621, 40.388206, 57.680668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990810, 40.580215, 58.081043>,  <27.630632, 39.940571, 58.076130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990810, 40.580215, 58.081043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.625011, 40.687122, 57.959545>,  <27.405531, 40.751266, 57.886646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.625011, 40.687122, 57.959545>,  <27.990810, 40.580215, 58.081043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625011, 40.687122, 57.959545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048821, 0.672368, 0.738605,
		0.401633, 0.690282, -0.601831,
		-0.914498, 0.267266, -0.303746,
		27.350662, 40.767303, 57.868420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848377, 41.325638, 58.224350>,  <27.990810, 40.580215, 58.081043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848377, 41.325638, 58.224350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.463356, 41.222267, 58.191597>,  <27.232344, 41.160244, 58.171947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.463356, 41.222267, 58.191597>,  <27.848377, 41.325638, 58.224350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463356, 41.222267, 58.191597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205854, 0.500269, 0.841044,
		-0.176385, 0.826407, -0.534734,
		-0.962555, -0.258424, -0.081880,
		27.174589, 41.144741, 58.167034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483589, 41.963707, 58.347008>,  <27.848377, 41.325638, 58.224350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483589, 41.963707, 58.347008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.235924, 41.660072, 58.427429>,  <27.087324, 41.477894, 58.475681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.235924, 41.660072, 58.427429>,  <27.483589, 41.963707, 58.347008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235924, 41.660072, 58.427429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233357, 0.422338, 0.875885,
		-0.749785, 0.495400, -0.438635,
		-0.619166, -0.759085, 0.201058,
		27.050175, 41.432346, 58.487747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952436, 42.218716, 58.618877>,  <27.483589, 41.963707, 58.347008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952436, 42.218716, 58.618877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.921556, 41.841896, 58.749466>,  <26.903028, 41.615803, 58.827820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.921556, 41.841896, 58.749466>,  <26.952436, 42.218716, 58.618877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921556, 41.841896, 58.749466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141499, 0.334487, 0.931717,
		-0.986924, 0.025732, -0.159121,
		-0.077199, -0.942049, 0.326472,
		26.898397, 41.559280, 58.847408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261631, 42.194187, 59.047401>,  <26.952436, 42.218716, 58.618877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261631, 42.194187, 59.047401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.485094, 41.883476, 59.163696>,  <26.619171, 41.697052, 59.233475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.485094, 41.883476, 59.163696>,  <26.261631, 42.194187, 59.047401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485094, 41.883476, 59.163696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307452, 0.131614, 0.942418,
		-0.770310, -0.615874, -0.165294,
		0.558655, -0.776774, 0.290736,
		26.652691, 41.650444, 59.250916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862995, 41.901794, 59.547745>,  <26.261631, 42.194187, 59.047401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862995, 41.901794, 59.547745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.227285, 41.748444, 59.609196>,  <26.445860, 41.656433, 59.646065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.227285, 41.748444, 59.609196>,  <25.862995, 41.901794, 59.547745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227285, 41.748444, 59.609196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141636, 0.059495, 0.988129,
		-0.387964, -0.921675, -0.000115,
		0.910727, -0.383374, 0.153624,
		26.500504, 41.633430, 59.655285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747372, 41.303295, 59.996536>,  <25.862995, 41.901794, 59.547745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747372, 41.303295, 59.996536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.129971, 41.409779, 60.044289>,  <26.359529, 41.473667, 60.072941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.129971, 41.409779, 60.044289>,  <25.747372, 41.303295, 59.996536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129971, 41.409779, 60.044289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167332, 0.165383, 0.971930,
		0.238990, -0.949622, 0.202733,
		0.956496, 0.266206, 0.119378,
		26.416920, 41.489639, 60.080101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038910, 41.032089, 60.601440>,  <25.747372, 41.303295, 59.996536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.038910, 41.032089, 60.601440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.277416, 41.350677, 60.561241>,  <26.420519, 41.541832, 60.537121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.277416, 41.350677, 60.561241>,  <26.038910, 41.032089, 60.601440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277416, 41.350677, 60.561241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183098, 0.256806, 0.948960,
		0.781629, -0.547431, 0.298958,
		0.596264, 0.796474, -0.100494,
		26.456295, 41.589619, 60.531094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269527, 40.477539, 61.140827>,  <26.038910, 41.032089, 60.601440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269527, 40.477539, 61.140827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.545284, 40.697098, 61.329910>,  <26.710739, 40.828835, 61.443359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.545284, 40.697098, 61.329910>,  <26.269527, 40.477539, 61.140827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545284, 40.697098, 61.329910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630890, -0.775629, -0.019445,
		0.355971, 0.311630, -0.881006,
		0.689393, 0.548896, 0.472706,
		26.752102, 40.861767, 61.471722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865396, 40.676517, 60.673618>,  <26.269527, 40.477539, 61.140827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865396, 40.676517, 60.673618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.950563, 40.606266, 61.058079>,  <27.001663, 40.564114, 61.288757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.950563, 40.606266, 61.058079>,  <26.865396, 40.676517, 60.673618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950563, 40.606266, 61.058079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564692, -0.780665, -0.267742,
		0.797364, 0.599763, -0.067039,
		0.212917, -0.175632, 0.961155,
		27.014439, 40.553577, 61.346424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532587, 40.731457, 60.776501>,  <26.865396, 40.676517, 60.673618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532587, 40.731457, 60.776501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.379244, 40.469051, 61.036556>,  <27.287239, 40.311607, 61.192589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.379244, 40.469051, 61.036556>,  <27.532587, 40.731457, 60.776501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379244, 40.469051, 61.036556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520074, -0.735039, -0.435018,
		0.763257, 0.171355, 0.622958,
		-0.383356, -0.656015, 0.650141,
		27.264236, 40.272247, 61.231598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089481, 40.498955, 61.126308>,  <27.532587, 40.731457, 60.776501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089481, 40.498955, 61.126308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.802015, 40.224556, 61.171783>,  <27.629536, 40.059917, 61.199070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.802015, 40.224556, 61.171783>,  <28.089481, 40.498955, 61.126308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802015, 40.224556, 61.171783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653273, -0.722100, -0.227611,
		0.238234, -0.089308, 0.967093,
		-0.718665, -0.686000, 0.113686,
		27.586416, 40.018757, 61.205891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402254, 39.884254, 61.397320>,  <28.089481, 40.498955, 61.126308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402254, 39.884254, 61.397320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.073229, 39.712044, 61.248707>,  <27.875813, 39.608719, 61.159538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.073229, 39.712044, 61.248707>,  <28.402254, 39.884254, 61.397320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073229, 39.712044, 61.248707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545011, -0.783325, -0.298940,
		-0.162325, -0.448384, 0.878978,
		-0.822565, -0.430527, -0.371528,
		27.826460, 39.582886, 61.137249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506678, 39.206814, 61.546700>,  <28.402254, 39.884254, 61.397320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506678, 39.206814, 61.546700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.266388, 39.248901, 61.229698>,  <28.122213, 39.274155, 61.039497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.266388, 39.248901, 61.229698>,  <28.506678, 39.206814, 61.546700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266388, 39.248901, 61.229698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502320, -0.721505, -0.476555,
		-0.621936, -0.684368, 0.380573,
		-0.600725, 0.105217, -0.792502,
		28.086170, 39.280468, 60.991947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467083, 38.550667, 61.406582>,  <28.506678, 39.206814, 61.546700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467083, 38.550667, 61.406582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.318258, 38.731468, 61.082294>,  <28.228964, 38.839951, 60.887722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.318258, 38.731468, 61.082294>,  <28.467083, 38.550667, 61.406582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318258, 38.731468, 61.082294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445057, -0.679602, -0.583152,
		-0.814551, -0.577785, 0.051687,
		-0.372063, 0.452003, -0.810718,
		28.206638, 38.867069, 60.839081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288790, 37.993645, 60.962891>,  <28.467083, 38.550667, 61.406582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288790, 37.993645, 60.962891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.313133, 38.291798, 60.697350>,  <28.327740, 38.470692, 60.538025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.313133, 38.291798, 60.697350>,  <28.288790, 37.993645, 60.962891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313133, 38.291798, 60.697350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409205, -0.625253, -0.664537,
		-0.910411, -0.231207, -0.343068,
		0.060859, 0.745387, -0.663848,
		28.331390, 38.515415, 60.498196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908869, 37.763958, 60.265995>,  <28.288790, 37.993645, 60.962891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908869, 37.763958, 60.265995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.175575, 38.055775, 60.205074>,  <28.335600, 38.230865, 60.168522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.175575, 38.055775, 60.205074>,  <27.908869, 37.763958, 60.265995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175575, 38.055775, 60.205074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475548, -0.573826, -0.666767,
		-0.573826, 0.372152, -0.729539,
		0.666767, 0.729539, -0.152300,
		28.375605, 38.274635, 60.159386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998634, 37.791950, 59.543343>,  <27.908869, 37.763958, 60.265995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998634, 37.791950, 59.543343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.309917, 37.964970, 59.725460>,  <28.496687, 38.068779, 59.834732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.309917, 37.964970, 59.725460>,  <27.998634, 37.791950, 59.543343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309917, 37.964970, 59.725460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606705, -0.330607, -0.722916,
		-0.162169, 0.838811, -0.519708,
		0.778210, 0.432544, 0.455297,
		28.543381, 38.094734, 59.862049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339203, 38.121296, 59.033295>,  <27.998634, 37.791950, 59.543343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339203, 38.121296, 59.033295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.624315, 38.067757, 59.308693>,  <28.795383, 38.035633, 59.473930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.624315, 38.067757, 59.308693>,  <28.339203, 38.121296, 59.033295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624315, 38.067757, 59.308693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622368, -0.331941, -0.708854,
		0.323422, 0.933755, -0.153296,
		0.712781, -0.133852, 0.688496,
		28.838150, 38.027599, 59.515244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936420, 38.534264, 58.837391>,  <28.339203, 38.121296, 59.033295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936420, 38.534264, 58.837391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.088951, 38.245026, 59.067772>,  <29.180470, 38.071484, 59.206001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.088951, 38.245026, 59.067772>,  <28.936420, 38.534264, 58.837391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088951, 38.245026, 59.067772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623887, -0.258449, -0.737543,
		0.682170, 0.640573, 0.352578,
		0.381326, -0.723098, 0.575951,
		29.203348, 38.028095, 59.240559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533682, 38.488304, 58.494080>,  <28.936420, 38.534264, 58.837391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533682, 38.488304, 58.494080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.576820, 38.172245, 58.735424>,  <29.602703, 37.982609, 58.880230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.576820, 38.172245, 58.735424>,  <29.533682, 38.488304, 58.494080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576820, 38.172245, 58.735424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616082, -0.423203, -0.664336,
		0.780264, 0.443363, 0.441154,
		0.107844, -0.790145, 0.603358,
		29.609173, 37.935200, 58.916431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322151, 38.241688, 58.548256>,  <29.533682, 38.488304, 58.494080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322151, 38.241688, 58.548256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.091576, 37.936592, 58.665524>,  <29.953230, 37.753536, 58.735882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.091576, 37.936592, 58.665524>,  <30.322151, 38.241688, 58.548256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091576, 37.936592, 58.665524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590737, -0.636866, -0.495410,
		0.564575, -0.112392, 0.817694,
		-0.576441, -0.762738, 0.293165,
		29.918644, 37.707771, 58.753471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818371, 37.715527, 58.812164>,  <30.322151, 38.241688, 58.548256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818371, 37.715527, 58.812164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.474451, 37.529289, 58.728291>,  <30.268099, 37.417545, 58.677967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.474451, 37.529289, 58.728291>,  <30.818371, 37.715527, 58.812164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474451, 37.529289, 58.728291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475486, -0.580299, -0.661186,
		0.186163, -0.668190, 0.720324,
		-0.859800, -0.465592, -0.209685,
		30.216511, 37.389610, 58.665386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094107, 37.434151, 59.413734>,  <30.818371, 37.715527, 58.812164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094107, 37.434151, 59.413734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.461086, 37.397774, 59.568661>,  <31.681274, 37.375946, 59.661617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.461086, 37.397774, 59.568661>,  <31.094107, 37.434151, 59.413734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461086, 37.397774, 59.568661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157078, 0.811638, 0.562647,
		-0.365529, -0.577039, 0.730352,
		0.917450, -0.090942, 0.387317,
		31.736320, 37.370491, 59.684856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975225, 37.272713, 60.130276>,  <31.094107, 37.434151, 59.413734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975225, 37.272713, 60.130276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.345320, 37.418510, 60.088169>,  <31.567377, 37.505989, 60.062904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.345320, 37.418510, 60.088169>,  <30.975225, 37.272713, 60.130276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345320, 37.418510, 60.088169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168864, 0.644115, 0.746057,
		0.339738, -0.672503, 0.657509,
		0.925237, 0.364493, -0.105269,
		31.622890, 37.527859, 60.056587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124891, 37.374081, 60.788612>,  <30.975225, 37.272713, 60.130276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124891, 37.374081, 60.788612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.363316, 37.607143, 60.567627>,  <31.506371, 37.746983, 60.435036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.363316, 37.607143, 60.567627>,  <31.124891, 37.374081, 60.788612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363316, 37.607143, 60.567627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089736, 0.732083, 0.675279,
		0.797910, -0.352930, 0.488651,
		0.596060, 0.582661, -0.552466,
		31.542133, 37.781940, 60.401886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683668, 37.685818, 61.234638>,  <31.124891, 37.374081, 60.788612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683668, 37.685818, 61.234638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.684311, 37.934834, 60.921604>,  <31.684696, 38.084244, 60.733784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.684311, 37.934834, 60.921604>,  <31.683668, 37.685818, 61.234638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684311, 37.934834, 60.921604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075203, 0.780449, 0.620681,
		0.997167, 0.057854, 0.048072,
		0.001609, 0.622537, -0.782588,
		31.684793, 38.121593, 60.686829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079327, 38.262150, 61.472755>,  <31.683668, 37.685818, 61.234638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079327, 38.262150, 61.472755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.875986, 38.406822, 61.160149>,  <31.753983, 38.493626, 60.972584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.875986, 38.406822, 61.160149>,  <32.079327, 38.262150, 61.472755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875986, 38.406822, 61.160149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243028, 0.810378, 0.533127,
		0.826145, 0.460946, -0.324058,
		-0.508352, 0.361685, -0.781513,
		31.723480, 38.515327, 60.925694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219101, 38.946522, 61.401894>,  <32.079327, 38.262150, 61.472755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219101, 38.946522, 61.401894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.873556, 38.917622, 61.202484>,  <31.666231, 38.900280, 61.082836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.873556, 38.917622, 61.202484>,  <32.219101, 38.946522, 61.401894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873556, 38.917622, 61.202484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318161, 0.845537, 0.428767,
		0.390543, 0.529005, -0.753412,
		-0.863858, -0.072254, -0.498527,
		31.614399, 38.895947, 61.052925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991922, 39.630299, 61.237381>,  <32.219101, 38.946522, 61.401894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991922, 39.630299, 61.237381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.656450, 39.412502, 61.242161>,  <31.455168, 39.281826, 61.245029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.656450, 39.412502, 61.242161>,  <31.991922, 39.630299, 61.237381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656450, 39.412502, 61.242161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478994, 0.747878, 0.459612,
		-0.259190, 0.379745, -0.888040,
		-0.838681, -0.544492, 0.011947,
		31.404846, 39.249153, 61.245747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846239, 39.967491, 60.617023>,  <31.991922, 39.630299, 61.237381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846239, 39.967491, 60.617023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.025021, 40.273197, 60.431065>,  <32.132290, 40.456619, 60.319489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.025021, 40.273197, 60.431065>,  <31.846239, 39.967491, 60.617023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025021, 40.273197, 60.431065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465293, -0.642483, -0.608866,
		-0.764026, 0.055819, -0.642766,
		0.446953, 0.764264, -0.464901,
		32.159107, 40.502476, 60.291595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756166, 39.862469, 59.930290>,  <31.846239, 39.967491, 60.617023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756166, 39.862469, 59.930290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.077526, 40.095016, 59.981754>,  <32.270344, 40.234547, 60.012634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.077526, 40.095016, 59.981754>,  <31.756166, 39.862469, 59.930290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077526, 40.095016, 59.981754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534214, -0.608328, -0.586986,
		-0.262991, 0.540316, -0.799308,
		0.803400, 0.581374, 0.128660,
		32.318546, 40.269428, 60.020351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158440, 39.787891, 59.260365>,  <31.756166, 39.862469, 59.930290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158440, 39.787891, 59.260365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.408440, 39.947258, 59.528885>,  <32.558441, 40.042877, 59.689995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.408440, 39.947258, 59.528885>,  <32.158440, 39.787891, 59.260365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408440, 39.947258, 59.528885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778244, -0.385103, -0.496016,
		0.060900, 0.832444, -0.550753,
		0.625002, 0.398413, 0.671297,
		32.595940, 40.066780, 59.730274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579613, 40.037796, 58.839268>,  <32.158440, 39.787891, 59.260365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579613, 40.037796, 58.839268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.807072, 40.003586, 59.166515>,  <32.943546, 39.983059, 59.362865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.807072, 40.003586, 59.166515>,  <32.579613, 40.037796, 58.839268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807072, 40.003586, 59.166515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654130, -0.556021, -0.512791,
		0.498748, 0.826756, -0.260238,
		0.568651, -0.085525, 0.818121,
		32.977669, 39.977928, 59.411953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214073, 40.220749, 58.620598>,  <32.579613, 40.037796, 58.839268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214073, 40.220749, 58.620598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.280300, 39.980286, 58.933315>,  <33.320034, 39.836006, 59.120945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.280300, 39.980286, 58.933315>,  <33.214073, 40.220749, 58.620598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280300, 39.980286, 58.933315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712475, -0.475203, -0.516295,
		0.681885, 0.642486, 0.349634,
		0.165565, -0.601160, 0.781790,
		33.329971, 39.799938, 59.167850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830730, 39.979965, 58.462296>,  <33.214073, 40.220749, 58.620598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830730, 39.979965, 58.462296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.727520, 39.727768, 58.755119>,  <33.665592, 39.576450, 58.930813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.727520, 39.727768, 58.755119>,  <33.830730, 39.979965, 58.462296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727520, 39.727768, 58.755119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557081, -0.716160, -0.420447,
		0.789357, 0.299328, 0.536022,
		-0.258026, -0.630490, 0.732056,
		33.650112, 39.538620, 58.974735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406292, 39.741554, 58.874027>,  <33.830730, 39.979965, 58.462296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406292, 39.741554, 58.874027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.117146, 39.465164, 58.872227>,  <33.943657, 39.299332, 58.871147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.117146, 39.465164, 58.872227>,  <34.406292, 39.741554, 58.874027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117146, 39.465164, 58.872227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583158, -0.606552, -0.540389,
		0.370667, -0.393252, 0.841403,
		-0.722864, -0.690976, -0.004499,
		33.900288, 39.257870, 58.870876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.509489, 43.237244, 59.579422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316650, 42.906841, 59.696239>,  <29.200947, 42.708599, 59.766331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316650, 42.906841, 59.696239>,  <29.509489, 43.237244, 59.579422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316650, 42.906841, 59.696239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017541, -0.324175, -0.945835,
		0.875943, -0.461105, 0.141794,
		-0.482095, -0.826011, 0.292047,
		29.172022, 42.659039, 59.783852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874853, 42.603722, 59.447922>,  <29.509489, 43.237244, 59.579422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874853, 42.603722, 59.447922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480574, 42.536720, 59.440567>,  <29.244005, 42.496521, 59.436153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480574, 42.536720, 59.440567>,  <29.874853, 42.603722, 59.447922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480574, 42.536720, 59.440567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105800, -0.530278, -0.841197,
		0.131155, -0.831113, 0.540417,
		-0.985700, -0.167504, -0.018383,
		29.184864, 42.486469, 59.435051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840717, 41.975658, 59.147560>,  <29.874853, 42.603722, 59.447922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840717, 41.975658, 59.147560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453526, 42.065830, 59.103374>,  <29.221210, 42.119934, 59.076862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453526, 42.065830, 59.103374>,  <29.840717, 41.975658, 59.147560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453526, 42.065830, 59.103374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043916, -0.585309, -0.809620,
		-0.247164, -0.778844, 0.576466,
		-0.967978, 0.225425, -0.110463,
		29.163132, 42.133457, 59.070236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516064, 41.388306, 58.881405>,  <29.840717, 41.975658, 59.147560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516064, 41.388306, 58.881405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284142, 41.698982, 58.782955>,  <29.144989, 41.885387, 58.723885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284142, 41.698982, 58.782955>,  <29.516064, 41.388306, 58.881405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284142, 41.698982, 58.782955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051428, -0.336371, -0.940324,
		-0.813130, -0.532547, 0.234973,
		-0.579805, 0.776691, -0.246125,
		29.110199, 41.931988, 58.709118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082674, 41.071629, 58.483299>,  <29.516064, 41.388306, 58.881405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082674, 41.071629, 58.483299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068502, 41.456688, 58.375931>,  <29.059999, 41.687725, 58.311508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068502, 41.456688, 58.375931>,  <29.082674, 41.071629, 58.483299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068502, 41.456688, 58.375931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067770, -0.270288, -0.960391,
		-0.997072, -0.015833, 0.074814,
		-0.035428, 0.962649, -0.268424,
		29.057875, 41.745483, 58.295403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562952, 40.991314, 57.951942>,  <29.082674, 41.071629, 58.483299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562952, 40.991314, 57.951942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753338, 41.341755, 57.921204>,  <28.867569, 41.552017, 57.902760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753338, 41.341755, 57.921204>,  <28.562952, 40.991314, 57.951942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753338, 41.341755, 57.921204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136429, -0.012767, -0.990567,
		-0.868818, 0.481960, 0.113449,
		0.475965, 0.876100, -0.076846,
		28.896128, 41.604584, 57.898151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217274, 41.262581, 57.355713>,  <28.562952, 40.991314, 57.951942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217274, 41.262581, 57.355713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549257, 41.481541, 57.398659>,  <28.748447, 41.612915, 57.424427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549257, 41.481541, 57.398659>,  <28.217274, 41.262581, 57.355713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549257, 41.481541, 57.398659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120732, 0.011632, -0.992617,
		-0.544604, 0.836792, -0.056434,
		0.829958, 0.547397, 0.107362,
		28.798244, 41.645760, 57.430866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093615, 41.745949, 56.886951>,  <28.217274, 41.262581, 57.355713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093615, 41.745949, 56.886951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487286, 41.744358, 56.957809>,  <28.723488, 41.743404, 57.000324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487286, 41.744358, 56.957809>,  <28.093615, 41.745949, 56.886951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487286, 41.744358, 56.957809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176909, 0.078573, -0.981086,
		-0.010021, 0.996900, 0.078033,
		0.984176, -0.003974, 0.177149,
		28.782539, 41.743168, 57.010956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405214, 42.267841, 56.445732>,  <28.093615, 41.745949, 56.886951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405214, 42.267841, 56.445732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720890, 42.038754, 56.534431>,  <28.910295, 41.901302, 56.587650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720890, 42.038754, 56.534431>,  <28.405214, 42.267841, 56.445732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720890, 42.038754, 56.534431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337261, 0.102402, -0.935825,
		0.513256, 0.813332, 0.273970,
		0.789192, -0.572717, 0.221747,
		28.957647, 41.866940, 56.600956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966499, 42.714142, 56.203033>,  <28.405214, 42.267841, 56.445732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966499, 42.714142, 56.203033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096918, 42.337029, 56.230873>,  <29.175169, 42.110760, 56.247578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096918, 42.337029, 56.230873>,  <28.966499, 42.714142, 56.203033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096918, 42.337029, 56.230873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571386, 0.137878, -0.809016,
		0.753134, 0.303548, 0.583651,
		0.326048, -0.942788, 0.069602,
		29.194733, 42.054192, 56.251755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695425, 42.728508, 55.905220>,  <28.966499, 42.714142, 56.203033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695425, 42.728508, 55.905220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580826, 42.345299, 55.909389>,  <29.512066, 42.115372, 55.911892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580826, 42.345299, 55.909389>,  <29.695425, 42.728508, 55.905220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580826, 42.345299, 55.909389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455688, -0.145826, -0.878114,
		0.842774, -0.246829, 0.478339,
		-0.286498, -0.958024, 0.010422,
		29.494877, 42.057892, 55.912518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341990, 42.316750, 55.771179>,  <29.695425, 42.728508, 55.905220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341990, 42.316750, 55.771179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030890, 42.085991, 55.671349>,  <29.844229, 41.947536, 55.611450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030890, 42.085991, 55.671349>,  <30.341990, 42.316750, 55.771179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030890, 42.085991, 55.671349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436031, -0.209178, -0.875284,
		0.452746, -0.789576, 0.414235,
		-0.777752, -0.576900, -0.249576,
		29.797564, 41.912922, 55.596478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770424, 42.588985, 56.294182>,  <30.341990, 42.316750, 55.771179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770424, 42.588985, 56.294182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146276, 42.563156, 56.428596>,  <31.371788, 42.547661, 56.509247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146276, 42.563156, 56.428596>,  <30.770424, 42.588985, 56.294182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146276, 42.563156, 56.428596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215811, 0.650275, 0.728401,
		-0.265553, -0.756950, 0.597083,
		0.939631, -0.064572, 0.336041,
		31.428165, 42.543785, 56.529408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777155, 42.584267, 57.091278>,  <30.770424, 42.588985, 56.294182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777155, 42.584267, 57.091278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143181, 42.699768, 56.978657>,  <31.362797, 42.769070, 56.911083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143181, 42.699768, 56.978657>,  <30.777155, 42.584267, 57.091278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143181, 42.699768, 56.978657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045577, 0.619611, 0.783585,
		0.400718, -0.729865, 0.553825,
		0.915067, 0.288755, -0.281555,
		31.417702, 42.786396, 56.894192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120909, 42.613216, 57.709213>,  <30.777155, 42.584267, 57.091278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120909, 42.613216, 57.709213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302788, 42.844036, 57.437843>,  <31.411915, 42.982529, 57.275021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302788, 42.844036, 57.437843>,  <31.120909, 42.613216, 57.709213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302788, 42.844036, 57.437843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146279, 0.702997, 0.695987,
		0.878551, -0.415703, 0.235241,
		0.454698, 0.577049, -0.678428,
		31.439198, 43.017151, 57.234314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754700, 42.847050, 58.128868>,  <31.120909, 42.613216, 57.709213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754700, 42.847050, 58.128868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678263, 43.078918, 57.812019>,  <31.632401, 43.218040, 57.621910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678263, 43.078918, 57.812019>,  <31.754700, 42.847050, 58.128868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678263, 43.078918, 57.812019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224283, 0.811433, 0.539697,
		0.955605, -0.074528, -0.285071,
		-0.191094, 0.579674, -0.792125,
		31.620935, 43.252819, 57.574383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372471, 43.244801, 57.931450>,  <31.754700, 42.847050, 58.128868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372471, 43.244801, 57.931450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060730, 43.447948, 57.784657>,  <31.873684, 43.569836, 57.696583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060730, 43.447948, 57.784657>,  <32.372471, 43.244801, 57.931450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060730, 43.447948, 57.784657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156190, 0.724663, 0.671169,
		0.606803, 0.465761, -0.644094,
		-0.779356, 0.507868, -0.366980,
		31.826923, 43.600307, 57.674561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617218, 43.995914, 57.845882>,  <32.372471, 43.244801, 57.931450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617218, 43.995914, 57.845882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217754, 43.976051, 57.851780>,  <31.978077, 43.964134, 57.855316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217754, 43.976051, 57.851780>,  <32.617218, 43.995914, 57.845882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217754, 43.976051, 57.851780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028682, 0.767065, 0.640928,
		-0.043133, 0.639645, -0.767460,
		-0.998658, -0.049657, 0.014740,
		31.918158, 43.961155, 57.856201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415459, 44.697044, 57.967068>,  <32.617218, 43.995914, 57.845882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415459, 44.697044, 57.967068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073936, 44.504299, 58.045887>,  <31.869022, 44.388653, 58.093178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073936, 44.504299, 58.045887>,  <32.415459, 44.697044, 57.967068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073936, 44.504299, 58.045887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232709, 0.691852, 0.683511,
		-0.465686, 0.537730, -0.702839,
		-0.853805, -0.481858, 0.197051,
		31.817795, 44.359741, 58.105003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866167, 45.296371, 58.237499>,  <32.415459, 44.697044, 57.967068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866167, 45.296371, 58.237499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725866, 44.939083, 58.350018>,  <31.641685, 44.724709, 58.417530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725866, 44.939083, 58.350018>,  <31.866167, 45.296371, 58.237499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725866, 44.939083, 58.350018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251407, 0.379171, 0.890519,
		-0.902091, 0.241630, -0.357557,
		-0.350751, -0.893221, 0.281300,
		31.620642, 44.671116, 58.434406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227331, 45.366734, 58.501884>,  <31.866167, 45.296371, 58.237499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227331, 45.366734, 58.501884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347252, 45.019775, 58.660755>,  <31.419205, 44.811600, 58.756077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347252, 45.019775, 58.660755>,  <31.227331, 45.366734, 58.501884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347252, 45.019775, 58.660755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396632, 0.265311, 0.878802,
		-0.867642, -0.420999, -0.264495,
		0.299802, -0.867393, 0.397176,
		31.437193, 44.759556, 58.779907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636879, 45.147400, 58.799641>,  <31.227331, 45.366734, 58.501884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636879, 45.147400, 58.799641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917997, 44.923553, 58.975327>,  <31.086668, 44.789246, 59.080738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917997, 44.923553, 58.975327>,  <30.636879, 45.147400, 58.799641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917997, 44.923553, 58.975327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504211, 0.043700, 0.862474,
		-0.501846, -0.827600, -0.251451,
		0.702795, -0.559614, 0.439217,
		31.128836, 44.755669, 59.107090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247976, 44.718605, 59.268097>,  <30.636879, 45.147400, 58.799641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247976, 44.718605, 59.268097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627342, 44.709034, 59.394550>,  <30.854961, 44.703289, 59.470421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627342, 44.709034, 59.394550>,  <30.247976, 44.718605, 59.268097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627342, 44.709034, 59.394550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313397, 0.079883, 0.946256,
		-0.047900, -0.996517, 0.068262,
		0.948413, -0.023932, 0.316132,
		30.911867, 44.701855, 59.489391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192856, 44.168427, 59.755802>,  <30.247976, 44.718605, 59.268097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192856, 44.168427, 59.755802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526684, 44.377140, 59.826496>,  <30.726980, 44.502369, 59.868912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526684, 44.377140, 59.826496>,  <30.192856, 44.168427, 59.755802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526684, 44.377140, 59.826496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235310, 0.047552, 0.970756,
		0.498122, -0.851751, 0.162467,
		0.834568, 0.521785, 0.176739,
		30.777054, 44.533676, 59.879517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503347, 43.912922, 60.252838>,  <30.192856, 44.168427, 59.755802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503347, 43.912922, 60.252838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668112, 44.275009, 60.294628>,  <30.766970, 44.492260, 60.319702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668112, 44.275009, 60.294628>,  <30.503347, 43.912922, 60.252838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668112, 44.275009, 60.294628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222923, -0.011066, 0.974773,
		0.883535, -0.424810, 0.197235,
		0.411911, 0.905215, 0.104477,
		30.791685, 44.546574, 60.325970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973883, 43.918209, 60.796612>,  <30.503347, 43.912922, 60.252838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973883, 43.918209, 60.796612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846104, 44.296150, 60.767731>,  <30.769436, 44.522915, 60.750401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846104, 44.296150, 60.767731>,  <30.973883, 43.918209, 60.796612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846104, 44.296150, 60.767731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265322, -0.016034, 0.964027,
		0.909702, 0.327114, 0.255811,
		-0.319448, 0.944849, -0.072204,
		30.750269, 44.579605, 60.746071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824919, 43.223415, 60.896805>,  <30.973883, 43.918209, 60.796612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824919, 43.223415, 60.896805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980787, 43.023407, 61.206161>,  <31.074308, 42.903404, 61.391777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980787, 43.023407, 61.206161>,  <30.824919, 43.223415, 60.896805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980787, 43.023407, 61.206161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531355, -0.563837, -0.632258,
		0.752208, 0.657320, 0.045975,
		0.389673, -0.500019, 0.773393,
		31.097689, 42.873402, 61.438179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582603, 43.235317, 60.784504>,  <30.824919, 43.223415, 60.896805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582603, 43.235317, 60.784504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493980, 42.927471, 61.024040>,  <31.440807, 42.742764, 61.167763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493980, 42.927471, 61.024040>,  <31.582603, 43.235317, 60.784504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493980, 42.927471, 61.024040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550708, -0.605546, -0.574486,
		0.804756, 0.202502, 0.557997,
		-0.221558, -0.769615, 0.598836,
		31.427513, 42.696587, 61.203690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207722, 42.860996, 60.754017>,  <31.582603, 43.235317, 60.784504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207722, 42.860996, 60.754017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908449, 42.629135, 60.883156>,  <31.728886, 42.490021, 60.960640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908449, 42.629135, 60.883156>,  <32.207722, 42.860996, 60.754017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908449, 42.629135, 60.883156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407341, -0.785378, -0.466106,
		0.523733, -0.217224, 0.823721,
		-0.748182, -0.579651, 0.322844,
		31.683994, 42.455238, 60.980011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593323, 42.279408, 60.877991>,  <32.207722, 42.860996, 60.754017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593323, 42.279408, 60.877991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215389, 42.151562, 60.906651>,  <31.988628, 42.074856, 60.923847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215389, 42.151562, 60.906651>,  <32.593323, 42.279408, 60.877991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215389, 42.151562, 60.906651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280171, -0.901916, -0.328711,
		0.169680, -0.290505, 0.941709,
		-0.944835, -0.319616, 0.071647,
		31.931938, 42.055676, 60.928146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575787, 41.784794, 61.444542>,  <32.593323, 42.279408, 60.877991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575787, 41.784794, 61.444542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278713, 41.693623, 61.192677>,  <32.100471, 41.638920, 61.041557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278713, 41.693623, 61.192677>,  <32.575787, 41.784794, 61.444542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278713, 41.693623, 61.192677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469744, -0.847460, -0.247290,
		-0.477251, -0.479438, 0.736458,
		-0.742679, -0.227927, -0.629664,
		32.055908, 41.625244, 61.003777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323654, 41.042191, 61.452110>,  <32.575787, 41.784794, 61.444542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323654, 41.042191, 61.452110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184547, 41.166935, 61.098434>,  <32.101082, 41.241783, 60.886227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184547, 41.166935, 61.098434>,  <32.323654, 41.042191, 61.452110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184547, 41.166935, 61.098434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343490, -0.835114, -0.429650,
		-0.872394, -0.453131, 0.183305,
		-0.347768, 0.311861, -0.884194,
		32.080215, 41.260494, 60.833176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105453, 40.393879, 61.195446>,  <32.323654, 41.042191, 61.452110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105453, 40.393879, 61.195446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166637, 40.630447, 60.878757>,  <32.203346, 40.772388, 60.688744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166637, 40.630447, 60.878757>,  <32.105453, 40.393879, 61.195446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166637, 40.630447, 60.878757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417638, -0.764778, -0.490605,
		-0.895647, -0.255614, -0.363976,
		0.152955, 0.591419, -0.791725,
		32.212524, 40.807873, 60.641239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399641, 40.233715, 61.168751>,  <32.105453, 40.393879, 61.195446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399641, 40.233715, 61.168751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227604, 39.893078, 61.288620>,  <31.124382, 39.688694, 61.360542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227604, 39.893078, 61.288620>,  <31.399641, 40.233715, 61.168751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227604, 39.893078, 61.288620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681892, 0.523979, 0.510363,
		-0.591645, 0.015159, -0.806056,
		-0.430093, -0.851596, 0.299672,
		31.098576, 39.637600, 61.378521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747400, 40.443157, 61.119934>,  <31.399641, 40.233715, 61.168751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747400, 40.443157, 61.119934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713486, 40.098499, 61.320084>,  <30.693138, 39.891705, 61.440174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713486, 40.098499, 61.320084>,  <30.747400, 40.443157, 61.119934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713486, 40.098499, 61.320084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824520, 0.342631, 0.450302,
		-0.559445, -0.374392, -0.739494,
		-0.084785, -0.861647, 0.500377,
		30.688051, 39.840004, 61.470196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104414, 40.140614, 60.964340>,  <30.747400, 40.443157, 61.119934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104414, 40.140614, 60.964340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208284, 40.005379, 61.326172>,  <30.270607, 39.924236, 61.543270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208284, 40.005379, 61.326172>,  <30.104414, 40.140614, 60.964340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208284, 40.005379, 61.326172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873020, 0.318226, 0.369551,
		-0.412802, -0.885680, -0.212521,
		0.259675, -0.338086, 0.904581,
		30.286186, 39.903954, 61.597546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503260, 40.138863, 61.213757>,  <30.104414, 40.140614, 60.964340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503260, 40.138863, 61.213757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759417, 40.133858, 61.520935>,  <29.913111, 40.130856, 61.705242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759417, 40.133858, 61.520935>,  <29.503260, 40.138863, 61.213757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759417, 40.133858, 61.520935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693697, 0.419752, 0.585314,
		-0.329673, -0.907552, 0.260123,
		0.640391, -0.012516, 0.767948,
		29.951534, 40.130104, 61.751320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143263, 39.908890, 61.733227>,  <29.503260, 40.138863, 61.213757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143263, 39.908890, 61.733227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442762, 40.096321, 61.920765>,  <29.622461, 40.208778, 62.033287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442762, 40.096321, 61.920765>,  <29.143263, 39.908890, 61.733227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442762, 40.096321, 61.920765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660018, 0.592409, 0.461982,
		-0.061274, -0.655354, 0.752833,
		0.748747, 0.468576, 0.468845,
		29.667387, 40.236893, 62.061417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990082, 39.869732, 62.507965>,  <29.143263, 39.908890, 61.733227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990082, 39.869732, 62.507965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228260, 40.178902, 62.420300>,  <29.371166, 40.364403, 62.367702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228260, 40.178902, 62.420300>,  <28.990082, 39.869732, 62.507965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228260, 40.178902, 62.420300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554622, 0.592833, 0.583903,
		0.581233, -0.226139, 0.781684,
		0.595451, 0.772923, -0.219152,
		29.406895, 40.410778, 62.354553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034809, 40.207829, 63.167850>,  <28.990082, 39.869732, 62.507965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034809, 40.207829, 63.167850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148783, 40.451893, 62.872143>,  <29.217167, 40.598331, 62.694717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148783, 40.451893, 62.872143>,  <29.034809, 40.207829, 63.167850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148783, 40.451893, 62.872143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550184, 0.735649, 0.395118,
		0.784927, 0.294151, 0.545312,
		0.284934, 0.610160, -0.739268,
		29.234262, 40.634941, 62.650364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248249, 40.790249, 63.514626>,  <29.034809, 40.207829, 63.167850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248249, 40.790249, 63.514626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170616, 40.934826, 63.149837>,  <29.124037, 41.021572, 62.930965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170616, 40.934826, 63.149837>,  <29.248249, 40.790249, 63.514626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170616, 40.934826, 63.149837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596459, 0.694589, 0.402223,
		0.778825, 0.622019, 0.080776,
		-0.194084, 0.361440, -0.911972,
		29.112391, 41.043259, 62.876247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195211, 41.491093, 63.597847>,  <29.248249, 40.790249, 63.514626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195211, 41.491093, 63.597847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010994, 41.442581, 63.246120>,  <28.900463, 41.413475, 63.035084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010994, 41.442581, 63.246120>,  <29.195211, 41.491093, 63.597847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010994, 41.442581, 63.246120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568158, 0.801380, 0.187047,
		0.681980, 0.585732, -0.437975,
		-0.460544, -0.121276, -0.879313,
		28.872831, 41.406197, 62.982327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.026291, 34.362148, 47.202999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.185768, 34.482487, 47.549534>,  <37.281456, 34.554691, 47.757454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.185768, 34.482487, 47.549534>,  <37.026291, 34.362148, 47.202999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185768, 34.482487, 47.549534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885061, -0.121233, 0.449410,
		0.240231, -0.945936, 0.217932,
		0.398693, 0.300846, 0.866335,
		37.305374, 34.572739, 47.809433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764259, 33.915478, 47.780018>,  <37.026291, 34.362148, 47.202999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764259, 33.915478, 47.780018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872704, 34.261005, 47.949871>,  <36.937771, 34.468323, 48.051781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872704, 34.261005, 47.949871>,  <36.764259, 33.915478, 47.780018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872704, 34.261005, 47.949871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828349, -0.015301, 0.560004,
		0.490240, -0.503567, 0.711397,
		0.271114, 0.863821, 0.424630,
		36.954037, 34.520153, 48.077259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441929, 33.815670, 48.446289>,  <36.764259, 33.915478, 47.780018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441929, 33.815670, 48.446289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500320, 34.207809, 48.393200>,  <36.535355, 34.443092, 48.361347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500320, 34.207809, 48.393200>,  <36.441929, 33.815670, 48.446289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500320, 34.207809, 48.393200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782171, 0.196514, 0.591261,
		0.605722, 0.017502, 0.795484,
		0.145976, 0.980345, -0.132722,
		36.544113, 34.501911, 48.353382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297428, 34.033443, 49.130814>,  <36.441929, 33.815670, 48.446289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297428, 34.033443, 49.130814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272282, 34.356091, 48.895725>,  <36.257195, 34.549679, 48.754673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272282, 34.356091, 48.895725>,  <36.297428, 34.033443, 49.130814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272282, 34.356091, 48.895725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871158, 0.242984, 0.426664,
		0.486962, 0.538819, 0.687418,
		-0.062863, 0.806618, -0.587720,
		36.253422, 34.598076, 48.719410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141563, 34.501091, 49.579659>,  <36.297428, 34.033443, 49.130814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141563, 34.501091, 49.579659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024193, 34.638004, 49.222614>,  <35.953770, 34.720150, 49.008389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024193, 34.638004, 49.222614>,  <36.141563, 34.501091, 49.579659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024193, 34.638004, 49.222614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894176, 0.232013, 0.382908,
		0.338159, 0.910502, 0.237981,
		-0.293424, 0.342281, -0.892606,
		35.936165, 34.740688, 48.954834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683918, 35.064217, 49.676598>,  <36.141563, 34.501091, 49.579659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683918, 35.064217, 49.676598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.583107, 34.946522, 49.307838>,  <35.522621, 34.875904, 49.086582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.583107, 34.946522, 49.307838>,  <35.683918, 35.064217, 49.676598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583107, 34.946522, 49.307838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964705, 0.151517, 0.215375,
		0.076313, 0.943646, -0.322039,
		-0.252032, -0.294237, -0.921903,
		35.507496, 34.858250, 49.031269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243046, 35.541916, 49.448784>,  <35.683918, 35.064217, 49.676598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243046, 35.541916, 49.448784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.191608, 35.199940, 49.247772>,  <35.160748, 34.994755, 49.127167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.191608, 35.199940, 49.247772>,  <35.243046, 35.541916, 49.448784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191608, 35.199940, 49.247772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967003, -0.004285, 0.254729,
		-0.219932, 0.518703, -0.826182,
		-0.128589, -0.854944, -0.502530,
		35.153030, 34.943455, 49.097012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580254, 35.456261, 49.484783>,  <35.243046, 35.541916, 49.448784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580254, 35.456261, 49.484783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.652172, 35.123596, 49.274635>,  <34.695324, 34.924000, 49.148544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.652172, 35.123596, 49.274635>,  <34.580254, 35.456261, 49.484783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652172, 35.123596, 49.274635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963390, -0.256844, 0.076877,
		-0.198874, 0.492316, -0.847392,
		0.179800, -0.831659, -0.525372,
		34.706112, 34.874100, 49.117023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104881, 35.364269, 48.987461>,  <34.580254, 35.456261, 49.484783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104881, 35.364269, 48.987461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.235451, 34.991985, 49.053467>,  <34.313793, 34.768616, 49.093071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.235451, 34.991985, 49.053467>,  <34.104881, 35.364269, 48.987461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235451, 34.991985, 49.053467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934889, -0.292154, 0.201563,
		-0.139388, -0.220062, -0.965476,
		0.326424, -0.930709, 0.165010,
		34.333378, 34.712772, 49.102970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805294, 34.921562, 48.472908>,  <34.104881, 35.364269, 48.987461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805294, 34.921562, 48.472908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.888622, 34.687408, 48.786320>,  <33.938618, 34.546917, 48.974369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.888622, 34.687408, 48.786320>,  <33.805294, 34.921562, 48.472908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888622, 34.687408, 48.786320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973319, -0.202869, 0.107212,
		0.096194, -0.784962, -0.612030,
		0.208319, -0.585388, 0.783533,
		33.951118, 34.511791, 49.021381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487888, 34.276127, 48.368603>,  <33.805294, 34.921562, 48.472908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487888, 34.276127, 48.368603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.524670, 34.305260, 48.765842>,  <33.546738, 34.322739, 49.004185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.524670, 34.305260, 48.765842>,  <33.487888, 34.276127, 48.368603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524670, 34.305260, 48.765842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984930, -0.140066, 0.101467,
		0.146489, -0.987460, 0.058855,
		0.091951, 0.072832, 0.993097,
		33.552254, 34.327110, 49.063770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949360, 33.944866, 48.607452>,  <33.487888, 34.276127, 48.368603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949360, 33.944866, 48.607452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.060532, 34.141788, 48.937397>,  <33.127235, 34.259941, 49.135365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.060532, 34.141788, 48.937397>,  <32.949360, 33.944866, 48.607452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060532, 34.141788, 48.937397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922019, -0.104205, 0.372856,
		0.269515, -0.864161, 0.424956,
		0.277925, 0.492308, 0.824858,
		33.143909, 34.289482, 49.184853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550095, 33.611561, 49.156597>,  <32.949360, 33.944866, 48.607452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550095, 33.611561, 49.156597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.676521, 33.953915, 49.320332>,  <32.752377, 34.159328, 49.418571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.676521, 33.953915, 49.320332>,  <32.550095, 33.611561, 49.156597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676521, 33.953915, 49.320332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877162, 0.099220, 0.469833,
		0.361509, -0.507557, 0.782111,
		0.316068, 0.855887, 0.409340,
		32.771343, 34.210682, 49.443134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516136, 33.549210, 50.017097>,  <32.550095, 33.611561, 49.156597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516136, 33.549210, 50.017097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.493340, 33.927288, 49.888496>,  <32.479660, 34.154133, 49.811337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.493340, 33.927288, 49.888496>,  <32.516136, 33.549210, 50.017097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493340, 33.927288, 49.888496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790343, 0.154042, 0.592983,
		0.610008, 0.287896, 0.738246,
		-0.056996, 0.945192, -0.321504,
		32.476242, 34.210846, 49.792046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352291, 33.957092, 50.613495>,  <32.516136, 33.549210, 50.017097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352291, 33.957092, 50.613495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.249142, 34.210060, 50.321320>,  <32.187252, 34.361843, 50.146015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.249142, 34.210060, 50.321320>,  <32.352291, 33.957092, 50.613495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249142, 34.210060, 50.321320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876445, 0.165060, 0.452327,
		0.406629, 0.756833, 0.511719,
		-0.257872, 0.632423, -0.730440,
		32.171780, 34.399788, 50.102188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078342, 34.480381, 50.998074>,  <32.352291, 33.957092, 50.613495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078342, 34.480381, 50.998074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.933279, 34.542965, 50.630596>,  <31.846241, 34.580517, 50.410110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.933279, 34.542965, 50.630596>,  <32.078342, 34.480381, 50.998074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933279, 34.542965, 50.630596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873878, 0.285376, 0.393571,
		0.323751, 0.945559, 0.033232,
		-0.362661, 0.156460, -0.918693,
		31.824480, 34.589905, 50.354988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788656, 35.074116, 51.004436>,  <32.078342, 34.480381, 50.998074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788656, 35.074116, 51.004436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.610064, 34.864738, 50.714149>,  <31.502909, 34.739113, 50.539978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.610064, 34.864738, 50.714149>,  <31.788656, 35.074116, 51.004436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610064, 34.864738, 50.714149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884143, 0.133312, 0.447793,
		-0.137647, 0.841568, -0.522318,
		-0.446479, -0.523442, -0.725717,
		31.476120, 34.707706, 50.496433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214516, 35.482201, 50.740917>,  <31.788656, 35.074116, 51.004436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214516, 35.482201, 50.740917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.120010, 35.112892, 50.619755>,  <31.063307, 34.891308, 50.547058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.120010, 35.112892, 50.619755>,  <31.214516, 35.482201, 50.740917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120010, 35.112892, 50.619755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964121, 0.183913, 0.191435,
		-0.121038, 0.337267, -0.933596,
		-0.236265, -0.923270, -0.302906,
		31.049131, 34.835911, 50.528885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542484, 35.506168, 50.381336>,  <31.214516, 35.482201, 50.740917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542484, 35.506168, 50.381336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.600460, 35.125141, 50.488369>,  <30.635246, 34.896523, 50.552589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.600460, 35.125141, 50.488369>,  <30.542484, 35.506168, 50.381336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600460, 35.125141, 50.488369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916485, -0.027331, 0.399135,
		-0.372891, -0.303084, -0.876979,
		0.144940, -0.952571, 0.267580,
		30.643942, 34.839371, 50.568642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044752, 35.184830, 50.037640>,  <30.542484, 35.506168, 50.381336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044752, 35.184830, 50.037640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.125109, 34.933170, 50.337990>,  <30.173323, 34.782177, 50.518200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.125109, 34.933170, 50.337990>,  <30.044752, 35.184830, 50.037640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125109, 34.933170, 50.337990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961815, 0.018777, 0.273057,
		-0.185892, -0.777061, -0.601350,
		0.200890, -0.629146, 0.750879,
		30.185375, 34.744427, 50.563255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597727, 34.693974, 49.980598>,  <30.044752, 35.184830, 50.037640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597727, 34.693974, 49.980598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.719810, 34.681374, 50.361305>,  <29.793060, 34.673813, 50.589729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.719810, 34.681374, 50.361305>,  <29.597727, 34.693974, 49.980598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719810, 34.681374, 50.361305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952256, -0.018048, 0.304768,
		0.007575, -0.999341, -0.035512,
		0.305208, -0.031508, 0.951765,
		29.811373, 34.671925, 50.646835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221189, 34.128613, 50.264805>,  <29.597727, 34.693974, 49.980598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221189, 34.128613, 50.264805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.363293, 34.334328, 50.577034>,  <29.448555, 34.457756, 50.764370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.363293, 34.334328, 50.577034>,  <29.221189, 34.128613, 50.264805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363293, 34.334328, 50.577034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914538, 0.018442, 0.404079,
		0.193419, -0.857417, 0.476891,
		0.355259, 0.514292, 0.780574,
		29.469870, 34.488617, 50.811207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048244, 33.739975, 50.934803>,  <29.221189, 34.128613, 50.264805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048244, 33.739975, 50.934803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.112745, 34.120075, 51.041405>,  <29.151445, 34.348133, 51.105366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.112745, 34.120075, 51.041405>,  <29.048244, 33.739975, 50.934803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112745, 34.120075, 51.041405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808991, -0.027400, 0.587182,
		0.565271, -0.310287, 0.764323,
		0.161253, 0.950248, 0.266508,
		29.161121, 34.405151, 51.121357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776855, 33.807907, 51.642540>,  <29.048244, 33.739975, 50.934803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776855, 33.807907, 51.642540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.817808, 34.195889, 51.554253>,  <28.842379, 34.428677, 51.501282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.817808, 34.195889, 51.554253>,  <28.776855, 33.807907, 51.642540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817808, 34.195889, 51.554253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868101, 0.195459, 0.456285,
		0.485715, 0.144888, 0.862026,
		0.102381, 0.969950, -0.220715,
		28.848522, 34.486874, 51.488037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538403, 34.196941, 52.239624>,  <28.776855, 33.807907, 51.642540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538403, 34.196941, 52.239624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.508892, 34.438725, 51.922337>,  <28.491186, 34.583794, 51.731964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.508892, 34.438725, 51.922337>,  <28.538403, 34.196941, 52.239624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508892, 34.438725, 51.922337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809542, 0.428204, 0.401601,
		0.582408, 0.671771, 0.457738,
		-0.073778, 0.604454, -0.793216,
		28.486759, 34.620060, 51.684372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375790, 34.778419, 52.550610>,  <28.538403, 34.196941, 52.239624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375790, 34.778419, 52.550610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.260874, 34.800491, 52.168110>,  <28.191925, 34.813736, 51.938610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.260874, 34.800491, 52.168110>,  <28.375790, 34.778419, 52.550610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260874, 34.800491, 52.168110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939848, 0.176375, 0.292538,
		0.184802, 0.982775, 0.001191,
		-0.287289, 0.055180, -0.956253,
		28.174686, 34.817047, 51.881233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918423, 35.230728, 52.569054>,  <28.375790, 34.778419, 52.550610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918423, 35.230728, 52.569054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.828236, 35.080109, 52.209637>,  <27.774124, 34.989738, 51.993988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.828236, 35.080109, 52.209637>,  <27.918423, 35.230728, 52.569054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828236, 35.080109, 52.209637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941233, 0.322262, 0.101132,
		0.251486, 0.868539, -0.427077,
		-0.225468, -0.376546, -0.898542,
		27.760595, 34.967144, 51.940075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391716, 35.605808, 52.328403>,  <27.918423, 35.230728, 52.569054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391716, 35.605808, 52.328403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.379068, 35.286171, 52.088253>,  <27.371481, 35.094391, 51.944160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.379068, 35.286171, 52.088253>,  <27.391716, 35.605808, 52.328403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379068, 35.286171, 52.088253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998474, -0.001961, 0.055193,
		-0.045281, 0.601207, -0.797810,
		-0.031618, -0.799091, -0.600378,
		27.369583, 35.046444, 51.908138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871172, 35.709381, 51.904236>,  <27.391716, 35.605808, 52.328403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871172, 35.709381, 51.904236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.893734, 35.310017, 51.903706>,  <26.907270, 35.070400, 51.903385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.893734, 35.310017, 51.903706>,  <26.871172, 35.709381, 51.904236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.893734, 35.310017, 51.903706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998111, -0.056354, -0.024464,
		0.024350, 0.002707, -0.999700,
		0.056404, -0.998407, -0.001329,
		26.910656, 35.010494, 51.903305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404016, 35.421528, 51.388485>,  <26.871172, 35.709381, 51.904236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404016, 35.421528, 51.388485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.442911, 35.130436, 51.660061>,  <26.466248, 34.955780, 51.823006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.442911, 35.130436, 51.660061>,  <26.404016, 35.421528, 51.388485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.442911, 35.130436, 51.660061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989311, -0.145159, -0.013903,
		0.108671, -0.670328, -0.734065,
		0.097236, -0.727729, 0.678937,
		26.472082, 34.912117, 51.863743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900515, 34.991356, 51.237297>,  <26.404016, 35.421528, 51.388485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900515, 34.991356, 51.237297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.991310, 34.840797, 51.596584>,  <26.045788, 34.750462, 51.812157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.991310, 34.840797, 51.596584>,  <25.900515, 34.991356, 51.237297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991310, 34.840797, 51.596584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969991, -0.169902, 0.173930,
		0.087142, -0.910745, -0.403670,
		0.226990, -0.376399, 0.898220,
		26.059408, 34.727879, 51.866051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464191, 34.335472, 51.267429>,  <25.900515, 34.991356, 51.237297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464191, 34.335472, 51.267429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.546759, 34.457657, 51.639256>,  <25.596298, 34.530968, 51.862350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.546759, 34.457657, 51.639256>,  <25.464191, 34.335472, 51.267429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546759, 34.457657, 51.639256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945344, -0.182825, 0.270000,
		0.252422, -0.934488, 0.251029,
		0.206418, 0.305463, 0.929562,
		25.608685, 34.549297, 51.918125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299618, 33.762638, 51.749569>,  <25.464191, 34.335472, 51.267429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299618, 33.762638, 51.749569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.261595, 34.116413, 51.932320>,  <25.238781, 34.328678, 52.041969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.261595, 34.116413, 51.932320>,  <25.299618, 33.762638, 51.749569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261595, 34.116413, 51.932320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947884, -0.220621, 0.229872,
		0.304105, -0.411218, 0.859314,
		-0.095055, 0.884435, 0.456879,
		25.233078, 34.381744, 52.069382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055119, 33.543102, 52.378193>,  <25.299618, 33.762638, 51.749569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055119, 33.543102, 52.378193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.965992, 33.933018, 52.382854>,  <24.912516, 34.166969, 52.385651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.965992, 33.933018, 52.382854>,  <25.055119, 33.543102, 52.378193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.965992, 33.933018, 52.382854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889934, -0.208270, 0.405761,
		0.397958, 0.080043, 0.913905,
		-0.222817, 0.974791, 0.011650,
		24.899147, 34.225456, 52.386349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.720833, 33.725727, 52.979694>,  <25.055119, 33.543102, 52.378193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.720833, 33.725727, 52.979694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.610722, 34.037415, 52.754471>,  <24.544655, 34.224426, 52.619335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.610722, 34.037415, 52.754471>,  <24.720833, 33.725727, 52.979694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.610722, 34.037415, 52.754471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946761, -0.118031, 0.299520,
		0.166933, 0.615537, 0.770226,
		-0.275276, 0.779220, -0.563063,
		24.528139, 34.271179, 52.585552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.927799, 31.604465, 52.303669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569481, 31.701595, 52.154766>,  <35.354488, 31.759872, 52.065422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569481, 31.701595, 52.154766>,  <35.927799, 31.604465, 52.303669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569481, 31.701595, 52.154766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211458, 0.503853, 0.837507,
		0.390931, 0.828956, -0.400005,
		-0.895800, 0.242823, -0.372261,
		35.300739, 31.774443, 52.043087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861855, 32.457783, 52.263245>,  <35.927799, 31.604465, 52.303669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861855, 32.457783, 52.263245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.503960, 32.280380, 52.284191>,  <35.289223, 32.173939, 52.296761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.503960, 32.280380, 52.284191>,  <35.861855, 32.457783, 52.263245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503960, 32.280380, 52.284191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226978, 0.552602, 0.801942,
		-0.384605, 0.705644, -0.595102,
		-0.894740, -0.443506, 0.052368,
		35.235538, 32.147327, 52.299900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402580, 33.045528, 52.305042>,  <35.861855, 32.457783, 52.263245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402580, 33.045528, 52.305042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.171307, 32.738743, 52.416370>,  <35.032543, 32.554672, 52.483170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.171307, 32.738743, 52.416370>,  <35.402580, 33.045528, 52.305042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171307, 32.738743, 52.416370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218153, 0.474024, 0.853060,
		-0.786200, 0.432509, -0.441390,
		-0.578186, -0.766966, 0.278324,
		34.997852, 32.508652, 52.499866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632652, 33.343678, 52.407249>,  <35.402580, 33.045528, 52.305042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632652, 33.343678, 52.407249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.701782, 33.007744, 52.613091>,  <34.743259, 32.806183, 52.736595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.701782, 33.007744, 52.613091>,  <34.632652, 33.343678, 52.407249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701782, 33.007744, 52.613091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429915, 0.405749, 0.806561,
		-0.886174, -0.360630, -0.290932,
		0.172825, -0.839830, 0.514604,
		34.753628, 32.755795, 52.767471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324848, 33.543186, 52.994480>,  <34.632652, 33.343678, 52.407249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324848, 33.543186, 52.994480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.444458, 33.187641, 53.133335>,  <34.516224, 32.974316, 53.216648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.444458, 33.187641, 53.133335>,  <34.324848, 33.543186, 52.994480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444458, 33.187641, 53.133335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147527, 0.316345, 0.937103,
		-0.942772, -0.331432, -0.036536,
		0.299027, -0.888864, 0.347136,
		34.534164, 32.920982, 53.237476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803955, 33.187744, 53.553253>,  <34.324848, 33.543186, 52.994480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803955, 33.187744, 53.553253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.183800, 33.073429, 53.604717>,  <34.411709, 33.004841, 53.635597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.183800, 33.073429, 53.604717>,  <33.803955, 33.187744, 53.553253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183800, 33.073429, 53.604717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024739, 0.340881, 0.939781,
		-0.312439, -0.895613, 0.316636,
		0.949616, -0.285791, 0.128661,
		34.468685, 32.987694, 53.643314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714367, 33.005203, 54.260403>,  <33.803955, 33.187744, 53.553253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714367, 33.005203, 54.260403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.113754, 32.993042, 54.241940>,  <34.353386, 32.985744, 54.230862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.113754, 32.993042, 54.241940>,  <33.714367, 33.005203, 54.260403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113754, 32.993042, 54.241940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054249, 0.379024, 0.923795,
		-0.010595, -0.924887, 0.380095,
		0.998471, -0.030407, -0.046159,
		34.413296, 32.983921, 54.228092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050587, 32.546391, 54.808445>,  <33.714367, 33.005203, 54.260403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050587, 32.546391, 54.808445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.345825, 32.786671, 54.685558>,  <34.522968, 32.930840, 54.611828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.345825, 32.786671, 54.685558>,  <34.050587, 32.546391, 54.808445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345825, 32.786671, 54.685558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153420, 0.293976, 0.943419,
		0.657026, -0.743462, 0.124822,
		0.738091, 0.600701, -0.307212,
		34.567253, 32.966881, 54.593395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510540, 32.449692, 55.224541>,  <34.050587, 32.546391, 54.808445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510540, 32.449692, 55.224541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587414, 32.815845, 55.083042>,  <34.633537, 33.035538, 54.998142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587414, 32.815845, 55.083042>,  <34.510540, 32.449692, 55.224541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587414, 32.815845, 55.083042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021536, 0.356446, 0.934068,
		0.981122, -0.187135, 0.048791,
		0.192188, 0.915383, -0.353747,
		34.645069, 33.090462, 54.976917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102943, 32.573284, 55.734318>,  <34.510540, 32.449692, 55.224541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102943, 32.573284, 55.734318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985943, 32.907352, 55.548016>,  <34.915741, 33.107796, 55.436234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985943, 32.907352, 55.548016>,  <35.102943, 32.573284, 55.734318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985943, 32.907352, 55.548016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111109, 0.513439, 0.850903,
		0.949787, 0.197145, -0.242979,
		-0.292506, 0.835173, -0.465753,
		34.898190, 33.157906, 55.408291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610870, 33.172810, 55.815262>,  <35.102943, 32.573284, 55.734318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610870, 33.172810, 55.815262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.249889, 33.333244, 55.752384>,  <35.033302, 33.429504, 55.714657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.249889, 33.333244, 55.752384>,  <35.610870, 33.172810, 55.815262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249889, 33.333244, 55.752384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121285, 0.586705, 0.800667,
		0.413362, 0.703498, -0.578119,
		-0.902453, 0.401083, -0.157198,
		34.979153, 33.453568, 55.705223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719357, 33.982819, 56.025406>,  <35.610870, 33.172810, 55.815262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719357, 33.982819, 56.025406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.323326, 33.929756, 56.006821>,  <35.085709, 33.897919, 55.995670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.323326, 33.929756, 56.006821>,  <35.719357, 33.982819, 56.025406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323326, 33.929756, 56.006821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089530, 0.340392, 0.936011,
		-0.108355, 0.930879, -0.348890,
		-0.990073, -0.132657, -0.046459,
		35.026306, 33.889957, 55.992882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942818, 34.321445, 55.373344>,  <35.719357, 33.982819, 56.025406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942818, 34.321445, 55.373344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.114052, 34.682690, 55.386799>,  <36.216793, 34.899437, 55.394871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.114052, 34.682690, 55.386799>,  <35.942818, 34.321445, 55.373344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114052, 34.682690, 55.386799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387309, -0.149704, -0.909714,
		-0.816539, 0.402462, -0.413870,
		0.428083, 0.903113, 0.033638,
		36.242477, 34.953625, 55.396889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752487, 34.678520, 54.724781>,  <35.942818, 34.321445, 55.373344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752487, 34.678520, 54.724781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088837, 34.858555, 54.845020>,  <36.290646, 34.966576, 54.917164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088837, 34.858555, 54.845020>,  <35.752487, 34.678520, 54.724781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088837, 34.858555, 54.845020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394652, -0.129793, -0.909617,
		-0.370390, 0.883502, -0.286767,
		0.840869, 0.450086, 0.300602,
		36.341099, 34.993580, 54.935200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943432, 34.975910, 54.198597>,  <35.752487, 34.678520, 54.724781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943432, 34.975910, 54.198597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282413, 35.026112, 54.404922>,  <36.485802, 35.056232, 54.528717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282413, 35.026112, 54.404922>,  <35.943432, 34.975910, 54.198597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282413, 35.026112, 54.404922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527228, -0.085480, -0.845413,
		-0.062011, 0.988404, -0.138610,
		0.847458, 0.125504, 0.515814,
		36.536652, 35.063763, 54.559666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432137, 35.515381, 53.827995>,  <35.943432, 34.975910, 54.198597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432137, 35.515381, 53.827995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.645401, 35.270184, 54.061226>,  <36.773361, 35.123066, 54.201164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.645401, 35.270184, 54.061226>,  <36.432137, 35.515381, 53.827995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645401, 35.270184, 54.061226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676117, -0.105548, -0.729195,
		0.508534, 0.783007, 0.358180,
		0.533160, -0.612992, 0.583079,
		36.805347, 35.086285, 54.236149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171444, 35.691643, 53.789112>,  <36.432137, 35.515381, 53.827995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171444, 35.691643, 53.789112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.152588, 35.303593, 53.884304>,  <37.141273, 35.070763, 53.941418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.152588, 35.303593, 53.884304>,  <37.171444, 35.691643, 53.789112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152588, 35.303593, 53.884304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647553, -0.211080, -0.732203,
		0.760561, 0.119590, 0.638157,
		-0.047138, -0.970125, 0.237980,
		37.138447, 35.012554, 53.955696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858131, 35.502445, 53.827274>,  <37.171444, 35.691643, 53.789112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858131, 35.502445, 53.827274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.675220, 35.147984, 53.797268>,  <37.565475, 34.935307, 53.779266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.675220, 35.147984, 53.797268>,  <37.858131, 35.502445, 53.827274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675220, 35.147984, 53.797268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540729, -0.210074, -0.814544,
		0.706055, -0.413030, 0.575232,
		-0.457273, -0.886157, -0.075013,
		37.538040, 34.882137, 53.774765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340271, 35.115459, 53.565929>,  <37.858131, 35.502445, 53.827274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340271, 35.115459, 53.565929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.045261, 34.850094, 53.515430>,  <37.868256, 34.690872, 53.485130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.045261, 34.850094, 53.515430>,  <38.340271, 35.115459, 53.565929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045261, 34.850094, 53.515430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501122, -0.412318, -0.760835,
		0.452698, -0.624398, 0.636547,
		-0.737523, -0.663416, -0.126244,
		37.824005, 34.651070, 53.477558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636055, 34.437908, 53.538986>,  <38.340271, 35.115459, 53.565929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636055, 34.437908, 53.538986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.286182, 34.412037, 53.346844>,  <38.076260, 34.396515, 53.231556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.286182, 34.412037, 53.346844>,  <38.636055, 34.437908, 53.538986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286182, 34.412037, 53.346844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473327, -0.327368, -0.817797,
		-0.104361, -0.942680, 0.316958,
		-0.874683, -0.064678, -0.480360,
		38.023777, 34.392635, 53.202736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646603, 33.814156, 53.181461>,  <38.636055, 34.437908, 53.538986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646603, 33.814156, 53.181461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355751, 34.018921, 52.998497>,  <38.181240, 34.141781, 52.888718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355751, 34.018921, 52.998497>,  <38.646603, 33.814156, 53.181461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355751, 34.018921, 52.998497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296610, -0.366624, -0.881821,
		-0.619115, -0.776872, 0.114745,
		-0.727130, 0.511915, -0.457411,
		38.137611, 34.172497, 52.861275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250698, 33.408958, 52.800858>,  <38.646603, 33.814156, 53.181461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250698, 33.408958, 52.800858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.231514, 33.764538, 52.618664>,  <38.220001, 33.977886, 52.509346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.231514, 33.764538, 52.618664>,  <38.250698, 33.408958, 52.800858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231514, 33.764538, 52.618664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259815, -0.429208, -0.865030,
		-0.964466, -0.159832, -0.210376,
		-0.047964, 0.888951, -0.455484,
		38.217125, 34.031223, 52.482018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040031, 33.243988, 52.195850>,  <38.250698, 33.408958, 52.800858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040031, 33.243988, 52.195850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.177071, 33.615471, 52.139103>,  <38.259296, 33.838360, 52.105053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.177071, 33.615471, 52.139103>,  <38.040031, 33.243988, 52.195850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177071, 33.615471, 52.139103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165633, -0.208353, -0.963927,
		-0.924765, 0.306745, -0.225207,
		0.342602, 0.928707, -0.141871,
		38.279850, 33.894081, 52.096542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751640, 33.510059, 51.517879>,  <38.040031, 33.243988, 52.195850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751640, 33.510059, 51.517879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080524, 33.717255, 51.612251>,  <38.277855, 33.841572, 51.668877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080524, 33.717255, 51.612251>,  <37.751640, 33.510059, 51.517879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080524, 33.717255, 51.612251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387373, -0.205535, -0.898720,
		-0.417031, 0.830329, -0.369646,
		0.822209, 0.517985, 0.235933,
		38.327187, 33.872650, 51.683029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954929, 33.629612, 50.921135>,  <37.751640, 33.510059, 51.517879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954929, 33.629612, 50.921135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283638, 33.706375, 51.135746>,  <38.480862, 33.752434, 51.264511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283638, 33.706375, 51.135746>,  <37.954929, 33.629612, 50.921135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283638, 33.706375, 51.135746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551707, -0.032482, -0.833405,
		-0.142512, 0.980875, -0.132571,
		0.821772, 0.191911, 0.536526,
		38.530170, 33.763947, 51.296703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342560, 34.194435, 50.571129>,  <37.954929, 33.629612, 50.921135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342560, 34.194435, 50.571129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.612881, 33.995266, 50.788517>,  <38.775074, 33.875767, 50.918949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.612881, 33.995266, 50.788517>,  <38.342560, 34.194435, 50.571129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612881, 33.995266, 50.788517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660111, 0.080807, -0.746809,
		0.327936, 0.863450, 0.383292,
		0.675805, -0.497921, 0.543473,
		38.815620, 33.845890, 50.951557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363747, 34.737129, 51.064903>,  <38.342560, 34.194435, 50.571129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363747, 34.737129, 51.064903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.172764, 34.838203, 51.401520>,  <38.058174, 34.898846, 51.603489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.172764, 34.838203, 51.401520>,  <38.363747, 34.737129, 51.064903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172764, 34.838203, 51.401520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466549, 0.884495, -0.000878,
		-0.744558, 0.392199, -0.540198,
		-0.477458, 0.252683, 0.841538,
		38.029526, 34.914009, 51.653980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613331, 34.685448, 51.226276>,  <38.363747, 34.737129, 51.064903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613331, 34.685448, 51.226276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355915, 34.938229, 51.053539>,  <37.201466, 35.089897, 50.949898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355915, 34.938229, 51.053539>,  <37.613331, 34.685448, 51.226276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355915, 34.938229, 51.053539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213133, 0.689832, 0.691886,
		0.735138, 0.353218, -0.578626,
		-0.643541, 0.631957, -0.431839,
		37.162853, 35.127815, 50.923988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842033, 35.377533, 51.499092>,  <37.613331, 34.685448, 51.226276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842033, 35.377533, 51.499092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.471100, 35.419350, 51.355354>,  <37.248539, 35.444439, 51.269112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.471100, 35.419350, 51.355354>,  <37.842033, 35.377533, 51.499092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471100, 35.419350, 51.355354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228920, 0.601161, 0.765638,
		0.296065, 0.792261, -0.533543,
		-0.927330, 0.104539, -0.359347,
		37.192902, 35.450710, 51.247551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647606, 36.109287, 51.468975>,  <37.842033, 35.377533, 51.499092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647606, 36.109287, 51.468975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280708, 35.951035, 51.450466>,  <37.060570, 35.856083, 51.439362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280708, 35.951035, 51.450466>,  <37.647606, 36.109287, 51.468975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280708, 35.951035, 51.450466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363173, 0.782905, 0.505139,
		-0.163624, 0.480139, -0.861797,
		-0.917242, -0.395634, -0.046272,
		37.005535, 35.832344, 51.436584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181717, 36.606529, 51.145927>,  <37.647606, 36.109287, 51.468975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181717, 36.606529, 51.145927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.925705, 36.371525, 51.343994>,  <36.772099, 36.230522, 51.462833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.925705, 36.371525, 51.343994>,  <37.181717, 36.606529, 51.145927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925705, 36.371525, 51.343994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399427, 0.804942, 0.438779,
		-0.656373, 0.083045, -0.749852,
		-0.640025, -0.587514, 0.495171,
		36.733696, 36.195271, 51.492546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452198, 36.761364, 50.972870>,  <37.181717, 36.606529, 51.145927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452198, 36.761364, 50.972870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441967, 36.586533, 51.332493>,  <36.435829, 36.481632, 51.548267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441967, 36.586533, 51.332493>,  <36.452198, 36.761364, 50.972870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441967, 36.586533, 51.332493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525867, 0.770747, 0.359741,
		-0.850182, -0.463582, -0.249564,
		-0.025582, -0.437083, 0.899058,
		36.434292, 36.455406, 51.602211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784473, 36.994980, 51.217197>,  <36.452198, 36.761364, 50.972870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784473, 36.994980, 51.217197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970840, 36.844128, 51.537373>,  <36.082661, 36.753616, 51.729477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970840, 36.844128, 51.537373>,  <35.784473, 36.994980, 51.217197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970840, 36.844128, 51.537373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490515, 0.642808, 0.588382,
		-0.736423, -0.666761, 0.114505,
		0.465914, -0.377132, 0.800435,
		36.110615, 36.730988, 51.777504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259018, 36.823120, 51.636776>,  <35.784473, 36.994980, 51.217197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259018, 36.823120, 51.636776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.579208, 36.858318, 51.873928>,  <35.771320, 36.879436, 52.016220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.579208, 36.858318, 51.873928>,  <35.259018, 36.823120, 51.636776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579208, 36.858318, 51.873928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533568, 0.555220, 0.637994,
		-0.273039, -0.827036, 0.491387,
		0.800472, 0.087991, 0.592877,
		35.819351, 36.884716, 52.051792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076027, 36.646896, 52.341320>,  <35.259018, 36.823120, 51.636776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076027, 36.646896, 52.341320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395008, 36.882599, 52.393223>,  <35.586399, 37.024021, 52.424366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395008, 36.882599, 52.393223>,  <35.076027, 36.646896, 52.341320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395008, 36.882599, 52.393223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464981, 0.463116, 0.754530,
		0.384522, -0.662039, 0.643309,
		0.797455, 0.589261, 0.129757,
		35.634243, 37.059376, 52.432152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174400, 36.712128, 53.053082>,  <35.076027, 36.646896, 52.341320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174400, 36.712128, 53.053082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351562, 37.024792, 52.877426>,  <35.457859, 37.212391, 52.772034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351562, 37.024792, 52.877426>,  <35.174400, 36.712128, 53.053082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351562, 37.024792, 52.877426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478014, 0.620255, 0.621921,
		0.758509, -0.065538, 0.648359,
		0.442907, 0.781657, -0.439141,
		35.484436, 37.259289, 52.745686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235470, 37.115726, 53.643341>,  <35.174400, 36.712128, 53.053082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235470, 37.115726, 53.643341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306042, 37.372360, 53.344746>,  <35.348385, 37.526340, 53.165588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306042, 37.372360, 53.344746>,  <35.235470, 37.115726, 53.643341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306042, 37.372360, 53.344746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418708, 0.735265, 0.532981,
		0.890819, 0.218528, 0.398356,
		0.176426, 0.641584, -0.746487,
		35.358971, 37.564835, 53.120800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695297, 37.597809, 53.941635>,  <35.235470, 37.115726, 53.643341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695297, 37.597809, 53.941635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504589, 37.753773, 53.626507>,  <35.390163, 37.847351, 53.437431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504589, 37.753773, 53.626507>,  <35.695297, 37.597809, 53.941635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504589, 37.753773, 53.626507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540172, 0.577090, 0.612520,
		0.693470, 0.717591, -0.064523,
		-0.476775, 0.389911, -0.787817,
		35.361557, 37.870747, 53.390163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725246, 38.300037, 53.944813>,  <35.695297, 37.597809, 53.941635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725246, 38.300037, 53.944813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.413658, 38.226635, 53.704971>,  <35.226704, 38.182594, 53.561066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.413658, 38.226635, 53.704971>,  <35.725246, 38.300037, 53.944813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413658, 38.226635, 53.704971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560598, 0.632223, 0.534812,
		0.280944, 0.752742, -0.595357,
		-0.778974, -0.183504, -0.599605,
		35.179966, 38.171585, 53.525089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418087, 38.882729, 53.830147>,  <35.725246, 38.300037, 53.944813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418087, 38.882729, 53.830147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133717, 38.613026, 53.750183>,  <34.963093, 38.451206, 53.702206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133717, 38.613026, 53.750183>,  <35.418087, 38.882729, 53.830147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133717, 38.613026, 53.750183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684263, 0.597550, 0.417993,
		-0.162377, 0.433954, -0.886182,
		-0.710928, -0.674253, -0.199910,
		34.920437, 38.410751, 53.690208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958370, 39.259571, 53.542858>,  <35.418087, 38.882729, 53.830147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958370, 39.259571, 53.542858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.754772, 38.944305, 53.681263>,  <34.632614, 38.755146, 53.764305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.754772, 38.944305, 53.681263>,  <34.958370, 39.259571, 53.542858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754772, 38.944305, 53.681263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760111, 0.600190, 0.249006,
		-0.403929, -0.136264, -0.904585,
		-0.508992, -0.788165, 0.346010,
		34.602074, 38.707855, 53.785065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305359, 39.447182, 53.313122>,  <34.958370, 39.259571, 53.542858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305359, 39.447182, 53.313122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222450, 39.161217, 53.580238>,  <34.172703, 38.989639, 53.740509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222450, 39.161217, 53.580238>,  <34.305359, 39.447182, 53.313122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222450, 39.161217, 53.580238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798298, 0.518171, 0.306952,
		-0.565472, -0.469470, -0.678115,
		-0.207275, -0.714910, 0.667788,
		34.160267, 38.946743, 53.780575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572559, 39.478390, 53.341644>,  <34.305359, 39.447182, 53.313122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572559, 39.478390, 53.341644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699497, 39.317253, 53.685043>,  <33.775658, 39.220570, 53.891083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699497, 39.317253, 53.685043>,  <33.572559, 39.478390, 53.341644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699497, 39.317253, 53.685043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786183, 0.394474, 0.475717,
		-0.530292, -0.825898, -0.191525,
		0.317342, -0.402843, 0.858494,
		33.794701, 39.196400, 53.942593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022518, 39.180149, 53.608696>,  <33.572559, 39.478390, 53.341644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022518, 39.180149, 53.608696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.271351, 39.255409, 53.912701>,  <33.420650, 39.300564, 54.095104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.271351, 39.255409, 53.912701>,  <33.022518, 39.180149, 53.608696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271351, 39.255409, 53.912701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750039, 0.421700, 0.509520,
		-0.224632, -0.887000, 0.403448,
		0.622079, 0.188148, 0.760013,
		33.457973, 39.311855, 54.140705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607506, 39.019928, 54.255066>,  <33.022518, 39.180149, 53.608696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607506, 39.019928, 54.255066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916706, 39.233303, 54.392422>,  <33.102226, 39.361328, 54.474834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916706, 39.233303, 54.392422>,  <32.607506, 39.019928, 54.255066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916706, 39.233303, 54.392422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574783, 0.359795, 0.734964,
		0.268508, -0.765501, 0.584733,
		0.772999, 0.533438, 0.343389,
		33.148605, 39.393333, 54.495438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481937, 38.976139, 54.937695>,  <32.607506, 39.019928, 54.255066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481937, 38.976139, 54.937695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.743870, 39.277531, 54.914124>,  <32.901028, 39.458366, 54.899979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.743870, 39.277531, 54.914124>,  <32.481937, 38.976139, 54.937695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743870, 39.277531, 54.914124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467483, 0.465077, 0.751773,
		0.593851, -0.464733, 0.656783,
		0.654829, 0.753477, -0.058932,
		32.940319, 39.503574, 54.896446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634590, 39.257931, 55.669712>,  <32.481937, 38.976139, 54.937695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634590, 39.257931, 55.669712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.737747, 39.553665, 55.420914>,  <32.799641, 39.731106, 55.271637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.737747, 39.553665, 55.420914>,  <32.634590, 39.257931, 55.669712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737747, 39.553665, 55.420914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330603, 0.672434, 0.662220,
		0.907852, 0.034854, 0.417839,
		0.257888, 0.739336, -0.621993,
		32.815113, 39.775467, 55.234314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923889, 39.845188, 56.051144>,  <32.634590, 39.257931, 55.669712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923889, 39.845188, 56.051144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804592, 40.038914, 55.722145>,  <32.733013, 40.155148, 55.524746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804592, 40.038914, 55.722145>,  <32.923889, 39.845188, 56.051144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804592, 40.038914, 55.722145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182662, 0.816823, 0.547206,
		0.936850, 0.313437, -0.155144,
		-0.298240, 0.484311, -0.822493,
		32.715118, 40.184208, 55.475395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280674, 40.464245, 56.026421>,  <32.923889, 39.845188, 56.051144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280674, 40.464245, 56.026421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.939957, 40.500767, 55.820080>,  <32.735527, 40.522678, 55.696274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.939957, 40.500767, 55.820080>,  <33.280674, 40.464245, 56.026421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939957, 40.500767, 55.820080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217218, 0.834505, 0.506378,
		0.476718, 0.543384, -0.690995,
		-0.851796, 0.091302, -0.515856,
		32.684418, 40.528156, 55.665321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193218, 41.165829, 55.979118>,  <33.280674, 40.464245, 56.026421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193218, 41.165829, 55.979118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.833054, 41.030849, 55.869297>,  <32.616955, 40.949863, 55.803402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.833054, 41.030849, 55.869297>,  <33.193218, 41.165829, 55.979118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833054, 41.030849, 55.869297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416165, 0.851987, 0.317687,
		0.126718, 0.400312, -0.907575,
		-0.900416, -0.337444, -0.274558,
		32.562927, 40.929615, 55.786930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972420, 41.658039, 55.541878>,  <33.193218, 41.165829, 55.979118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972420, 41.658039, 55.541878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.657883, 41.466541, 55.698063>,  <32.469158, 41.351643, 55.791775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.657883, 41.466541, 55.698063>,  <32.972420, 41.658039, 55.541878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657883, 41.466541, 55.698063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368873, 0.870855, 0.324875,
		-0.495571, 0.111432, -0.861390,
		-0.786347, -0.478742, 0.390466,
		32.421978, 41.322918, 55.815201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443699, 41.996120, 55.370476>,  <32.972420, 41.658039, 55.541878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443699, 41.996120, 55.370476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.314285, 41.801983, 55.695381>,  <32.236637, 41.685501, 55.890324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.314285, 41.801983, 55.695381>,  <32.443699, 41.996120, 55.370476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314285, 41.801983, 55.695381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165041, 0.874216, 0.456627,
		-0.931713, 0.013677, -0.362939,
		-0.323532, -0.485345, 0.812261,
		32.217224, 41.656380, 55.939060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771688, 42.271385, 55.303673>,  <32.443699, 41.996120, 55.370476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771688, 42.271385, 55.303673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.835634, 42.141518, 55.676559>,  <31.874002, 42.063595, 55.900291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.835634, 42.141518, 55.676559>,  <31.771688, 42.271385, 55.303673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835634, 42.141518, 55.676559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289723, 0.887343, 0.358726,
		-0.943665, -0.327432, 0.047789,
		0.159864, -0.324671, 0.932219,
		31.883593, 42.044117, 55.956226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257000, 42.495453, 55.647026>,  <31.771688, 42.271385, 55.303673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257000, 42.495453, 55.647026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454847, 42.388821, 55.977913>,  <31.573555, 42.324841, 56.176445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454847, 42.388821, 55.977913>,  <31.257000, 42.495453, 55.647026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454847, 42.388821, 55.977913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377905, 0.791145, 0.480914,
		-0.782650, -0.550478, 0.290573,
		0.494617, -0.266578, 0.827218,
		31.603233, 42.308846, 56.226078>
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
