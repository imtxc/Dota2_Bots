
----------------------------------------------------------------------------------------------------

_G._savedEnv = getfenv()
module( "utility", package.seeall )

----------------------------------------------------------------------------------------------------

function utility_test()
	print( "================== just test utility." );
end

function utility_buy_tpscroll(npcBot, count)
	count = count or 1;
	local iScrollCount = 0;

	if (DotaTime() < 2) then
		return;
	end

	for i=1,9 do
		local sCurItem = npcBot:GetItemInSlot( i );
		if ( sCurItem ~= nil ) then
			local iName = sCurItem:GetName();
			if ( iName == "item_tpscroll" ) then
				iScrollCount = iScrollCount + 1;
			elseif ( iName == "item_travel_boots_1" or iName == "item_travel_boots_2" ) then
				return; --we are done, no need to check further
			end
		end
	end

	-- If we are at the sideshop or fountain with no TPs, then buy up to count
	if ( (npcBot:DistanceFromSideShop() == 0 or npcBot:DistanceFromFountain() == 0) and iScrollCount < count ) then
		for i=1,(count-iScrollCount) do
			if ( npcBot:GetGold() >= GetItemCost( "item_tpscroll" ) ) then
				npcBot:Action_PurchaseItem( "item_tpscroll" );
				iScrollCount = iScrollCount + 1;
			end
		end
	end
end

function hold_backpack(npcBot)
	-- TODO
end
    

----------------------------------------------------------------------------------------------------

for k,v in pairs( utility ) do	_G._savedEnv[k] = v end

----------------------------------------------------------------------------------------------------
