if (! $?MODULEPATH && ( `readlink /etc/alternatives/modules.csh` == /usr/share/lmod/lmod/init/cshrc || -f /etc/profile.d/z00_lmod.csh ) ) then
  setenv MODULEPATH /etc/modulefiles:/usr/share/modulefiles
endif
