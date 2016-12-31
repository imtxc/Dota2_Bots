
----------------------------------------------------------------------------------------------------

_G._savedEnv = getfenv()
module( "utility", package.seeall )

----------------------------------------------------------------------------------------------------

function utility_test()
	print( "================== just test utility." );
end


function utility_buy_tpscroll(npcBot)
	-- TODO if I have a boots of travel, then I don't need a tp.

	local iScrollCount = 0;

	--- buy TP
	for i=0, 8 do
		local sCurItem = npcBot:GetItemInSlot(i)
		if ( sCurItem ~= nil and sCurItem:GetName() == "item_tpscroll") then
			iScrollCount = iScrollCount + 1;
		end
	end

	if ( npcBot:DistanceFromSideShop() == 0 and iScrollCount == 0 ) then
		npcBot:Action_PurchaseItem("item_tpscroll");
		npcBot:Action_PurchaseItem("item_tpscroll");
	end

	if (DotaTime() >= 0 and iScrollCount == 0 and npcBot:DistanceFromFountain() == 0) then
		npcBot:Action_PurchaseItem("item_tpscroll");
		npcBot:Action_PurchaseItem("item_tpscroll");
	end

end

function hold_backpack(npcBot)
	-- TODO
end
    

----------------------------------------------------------------------------------------------------

for k,v in pairs( utility ) do	_G._savedEnv[k] = v end

----------------------------------------------------------------------------------------------------
