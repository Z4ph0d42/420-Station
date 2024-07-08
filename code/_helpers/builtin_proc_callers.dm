/*
	You cannot call built-in BYOND methods directly using call()(), hence these helpers
*/

/proc/prob_call(var/probability)
	return prob(probability)

/proc/Call(Object,ProcRef,list/Arguments)
	if(Object)
		ProcRef = ProcRef_to_Text(ProcRef)
		call(Object,ProcRef)(arglist(Arguments))
	else
		call(ProcRef)(arglist(Arguments))

/proc/ProcRef_to_Text(ProcRef)
	if(!istext(ProcRef))
		var/thetext = "[ProcRef]"
		var/thelength = length(thetext)
		if(thelength > 0)
			var/textcharacter = ""
			while(textcharacter != "/")
				if(thelength <= 0)
					break
				textcharacter = copytext(thetext,thelength,thelength+1)
				if(textcharacter != "/")
					thelength--
			if(textcharacter == "/")
				ProcRef = copytext(thetext,thelength+1,length(thetext)+1)
	. = ProcRef