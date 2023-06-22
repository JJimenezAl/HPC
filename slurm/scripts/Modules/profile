# -*- shell-script -*-
########################################################################
#  This is the system wide source file for setting up
#  modules:
#
########################################################################

if [ -z "${USER_IS_ROOT:-}" ]; then

  if [ -z "${MODULEPATH_ROOT:-}" ]; then
    export USER=${USER-${LOGNAME}}  # make sure $USER is set
    export LMOD_sys=`uname`

    export MODULEPATH_ROOT="/usr/share/modulefiles"
    MODULEPATH_INIT="/usr/share/lmod/lmod/init/.modulespath"
    if [ -f ${MODULEPATH_INIT} ]; then
       for str in $(cat ${MODULEPATH_INIT} | sed 's/#.*$//'); do   # Allow end-of-line comments.
          for dir in $str; do
              if [ -d $dir ]; then
                  export MODULEPATH=$(/usr/share/lmod/lmod/libexec/addto --append MODULEPATH $dir)
              fi
	  done
       done
    else
       export MODULEPATH=$(/usr/share/lmod/lmod/libexec/addto --append MODULEPATH $MODULEPATH_ROOT/$LMOD_sys $MODULEPATH_ROOT/Core)
       export MODULEPATH=$(/usr/share/lmod/lmod/libexec/addto --append MODULEPATH /usr/share/lmod/lmod/modulefiles/Core)
       export MODULEPATH=$(/usr/share/lmod/lmod/libexec/addto --append MODULEPATH /software/shared_power9/modules/all/)
    fi

    export BASH_ENV=/usr/share/lmod/lmod/init/bash

    #
    # If MANPATH is empty, Lmod is adding a trailing ":" so that
    # the system MANPATH will be found
    if [ -z "${MANPATH:-}" ]; then
      export MANPATH=:
    fi
    export MANPATH=$(/usr/share/lmod/lmod/libexec/addto MANPATH /usr/share/lmod/lmod/share/man)
  fi

  PS_CMD=/usr/bin/ps
  if [ ! -x $PS_CMD ]; then
      if   [ -x /bin/ps ]; then
          PS_CMD=/bin/ps
      elif [ -x /usr/bin/ps ]; then
          PS_CMD=/usr/bin/ps
      fi
  fi
  EXPR_CMD=/usr/bin/expr
  if [ ! -x $EXPR_CMD ]; then
      if   [ -x /usr/bin/expr ]; then
          EXPR_CMD=/usr/bin/expr
      elif [ -x /bin/expr ]; then
          EXPR_CMD=/bin/expr
      fi
  fi
  BASENAME_CMD=/usr/bin/basename
  if [ ! -x $BASENAME_CMD ]; then
      if   [ -x /bin/basename ]; then
          BASENAME_CMD=/bin/basename
      elif [ -x /usr/bin/basename ]; then
          BASENAME_CMD=/usr/bin/basename
      fi
  fi


  my_shell=$($PS_CMD -p $$ -ocomm=)
  my_shell=$($EXPR_CMD    "$my_shell" : '-*\(.*\)')
  my_shell=$($BASENAME_CMD $my_shell)
  if [ -f /usr/share/lmod/lmod/init/$my_shell ]; then
     .    /usr/share/lmod/lmod/init/$my_shell >/dev/null # Module Support
  else
     .    /usr/share/lmod/lmod/init/sh        >/dev/null # Module Support
  fi
  unset my_shell PS_CMD EXPR_CMD BASENAME_CMD MODULEPATH_INIT
fi

# Local Variables:
# mode: shell-script
# indent-tabs-mode: nil
# End:

