import OnTaggleDrawer from "@/infraestructrure/utils/OnTaggleDrawer";
import { FontAwesome } from "@expo/vector-icons";
import { Stack, useNavigation } from "expo-router";
import React from "react";
import { Image } from "react-native";

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
            name={canGoBack ? "chevron-left" : "bars"}
            onPress={() => OnTaggleDrawer(navigation, canGoBack)}
          />
        ),
        headerTitleAlign: "center",
        headerTitle: () => (
          <Image
            source={require("@/assets/images/img-prof.png")} // Ruta de la imagen en tu proyecto
            style={{ width: 200, height: 60, resizeMode: "contain" }}
          />
        ),
        headerRight: () => (
          <FontAwesome
            size={24}
            name="search"
            onPress={() => console.log("Buscando nada.")}
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
