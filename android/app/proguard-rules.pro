# Keep Flutter classes
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-dontwarn io.flutter.embedding.**

# Keep Firebase Messaging classes
-keep class com.google.firebase.messaging.** { *; }
-keep class com.google.firebase.iid.** { *; }
-keep class com.google.android.gms.** { *; }

# Keep notification-related classes
-keep class io.flutter.plugins.firebase.messaging.** { *; }
-keep class com.dexterous.flutterlocalnotifications.** { *; }

# Keep your custom notification class and its methods
-keep class ** implements io.flutter.plugins.firebase.messaging.FlutterFirebaseMessagingBackgroundService { *; }

# Keep all classes that extend from FlutterFirebaseMessagingService
-keep class * extends io.flutter.plugins.firebase.messaging.FlutterFirebaseMessagingService { *; }

# Keep background message handler
-keep class io.flutter.plugins.firebase.messaging.FlutterFirebaseMessagingBackgroundService { *; }

# Keep method names for callback methods
-keepclassmembers class * {
    @io.flutter.plugins.firebase.messaging.FirebaseMessagingBackgroundHandler *;
}

# Keep Dart callback methods
-keep class * {
    *** firebaseMessagingBackgroundHandler(...);
}

# Don't obfuscate anything with @pragma('vm:entry-point')
-keep @pragma class * { *; }
-keepclassmembers class * {
    @pragma *;
}

# Keep serialization classes
-keepattributes Signature
-keepattributes *Annotation*
-keepattributes InnerClasses
-keepattributes EnclosingMethod

# Keep native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep enum classes
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep Parcelable classes
-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

# Keep JSON serialization
-keepattributes Signature
-keepattributes *Annotation*
-dontwarn sun.misc.**
-keep class com.google.gson.** { *; }
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer