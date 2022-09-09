mob
	proc
		Question_Check(var/msg as text)
			msg = " [msg] "

			if(findtext(msg,"?",1,0))
				return 1

			if(findtext(msg," can you ",1,0))
				return 1
			if(findtext(msg," can u ",1,0))
				return 1
			if(findtext(msg," can he ",1,0))
				return 1
			if(findtext(msg," can she ",1,0))
				return 1
			if(findtext(msg," can it ",1,0))
				return 1

			if(findtext(msg," could you ",1,0))
				return 1
			if(findtext(msg," could u ",1,0))
				return 1
			if(findtext(msg," could he ",1,0))
				return 1
			if(findtext(msg," could she ",1,0))
				return 1
			if(findtext(msg," could it ",1,0))
				return 1

			if(findtext(msg," would you ",1,0))
				return 1
			if(findtext(msg," would u ",1,0))
				return 1
			if(findtext(msg," would he ",1,0))
				return 1
			if(findtext(msg," would she ",1,0))
				return 1
			if(findtext(msg," would it ",1,0))
				return 1

			if(findtext(msg," woud you ",1,0))
				return 1
			if(findtext(msg," woud u ",1,0))
				return 1
			if(findtext(msg," woud he ",1,0))
				return 1
			if(findtext(msg," woud she ",1,0))
				return 1
			if(findtext(msg," would it ",1,0))
				return 1

			if(findtext(msg," wold you ",1,0))
				return 1
			if(findtext(msg," wold u ",1,0))
				return 1
			if(findtext(msg," wold he ",1,0))
				return 1
			if(findtext(msg," wold she ",1,0))
				return 1
			if(findtext(msg," wold it ",1,0))
				return 1

			if(findtext(msg," wood you ",1,0))
				return 1
			if(findtext(msg," wood u ",1,0))
				return 1
			if(findtext(msg," wood he ",1,0))
				return 1
			if(findtext(msg," wood she ",1,0))
				return 1
			if(findtext(msg," wood it ",1,0))
				return 1

			if(findtext(msg," wld you ",1,0))
				return 1
			if(findtext(msg," wld u ",1,0))
				return 1
			if(findtext(msg," wld he ",1,0))
				return 1
			if(findtext(msg," wld she ",1,0))
				return 1
			if(findtext(msg," wld it ",1,0))
				return 1

			if(findtext(msg," do you ",1,0))
				return 1
			if(findtext(msg," do u ",1,0))
				return 1

			if(findtext(msg," does he ",1,0))
				return 1
			if(findtext(msg," does she ",1,0))
				return 1
			if(findtext(msg," does it ",1,0))
				return 1

			if(findtext(msg," what are ",1,0))
				return 1
			if(findtext(msg," wht are ",1,0))
				return 1
			if(findtext(msg," wat are ",1,0))
				return 1

			if(findtext(msg," what r ",1,0))
				return 1
			if(findtext(msg," wht r ",1,0))
				return 1
			if(findtext(msg," wat r ",1,0))
				return 1

			if(findtext(msg," what do ",1,0))
				return 1
			if(findtext(msg," wht do ",1,0))
				return 1
			if(findtext(msg," wat do ",1,0))
				return 1

			if(findtext(msg," what dont ",1,0))
				return 1
			if(findtext(msg," wht dont ",1,0))
				return 1
			if(findtext(msg," wat dont ",1,0))
				return 1

			if(findtext(msg," what dnt ",1,0))
				return 1
			if(findtext(msg," wht dnt ",1,0))
				return 1
			if(findtext(msg," wat dnt ",1,0))
				return 1

			if(findtext(msg," what is ",1,0))
				return 1
			if(findtext(msg," wht is ",1,0))
				return 1
			if(findtext(msg," wat is ",1,0))
				return 1

			if(findtext(msg," what way ",1,0))
				return 1
			if(findtext(msg," wht way ",1,0))
				return 1
			if(findtext(msg," wat way ",1,0))
				return 1

			if(findtext(msg," whats ",1,0))
				return 1
			if(findtext(msg," whts ",1,0))
				return 1

			if(findtext(msg," when is ",1,0))
				return 1
			if(findtext(msg," wen is ",1,0))
				return 1
			if(findtext(msg," whn is ",1,0))
				return 1

			if(findtext(msg," when are ",1,0))
				return 1
			if(findtext(msg," wen are ",1,0))
				return 1
			if(findtext(msg," whn are ",1,0))
				return 1


			if(findtext(msg," when r ",1,0))
				return 1
			if(findtext(msg," wen r ",1,0))
				return 1
			if(findtext(msg," whn r ",1,0))
				return 1

			if(findtext(msg," when do ",1,0))
				return 1
			if(findtext(msg," wen do ",1,0))
				return 1
			if(findtext(msg," whn do ",1,0))
				return 1

			if(findtext(msg," when dont ",1,0))
				return 1
			if(findtext(msg," wen dont ",1,0))
				return 1
			if(findtext(msg," whn dont ",1,0))
				return 1


			if(findtext(msg," when dnt ",1,0))
				return 1
			if(findtext(msg," wen dnt ",1,0))
				return 1
			if(findtext(msg," whn dnt ",1,0))
				return 1

			if(findtext(msg," where are ",1,0))
				return 1
			if(findtext(msg," wher are ",1,0))
				return 1
			if(findtext(msg," wer are ",1,0))
				return 1

			if(findtext(msg," where r ",1,0))
				return 1
			if(findtext(msg," wher r ",1,0))
				return 1
			if(findtext(msg," wer r ",1,0))
				return 1

			if(findtext(msg," where do ",1,0))
				return 1
			if(findtext(msg," wher do ",1,0))
				return 1
			if(findtext(msg," wer do ",1,0))
				return 1
			if(findtext(msg," were do ",1,0))
				return 1

			if(findtext(msg," where dont ",1,0))
				return 1
			if(findtext(msg," wher dont ",1,0))
				return 1
			if(findtext(msg," wer dont ",1,0))
				return 1
			if(findtext(msg," were dont ",1,0))
				return 1

			if(findtext(msg," where dnt ",1,0))
				return 1
			if(findtext(msg," wher dnt ",1,0))
				return 1
			if(findtext(msg," wer dnt ",1,0))
				return 1
			if(findtext(msg," were dnt ",1,0))
				return 1

			if(findtext(msg," where is ",1,0))
				return 1
			if(findtext(msg," wher is ",1,0))
				return 1
			if(findtext(msg," wer is ",1,0))
				return 1


			if(findtext(msg," were you ",1,0))
				return 1
			if(findtext(msg," wer u ",1,0))
				return 1
			if(findtext(msg," wer you ",1,0))
				return 1

			if(findtext(msg," who is ",1,0))
				return 1
			if(findtext(msg," who are ",1,0))
				return 1

			if(findtext(msg," why is ",1,0))
				return 1
			if(findtext(msg," why are ",1,0))
				return 1
			if(findtext(msg," why r ",1,0))
				return 1
			if(findtext(msg," why dont ",1,0))
				return 1
			if(findtext(msg," why do ",1,0))
				return 1
			if(findtext(msg," why dnt ",1,0))
				return 1

			if(findtext(msg," how is ",1,0))
				return 1
			if(findtext(msg," how are ",1,0))
				return 1
			if(findtext(msg," how r ",1,0))
				return 1
			if(findtext(msg," how do ",1,0))
				return 1
			if(findtext(msg," how dont ",1,0))
				return 1
			if(findtext(msg," how dnt ",1,0))
				return 1

			if(!findtext(msg," witch the ",1,0)&&!findtext(msg," wtch the ",1,0)&&!findtext(msg," which the ",1,0)&&!findtext(msg," whch the ",1,0)&&!findtext(msg," wch the ",1,0))
				if(findtext(msg," witch ",1,0)&&findtext(msg," will ",1,0))
					return 1
				if(findtext(msg," wtch ",1,0)&&findtext(msg," will ",1,0))
					return 1
				if(findtext(msg," which ",1,0)&&findtext(msg," will ",1,0))
					return 1
				if(findtext(msg," whch ",1,0)&&findtext(msg," will ",1,0))
					return 1
				if(findtext(msg," wch ",1,0)&&findtext(msg," will ",1,0))
					return 1

				if(findtext(msg," witch ",1,0)&&findtext(msg," wll ",1,0))
					return 1
				if(findtext(msg," wtch ",1,0)&&findtext(msg," wll ",1,0))
					return 1
				if(findtext(msg," which ",1,0)&&findtext(msg," wll ",1,0))
					return 1
				if(findtext(msg," whch ",1,0)&&findtext(msg," wll ",1,0))
					return 1
				if(findtext(msg," wch ",1,0)&&findtext(msg," wll ",1,0))
					return 1

				if(findtext(msg," witch ",1,0)&&findtext(msg," wil ",1,0))
					return 1
				if(findtext(msg," wtch ",1,0)&&findtext(msg," wil ",1,0))
					return 1
				if(findtext(msg," which ",1,0)&&findtext(msg," wil ",1,0))
					return 1
				if(findtext(msg," whch ",1,0)&&findtext(msg," wil ",1,0))
					return 1
				if(findtext(msg," wch ",1,0)&&findtext(msg," wil ",1,0))
					return 1

				if(findtext(msg," witch ",1,0)&&findtext(msg," wl ",1,0))
					return 1
				if(findtext(msg," wtch ",1,0)&&findtext(msg," wl ",1,0))
					return 1
				if(findtext(msg," which ",1,0)&&findtext(msg," wl ",1,0))
					return 1
				if(findtext(msg," whch ",1,0)&&findtext(msg," wl ",1,0))
					return 1
				if(findtext(msg," wch ",1,0)&&findtext(msg," wl ",1,0))
					return 1

				if(findtext(msg," witch ",1,0)&&findtext(msg," are ",1,0))
					return 1
				if(findtext(msg," wtch ",1,0)&&findtext(msg," are ",1,0))
					return 1
				if(findtext(msg," which ",1,0)&&findtext(msg," are ",1,0))
					return 1
				if(findtext(msg," whch ",1,0)&&findtext(msg," are ",1,0))
					return 1
				if(findtext(msg," wch ",1,0)&&findtext(msg," are ",1,0))
					return 1

				if(findtext(msg," witch ",1,0)&&findtext(msg," r ",1,0))
					return 1
				if(findtext(msg," wtch ",1,0)&&findtext(msg," r ",1,0))
					return 1
				if(findtext(msg," which ",1,0)&&findtext(msg," r ",1,0))
					return 1
				if(findtext(msg," whch ",1,0)&&findtext(msg," r ",1,0))
					return 1
				if(findtext(msg," wch ",1,0)&&findtext(msg," r ",1,0))
					return 1

			if(findtext(msg," witch way ",1,0))
				return 1
			if(findtext(msg," wtch way ",1,0))
				return 1
			if(findtext(msg," which way ",1,0))
				return 1
			if(findtext(msg," whch way ",1,0))
				return 1
			if(findtext(msg," wch way ",1,0))
				return 1

			if(findtext(msg," witch do ",1,0))
				return 1
			if(findtext(msg," wtch do ",1,0))
				return 1
			if(findtext(msg," which do ",1,0))
				return 1
			if(findtext(msg," whch do ",1,0))
				return 1
			if(findtext(msg," wch do ",1,0))
				return 1

			if(findtext(msg," witch is ",1,0))
				return 1
			if(findtext(msg," wtch is ",1,0))
				return 1
			if(findtext(msg," which is ",1,0))
				return 1
			if(findtext(msg," whch is ",1,0))
				return 1
			if(findtext(msg," wch is ",1,0))
				return 1
			return 0