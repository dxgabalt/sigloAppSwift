import React from 'react';
import { Drawer } from 'expo-router/drawer';
import { FontAwesome } from '@expo/vector-icons';
import CustomDrawer from '@/presentation/routes/CustomDrawer';
import PortadaIcon from '@/presentation/components/ui/icons/Portada';

export default function LayoutDrawer() {
  return (
    <Drawer
      drawerContent={CustomDrawer}
      screenOptions={{
        drawerActiveTintColor: '#653D3D',
        headerShadowVisible: false,
        sceneStyle: {
          backgroundColor: 'white',
        },
        drawerIcon: ({color, size}) => <FontAwesome size={size} name="user-circle" color={color}/>,
        drawerStyle: {
          borderTopRightRadius: 0,
          borderBottomEndRadius: 0,
        }
      }}
    >
        <Drawer.Screen
          name="(tabs)" // This is the name of the page and must match the url from root
          options={{
            headerShown: false,
            drawerLabel: 'Seccion Principal',
            title: 'Users settings',
            drawerIcon: ({color, size}) => <PortadaIcon size={size} color={color}/>,
          }}
        />
        <Drawer.Screen
          name="user/index" // This is the name of the page and must match the url from root
          options={{
            drawerLabel: 'Noticias recientes',
            title: 'Users settings',
            drawerIcon: ({color, size}) => <FontAwesome size={size} name="newspaper-o" color={color}/>,
          }}
        />
        <Drawer.Screen
          name="settings/index"
          options={{
            drawerLabel: 'Ajustes',
            title: 'Ajustes',
            drawerIcon: ({color, size}) => <FontAwesome size={size} name="cogs" color={color}/>,
          }}
        />
      </Drawer>
  );
}
