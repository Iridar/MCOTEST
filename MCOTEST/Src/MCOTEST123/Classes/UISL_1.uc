class UISL_1 extends UIScreenListener;

event OnInit(UIScreen Screen)
{
	local UIShell Shell;
	local UIX2MenuButton MenuButton;
	local array<UIPanel> Panels;
	local UIPanel Panel;

	Shell = UIShell(Screen);
	if (Shell == none)
		return;

	Shell.GetChildrenOfType(class'UIX2MenuButton', Panels);
	foreach Panels(Panel)
	{
		MenuButton = UIX2MenuButton(Panel);
		MenuButton.SetText("HIJACKED");
	}
}

event OnReceiveFocus(UIScreen Screen);

event OnLoseFocus(UIScreen Screen);

event OnRemoved(UIScreen Screen);

defaultproperties
{
	// Leaving this assigned to none will cause every screen to trigger its signals on this class
	ScreenClass = class'UIShell';
}