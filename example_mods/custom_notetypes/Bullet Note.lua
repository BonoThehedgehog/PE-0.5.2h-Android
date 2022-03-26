function onCreate()
	for i = 0,getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes',i,'noteType') == 'Bullet Note' then
			setPropertyFromGroup('unspawnNotes',i,'texture','notes/Bullet_Note')
			setPropertyFromGroup('unspawnNotes',i,'noAnimation',true)
		end
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Bullet Note' then
		characterPlayAnim('gf','shootTankman',true)
		characterPlayAnim('dad','dodge',true)
		triggerEvent('Screen Shake','0.1,0.01','0.1,0.01')
	end
end
