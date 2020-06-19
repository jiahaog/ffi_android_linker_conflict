#import "FfiAndroidLinkerConflictPlugin.h"
#if __has_include(<ffi_android_linker_conflict_plugin/ffi_android_linker_conflict_plugin-Swift.h>)
#import <ffi_android_linker_conflict_plugin/ffi_android_linker_conflict_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ffi_android_linker_conflict_plugin-Swift.h"
#endif

@implementation FfiAndroidLinkerConflictPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFfiAndroidLinkerConflictPlugin registerWithRegistrar:registrar];
}
@end
