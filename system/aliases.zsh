#### ls joy 
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

#### Utilities 
alias pdfmerge="/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py"
alias jconsole="j64-802/bin/jconsole" # <3
alias servo="python -m 'SimpleHTTPServer'"
alias uv4="wine ~/.wine/drive_c/Keil/UV4/uv4.exe"
alias apl="apl | ~/code/Perl/colorstrip.pl" 
