function outofmyzone(coa, zone)
  if coa == 'blue' then
     coa = 'red'
  else
     coa = 'blue'
  end
  enemyPlanes = mist.makeUnitTable({'['..coa..'][plane]'})
  InZone = mist.getUnitsInZones(enemyPlanes, {zone})
  for i = 1, #InZone do
     uName = Unit.getName(InZone[i])
     unit = Unit.getByName(uName)
     pName = Unit.getPlayerName(unit)
     trigger.action.explosion(unit:getPoint(), 100)
     trigger.action.outText(uName.." "..pName.." entered enemy territory and has been eliminated", 15, false)
  end
end
