import React from "react";
import { Tabs } from "expo-router";
import { FontAwesome } from "@expo/vector-icons";
import PortadaIcon from "../../presentation/components/ui/icons/Portada";

const TabsLayout = () => {
  return (
    <Tabs screenOptions={{ tabBarActiveTintColor: "#653D3D" }}>
      <Tabs.Screen
        name="(home)"
        options={{
          title: "Portada",
          tabBarIcon: ({ color }) => <PortadaIcon size={28} color={color} />,
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
