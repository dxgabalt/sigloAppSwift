import React from "react";
import { Tabs, useNavigation } from "expo-router";
import { FontAwesome } from "@expo/vector-icons";
import PortadaIcon from "@/presentation/components/ui/icons/Portada";
import OnTaggleDrawer from "@/infraestructrure/utils/OnTaggleDrawer";

const TabsLayout = () => {
  const navigation = useNavigation();

  return (
    <Tabs 
      screenOptions={{
        headerShadowVisible: false,
        sceneStyle: {
          backgroundColor: "white",
        },
        tabBarActiveTintColor: "#653D3D",
        headerLeft: ({ tintColor, canGoBack }) => 
        <FontAwesome size={24} className="ml-5" name="bars" onPress={() => OnTaggleDrawer(navigation)} />,
        headerTitleAlign: "center",
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
          headerTitleStyle: {
            fontSize: 20,
            fontWeight: "bold",
          },
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
