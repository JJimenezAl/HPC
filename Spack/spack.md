# SPACK
spack 
spack clean --all


export TMP=/data/scratch/user/temp
export TMPDIR=/data/scratch/user/temp


spack list | grep netcdf

spack edit netcdf

Ejemplos java editados porque no descarga automatico el paquete

    version('1.8.0_181-b13', 'ef599e322eee42f6769991dd3e3b1a31', curl_options=curl_options,
            url='file:///tmp/jdk-8u181-linux-x64.tar.gz')

Acordarse de mirart el md5sum ( a vaces sha256 ) del nuevo fichero bajado para que coinicida.
Lo dice al ejecutar

spack find

spack spec netcdf # Enseña que va a ser instalado


spack install netcdf
spack install netcdf %gcc@7.3.0 # con esa version de gcc

$ spack install mpileaks # unconstrained
$ spack install mpileaks@3.3 #@ custom version
$ spack install mpileaks@3.3 %gcc@4.7.3 #% custom compiler
$ spack install mpileaks@3.3 %gcc@4.7.3 +threads    # +/- build option
$ spack install mpileaks@3.3 cppflags="-O3 –g3"  #3set compiler flags
$ spack install mpileaks@3.3 target=skylake #set target microarchitecture 
$ spack install mpileaks@3.3 ^mpich@3.2 %gcc@4.9.3 #^ dependency information

spack install jdk@1.8.0_181-b13


spack module tcl loads boost
#Interesting command that could help with constructing dependency specs, if
it actually showed the dependencies and not only the variants

spack module tcl loads --dependencies boost>myenv.sh
source myenv.sh

spack find --deps boost

spack install --dirty. 

spack uninstall -all jdk
#todo lo que lleve Java
spack uninstall --dependents mpich
spack uninstall --force mpich

spack gc (“garbage collector”)



spack compiler # muestra compiladores

spack compiler find # busca los instalados. 
spack config get compilers

spack config edit compilers

compilers:
- compiler:
    environment: {}
    extra_rpaths: []
    flags: {}
    modules: []
    operating_system: ubuntu18.04
    paths:
      cc: /usr/bin/gcc-7
      cxx: /usr/bin/g++-7
      f77: /usr/bin/gfortran-7
      fc: /usr/bin/gfortran-7
    spec: gcc@7.3.0
    target: x86_64

==> Found no new compilers
==> Compilers are defined in the following files:
    /home/wrf/.spack/linux/compilers.yaml

spack install gcc
spack compiler add $(spack location -i gcc@8.2.0)whi


###Load

 . /software/shared/apps/Spack/0.12.1/share/spack/setup-env.sh

spack load netCDF 



/opt/LocalModules/apps/Spack/0.17.0/share/spack/setup-env.sh
[nashpc01@servintelgpu ~]$ spack load gcc


spack compilers # muestra compiladores

spack compiler find # busca los instalados. 
# lo ha encponrado despues de importar el gccore de easybuild?
el 7.30 si ya que ha cogido las rutas de eb. Puedo probar antes de impirtar lso modules de eb  
spack compiler add$(spack location -i gcc@7.3.0)
o
spack compiler add$(spack location -i gcc@7.3.0%gcc@4.8.5)

El 8  podria añadirlo a mano en el fichero peor mejor hacerlo automatico y comrpobar als rutas en el fichero que llama a los binarios de spack 
y no los de por defecto /bin o loes de EB



[python@master ~]$ cat $HOME/.spack/linux/compilers.yaml
compilers:
- compiler:
    environment: {}
    extra_rpaths: []
    flags: {}
    modules: []
    operating_system: centos7
    paths:
      cc: /usr/bin/gcc
      cxx: /usr/bin/g++
      f77: null
      fc: null
    spec: gcc@4.8.5
    target: x86_64
- compiler:
    environment: {}
    extra_rpaths: []
    flags: {}
    modules: []
    operating_system: centos7
    paths:
      cc: /software/shared/apps/GCCcore/7.3.0/bin/gcc
      cxx: /software/shared/apps/GCCcore/7.3.0/bin/g++
      f77: /software/shared/apps/GCCcore/7.3.0/bin/gfortran
      fc: /software/shared/apps/GCCcore/7.3.0/bin/gfortran
    spec: gcc@7.3.0
    target: x86_64


Lo añade  spack compiler add$(spack location -i gcc@8.2.0%gcc@7.3.0)
#viendel comando spack compiler add $(spack location -i gcc@8.2.0) aunque ha habido que especificar la version de gcc)

spack config get compilers

spack config edit compilers

compilers:
- compiler:
    environment: {}
    extra_rpaths: []
    flags: {}
    modules: []
    operating_system: ubuntu18.04
    paths:
      cc: /usr/bin/gcc-7
      cxx: /usr/bin/g++-7
      f77: /usr/bin/gfortran-7
      fc: /usr/bin/gfortran-7
    spec: gcc@7.3.0
    target: x86_64

==> Found no new compilers
==> Compilers are defined in the following files:
    /home/wrf/.spack/linux/compilers.yaml

spack install gcc






###Load

 . /software/shared/apps/Spack/0.12.1/share/spack/setup-env.sh

spack load netCDF 











##Problemilaas java

Descargo fichero manual en una carpeta
desde esa carpeta lanzo instalacion

si no lo coge 

modificso spack spec java u en url pongo file:///fichero local  en vez de http:///y la ruta del oracle.
Sobreescribir si es necesario el arhivo dentro de la caché 

ls  /software/shared/apps/Spack/0.12.1/var/spack/cache/jdk/

spack 



