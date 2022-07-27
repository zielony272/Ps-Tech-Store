if files.exists("ur0:tai/bgvpk.suprx") then 


splash.show("resources/splash.png")
color.loadpalette()
back = image.load("resources/back.png") 
snd=sound.load("git/bgm.mp3")
sound.play(snd)
sound.loop(snd)	
local bd ={"gtasa.zip","gtavc.zip","gta3.zip","Fallout2.zip","maxpayne.zip","bc2.zip","crazytaxi.zip","gtactw.zip","Bully.zip","twom.zip","xash3d.zip"} 
local GRA={"gtasa","gtavc","gta3","fallout2","maxpayne","bc2","crazytaxi","gtactw","bully","twom","hl1"}


while true do
if back then back:blit(0,0) end 
buttons.read()
screen.flip()

if buttons.cross then 
os.uri("webmodal:https://zielony272.github.io/") 
end  

if buttons.triangle and files.exists("ux0:/download/" + bd[1] or bd[2] or bd[3] or bd[4] or bd[5] or bd[6] or bd[7] or bd[8] or bd[9] or bd[10] or bd[11])then 
os.message("Plik zip zostanie wypakowany,\npo rozpakowaniu  wyświetli się komunikat w tym czasie nie wychodź z aplikacji")
files.extract("ux0:/download/"+bd[1] or bd[2] or bd[3] or bd[4] or bd[5] or bd[6] or bd[7] or bd[8] or bd[9] or bd[10] or bd[11],"ux0:/data")
os.message("Wypakowano")
end

if buttons.square and files.exists("ux0:/download/" + bd[1] or bd[2]) then 
os.message("Plik zip zostanie usunięty,nie wychodź z aplikacji")
files.delete("ux0:/download/" + bd[1] or bd[2] or bd[3] or bd[4] or bd[5] or bd[6] or bd[7] or bd[8] or bd[9] or bd[10] or bd[11])
os.message("Usunięto")
end

if buttons.circle then 
text ="Tu wpisz gre, po wpisaniu nie wychodz z aplikacji. Po pobraniu wyskoczy komunikat"
gra = osk.init("Wpisz nazwe gry z listy",text)
if gra == GRA[1] then  
    http.getfile("https://download1338.mediafire.com/oslkev6wx8wg/0fzvkindljoxfz5/gtasa.zip","ux0:/download/gtasa.zip");
    os.message("Pobrano")
end
else if gra == GRA[2] then   
   http.getfile("https://download1476.mediafire.com/mf84kqhgl13g/4egq6q6yzmh2hd7/gtavc.zip","ux0:/download/gtavc.zip");
    os.message("Pobrano")

else if gra == GRA[3] then 
    http.getfile("https://download1500.mediafire.com/v2e8dqimapag/2ahqw337knk5e1k/gta3.zip","ux0:/download/gta3.zip");
    os.message("Pobrano")

else if gra == GRA[4] then 
    http.getfile("https://download1501.mediafire.com/fgskdk8ykf8g/g4c3m1e6dywarad/Fallout2.zip","ux0:/download/Fallout2.zip");
    os.message("Pobrano");

else if gra == GRA[5] then 
    http.getfile("https://download1505.mediafire.com/syxrwyp5rcyg/yoex8p4xelkplui/maxpayne.zip","ux0:/download/maxpayne.zip");
    os.message("Pobrano");

else if gra == GRA[6] then 
    http.getfile("https://download1480.mediafire.com/moopmvfm8vag/b1sko8c71kmyz9d/bc2.zip","ux0:/download/bc2.zip");
    os.message("Pobrano");

else if gra == GRA[7] then 
    http.getfile("https://download1514.mediafire.com/5tmx817z8lcg/c3qiq42a24qd1hj/crazytaxi.zip","ux0:/download/crazxytaxi.zip");
    os.message("Pobrano");

else if gra == GRA[8] then 
    http.getfile("https://download856.mediafire.com/7lcsz1wqt6ug/w6u0syt26qemwnx/gtactw.zip","ux0:/download/gtactw.zip");
    os.message("Pobrano");

else if gra == GRA[9] then 
    http.getfile("https://download1498.mediafire.com/9vxgzemopbvg/t5xxps6bimb1k9a/Bully.zip","ux0:/download/Bully.zip");
    os.message("Pobrano");

else if gra == GRA[10] then 
    http.getfile("https://download1347.mediafire.com/hkbtu27ggteg/0stuqi5wyanblmm/twom.zip","ux0:/download/twom.zip");
    os.message("Pobrano");

else if gra == GRA[11] then 
    http.getfile("https://download1074.mediafire.com/u4ksqsvxawqg/qoa131zoal4i163/xash3d.zip","ux0:/download/xash3d.zip");
    os.message("Pobrano");

end
end     
end     
end     
end     
end 
end 
end
end 
end
end
end else
   os.message("Nie wykryto pluginu bgvpk, proba pobrania")
   if wlan.isconnected()== true then 	
   http.getfile("https://github.com/SKGleba/VitaTools/blob/main/bgvpk/build/bgvpk.suprx?raw=true","ur0:tai/bgvpk.suprx");
   os.message("Pobrano")
   os.message("Dodaj linijke w ur0:tai/config.txt \npod *main o tresci\nur0:tai/bgvpk.suprx i zrestartuj konsole")
   os.exit()
   else 
   os.message("Polacz z wifi")
   os.exit()
   end 
end 

