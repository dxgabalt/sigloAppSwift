import { View, Text, ScrollView, Image, Pressable } from "react-native";
import React from "react";
import { FontAwesome } from "@expo/vector-icons";

const ProfileScreen = () => {
  //TODO: Implementar la funcionalidad de la pantalla de perfil de usuario
  return (
    <ScrollView className="p-5">
      <View className="pb-5 flex flex-col justify-center items-center">
        <Image
          source={require("@/assets/images/react-logo.png")}
          className="rounded-full h-32 w-32"
        />
        <Text className="text-2xl font-medium pt-2">Brian Rico</Text>
        <Text className="text-lg text-gray-500">Software Engineer</Text>
      </View>
      <View className="mb-4">
        <Text className="text-base font-medium pb-2">Acceso</Text>
        {/* Opciones */}
        <Pressable className="bg-secundary rounded-t-xl px-5 py-2">
          <View className="flex-row justify-between items-center">
            <Text className="text-lg font-semibold py-3 text-black">
              Editar perfil
            </Text>
            <FontAwesome name="angle-right" size={24} color="black" />
          </View>
        </Pressable>
        <Pressable className="bg-secundary rounded-b-xl border-t border-t-primary/30 px-5 py-2">
          <View className="flex-row justify-between items-center">
            <Text className="text-lg font-semibold py-3 text-black">
              Guardados en favoritos
            </Text>
            <FontAwesome name="angle-right" size={24} color="black" />
          </View>
        </Pressable>
      </View>
      <View className="mb-4">
        <Text className="text-base font-medium pb-2">Opciones</Text>
        {/* Opciones */}
        <Pressable className="bg-secundary rounded-t-xl px-5 py-2">
          <View className="flex-row justify-between items-center">
            <Text className="text-lg font-semibold py-3 text-black">
              Notificaciones
            </Text>
            <FontAwesome name="angle-right" size={24} color="black" />
          </View>
        </Pressable>
        <Pressable className="bg-secundary border-t border-t-primary/30 px-5 py-2">
          <View className="flex-row justify-between items-center">
            <Text className="text-lg font-semibold py-3 text-black">
              Ajustes
            </Text>
            <FontAwesome name="angle-right" size={24} color="black" />
          </View>
        </Pressable>
        <Pressable className="bg-secundary rounded-b-xl border-t border-t-primary/30 px-5 py-2">
          <View className="flex-row justify-between items-center">
            <Text className="text-lg font-semibold py-3 text-black">
              Acerca de
            </Text>
            <FontAwesome name="angle-right" size={24} color="black" />
          </View>
        </Pressable>
      </View>
    </ScrollView>
  );
};

export default ProfileScreen;
