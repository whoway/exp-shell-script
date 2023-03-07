#mypath=./src/gromacs/nbnxm/kernels_simd_4xm/kernel_outer.h
mypath=./src/gromacs/nbnxm/kernels_simd_4xm/kernel_inner.h
target=("pme_redistribute.cpp" "pme_spread.cpp" "pme_gpu.cpp" "pme_grid.cpp" "pme_solve.cpp" "pme_pp.cpp" "pme.cpp" "nrnb.cpp" "md_support.cpp" "coupling.cpp" "vcm.cpp" "calcvir.cpp" "force.cpp" "calcmu.cpp" "constr.cpp" "sim_util.cpp" "mdatoms.cpp" "include" "omp")
# grep -r "#pragma omp" | awk '{print $1}' | uniq
# grep -r ${target} ${mypath}
for value in ${target[@]}
do
  echo 'target=' ${value}
  echo 'search path=' ${mypath}
  grep -r ${value} ${mypath}
done
