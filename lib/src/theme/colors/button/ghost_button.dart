import 'package:flutter/material.dart';

class GhostButton extends ThemeExtension<GhostButton> {
  const GhostButton({
    required this.primary,
    required this.primaryOnHover,
    required this.primaryOnClick,
    required this.primaryDisabled,
    required this.brand,
    required this.brandOnHover,
    required this.brandOnClick,
    required this.brandDisabled,
    required this.destructive,
    required this.destructiveOnHover,
    required this.destructiveOnClick,
    required this.destructiveDisabled,
    required this.icon,
    required this.iconOnHover,
    required this.iconOnClick,
    required this.iconDisabled,
    required this.iconInverted,
    required this.iconInvertedOnHover,
    required this.iconInvertedOnClick,
    required this.iconInvertedDisabled,
  });

  final Color primary;
  final Color primaryOnHover;
  final Color primaryOnClick;
  final Color primaryDisabled;
  final Color brand;
  final Color brandOnHover;
  final Color brandOnClick;
  final Color brandDisabled;
  final Color destructive;
  final Color destructiveOnHover;
  final Color destructiveOnClick;
  final Color destructiveDisabled;
  final Color icon;
  final Color iconOnHover;
  final Color iconOnClick;
  final Color iconDisabled;
  final Color iconInverted;
  final Color iconInvertedOnHover;
  final Color iconInvertedOnClick;
  final Color iconInvertedDisabled;

  @override
  GhostButton copyWith({
    Color? primary,
    Color? primaryOnHover,
    Color? primaryOnClick,
    Color? primaryDisabled,
    Color? brand,
    Color? brandOnHover,
    Color? brandOnClick,
    Color? brandDisabled,
    Color? destructive,
    Color? destructiveOnHover,
    Color? destructiveOnClick,
    Color? destructiveDisabled,
    Color? icon,
    Color? iconOnHover,
    Color? iconOnClick,
    Color? iconDisabled,
    Color? iconInverted,
    Color? iconInvertedOnHover,
    Color? iconInvertedOnClick,
    Color? iconInvertedDisabled,
  }) => GhostButton(
    primary: primary ?? this.primary,
    primaryOnHover: primaryOnHover ?? this.primaryOnHover,
    primaryOnClick: primaryOnClick ?? this.primaryOnClick,
    primaryDisabled: primaryDisabled ?? this.primaryDisabled,
    brand: brand ?? this.brand,
    brandOnHover: brandOnHover ?? this.brandOnHover,
    brandOnClick: brandOnClick ?? this.brandOnClick,
    brandDisabled: brandDisabled ?? this.brandDisabled,
    destructive: destructive ?? this.destructive,
    destructiveOnHover: destructiveOnHover ?? this.destructiveOnHover,
    destructiveOnClick: destructiveOnClick ?? this.destructiveOnClick,
    destructiveDisabled: destructiveDisabled ?? this.destructiveDisabled,
    icon: icon ?? this.icon,
    iconOnHover: iconOnHover ?? this.iconOnHover,
    iconOnClick: iconOnClick ?? this.iconOnClick,
    iconDisabled: iconDisabled ?? this.iconDisabled,
    iconInverted: iconInverted ?? this.iconInverted,
    iconInvertedOnHover: iconInvertedOnHover ?? this.iconInvertedOnHover,
    iconInvertedOnClick: iconInvertedOnClick ?? this.iconInvertedOnClick,
    iconInvertedDisabled: iconInvertedDisabled ?? this.iconInvertedDisabled,
  );

  @override
  GhostButton lerp(GhostButton? other, double t) => other == null
      ? this
      : GhostButton(
          primary: Color.lerp(primary, other.primary, t)!,
          primaryOnHover: Color.lerp(primaryOnHover, other.primaryOnHover, t)!,
          primaryOnClick: Color.lerp(primaryOnClick, other.primaryOnClick, t)!,
          primaryDisabled: Color.lerp(
            primaryDisabled,
            other.primaryDisabled,
            t,
          )!,
          brand: Color.lerp(brand, other.brand, t)!,
          brandOnHover: Color.lerp(brandOnHover, other.brandOnHover, t)!,
          brandOnClick: Color.lerp(brandOnClick, other.brandOnClick, t)!,
          brandDisabled: Color.lerp(brandDisabled, other.brandDisabled, t)!,
          destructive: Color.lerp(destructive, other.destructive, t)!,
          destructiveOnHover: Color.lerp(
            destructiveOnHover,
            other.destructiveOnHover,
            t,
          )!,
          destructiveOnClick: Color.lerp(
            destructiveOnClick,
            other.destructiveOnClick,
            t,
          )!,
          destructiveDisabled: Color.lerp(
            destructiveDisabled,
            other.destructiveDisabled,
            t,
          )!,
          icon: Color.lerp(icon, other.icon, t)!,
          iconOnHover: Color.lerp(iconOnHover, other.iconOnHover, t)!,
          iconOnClick: Color.lerp(iconOnClick, other.iconOnClick, t)!,
          iconDisabled: Color.lerp(iconDisabled, other.iconDisabled, t)!,
          iconInverted: Color.lerp(iconInverted, other.iconInverted, t)!,
          iconInvertedOnHover: Color.lerp(
            iconInvertedOnHover,
            other.iconInvertedOnHover,
            t,
          )!,
          iconInvertedOnClick: Color.lerp(
            iconInvertedOnClick,
            other.iconInvertedOnClick,
            t,
          )!,
          iconInvertedDisabled: Color.lerp(
            iconInvertedDisabled,
            other.iconInvertedDisabled,
            t,
          )!,
        );
}
