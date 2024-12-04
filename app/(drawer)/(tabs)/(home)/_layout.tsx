import OnTaggleDrawer from "@/infraestructrure/utils/OnTaggleDrawer";
import { FontAwesome } from "@expo/vector-icons";
import { DrawerActions } from "@react-navigation/native";
import { Stack, useNavigation } from "expo-router";
import React from "react";

export default function HomeStack() {

  const navigation = useNavigation();

  return (
    <Stack
      screenOptions={{
        headerShadowVisible: false,
        contentStyle: {
          backgroundColor: "white",
        },
        headerLeft: ({ tintColor, canGoBack }) => (
          <FontAwesome
            size={24}
            name={ canGoBack ? "chevron-left" : "bars" }
            onPress={() => OnTaggleDrawer(navigation, canGoBack)}
          />
        ),
      }}
    >
      <Stack.Screen
        name="index"
        options={{
          title: "Inicio",

        }}
      />
    </Stack>
  );
}
