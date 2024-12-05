import React from "react";
import { Drawer } from "expo-router/drawer";
import { FontAwesome } from "@expo/vector-icons";
import CustomDrawer from "@/presentation/routes/CustomDrawer";
import PortadaIcon from "@/presentation/components/ui/icons/Portada";

export default function LayoutDrawer() {
  return (
    <Drawer
      drawerContent={CustomDrawer}
      screenOptions={{
        drawerActiveTintColor: "#653D3D",
        headerShadowVisible: false,
        sceneStyle: {
          backgroundColor: "white",
        },
        drawerIcon: ({ color, size }) => (
          <FontAwesome size={size} name="user-circle" color={color} />
        ),
        drawerStyle: {
          borderTopRightRadius: 0,
          borderBottomEndRadius: 0,
        },
      }}
    >
      <Drawer.Screen
        name="(tabs)"
        options={{
          headerShown: false,
          drawerLabel: "Seccion Principal",
          title: "Users settings",
          drawerIcon: ({ color, size }) => (
            <PortadaIcon size={size} color={color} />
          ),
        }}
      />
      <Drawer.Screen
        name="laLaguna/index"
        options={{
          drawerLabel: "La laguna",
          title: "La laguna",
          drawerIcon: ({ color, size }) => (
            <FontAwesome size={size} name="pagelines" color={color} />
          ),
        }}
      />
      <Drawer.Screen
        name="meta/index"
        options={{
          drawerLabel: "Meta",
          title: "Meta",
          drawerIcon: ({ color, size }) => (
            <FontAwesome size={size} name="flag-checkered" color={color} />
          ),
        }}
      />
      <Drawer.Screen
        name="rostros/index"
        options={{
          drawerLabel: "Rostros",
          title: "Rostros",
          drawerIcon: ({ color, size }) => (
            <FontAwesome size={size} name="user" color={color} />
          ),
        }}
      />
      <Drawer.Screen
        name="economia/index"
        options={{
          drawerLabel: "Economia",
          title: "Economia",
          drawerIcon: ({ color, size }) => (
            <FontAwesome size={size} name="money" color={color} />
          ),
        }}
      />
      <Drawer.Screen
        name="mex_eeuu/index"
        options={{
          drawerLabel: "Mexico y EEUU",
          title: "Mexico y EEUU",
          drawerIcon: ({ color, size }) => (
            <FontAwesome size={size} name="flag" color={color} />
          ),
        }}
      />
      <Drawer.Screen
        name="elmundo/index"
        options={{
          drawerLabel: "El mundo",
          title: "El mundo",
          drawerIcon: ({ color, size }) => (
            <FontAwesome size={size} name="globe" color={color} />
          ),
        }}
      />
      <Drawer.Screen
        name="espectaculo/index"
        options={{
          drawerLabel: "Espectaculo",
          title: "Espectaculo",
          drawerIcon: ({ color, size }) => (
            <FontAwesome size={size} name="asl-interpreting" color={color} />
          ),
        }}
      />
      <Drawer.Screen
        name="cultura/index"
        options={{
          drawerLabel: "Cultura",
          title: "Cultura",
          drawerIcon: ({ color, size }) => (
            <FontAwesome size={size} name="university" color={color} />
          ),
        }}
      />
    </Drawer>
  );
}
