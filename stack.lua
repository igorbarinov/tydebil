module (..., package.seeall)

local globalGroup = display.newGroup()

-- �������� ���������� ����� ������� ������:
checkPointWindow = "s1r1l1" 
checkPointNum = 3




-------- Times ----------------- 
local pauseflag=true -- ����� ���������� true. �������� ����� ����� ��� �������� �� 1 �������.


times=0 --����� �������� ����� ������� ������

textTime =  display.newText(times, 20, 300, native.systemFont, 12 )
globalGroup:insert(textTime)
textTime:setTextColor(0, 0, 0)
textTime.isVisible=false --����� �� ���� ����� � ������ ������. ��������� ������ � ������� timeStart()

function tik_tak()
if pauseflag==false then
times = times + 0.1 
times = math.ceil(times*10)/10 -- ������������ �������� ������������� ������, (0,99999)
--print(pauseflag)
textTime.text=times
end
end

local clockTimer = timer.performWithDelay( 100, tik_tak, -1 )




------- Times close ---------------

function timeStop()
	pauseflag=true
   textTime.isVisible=false
end

--������� ��� ������� �������. ���������� ��� �������� �� �����.
function timeStart()
	pauseflag=false
  textTime.isVisible=true
end


-----  Pause function list ---

 function Pause (event)
 if event.type == "applicationSuspend"  then -- ����� �� ������,(�������� ���������) ��� ���� ���������� ���������� �������� � ������� ���������� �����������
 pauseflag = true
 director:openPopUp("paused")

 end
 end
Runtime:addEventListener( "system", Pause )

-----  Pause function list close

------ Restart function

function restart()
checkPointWindow = "s1r1l1" 
checkPointNum = 3
textTime.isVisible=false
times=0
end

---------Restart close