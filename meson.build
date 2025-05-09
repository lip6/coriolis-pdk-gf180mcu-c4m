
project(
  'coriolis-pdk-gf180mcu-c4m',
   version:  '2025.05.07',
   meson_version: '>= 1.2.0',
)

py       = import( 'python' ).find_installation( pure:false )
py_deps  = dependency( 'python3', required: true )
pdks_dir = py.get_install_dir() / 'pdks' / 'gf180mcu_c4m'

install_subdir( 'libs.ref'         , install_dir:pdks_dir )
install_subdir( 'libs.tech/klayout', install_dir:pdks_dir )
install_subdir( 'libs.tech/ngspice', install_dir:pdks_dir )

cells_files = [ 'libs.tech/coriolis/__init__.py'
              , 'libs.tech/coriolis/techno.py'
              , 'libs.tech/coriolis/StdCell3V3Lib.py'
              , 'libs.tech/coriolis/StdCell5V0Lib.py'
              , 'libs.tech/coriolis/iolib.py'
              ]

core2chip_files = [ 'libs.tech/coriolis/core2chip/__init__.py'
                  , 'libs.tech/coriolis/core2chip/gf180mcu.py'
                  ]

py.install_sources( files(     cells_files), subdir:'pdks/gf180mcu_c4m' )
py.install_sources( files( core2chip_files), subdir:'pdks/gf180mcu_c4m/core2chip' )

