



 

 

 function oikea(event)
		if( system.getTimer() - gamestart > 4500 ) then
		if event.phase== "ended" then
		score=(score +1)
		scoretext.text="score ="..score
		
		 if math.random(1,4)==1
		then
		nelio.isVisible=true
		kolmio2.isVisible=false
		ympyra2.isVisible=false
		tahti3.isVisible=false
		hidden2.isVisible=true
		hidden3.isVisible=true
		hidden4.isVisible=true
		nelio3.isVisible=false
		nelio4.isVisible=false
	
		nelio2.isVisible=false
		
		else if
		
		math.random(1,4)==2 then
		kolmio2.isVisible=true
		nelio.isVisible=false
		ympyra2.isVisible=false
		tahti3.isVisible=false
		nelio3.isVisible=false
		nelio4.isVisible=false
		
		hidden2.isVisible=false
		hidden3.isVisible=true
		hidden4.isVisible=true
		nelio2.isVisible=true
		
		
		else if
		math.random(1,4)== 3 then
		ympyra2.isVisible=true
		nelio.isVisible=false
		tahti3.isVisible=false
		kolmio2.isVisible=false
		hidden2.isVisible=true
		hidden3.isVisible=false
		nelio2.isVisible=false
		nelio4.isVisible=false
		nelio3.isVisible=true
		hidden4.isVisible=true
		
		else if
		
		math.random(1,4)==4 then
		tahti3.isVisible=true
		nelio.isVisible=false
		nelio2.isVisible=false
		nelio3.isVisible=false
		ympyra2.isVisible=false
		kolmio2.isVisible=false
		hidden2.isVisible=true
		hidden3.isVisible=true
		hidden4.isVisible=false
		nelio4.isVisible=true
						end
					end
				end
			end
		end
	end	
end	

		
	
		 function ohi(event)
		 if( system.getTimer() - gamestart > 4500 ) then
		 if event.phase=="ended" then
		 score=(score -2)
		 
		scoretext.text="score ="..score
		 
		 
			
			
		end
	end
end
		function gameover()
		
			gameobjects.isVisible=false
		hidden2.isVisible=false
		hidden3.isVisible=false
		hidden4.isVisible=false
		
		
		
		display.setDefault("background" ,255,255,255)
		frame2=display.newImage("testi.png")
		frame2.x=display.contentWidth/2
		frame2.y=display.contentHeight/2
		
		teksti=display.newText("peli päättyi",0,0, "Verdana",35)
		teksti.x=display.contentWidth/2
		teksti.y=display.contentHeight/2-40
		teksti:setTextColor(0,0,0)
		
		Runtime:removeEventListener("enterFrame",timer)
		timerText.text=""
		endscore=display.newText("Pisteesi= ",0,0,"Verdana",25)
		endscore.x=display.contentWidth/2
		endscore.y=display.contentHeight/2+10
		endscore.text="Pisteesi= "..score
		endscore:setTextColor(0,0,0)
		
		start=display.newImage("menu.png")
		start.x=display.contentWidth/2
		start.y=display.contentHeight/2+130
		
		quit2=display.newImage("lopeta.png")
		quit2.x=display.contentWidth/2
		quit2.y=display.contentHeight/2+180
		
		
		
		
		
		start:addEventListener("touch",backtomenu)
		quit2:addEventListener("touch",exitgame)
		
		
		
		teksti:toFront()
	end
	
function backtomenu()
		start:removeSelf()
		quit2:removeSelf()
		frame2:removeSelf()
		teksti:removeSelf()
		endscore:removeSelf()
		scoretext:removeSelf()
		menu()

				
		end		
