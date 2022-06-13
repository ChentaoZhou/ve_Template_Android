# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

-ignorewarnings

# androix start
-keep class com.google.android.material.** {*;}
-keep class android.arch.lifecycle.ViewModelStoreOwner {
	android.arch.lifecycle.ViewModelStore getViewModelStore();
}
-keep class com.volcengine.mira.IPlugin1Service {
	android.support.v4.app.Fragment getFragment();
}
-keep class android.support.constraint.ConstraintLayout {
	<init>(...);
}
-keep class com.volcengine.mira.ServiceManager {
	void resisterService(java.lang.Class,java.lang.Object);
}
-keep class android.arch.lifecycle.LifecycleOwner {
	android.arch.lifecycle.Lifecycle getLifecycle();
}
-keep class android.support.annotation.Nullable {}
-keep class kotlin.Metadata {
	int[] bv();
	java.lang.String[] d1();
	java.lang.String[] d2();
	int k();
	int[] mv();
}
-keep class android.support.v4.app.Fragment {
	<init>();
}

-dontwarn com.google.android.material.**
-dontnote com.google.android.material.**

# androix end

# 保留Parcelable序列化类不被混淆
-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

# 枚举类混淆规则
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# api test相关
-keep class com.shoots.api.socket.** {*;}
-keep class com.volcengine.mars.apitest.** {*;}
-keep class com.volcengine.rc.example.test.** {*;}
-keep class com.bytedance.mira.** {*;}

#mira auto package
-keep class android.arch.lifecycle.ViewModelStoreOwner { *;}
-keep class com.volcengine.mira.IPlugin1Service { *;}
-keep class com.volcengine.mira.ServiceManager { *;}
-keep class android.arch.lifecycle.LifecycleOwner { *;}
-keep class kotlin.Metadata { *;}
-keep class android.support.v4.app.Fragment { *;}
-keep class android.support.v4.app.FragmentTransaction { *;}
-keep class android.support.v4.app.FragmentActivity { *;}
-keep class android.support.v4.app.FragmentManager { *;}
-keep class android.support.v7.app.AppCompatCallback { *;}
-keep class android.support.v4.view.KeyEventDispatcher$Component { *;}
-keep class android.support.v4.app.TaskStackBuilder$SupportParentable { *;}
-keep class android.support.v7.app.ActionBarDrawerToggle$DelegateProvider { *;}
-keep class com.volcengine.mira.HostUtils { *;}
-keep class android.support.v4.app.ActivityCompat$RequestPermissionsRequestCodeValidator { *;}
-keep class android.support.v4.app.ActivityCompat$OnRequestPermissionsResultCallback { *;}
-keep class android.support.v7.app.AppCompatActivity { *;}