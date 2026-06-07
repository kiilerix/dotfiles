# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export HISTSIZE=1000000
export HISTFILESIZE=1000000
export HISTCONTROL=ignoredups

export cache_clean_interval_s=864000
export max_unused_age_s=864000