-- 4 ensimmäistä nappia
 function menu()
		
		
		
		display.setStatusBar(display.HiddenStatusBar)
		display.setDefault("background" ,255,255,255)
		frame=display.newImage("testi.png")
		frame.x=display.contentWidth/2
		frame.y=display.contentHeight/2
		
		play=display.newImage("pelaa.png")
		play.x=display.contentWidth/2
		play.y=display.contentHeight/2-25
		play:addEventListener("touch",lataa)
		
	
		
		
	
		
		
 function exitgame()
		
		native.requestExit()
	end
		quit=display.newImage("lopeta.png")
		quit.x=display.contentWidth/2
		quit.y=display.contentHeight/2+15
		

		quit:addEventListener("touch",exitgame)
		
		name=display.newImage("nimi.png")
		name.x=display.contentWidth/2
		name.y=display.contentHeight/2-85
		
		
		
		
		
		
		menugroup=display.newGroup()
		menugroup:insert(frame)
		menugroup:insert(play)
		menugroup:insert(quit)
		menugroup:insert(name)
		
		
		
		
		
		
		
end

function lataa()
		menugroup.isVisible=false
		
		display.setDefault("background" ,0,0,0)
		timerText=display.newText("osu neliöön as",0,0,"Verdana",20)
		timerText.x=display.contentWidth/2
		timerText.y=display.contentHeight/2
		timerText:setTextColor(255,255,255)
		score=0
		scoretext=display.newText("score= ",0,0,"Verdana",25)
		scoretext.x=display.contentWidth*0.2
		scoretext.y=display.contentHeight*0.02
		scoretext.text="score = ".. score
		scoretext:setTextColor(255,255,255)
		
		
		
		
		gamestart = system.getTimer()
		timerNum=20
		Runtime:addEventListener("enterFrame",timer)
		peli()
		
		
		
		
end

