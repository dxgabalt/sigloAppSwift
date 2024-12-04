import React from "react";
import { View, Text } from "react-native";
import CustomButton from "../ui/button";
import { Ionicons } from "@expo/vector-icons";

export default function NotLogin() {
  return (
    <View className="flex-1 items-center justify-center">
      <Text className="text-[#000000] text-xl text-center w-3/4 font-NotoSerif-black pb-4">
        {" "}
        Inicia Sesion para acceder a tus articulos guardados.{" "}
      </Text>
      <Text className="text-[#000000] text-lg text-center w-2/3 font-NotoSerif-light py-1">
        Toca el icono{" "}
        <Ionicons name="bookmark-outline" size={24} color="#000000" /> en algun
        articulo para que aparezca aqui.
      </Text>
      <CustomButton
        onPress={() => console.log("Iniciar Sesion")}
        text="Iniciar Sesion"
      />
    </View>
  );
}
