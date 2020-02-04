import 'package:flutter/material.dart';

final ThemeData primaryTheme = ThemeData(
  // The primary color swatch - other properties are set off of this
  primarySwatch: Colors.blue,

  // Define the default font family.
  fontFamily: "Roboto",

  // The foreground color for widgets
  accentColor: Colors.blue,

  // Used to determine the color of text and icons placed on top of the accent color
  // accentColorBrightness: Brightness,

  // An icon theme that contrasts with the accent color.
  // accentIconTheme: IconThemeData,

  // A text theme that contrasts with the accent color.
  accentTextTheme: TextTheme(),

  // A theme for customizing the color, elevation, brightness, iconTheme and textTheme of AppBars.
  // appBarTheme: AppBarTheme,

  // A color that contrasts with the primaryColor, e.g. used as the remaining part of a progress bar.
  backgroundColor: Colors.white,

  // The default color of the BottomAppBar.
  // bottomAppBarColor: Color,

  // A theme for customizing the shape, elevation, and color of a BottomAppBar.
  // bottomAppBarTheme: BottomAppBarTheme,

  // A theme for customizing the color, elevation, and shape of a bottom sheet.
  // bottomSheetTheme: BottomSheetThemeData,

  // The brightness of the overall theme of the application.
  // Used by widgets like buttons to determine what color to pick when not using the primary or accent color.
  brightness: Brightness.light,

  // The default fill color of the Material used in RaisedButtons.
  // buttonColor: Color,

  // Defines the default configuration of button widgets, like RaisedButton and FlatButton.
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
  ),

  // The default color of MaterialType.canvas Material.
  // canvasColor: Color,

  // The color of Material when it is used as a Card.
  // cardColor: Color,

  // The colors and styles used to render Card.
  // cardTheme: CardTheme,

  // The colors and styles used to render Chip
  // chipTheme: ChipThemeData,

  // A set of thirteen colors that can be used to configure the color properties of most components.
  // colorScheme: ColorScheme,

  // Components of the CupertinoThemeData to override from the Material ThemeData adaptation.
  // cupertinoOverrideTheme: CupertinoThemeData,

  // The color of cursors in Material-style text fields, such as TextField.
  // cursorColor: Color,

  // The background color of Dialog elements.
  // dialogBackgroundColor: Color,

  // A theme for customizing the shape of a dialog.
  // dialogTheme: DialogTheme,

  // The color used for widgets that are inoperative, regardless of their state.
  // For example, a disabled checkbox (which may be checked or unchecked).
  // disabledColor: Color,

  // The color of Dividers and PopupMenuDividers, also used between ListTiles, between rows in DataTables, and so forth.
  // dividerColor: Color,

  // The color to use for input validation errors, e.g. in TextField fields.
  // errorColor: Color,

  // A theme for customizing the shape, elevation, and color of a FloatingActionButton.
  // floatingActionButtonTheme: FloatingActionButtonThemeData,

  // The focus color used indicate that a component has the input focus.
  // focusColor: Color,

  // The highlight color used during ink splash animations or to indicate an item in a menu is selected.
  highlightColor: Colors.transparent,

  // The color to use for hint text or placeholder text, e.g. in TextField fields.
  // hintColor: Color,

  // The hover color used to indicate when a pointer is hovering over a component.
  // hoverColor: Color,

  // An icon theme that contrasts with the card and canvas colors.
  // iconTheme: IconThemeData,

  // The color of the selected tab indicator in a tab bar.
  // indicatorColor: Color,

  // The default InputDecoration values for InputDecorator, TextField, and TextFormField are based on this theme.
  // inputDecorationTheme: InputDecorationTheme,

  // Configures the hit test size of certain Material widgets.
  // materialTapTargetSize: MaterialTapTargetSize,

  // Default MaterialPageRoute transitions per TargetPlatform.
  // pageTransitionsTheme: PageTransitionsTheme,

  // The platform the material widgets should adapt to target.
  // platform: TargetPlatform,

  // The background color for major parts of the app (toolbars, tab bars, etc)
  primaryColor: Colors.blue,

  // The brightness of the primaryColor.
  // Used to determine the color of text and icons placed on top of the primary color (e.g. toolbar text).
  // primaryColorBrightness: Brightness,

  // A darker version of the primaryColor.
  primaryColorDark: Colors.red,

  // A lighter version of the primaryColor.
  // primaryColorLight: Color,

  // An icon theme that contrasts with the primary color.
  // primaryIconTheme: IconThemeData,

  // A text theme that contrasts with the primary color.
  // Text styling for headlines, titles, bodies of text, and more.
  primaryTextTheme: TextTheme(),

  // The default color of the Material that underlies the Scaffold.
  // The background color for a typical material app or a page within the app.
  scaffoldBackgroundColor: Colors.white,

  // The color of the header of a PaginatedDataTable when there are selected rows.
  // secondaryHeaderColor: Color,

  // The color used to highlight selected rows.
  selectedRowColor: Colors.grey,

  // The colors and shapes used to render Slider.
  // sliderTheme: SliderThemeData,

  // A theme for customizing colors, shape, elevation, and behavior of a SnackBar.
  // snackBarTheme: SnackBarThemeData,

  // The color of ink splashes. See InkWell.
  splashColor: Colors.transparent,

  // Defines the appearance of ink splashes produces by InkWell and InkResponse.
  // splashFactory: InteractiveInkFeatureFactory,

  // A theme for customizing the size, shape, and color of the tab bar indicator.
  // tabBarTheme: TabBarTheme,

  // The color of text selections in text fields, such as TextField.
  // textSelectionColor: Color,

  // The color of the handles used to adjust what part of the text is currently selected.
  // textSelectionHandleColor: Color,

  // Text with a color that contrasts with the card and canvas colors.
  textTheme: TextTheme(
    // Used for the default text style for Material.
    body1: TextStyle(),
    // Used for emphasizing text that would otherwise be body1.
    body2: TextStyle(),
    // Used for text on RaisedButton and FlatButton.
    button: TextStyle(
      color: Colors.white,
    ),
    // Used for auxiliary text associated with images.
    caption: TextStyle(),
    // Large text.
    display1: TextStyle(),
    // Very large text.
    display2: TextStyle(),
    // Very, very large text
    display3: TextStyle(),
    // Extremely large text.
    display4: TextStyle(),
    // Used for large text in dialogs (e.g., the month and year in the dialog shown by showDatePicker).
    headline: TextStyle(),
    // The smallest style,
    overline: TextStyle(),
    // Used for the primary text in lists (e.g., ListTile.title).
    subhead: TextStyle(),
    // For medium emphasis text that's a little smaller than subhead.
    subtitle: TextStyle(),
    // Used for the primary text in app bars and dialogs (e.g., AppBar.title and AlertDialog.title).
    title: TextStyle(),
  ),

  // The color used to highlight the active states of toggleable widgets like Switch, Radio, and Checkbox.
  // toggleableActiveColor: Color,

  // The color and geometry TextTheme values used to configure textTheme, primaryTextTheme, and accentTextTheme.
  // typography: Typography,

  // The color used for widgets in their inactive (but enabled) state.
  // For example, an unchecked checkbox. Usually contrasted with the accentColor. See also disabledColor
  // unselectedWidgetColor: Color
);
