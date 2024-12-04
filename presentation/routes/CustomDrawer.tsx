import { DrawerContentComponentProps, DrawerContentScrollView, DrawerItemList } from "@react-navigation/drawer";
import React from "react";
import { View, Text } from "react-native";

export default function CustomDrawer( props : DrawerContentComponentProps ) {
  return (
    <DrawerContentScrollView {...props} >
      <View className="flex justify-center items-center mx-3 p-10 mb-10 h-[150px] rounded-xl bg-primary">
        <View className="flex justify-center items-center bg-white rounded-full h-24 w-24"> 
            <Text className="text-primary font-NotoSerif-black text-3xl">
                BR
            </Text>
        </View>
      </View>

      {/* DrawerItems */}
      <DrawerItemList {...props} />
    </DrawerContentScrollView>
  );
}
