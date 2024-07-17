local varFunction = game.Workspace.PartEE


local function ChangePropiedades()
	varFunction.Transparency = 0
	task.wait(3)
	varFunction.Transparency = 0.5
	task.wait(3)
	varFunction.Transparency = 1
	varFunction.Size=Vector3.new(5, 5, 5)
end

ChangePropiedades()

local function ChangePropiedadesVolver()
	varFunction.Transparency = 0
end

if varFunction.Transparency == 1 then
	print("La PartEE(asi se llama el cubo que cree PartEE) se ha transformado en Transparente y volvera a aparecer con un size diferente")
	mi_variable = Instance.new("Part")
	mi_variable.Parent = game.Workspace
	mi_variable.Position=Vector3.new(-96.886, -3.761, 17.66)
	mi_variable.Anchored=false
	task.wait(2)
	ChangePropiedadesVolver()
else
	print("La Part no pudo volver a la normalidad")
end

local function ChangeColor()
	--Cambiando el color la variable global "mi_variable"
	mi_variable.BrickColor=BrickColor.new("Cyan")
end

if mi_variable.Anchored == false then
	--Si esta Anchored false cambiara el color y el size
	print("La 'mi_variable' esta en la posicion esperada, cambiara de color y cambiara de tamaño")
	ChangeColor()
	mi_variable.Size=Vector3.new(10, 10, 10)

else
	print("La Part no esta en la posicion esperada")
end
