#!/usr/bin/env zsh

# Adapted from https://github.com/ThiefMaster/zsh-config/blob/master/zshrc.d/shellopts.zsh

# Changing Directories
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# Completion
setopt AUTO_LIST
setopt AUTO_MENU
setopt AUTO_PARAM_SLASH
setopt COMPLETE_IN_WORD
setopt HASH_LIST_ALL
setopt LIST_AMBIGUOUS
setopt LIST_PACKED
setopt LIST_ROWS_FIRST
setopt LIST_TYPES

# Expansion and Globbing
setopt BAD_PATTERN
setopt BARE_GLOB_QUAL
setopt BRACE_CCL
setopt CASE_GLOB
setopt CASE_MATCH
setopt EQUALS
setopt EXTENDED_GLOB
setopt GLOB
setopt MAGIC_EQUAL_SUBST
setopt MARK_DIRS
setopt MULTIBYTE
setopt NOMATCH
setopt NUMERIC_GLOB_SORT
setopt RC_EXPAND_PARAM
setopt UNSET

# History
setopt APPEND_HISTORY
setopt BANG_HIST
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FCNTL_LOCK
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_FUNCTIONS
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_BY_COPY
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Input / Output
setopt ALIASES
setopt CORRECT
setopt INTERACTIVE_COMMENTS
setopt HASH_CMDS
setopt HASH_DIRS
setopt RC_QUOTES
setopt SHORT_LOOPS

# Job Control
setopt AUTO_CONTINUE
setopt BG_NICE
setopt CHECK_JOBS
setopt HUP
setopt LONG_LIST_JOBS
setopt MONITOR
setopt NOTIFY

# Prompt
setopt PROMPT_CR
setopt PROMPT_SP
setopt PROMPT_PERCENT
setopt PROMPT_SUBST

# Scripts and Functions
setopt C_BASES
setopt EVAL_LINENO
setopt EXEC
setopt FUNCTION_ARGZERO
setopt LOCAL_OPTIONS
setopt LOCAL_TRAPS
setopt MULTIOS

# Zle
setopt BEEP
setopt EMACS
setopt ZLE