function peli()
	nelio = display.newImage( "nelio.png" )
	nelio.x = display.contentWidth*0.25
	nelio.y = display.contentHeight*0.2
	nelio:addEventListener("touch",oikea)
	
	kolmio = display.newImage( "kolmio.png" )
	kolmio.x = display.contentWidth*0.75
	kolmio.y = display.contentHeight*0.2
	kolmio:addEventListener("touch",ohi)
	
	ympyra = display.newImage( "circle.png" )
	ympyra.x = display.contentWidth*0.25
	ympyra.y = display.contentHeight*0.8
	ympyra:addEventListener("touch",ohi)
	
	tahti = display.newImage( "tahti1.png" )
	tahti.x = display.contentWidth*0.75
	tahti.y = display.contentHeight*0.8
	tahti:addEventListener("touch",ohi)
	
	--nelion alla olevat 3 vaihtoehtoa
	
	nelio2 = display.newImage( "kolmio.png" )
	nelio2.x = display.contentWidth*0.25
	nelio2.y = display.contentHeight*0.2
	nelio2:addEventListener("touch",ohi)
	nelio2.isVisible=false
	
	nelio3 = display.newImage( "circle.png" )
	nelio3.x = display.contentWidth*0.25
	nelio3.y = display.contentHeight*0.2
	nelio3:addEventListener("touch",ohi)
	nelio3.isVisible=false
	
	nelio4 = display.newImage( "tahti1.png" )
	nelio4.x = display.contentWidth*0.25
	nelio4.y = display.contentHeight*0.2
	nelio4:addEventListener("touch",ohi)
	nelio4.isVisible=false
	
	--kolmion alla olevat vaihtoehdot
	
	kolmio2 = display.newImage( "nelio.png" )
	kolmio2.x = display.contentWidth*0.75
	kolmio2.y = display.contentHeight*0.2
	kolmio2:addEventListener("touch",oikea)
	kolmio2.isVisible=false
	
	kolmio3 = display.newImage( "circle.png" )
	kolmio3.x = display.contentWidth*0.75
	kolmio3.y = display.contentHeight*0.2
	kolmio3:addEventListener("touch",ohi)
	kolmio3.isVisible=false
	
	kolmio4 = display.newImage( "tahti1.png" )
	kolmio4.x = display.contentWidth*0.75
	kolmio4.y = display.contentHeight*0.2
	kolmio4:addEventListener("touch",ohi)
	kolmio4.isVisible=false
	
	--ympyrän alla olevat vaihtoehdot
	
	ympyra2 = display.newImage( "nelio.png" )
	ympyra2.x = display.contentWidth*0.25
	ympyra2.y = display.contentHeight*0.8
	ympyra2:addEventListener("touch",oikea)
	ympyra2.isVisible=false
	
	ympyra3 = display.newImage( "tahti1.png" )
	ympyra3.x = display.contentWidth*0.25
	ympyra3.y = display.contentHeight*0.8
	ympyra3:addEventListener("touch",ohi)
	ympyra3.isVisible=false
	
	ympyra4 = display.newImage( "kolmio.png" )
	ympyra4.x = display.contentWidth*0.25
	ympyra4.y = display.contentHeight*0.8
	ympyra4:addEventListener("touch",ohi)
	ympyra4.isVisible=false
	
	--tähden alla olevat vaihtoehdot
	
	tahti2 = display.newImage( "circle.png" )
	tahti2.x = display.contentWidth*0.75
	tahti2.y = display.contentHeight*0.8
	tahti2:addEventListener("touch",ohi)
	tahti2.isVisible=false
	
	tahti3 = display.newImage( "nelio.png" )
	tahti3.x = display.contentWidth*0.75
	tahti3.y = display.contentHeight*0.8
	tahti3:addEventListener("touch",oikea)
	tahti3.isVisible=false
	
	tahti4 = display.newImage( "kolmio.png" )
	tahti4.x = display.contentWidth*0.75
	tahti4.y = display.contentHeight*0.8
	tahti4:addEventListener("touch",ohi)
	tahti4.isVisible=false


	--kaikkien peliobjektien groupit
	
	
	
	gameobjects=display.newGroup()
	
	gameobjects:insert(nelio)
	gameobjects:insert(nelio2)
	gameobjects:insert(nelio3)
	gameobjects:insert(nelio4)
	
	gameobjects:insert(kolmio)
	gameobjects:insert(kolmio2)
	gameobjects:insert(kolmio3)
	gameobjects:insert(kolmio4)
	
	gameobjects:insert(ympyra)
	gameobjects:insert(ympyra2)
	gameobjects:insert(ympyra3)
	gameobjects:insert(ympyra4)
	
	gameobjects:insert(tahti)
	gameobjects:insert(tahti2)
	gameobjects:insert(tahti3)
	gameobjects:insert(tahti4)
	
	hidden2=display.newGroup()
	
	hidden2:insert(kolmio)
	hidden2:insert(kolmio3)
	hidden2:insert(kolmio4)
	
	hidden3=display.newGroup()
	
	hidden3:insert(ympyra)
	hidden3:insert(ympyra3)
	hidden3:insert(ympyra4)
	
	hidden4=display.newGroup()
	
	hidden4:insert(tahti)
	hidden4:insert(tahti2)
	hidden4:insert(tahti4)
	
				
			
		
	
	
end
function timer()
		
		timerNum= 30 - math.round((system.getTimer()- gamestart -4500)/1000)
		
		timerText.text=timerNum
		
		
		if(timerNum<0) then gameover() 
		
		else
		
		if( system.getTimer() - gamestart > 4500 ) then	timerText.text = timerNum
		elseif( system.getTimer() - gamestart > 3500 ) then	timerText.text = "1"
		elseif( system.getTimer() - gamestart > 2500 ) then	timerText.text = "2" 
		elseif( system.getTimer() - gamestart > 1500 ) then	timerText.text = "3" 
		elseif( system.getTimer() - gamestart > 0 ) then
		
			timerText.size = 30
			timerText.text = "Nappaa neliöt" 
		
		
	
				
			
			
			
		
	end
	end
end

menu()
	