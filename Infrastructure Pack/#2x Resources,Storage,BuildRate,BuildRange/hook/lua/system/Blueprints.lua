do

    local oldModBlueprints = ModBlueprints

    function ModBlueprints(all_bps)
        oldModBlueprints(all_bps)

        local buildRangeScale = 2.0
		local buildPowerScale = 2.0
		local econScale = 2.0
		local storScale = 2.0
		
        --loop through the blueprints and adjust as desired.
        for id,bp in all_bps.Unit do
            if bp.Economy.MaxBuildDistance then
                bp.Economy.MaxBuildDistance = bp.Economy.MaxBuildDistance * buildRangeScale
            end
			if bp.Economy.BuildRate then
                if bp.Economy.MaxBuildDistance == nil then
					bp.Economy.MaxBuildDistance = 10
				end
				bp.Economy.MaxBuildDistance = bp.Economy.MaxBuildDistance * buildRangeScale
				bp.Economy.BuildRate = bp.Economy.BuildRate * buildPowerScale
			end
			if bp.Enhancements then
                for k,v in bp.Enhancements do
                    if bp.Enhancements[k].NewBuildRate then
                        bp.Enhancements[k].NewBuildRate = bp.Enhancements[k].NewBuildRate * buildPowerScale
                    end
                end
            end
			if bp.Economy.ProductionPerSecondMass then
               bp.Economy.ProductionPerSecondMass = bp.Economy.ProductionPerSecondMass * econScale
            end
            if bp.Economy.ProductionPerSecondEnergy then
               bp.Economy.ProductionPerSecondEnergy = bp.Economy.ProductionPerSecondEnergy * econScale
            end
			if bp.Economy.StorageMass then
               bp.Economy.StorageMass = bp.Economy.StorageMass * storScale
            end
            if bp.Economy.StorageEnergy then
               bp.Economy.StorageEnergy = bp.Economy.StorageEnergy * storScale
            end  
        end -- end loop
		
	end -- end function ModBlueprints(all_bps)
	
end -- end do
