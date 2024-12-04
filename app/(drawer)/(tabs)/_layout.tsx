import React from "react";
import { Tabs, useNavigation } from "expo-router";
import { FontAwesome } from "@expo/vector-icons";
import PortadaIcon from "@/presentation/components/ui/icons/Portada";
import { DrawerActions } from "@react-navigation/native";
import OnTaggleDrawer from "@/infraestructrure/utils/OnTaggleDrawer";

const TabsLayout = () => {
  const navigation = useNavigation();

  return (
    <Tabs 
      screenOptions={{ 
        tabBarActiveTintColor: "#653D3D",
        headerLeft: ({ tintColor, canGoBack }) => 
        <FontAwesome size={24} name="bars" onPress={() => OnTaggleDrawer(navigation)} />,
      }}>
      <Tabs.Screen
        name="(home)"
        options={{
          title: "Portada",
          tabBarIcon: ({ color }) => <PortadaIcon size={28} color={color} />,
          headerShown: false,
        }}
      />
      <Tabs.Screen
        name="articles/index"
        options={{
          title: "Impreso",
          tabBarIcon: ({ color }) => (
            <FontAwesome size={28} name="newspaper-o" color={color} />
          ),
        }}
      />
      <Tabs.Screen
        name="saved/index"
        options={{
          title: "Guardado",
          tabBarIcon: ({ color }) => (
            <FontAwesome size={28} name="bookmark-o" color={color} />
          ),
        }}
      />
      <Tabs.Screen
        name="profile/index"
        options={{
          title: "Perfil",
          tabBarIcon: ({ color }) => (
            <FontAwesome size={28} name="user-circle-o" color={color} />
          ),
        }}
      />
    </Tabs>
  );
};

export default TabsLayout;
