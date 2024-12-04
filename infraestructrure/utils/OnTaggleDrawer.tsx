import { DrawerActions, NavigationProp, StackActions } from "@react-navigation/native";


// !This function is used to toggle the drawer in the app
export default function OnTaggleDrawer(navigation: NavigationProp<ReactNavigation.RootParamList>, canGoBack: boolean = false) {
    if (canGoBack) {
        navigation.dispatch( StackActions.pop() );
        return;
    }

    return navigation.dispatch(DrawerActions.toggleDrawer());
}