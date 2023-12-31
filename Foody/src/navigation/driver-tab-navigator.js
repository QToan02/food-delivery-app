
import * as React from 'react';
import { View } from 'react-native';

import OrderStackNavigator from './driver/order-stack-navigator';
import ProfileStackNavigator from './driver/profile-stack-navigator';

import colors from '../constants/colors';
import Icon from 'react-native-vector-icons/MaterialCommunityIcons';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';

const Tab = createBottomTabNavigator();

export default function DriverTabNavigator() {
    return (
        <Tab.Navigator
            initialRouteName='OrderStack'
            tabBarOptions={{
                keyboardHidesTabBar: true,
                showLabel: false,
                inactiveTintColor: colors.gray,
                activeTintColor: colors.yellow,
                style: {
                    height: 60,
                    backgroundColor: colors.black,
                    borderTopWidth: 0,
                    elevation: 0,
                },
            }}>
            <Tab.Screen
                name="OrderStack"
                options={{
                    headerShown: false,
                    tabBarIcon: ({ color, size }) => (
                        <Icon name="moped" color={color} size={size} />
                    ),
                }}
                component={OrderStackNavigator}
            />
            <Tab.Screen
                name="ProfileStack"
                options={{
                    headerShown: false,
                    tabBarIcon: ({ color, size }) => (
                        <View>
                            <Icon name="account" color={color} size={size} />
                        </View>
                    ),
                }}
                component={ProfileStackNavigator}
            />
        </Tab.Navigator>
    );
}