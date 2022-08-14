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
    http.getfile("https://www.mediafire.com/file/32cdd1zlnxmioa7/gtasa.zip/file","ux0:/download/gtasa.zip");
    os.message("Pobrano")
end
else if gra == GRA[2] then   
   http.getfile("https://www.mediafire.com/file/hbkghp7nioikhsg/gtavc.zip/file","ux0:/download/gtavc.zip");
    os.message("Pobrano")

else if gra == GRA[3] then 
    http.getfile("https://www.mediafire.com/file/pvgesr8qqfnx7ht/gta3.zip/file","ux0:/download/gta3.zip");
    os.message("Pobrano")

else if gra == GRA[4] then 
    http.getfile("https://www.mediafire.com/file/qjkvj3w2dlj32xl/Fallout2.zip/file","ux0:/download/Fallout2.zip");
    os.message("Pobrano");

else if gra == GRA[5] then 
    http.getfile("https://www.mediafire.com/file/vie6mhl0iyhnix0/maxpayne.zip/file","ux0:/download/maxpayne.zip");
    os.message("Pobrano");

else if gra == GRA[6] then 
    http.getfile("https://www.mediafire.com/file/ao7kcx7aci79cfy/bc2.zip/file","ux0:/download/bc2.zip");
    os.message("Pobrano");

else if gra == GRA[7] then 
    http.getfile("https://www.mediafire.com/file/8dpkqfboi9c6r5n/crazytaxi.zip/file","ux0:/download/crazytaxi.zip");
    os.message("Pobrano");

else if gra == GRA[8] then 
    http.getfile("https://www.mediafire.com/file/qbsj9kuj4l2qve1/gtactw.zip/file","ux0:/download/gtactw.zip");
    os.message("Pobrano");

else if gra == GRA[9] then 
    http.getfile("https://www.mediafire.com/file/wmobied08c6pr56/Bully.zip/file","ux0:/download/Bully.zip");
    os.message("Pobrano");

else if gra == GRA[10] then 
    http.getfile("https://www.mediafire.com/file/wbs9hxfss4bx5zj/twom.zip/file","ux0:/download/twom.zip");
    os.message("Pobrano");

else if gra == GRA[11] then 
    http.getfile("https://www.mediafire.com/file/zhgy0jcfztz3ed4/xash3d.zip/file","ux0:/download/xash3d.zip");
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

