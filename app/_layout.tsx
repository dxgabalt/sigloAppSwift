import React, { useEffect } from "react";
import "../global.css";
import { Slot, SplashScreen } from "expo-router";
import { GestureHandlerRootView } from "react-native-gesture-handler";
import { useFonts } from "expo-font";

SplashScreen.preventAutoHideAsync();

const RootLayout = () => {
  const [fontsLoaded, error] = useFonts({
    "NotoSerif_Condensed-Black": require("../assets/fonts/NotoSerif_Condensed-Black.ttf"),
    "NotoSerif_Condensed-Medium": require("../assets/fonts/NotoSerif_Condensed-Medium.ttf"),
    "NotoSerif_Condensed-Light": require("../assets/fonts/NotoSerif_Condensed-Light.ttf"),
  });

  useEffect(() => {
    if (error) throw error;

    if (fontsLoaded) SplashScreen.hideAsync();
  }, [fontsLoaded, error]);

  if (!fontsLoaded) return null;

  return (
    <GestureHandlerRootView style={{ flex: 1 }}>
      <Slot />
    </GestureHandlerRootView>
  );
};

export default RootLayout;
