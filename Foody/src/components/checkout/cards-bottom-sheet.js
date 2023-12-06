import React, { useCallback, useMemo } from 'react';
import { StyleSheet } from 'react-native';
import { BottomSheetBackdrop, BottomSheetModal, BottomSheetFlatList, TouchableOpacity } from '@gorhom/bottom-sheet';
import useFetch from '../../hooks/use-fetch';
import { Title } from 'react-native-paper';
import colors from '../../constants/colors';
import Icon from 'react-native-vector-icons/MaterialCommunityIcons';

const CardsBottomSheet = React.forwardRef((props, ref) => {
    const params = { endpoint: "cards", method: "GET", auth: true };
    const { status, data } = useFetch(params);
    const snapPoints = useMemo(() => ['50%'], []);

    const selectCard = (item) => {
        props.selectCard(item);
        ref.current?.dismiss()
    }

    const renderItem = useCallback(
        ({item}) => {
          return (
            <TouchableOpacity
              style={styles.list_item}
              onPress={() => selectCard(item)}>
              <Icon
                style={styles.list_item_left_icon}
                name={'credit-card'}
                color={'gray'}
                size={21}
              />
              <Title style={styles.list_right_item_title}>
                **** **** **** {item.number.substr(item.number.length - 4)}
              </Title>
              <Title numberOfLines={1} style={styles.list_right_item_subtitle}>
                Expiry: {item.expiry}, CVV: {item.cvv}
              </Title>
            </TouchableOpacity>
          );
        },
        [],
      );

    return (
        <BottomSheetModal
            ref={ref}
            index={0}
            snapPoints={snapPoints}
            backdropComponent={BottomSheetBackdrop}
        >
            <BottomSheetFlatList
                data={data}
                extraData={status}
                keyExtractor={item => item.id.toString()}
                renderItem={renderItem}
                contentContainerStyle={styles.contentContainer}
            />
        </BottomSheetModal>
    );
});

const styles = StyleSheet.create({
    contentContainer: {
        paddingHorizontal: 10
    },
    list_item: {
        flex: 1,
        flexDirection: 'row',
        alignItems: 'center',
        paddingVertical: 10,
        paddingHorizontal: 10
    },
    list_item_left_icon: {
        padding: 8,
        borderRadius: 10,
        backgroundColor: colors.lightgray,
        marginRight: 10
    },
    list_right_item_title: {
        fontSize: 16,
        lineHeight: 16,
        letterSpacing: 0.75,
        marginRight: 5,
    },
    list_right_item_subtitle: {
        fontSize: 14,
        lineHeight: 14,
        letterSpacing: 0.75,
        color: "gray",
        overflow: "hidden",
    },
})

export default CardsBottomSheet;