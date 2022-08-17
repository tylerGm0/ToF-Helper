InfiniteClimbAlternate:
    SendInput {vkA2} ; Key: LCtrl
	Sleep, 75
	SendInput {vk20} ; Key: Space
	Sleep, 225
	SendInput {vk20} ; Key: Space
	Sleep, 75
	SendInput {vk57 Down} ; Key: W Down
	Sleep, 90
    GetKeyState, WPressed, vk57, P ; Look for W Down and Set to Var WPressed.
    If WPressed = U
        SendInput {vk57 Up} ; Key: W Up
	Sleep, 75
return

InfiniteClimb:
    SendInput {vkA2} ; Key: LCtrl
	Sleep, 50
	SendInput {vk20} ; Key: Space
	Sleep, 200
	SendInput {vk20} ; Key: Space
	Sleep, 50
	SendInput {vk57 Down} ; Key: W Down
	Sleep, 70
    GetKeyState, WPressed, vk57, P ; Look for W Down and Set to Var WPressed.
    If WPressed = U
        SendInput {vk57 Up} ; Key: W Up
	Sleep, 50
return