------              Section 1 Old School l--level 6module (..., package.seeall )function new()	local localGroup=display.newGroup ( )			local background=display.newImage("image/bg.png")  background.x= display.viewableContentWidth/2    background.y=display.contentHeight/2    background.xScale = display.viewableContentWidth/background.contentWidth     background.yScale = display.viewableContentHeight/background.contentHeightlocalGroup:insert(background)		local title=display.newText("Дотронься до самой большой утки.", 50, 20, native.systemFont, 17 )title.x= title.contentWidth/2title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2	title:setTextColor ( 50, 50, 255)	localGroup:insert(title)		local duck1 = display.newImageRect("image/level6/duck1.jpg",70, 70)duck1.x=display.viewableContentWidth*1/4duck1.y=display.viewableContentHeight*1/4localGroup:insert(duck1)local duck2 = display.newImageRect("image/level6/duck2.jpg",100, 70)duck2.x=display.viewableContentWidth*2/5duck2.y=display.viewableContentHeight*4/6localGroup:insert(duck2)local duck3 = display.newImageRect("image/level6/duck3.jpg",100, 110)duck3.x=display.viewableContentWidth*3/5duck3.y=display.viewableContentHeight*3/8localGroup:insert(duck3)local duck4 = display.newImageRect("image/level6/duck4.jpg",150, 150)duck4.x=display.viewableContentWidth*3/4duck4.y=display.viewableContentHeight*3/4localGroup:insert(duck4)local function done(event)	if event.phase=="ended" then	if event.x < duck4.x + duck4.contentWidth and event.x > duck4.x - duck4.contentWidth   -- солнце     and event.y < duck4.y + duck4.contentHeight and event.y > duck4.y - duck4.contentHeight	 then	director:changeScene("s1r1check")	else		print ("fail")	director:changeScene("fail")	endendend background:addEventListener ( "touch", done )	return localGroupend