import { openSocialMedia } from "@/infraestructrure/utils/OpenSocialMedia";
import { FontAwesome } from "@expo/vector-icons";
import {
  DrawerContentComponentProps,
  DrawerContentScrollView,
  DrawerItemList,
} from "@react-navigation/drawer";
import React from "react";
import {
  View,
  ImageBackground,
  StyleSheet,
  Image,
  Pressable,
  Text,
} from "react-native";

export default function CustomDrawer(props: DrawerContentComponentProps) {
  return (
    <>
      <ImageBackground
        source={require("@/assets/images/profile-photo.webp")}
        resizeMode="cover"
        className="h-48 w-full thumb-transparent"
      >
        <View className="flex-1 justify-center items-center">
          <Image
            source={require("@/assets/images/img-prof-white.png")}
            style={{ width: 200, height: 60, resizeMode: "contain" }}
          />
        </View>
      </ImageBackground>
      <View className="flex flex-row items-center justify-between px-10 py-4 border-b border-b-border mb-3">
        <Pressable>
          <FontAwesome
            size={24}
            name="facebook-official"
            onPress={() =>
              openSocialMedia("https://www.facebook.com/elsiglo.mx")
            }
          />
        </Pressable>
        <FontAwesome
          size={24}
          name="twitter"
          onPress={() => openSocialMedia("https://x.com/torreon")}
        />
        <FontAwesome
          size={24}
          name="youtube-play"
          onPress={() =>
            openSocialMedia("https://www.youtube.com/@ElSiglomx/videos")
          }
        />
        <FontAwesome
          size={24}
          name="instagram"
          onPress={() =>
            openSocialMedia("https://www.instagram.com/elsiglodetorreon/")
          }
        />
      </View>
      <DrawerContentScrollView {...props}>
        <DrawerItemList {...props} />
      </DrawerContentScrollView>
      <View className="items-center justify-center px-5 border-t border-t-border">
        <Pressable className="px-5 py-3 mt-4 mb-1 bg-dangerous rounded-full w-full">
          <Text className="text-white text-2xl text-center font-semibold">Anúnciate</Text>
        </Pressable>
        <Pressable className="px-5 py-3 mt-1 mb-4 bg-dangerous rounded-full w-full">
          <Text className="text-white text-2xl text-center font-semibold">Suscríbete</Text>
        </Pressable>
      </View>
    </>
  );
}

const styles = StyleSheet.create({
  drawerBackground: {
    flex: 1,
    backgroundColor: "transparent", // Asegura transparencia para el fondo
  },
});
