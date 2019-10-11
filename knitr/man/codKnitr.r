spar <- function(mar=if(!axes)
                 c(2.25+bot-.45*multi,2+left,.5+top+.25*multi,.5+rt) else
                 c(3.25+bot-.45*multi,3.5+left,.5+top+.25*multi,.5+rt),
                 lwd = if(multi)1 else 1.75,
                 mgp = if(!axes) mgp=c(.75, .1, 0) else
                       if(multi) c(1.5, .365, 0) else c(2.4-.4, 0.475, 0),
                 tcl = if(multi)-0.25 else -0.4,
                 bot=0, left=0, top=0, rt=0, ps=if(multi) 14 else 10,
                 mfrow=NULL, axes=TRUE, ...)
  {
    multi <- length(mfrow) > 0
    par(mar=mar, lwd=lwd, mgp=mgp, tcl=tcl, ps=ps, ...)
    if(multi) par(mfrow=mfrow)
  }

render_listings()
unlink('messages.txt') # Start fresh with each run
hook_log = function(x, options) cat(x, file='messages.txt', append=TRUE)
knit_hooks$set(warning = hook_log, message = hook_log)
knit_hooks$set(par=function(before, options, envir)
               if(before && options$fig.show != 'none')
               {
                 p <- c('bty','mfrow','ps','bot','top','left','rt','lwd',
                        'mgp','tcl', 'axes')
                 pars <- opts_current$get(p)
                 pars <- pars[!is.na(names(pars))]
                 if(length(pars)) do.call('spar', pars) else spar()
               })
# Set short aliases for names of commonly used parameters
opts_knit$set(aliases=c(h='fig.height', w='fig.width', po='fig.pos', 
                        s='fig.show', cap='fig.cap', scap='fig.scap', 
                        rf='fig.ref', fl='fig.label', fa='fig.align'))
opts_knit$set(eval.after = c('fig.cap','fig.scap'))
## see http://yihui.name/knitr/options#package_options
## Use caption package options to control caption font size
