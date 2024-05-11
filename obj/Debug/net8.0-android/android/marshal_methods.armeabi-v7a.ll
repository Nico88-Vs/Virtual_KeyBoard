; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [336 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [666 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 29963982, ; 3: ru\System.Private.ServiceModel.resources.dll => 0x1c936ce => 328
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 243
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 277
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 7: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 285
	i32 39485524, ; 8: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 9: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 294
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 145
	i32 56501124, ; 11: DevExpress.Data.v23.1 => 0x35e2384 => 174
	i32 66541672, ; 12: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 13: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 318
	i32 68219467, ; 14: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 15: Microsoft.Maui.Graphics.dll => 0x44bb714 => 193
	i32 73378631, ; 16: it\System.Private.ServiceModel.resources => 0x45fab47 => 323
	i32 82292897, ; 17: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 18: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 302
	i32 101534019, ; 19: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 261
	i32 117431740, ; 20: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 21: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 261
	i32 122350210, ; 22: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 23: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 281
	i32 136584136, ; 24: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 317
	i32 140062828, ; 25: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 310
	i32 142721839, ; 26: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 27: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 28: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 29: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 217
	i32 176265551, ; 30: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 31: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 263
	i32 184328833, ; 32: System.ValueTuple.dll => 0xafca281 => 151
	i32 186847684, ; 33: zh-Hans\System.Private.ServiceModel.resources => 0xb2311c4 => 330
	i32 205061960, ; 34: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 35: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 215
	i32 220171995, ; 36: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 37: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 237
	i32 230752869, ; 38: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 39: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 40: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 41: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 42: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 220
	i32 276479776, ; 43: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 44: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 239
	i32 280482487, ; 45: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 236
	i32 291076382, ; 46: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 47: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 48: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 315
	i32 318968648, ; 49: Xamarin.AndroidX.Activity.dll => 0x13031348 => 206
	i32 321597661, ; 50: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 51: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 293
	i32 342366114, ; 52: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 238
	i32 360082299, ; 53: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 54: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 55: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 56: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 57: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 58: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 59: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 60: _Microsoft.Android.Resource.Designer => 0x17969339 => 332
	i32 403441872, ; 61: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 62: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 313
	i32 441335492, ; 63: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 221
	i32 442565967, ; 64: System.Collections => 0x1a61054f => 12
	i32 447904399, ; 65: de\System.Private.ServiceModel.resources => 0x1ab27a8f => 320
	i32 450948140, ; 66: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 234
	i32 451504562, ; 67: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 68: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 69: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 70: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 71: System.dll => 0x1bff388e => 164
	i32 476646585, ; 72: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 236
	i32 486930444, ; 73: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 249
	i32 489220957, ; 74: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 291
	i32 498788369, ; 75: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 76: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 187
	i32 526420162, ; 77: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 78: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 281
	i32 530272170, ; 79: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 532366474, ; 80: DevExpress.Xpo.v23.1 => 0x1fbb448a => 175
	i32 538707440, ; 81: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 312
	i32 539058512, ; 82: Microsoft.Extensions.Logging => 0x20216150 => 182
	i32 540030774, ; 83: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 84: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 85: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 86: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 177
	i32 549171840, ; 87: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 88: Jsr305Binding => 0x213954e7 => 274
	i32 562488221, ; 89: System.ServiceModel => 0x2186e39d => 201
	i32 569601784, ; 90: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 272
	i32 577335427, ; 91: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 92: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 93: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 94: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 95: Xamarin.AndroidX.CustomView => 0x2568904f => 226
	i32 627931235, ; 96: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 304
	i32 627965772, ; 97: tr\System.Private.ServiceModel.resources => 0x256dff4c => 329
	i32 639843206, ; 98: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 232
	i32 640584137, ; 99: pt-BR\System.Private.ServiceModel.resources => 0x262e89c9 => 327
	i32 643868501, ; 100: System.Net => 0x2660a755 => 81
	i32 662205335, ; 101: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 102: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 268
	i32 666292255, ; 103: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 213
	i32 672442732, ; 104: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 105: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 106: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 107: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 283
	i32 693804605, ; 108: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 109: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 110: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 278
	i32 700358131, ; 111: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 709152836, ; 112: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 197
	i32 720511267, ; 113: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 282
	i32 722857257, ; 114: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 115: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 116: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 117: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 203
	i32 759454413, ; 118: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 119: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775189201, ; 120: System.Data.SqlClient.dll => 0x2e3472d1 => 194
	i32 775507847, ; 121: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 122: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 310
	i32 789151979, ; 123: Microsoft.Extensions.Options => 0x2f0980eb => 186
	i32 790371945, ; 124: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 227
	i32 804715423, ; 125: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 126: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 241
	i32 809851609, ; 127: System.Drawing.Common.dll => 0x30455ad9 => 195
	i32 823281589, ; 128: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 129: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 130: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 131: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 132: Xamarin.AndroidX.Print => 0x3246f6cd => 254
	i32 869139383, ; 133: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 295
	i32 873119928, ; 134: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 135: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 136: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 137: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 309
	i32 904024072, ; 138: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 139: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 140: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 306
	i32 928116545, ; 141: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 277
	i32 952186615, ; 142: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 143: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 282
	i32 961460050, ; 144: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 299
	i32 966729478, ; 145: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 275
	i32 967690846, ; 146: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 238
	i32 972805734, ; 147: System.ServiceModel.Http => 0x39fbd666 => 199
	i32 975236339, ; 148: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 149: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 150: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 151: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 152: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 308
	i32 992768348, ; 153: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 154: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 155: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 156: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 258
	i32 1019214401, ; 157: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 158: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 181
	i32 1031528504, ; 159: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 276
	i32 1035644815, ; 160: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 211
	i32 1036536393, ; 161: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 162: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 289
	i32 1044663988, ; 163: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 164: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 245
	i32 1052316754, ; 165: ja\System.Private.ServiceModel.resources.dll => 0x3eb91452 => 324
	i32 1067306892, ; 166: GoogleGson => 0x3f9dcf8c => 176
	i32 1081414353, ; 167: System.ServiceModel.Http.dll => 0x407512d1 => 199
	i32 1082857460, ; 168: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 169: Xamarin.Kotlin.StdLib => 0x409e66d8 => 279
	i32 1098259244, ; 170: System => 0x41761b2c => 164
	i32 1108272742, ; 171: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 311
	i32 1117529484, ; 172: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 305
	i32 1118262833, ; 173: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 301
	i32 1121599056, ; 174: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 244
	i32 1127624469, ; 175: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 184
	i32 1149092582, ; 176: Xamarin.AndroidX.Window => 0x447dc2e6 => 271
	i32 1168523401, ; 177: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 307
	i32 1170634674, ; 178: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 179: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 267
	i32 1178241025, ; 180: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 252
	i32 1204270330, ; 181: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 213
	i32 1208641965, ; 182: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 183: CommunityToolkit.Mvvm => 0x4868cc7b => 173
	i32 1219128291, ; 184: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1224073131, ; 185: ja\System.Private.ServiceModel.resources => 0x48f5dfab => 324
	i32 1243150071, ; 186: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 272
	i32 1253011324, ; 187: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 188: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 287
	i32 1264511973, ; 189: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 262
	i32 1267360935, ; 190: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 266
	i32 1271643778, ; 191: tr\System.Private.ServiceModel.resources.dll => 0x4bcbbe82 => 329
	i32 1273260888, ; 192: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 218
	i32 1275534314, ; 193: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 283
	i32 1278448581, ; 194: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 210
	i32 1293217323, ; 195: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 229
	i32 1308624726, ; 196: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 296
	i32 1309188875, ; 197: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 198: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 271
	i32 1324164729, ; 199: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 200: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 201: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 316
	i32 1364015309, ; 202: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 203: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 317
	i32 1376866003, ; 204: Xamarin.AndroidX.SavedState => 0x52114ed3 => 258
	i32 1379779777, ; 205: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1394641819, ; 206: System.ServiceModel.Primitives => 0x53208b9b => 200
	i32 1402170036, ; 207: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 208: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 222
	i32 1408764838, ; 209: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 210: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 211: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 212: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 285
	i32 1434145427, ; 213: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 214: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 275
	i32 1439761251, ; 215: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 216: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 217: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 218: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 219: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 220: es\Microsoft.Maui.Controls.resources => 0x57152abe => 291
	i32 1461234159, ; 221: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 222: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 223: System.IO.Compression.dll => 0x57261233 => 46
	i32 1464129568, ; 224: Virtal_Kyboard.dll => 0x5744d820 => 0
	i32 1469204771, ; 225: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 212
	i32 1470490898, ; 226: Microsoft.Extensions.Primitives => 0x57a5e912 => 187
	i32 1479771757, ; 227: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 228: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 229: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 230: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 259
	i32 1526286932, ; 231: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 315
	i32 1536373174, ; 232: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 233: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 234: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 235: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 236: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 237: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 238: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 239: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 240: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 228
	i32 1592978981, ; 241: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 242: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 276
	i32 1601112923, ; 243: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 244: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 245: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622106878, ; 246: ru\System.Private.ServiceModel.resources => 0x60af62fe => 328
	i32 1622152042, ; 247: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 248
	i32 1622358360, ; 248: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 249: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 270
	i32 1635184631, ; 250: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 232
	i32 1636350590, ; 251: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 225
	i32 1639515021, ; 252: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 253: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 254: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 255: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 256: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 264
	i32 1658251792, ; 257: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 273
	i32 1670060433, ; 258: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 220
	i32 1675553242, ; 259: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 260: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 261: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 262: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1681246264, ; 263: es\System.Private.ServiceModel.resources.dll => 0x6435c838 => 321
	i32 1691477237, ; 264: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 265: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 266: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 280
	i32 1701541528, ; 267: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 268: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 241
	i32 1726116996, ; 269: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 270: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 271: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 216
	i32 1743415430, ; 272: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 286
	i32 1744735666, ; 273: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 274: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 275: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 276: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 277: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 278: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 279: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 263
	i32 1770118298, ; 280: ko\System.Private.ServiceModel.resources => 0x6981dc9a => 325
	i32 1770582343, ; 281: Microsoft.Extensions.Logging.dll => 0x6988f147 => 182
	i32 1776026572, ; 282: System.Core.dll => 0x69dc03cc => 21
	i32 1776304592, ; 283: cs\System.Private.ServiceModel.resources.dll => 0x69e041d0 => 319
	i32 1777075843, ; 284: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 285: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 286: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 302
	i32 1788241197, ; 287: Xamarin.AndroidX.Fragment => 0x6a96652d => 234
	i32 1793755602, ; 288: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 294
	i32 1796167890, ; 289: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 177
	i32 1808609942, ; 290: Xamarin.AndroidX.Loader => 0x6bcd3296 => 248
	i32 1813058853, ; 291: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 279
	i32 1813201214, ; 292: Xamarin.Google.Android.Material => 0x6c13413e => 273
	i32 1818569960, ; 293: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 253
	i32 1818787751, ; 294: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 295: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 296: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 297: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 183
	i32 1847515442, ; 298: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 203
	i32 1853025655, ; 299: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 311
	i32 1858542181, ; 300: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 301: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 302: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 293
	i32 1879696579, ; 303: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 304: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 214
	i32 1888955245, ; 305: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 306: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 307: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 287
	i32 1898237753, ; 308: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 309: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1909804520, ; 310: de\System.Private.ServiceModel.resources.dll => 0x71d54de8 => 320
	i32 1910275211, ; 311: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1922109462, ; 312: System.ServiceModel.Primitives.dll => 0x72911016 => 200
	i32 1939592360, ; 313: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 314: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 298
	i32 1956758971, ; 315: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 316: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 260
	i32 1968388702, ; 317: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 178
	i32 1983156543, ; 318: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 280
	i32 1985761444, ; 319: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 205
	i32 2003115576, ; 320: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 290
	i32 2011961780, ; 321: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014309119, ; 322: cs\System.Private.ServiceModel.resources => 0x780feaff => 319
	i32 2019465201, ; 323: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 245
	i32 2031763787, ; 324: Xamarin.Android.Glide => 0x791a414b => 202
	i32 2045470958, ; 325: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 326: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 240
	i32 2060060697, ; 327: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 328: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 289
	i32 2070888862, ; 329: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 330: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2085039813, ; 331: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 198
	i32 2090596640, ; 332: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2092919810, ; 333: System.ServiceModel.dll => 0x7cbf6c02 => 201
	i32 2127167465, ; 334: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 335: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 336: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 337: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 338: Microsoft.Maui => 0x80bd55ad => 191
	i32 2169148018, ; 339: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 297
	i32 2181898931, ; 340: Microsoft.Extensions.Options.dll => 0x820d22b3 => 186
	i32 2192057212, ; 341: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 183
	i32 2193016926, ; 342: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 343: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 284
	i32 2201231467, ; 344: System.Net.Http => 0x8334206b => 64
	i32 2204417087, ; 345: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 185
	i32 2207618523, ; 346: it\Microsoft.Maui.Controls.resources => 0x839595db => 299
	i32 2217644978, ; 347: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 267
	i32 2222056684, ; 348: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 349: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 249
	i32 2252106437, ; 350: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 351: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2257952922, ; 352: pl\System.Private.ServiceModel.resources => 0x8695a09a => 326
	i32 2265110946, ; 353: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 354: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 179
	i32 2267999099, ; 355: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 204
	i32 2269114879, ; 356: Virtal_Kyboard => 0x873ff1ff => 0
	i32 2279755925, ; 357: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 256
	i32 2293034957, ; 358: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 359: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 360: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 361: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 303
	i32 2305521784, ; 362: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 363: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 208
	i32 2320631194, ; 364: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 365: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 366: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 367: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 368: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 297
	i32 2368005991, ; 369: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 370: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 178
	i32 2378619854, ; 371: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 372: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 373: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 298
	i32 2401565422, ; 374: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 375: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 231
	i32 2417490523, ; 376: zh-Hant\System.Private.ServiceModel.resources => 0x9017fa5b => 331
	i32 2421380589, ; 377: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 378: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 218
	i32 2427813419, ; 379: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 295
	i32 2435356389, ; 380: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 381: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2452920002, ; 382: ko\System.Private.ServiceModel.resources.dll => 0x923496c2 => 325
	i32 2454642406, ; 383: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 384: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 385: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 386: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 221
	i32 2471841756, ; 387: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 388: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 389: Microsoft.Maui.Controls => 0x93dba8a1 => 189
	i32 2483903535, ; 390: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 391: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 392: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 393: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 394: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 301
	i32 2505896520, ; 395: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 243
	i32 2522472828, ; 396: Xamarin.Android.Glide.dll => 0x9659e17c => 202
	i32 2538310050, ; 397: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 398: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 296
	i32 2562349572, ; 399: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 400: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 401: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 300
	i32 2579076046, ; 402: System.Private.ServiceModel.dll => 0x99b993ce => 196
	i32 2581783588, ; 403: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 244
	i32 2581819634, ; 404: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 266
	i32 2585220780, ; 405: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 406: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 407: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 408: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 305
	i32 2605712449, ; 409: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 284
	i32 2615233544, ; 410: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 235
	i32 2616218305, ; 411: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 184
	i32 2617129537, ; 412: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 413: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 414: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 225
	i32 2624644809, ; 415: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 230
	i32 2626831493, ; 416: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 300
	i32 2627185994, ; 417: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 418: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 419: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 239
	i32 2663391936, ; 420: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 204
	i32 2663698177, ; 421: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 422: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 423: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 424: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 425: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 426: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 427: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 264
	i32 2715334215, ; 428: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 429: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 430: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 431: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 432: Xamarin.AndroidX.Activity => 0xa2e0939b => 206
	i32 2735172069, ; 433: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 434: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 212
	i32 2740698338, ; 435: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 286
	i32 2740948882, ; 436: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 437: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 438: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 306
	i32 2758225723, ; 439: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 190
	i32 2764765095, ; 440: Microsoft.Maui.dll => 0xa4caf7a7 => 191
	i32 2765824710, ; 441: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 442: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 278
	i32 2778768386, ; 443: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 269
	i32 2779977773, ; 444: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 257
	i32 2785988530, ; 445: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 312
	i32 2788224221, ; 446: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 235
	i32 2801831435, ; 447: Microsoft.Maui.Graphics => 0xa7008e0b => 193
	i32 2803228030, ; 448: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 449: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 222
	i32 2819470561, ; 450: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 451: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 452: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 257
	i32 2824502124, ; 453: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2838993487, ; 454: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 246
	i32 2849599387, ; 455: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 456: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 269
	i32 2855708567, ; 457: Xamarin.AndroidX.Transition => 0xaa36a797 => 265
	i32 2861098320, ; 458: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 459: Microsoft.Maui.Essentials => 0xaa8a4878 => 192
	i32 2870099610, ; 460: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 207
	i32 2875164099, ; 461: Jsr305Binding.dll => 0xab5f85c3 => 274
	i32 2875220617, ; 462: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 463: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 233
	i32 2887636118, ; 464: System.Net.dll => 0xac1dd496 => 81
	i32 2888083483, ; 465: zh-Hans\System.Private.ServiceModel.resources.dll => 0xac24a81b => 330
	i32 2899753641, ; 466: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 467: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 468: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 469: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 470: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 471: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 270
	i32 2919462931, ; 472: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 473: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 209
	i32 2921417940, ; 474: System.Security.Cryptography.Xml => 0xae214cd4 => 198
	i32 2936416060, ; 475: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 476: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 477: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 478: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 479: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 480: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 481: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 229
	i32 2987532451, ; 482: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 260
	i32 2996846495, ; 483: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 242
	i32 3016983068, ; 484: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 262
	i32 3023353419, ; 485: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 486: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 237
	i32 3038032645, ; 487: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 332
	i32 3053864966, ; 488: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 292
	i32 3056245963, ; 489: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 259
	i32 3057625584, ; 490: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 250
	i32 3059408633, ; 491: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 492: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 493: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 494: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 495: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 496: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 497: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 498: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 499: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 500: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 501: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 502: GoogleGson.dll => 0xbba64c02 => 176
	i32 3159123045, ; 503: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 504: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 505: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 251
	i32 3192346100, ; 506: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 507: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 508: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 509: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 510: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 228
	i32 3220365878, ; 511: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 512: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 513: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 514: Xamarin.AndroidX.CardView => 0xc235e84d => 216
	i32 3265493905, ; 515: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 516: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 517: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 518: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 519: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 520: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 521: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 522: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3304269053, ; 523: pt-BR\System.Private.ServiceModel.resources.dll => 0xc4f324fd => 327
	i32 3305363605, ; 524: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 292
	i32 3316684772, ; 525: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 526: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 226
	i32 3317144872, ; 527: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 528: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 214
	i32 3345895724, ; 529: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 255
	i32 3346324047, ; 530: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 252
	i32 3357674450, ; 531: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 309
	i32 3358260929, ; 532: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 533: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 207
	i32 3362522851, ; 534: Xamarin.AndroidX.Core => 0xc86c06e3 => 223
	i32 3366347497, ; 535: Java.Interop => 0xc8a662e9 => 168
	i32 3366861359, ; 536: it\System.Private.ServiceModel.resources.dll => 0xc8ae3a2f => 323
	i32 3374999561, ; 537: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 256
	i32 3381016424, ; 538: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 288
	i32 3395150330, ; 539: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 540: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 541: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 227
	i32 3428513518, ; 542: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 180
	i32 3429136800, ; 543: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 544: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 545: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 230
	i32 3445260447, ; 546: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 547: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 188
	i32 3458724246, ; 548: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 307
	i32 3471940407, ; 549: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 550: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 551: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 308
	i32 3485117614, ; 552: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 553: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 554: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 219
	i32 3509114376, ; 555: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 556: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 557: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 558: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 559: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 560: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 561: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 316
	i32 3592228221, ; 562: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 318
	i32 3597029428, ; 563: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 205
	i32 3598340787, ; 564: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 565: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 566: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 567: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 254
	i32 3633644679, ; 568: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 209
	i32 3638274909, ; 569: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 570: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 240
	i32 3643446276, ; 571: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 313
	i32 3643854240, ; 572: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 251
	i32 3645089577, ; 573: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 574: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 179
	i32 3660523487, ; 575: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 576: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 577: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 215
	i32 3684561358, ; 578: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 219
	i32 3689375977, ; 579: System.Drawing.Common => 0xdbe768e9 => 195
	i32 3700866549, ; 580: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 581: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 224
	i32 3716563718, ; 582: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 583: Xamarin.AndroidX.Annotation => 0xdda814c6 => 208
	i32 3724971120, ; 584: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 250
	i32 3732100267, ; 585: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 586: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 587: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 588: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 589: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 288
	i32 3765508441, ; 590: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 185
	i32 3786282454, ; 591: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 217
	i32 3792276235, ; 592: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 593: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 188
	i32 3802395368, ; 594: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 595: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 197
	i32 3819260425, ; 596: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 597: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 598: System.Numerics.dll => 0xe4436460 => 83
	i32 3834665012, ; 599: System.Data.SqlClient => 0xe4905834 => 194
	i32 3841636137, ; 600: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 181
	i32 3844307129, ; 601: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 602: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 603: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 604: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 605: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 606: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 607: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 265
	i32 3888767677, ; 608: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 255
	i32 3896106733, ; 609: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 610: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 223
	i32 3901907137, ; 611: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 612: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 304
	i32 3920810846, ; 613: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 614: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 268
	i32 3928044579, ; 615: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 616: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 617: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 253
	i32 3945713374, ; 618: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 619: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 620: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 211
	i32 3959773229, ; 621: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 242
	i32 3963657850, ; 622: zh-Hant\System.Private.ServiceModel.resources.dll => 0xec409e7a => 331
	i32 3967479620, ; 623: fr\System.Private.ServiceModel.resources.dll => 0xec7aef44 => 322
	i32 3972432407, ; 624: System.Private.ServiceModel => 0xecc68217 => 196
	i32 4003436829, ; 625: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 626: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 210
	i32 4025784931, ; 627: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 628: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 190
	i32 4047172718, ; 629: pl\System.Private.ServiceModel.resources.dll => 0xf13af46e => 326
	i32 4054681211, ; 630: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 631: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 632: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 633: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 290
	i32 4094352644, ; 634: Microsoft.Maui.Essentials.dll => 0xf40add04 => 192
	i32 4099507663, ; 635: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 636: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 637: Xamarin.AndroidX.Emoji2 => 0xf479582c => 231
	i32 4103439459, ; 638: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 314
	i32 4118635771, ; 639: es\System.Private.ServiceModel.resources => 0xf57d64fb => 321
	i32 4126470640, ; 640: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 180
	i32 4127667938, ; 641: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 642: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 643: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 644: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 314
	i32 4151237749, ; 645: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 646: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 647: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 648: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 649: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 650: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 247
	i32 4185676441, ; 651: System.Security => 0xf97c5a99 => 130
	i32 4195079763, ; 652: DevExpress.Xpo.v23.1.dll => 0xfa0bd653 => 175
	i32 4196529839, ; 653: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 654: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4233583549, ; 655: DevExpress.Data.v23.1.dll => 0xfc575bbd => 174
	i32 4247884151, ; 656: fr\System.Private.ServiceModel.resources => 0xfd319177 => 322
	i32 4249188766, ; 657: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 303
	i32 4256097574, ; 658: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 224
	i32 4258378803, ; 659: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 246
	i32 4260525087, ; 660: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 661: Microsoft.Maui.Controls.dll => 0xfea12dee => 189
	i32 4274623895, ; 662: CommunityToolkit.Mvvm.dll => 0xfec99597 => 173
	i32 4274976490, ; 663: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 664: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 247
	i32 4294763496 ; 665: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 233
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [666 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 328, ; 3
	i32 243, ; 4
	i32 277, ; 5
	i32 48, ; 6
	i32 285, ; 7
	i32 80, ; 8
	i32 294, ; 9
	i32 145, ; 10
	i32 174, ; 11
	i32 30, ; 12
	i32 318, ; 13
	i32 124, ; 14
	i32 193, ; 15
	i32 323, ; 16
	i32 102, ; 17
	i32 302, ; 18
	i32 261, ; 19
	i32 107, ; 20
	i32 261, ; 21
	i32 139, ; 22
	i32 281, ; 23
	i32 317, ; 24
	i32 310, ; 25
	i32 77, ; 26
	i32 124, ; 27
	i32 13, ; 28
	i32 217, ; 29
	i32 132, ; 30
	i32 263, ; 31
	i32 151, ; 32
	i32 330, ; 33
	i32 18, ; 34
	i32 215, ; 35
	i32 26, ; 36
	i32 237, ; 37
	i32 1, ; 38
	i32 59, ; 39
	i32 42, ; 40
	i32 91, ; 41
	i32 220, ; 42
	i32 147, ; 43
	i32 239, ; 44
	i32 236, ; 45
	i32 54, ; 46
	i32 69, ; 47
	i32 315, ; 48
	i32 206, ; 49
	i32 83, ; 50
	i32 293, ; 51
	i32 238, ; 52
	i32 131, ; 53
	i32 55, ; 54
	i32 149, ; 55
	i32 74, ; 56
	i32 145, ; 57
	i32 62, ; 58
	i32 146, ; 59
	i32 332, ; 60
	i32 165, ; 61
	i32 313, ; 62
	i32 221, ; 63
	i32 12, ; 64
	i32 320, ; 65
	i32 234, ; 66
	i32 125, ; 67
	i32 152, ; 68
	i32 113, ; 69
	i32 166, ; 70
	i32 164, ; 71
	i32 236, ; 72
	i32 249, ; 73
	i32 291, ; 74
	i32 84, ; 75
	i32 187, ; 76
	i32 150, ; 77
	i32 281, ; 78
	i32 60, ; 79
	i32 175, ; 80
	i32 312, ; 81
	i32 182, ; 82
	i32 51, ; 83
	i32 103, ; 84
	i32 114, ; 85
	i32 177, ; 86
	i32 40, ; 87
	i32 274, ; 88
	i32 201, ; 89
	i32 272, ; 90
	i32 120, ; 91
	i32 52, ; 92
	i32 44, ; 93
	i32 119, ; 94
	i32 226, ; 95
	i32 304, ; 96
	i32 329, ; 97
	i32 232, ; 98
	i32 327, ; 99
	i32 81, ; 100
	i32 136, ; 101
	i32 268, ; 102
	i32 213, ; 103
	i32 8, ; 104
	i32 73, ; 105
	i32 155, ; 106
	i32 283, ; 107
	i32 154, ; 108
	i32 92, ; 109
	i32 278, ; 110
	i32 45, ; 111
	i32 197, ; 112
	i32 282, ; 113
	i32 109, ; 114
	i32 129, ; 115
	i32 25, ; 116
	i32 203, ; 117
	i32 72, ; 118
	i32 55, ; 119
	i32 194, ; 120
	i32 46, ; 121
	i32 310, ; 122
	i32 186, ; 123
	i32 227, ; 124
	i32 22, ; 125
	i32 241, ; 126
	i32 195, ; 127
	i32 86, ; 128
	i32 43, ; 129
	i32 160, ; 130
	i32 71, ; 131
	i32 254, ; 132
	i32 295, ; 133
	i32 3, ; 134
	i32 42, ; 135
	i32 63, ; 136
	i32 309, ; 137
	i32 16, ; 138
	i32 53, ; 139
	i32 306, ; 140
	i32 277, ; 141
	i32 105, ; 142
	i32 282, ; 143
	i32 299, ; 144
	i32 275, ; 145
	i32 238, ; 146
	i32 199, ; 147
	i32 34, ; 148
	i32 158, ; 149
	i32 85, ; 150
	i32 32, ; 151
	i32 308, ; 152
	i32 12, ; 153
	i32 51, ; 154
	i32 56, ; 155
	i32 258, ; 156
	i32 36, ; 157
	i32 181, ; 158
	i32 276, ; 159
	i32 211, ; 160
	i32 35, ; 161
	i32 289, ; 162
	i32 58, ; 163
	i32 245, ; 164
	i32 324, ; 165
	i32 176, ; 166
	i32 199, ; 167
	i32 17, ; 168
	i32 279, ; 169
	i32 164, ; 170
	i32 311, ; 171
	i32 305, ; 172
	i32 301, ; 173
	i32 244, ; 174
	i32 184, ; 175
	i32 271, ; 176
	i32 307, ; 177
	i32 153, ; 178
	i32 267, ; 179
	i32 252, ; 180
	i32 213, ; 181
	i32 29, ; 182
	i32 173, ; 183
	i32 52, ; 184
	i32 324, ; 185
	i32 272, ; 186
	i32 5, ; 187
	i32 287, ; 188
	i32 262, ; 189
	i32 266, ; 190
	i32 329, ; 191
	i32 218, ; 192
	i32 283, ; 193
	i32 210, ; 194
	i32 229, ; 195
	i32 296, ; 196
	i32 85, ; 197
	i32 271, ; 198
	i32 61, ; 199
	i32 112, ; 200
	i32 316, ; 201
	i32 57, ; 202
	i32 317, ; 203
	i32 258, ; 204
	i32 99, ; 205
	i32 200, ; 206
	i32 19, ; 207
	i32 222, ; 208
	i32 111, ; 209
	i32 101, ; 210
	i32 102, ; 211
	i32 285, ; 212
	i32 104, ; 213
	i32 275, ; 214
	i32 71, ; 215
	i32 38, ; 216
	i32 32, ; 217
	i32 103, ; 218
	i32 73, ; 219
	i32 291, ; 220
	i32 9, ; 221
	i32 123, ; 222
	i32 46, ; 223
	i32 0, ; 224
	i32 212, ; 225
	i32 187, ; 226
	i32 9, ; 227
	i32 43, ; 228
	i32 4, ; 229
	i32 259, ; 230
	i32 315, ; 231
	i32 31, ; 232
	i32 138, ; 233
	i32 92, ; 234
	i32 93, ; 235
	i32 49, ; 236
	i32 141, ; 237
	i32 112, ; 238
	i32 140, ; 239
	i32 228, ; 240
	i32 115, ; 241
	i32 276, ; 242
	i32 157, ; 243
	i32 76, ; 244
	i32 79, ; 245
	i32 328, ; 246
	i32 248, ; 247
	i32 37, ; 248
	i32 270, ; 249
	i32 232, ; 250
	i32 225, ; 251
	i32 64, ; 252
	i32 138, ; 253
	i32 15, ; 254
	i32 116, ; 255
	i32 264, ; 256
	i32 273, ; 257
	i32 220, ; 258
	i32 48, ; 259
	i32 70, ; 260
	i32 80, ; 261
	i32 126, ; 262
	i32 321, ; 263
	i32 94, ; 264
	i32 121, ; 265
	i32 280, ; 266
	i32 26, ; 267
	i32 241, ; 268
	i32 97, ; 269
	i32 28, ; 270
	i32 216, ; 271
	i32 286, ; 272
	i32 149, ; 273
	i32 169, ; 274
	i32 4, ; 275
	i32 98, ; 276
	i32 33, ; 277
	i32 93, ; 278
	i32 263, ; 279
	i32 325, ; 280
	i32 182, ; 281
	i32 21, ; 282
	i32 319, ; 283
	i32 41, ; 284
	i32 170, ; 285
	i32 302, ; 286
	i32 234, ; 287
	i32 294, ; 288
	i32 177, ; 289
	i32 248, ; 290
	i32 279, ; 291
	i32 273, ; 292
	i32 253, ; 293
	i32 2, ; 294
	i32 134, ; 295
	i32 111, ; 296
	i32 183, ; 297
	i32 203, ; 298
	i32 311, ; 299
	i32 58, ; 300
	i32 95, ; 301
	i32 293, ; 302
	i32 39, ; 303
	i32 214, ; 304
	i32 25, ; 305
	i32 94, ; 306
	i32 287, ; 307
	i32 89, ; 308
	i32 99, ; 309
	i32 320, ; 310
	i32 10, ; 311
	i32 200, ; 312
	i32 87, ; 313
	i32 298, ; 314
	i32 100, ; 315
	i32 260, ; 316
	i32 178, ; 317
	i32 280, ; 318
	i32 205, ; 319
	i32 290, ; 320
	i32 7, ; 321
	i32 319, ; 322
	i32 245, ; 323
	i32 202, ; 324
	i32 88, ; 325
	i32 240, ; 326
	i32 154, ; 327
	i32 289, ; 328
	i32 33, ; 329
	i32 116, ; 330
	i32 198, ; 331
	i32 82, ; 332
	i32 201, ; 333
	i32 20, ; 334
	i32 11, ; 335
	i32 162, ; 336
	i32 3, ; 337
	i32 191, ; 338
	i32 297, ; 339
	i32 186, ; 340
	i32 183, ; 341
	i32 84, ; 342
	i32 284, ; 343
	i32 64, ; 344
	i32 185, ; 345
	i32 299, ; 346
	i32 267, ; 347
	i32 143, ; 348
	i32 249, ; 349
	i32 157, ; 350
	i32 41, ; 351
	i32 326, ; 352
	i32 117, ; 353
	i32 179, ; 354
	i32 204, ; 355
	i32 0, ; 356
	i32 256, ; 357
	i32 131, ; 358
	i32 75, ; 359
	i32 66, ; 360
	i32 303, ; 361
	i32 172, ; 362
	i32 208, ; 363
	i32 143, ; 364
	i32 106, ; 365
	i32 151, ; 366
	i32 70, ; 367
	i32 297, ; 368
	i32 156, ; 369
	i32 178, ; 370
	i32 121, ; 371
	i32 127, ; 372
	i32 298, ; 373
	i32 152, ; 374
	i32 231, ; 375
	i32 331, ; 376
	i32 141, ; 377
	i32 218, ; 378
	i32 295, ; 379
	i32 20, ; 380
	i32 14, ; 381
	i32 325, ; 382
	i32 135, ; 383
	i32 75, ; 384
	i32 59, ; 385
	i32 221, ; 386
	i32 167, ; 387
	i32 168, ; 388
	i32 189, ; 389
	i32 15, ; 390
	i32 74, ; 391
	i32 6, ; 392
	i32 23, ; 393
	i32 301, ; 394
	i32 243, ; 395
	i32 202, ; 396
	i32 91, ; 397
	i32 296, ; 398
	i32 1, ; 399
	i32 136, ; 400
	i32 300, ; 401
	i32 196, ; 402
	i32 244, ; 403
	i32 266, ; 404
	i32 134, ; 405
	i32 69, ; 406
	i32 146, ; 407
	i32 305, ; 408
	i32 284, ; 409
	i32 235, ; 410
	i32 184, ; 411
	i32 88, ; 412
	i32 96, ; 413
	i32 225, ; 414
	i32 230, ; 415
	i32 300, ; 416
	i32 31, ; 417
	i32 45, ; 418
	i32 239, ; 419
	i32 204, ; 420
	i32 109, ; 421
	i32 158, ; 422
	i32 35, ; 423
	i32 22, ; 424
	i32 114, ; 425
	i32 57, ; 426
	i32 264, ; 427
	i32 144, ; 428
	i32 118, ; 429
	i32 120, ; 430
	i32 110, ; 431
	i32 206, ; 432
	i32 139, ; 433
	i32 212, ; 434
	i32 286, ; 435
	i32 54, ; 436
	i32 105, ; 437
	i32 306, ; 438
	i32 190, ; 439
	i32 191, ; 440
	i32 133, ; 441
	i32 278, ; 442
	i32 269, ; 443
	i32 257, ; 444
	i32 312, ; 445
	i32 235, ; 446
	i32 193, ; 447
	i32 159, ; 448
	i32 222, ; 449
	i32 163, ; 450
	i32 132, ; 451
	i32 257, ; 452
	i32 161, ; 453
	i32 246, ; 454
	i32 140, ; 455
	i32 269, ; 456
	i32 265, ; 457
	i32 169, ; 458
	i32 192, ; 459
	i32 207, ; 460
	i32 274, ; 461
	i32 40, ; 462
	i32 233, ; 463
	i32 81, ; 464
	i32 330, ; 465
	i32 56, ; 466
	i32 37, ; 467
	i32 97, ; 468
	i32 166, ; 469
	i32 172, ; 470
	i32 270, ; 471
	i32 82, ; 472
	i32 209, ; 473
	i32 198, ; 474
	i32 98, ; 475
	i32 30, ; 476
	i32 159, ; 477
	i32 18, ; 478
	i32 127, ; 479
	i32 119, ; 480
	i32 229, ; 481
	i32 260, ; 482
	i32 242, ; 483
	i32 262, ; 484
	i32 165, ; 485
	i32 237, ; 486
	i32 332, ; 487
	i32 292, ; 488
	i32 259, ; 489
	i32 250, ; 490
	i32 170, ; 491
	i32 16, ; 492
	i32 144, ; 493
	i32 125, ; 494
	i32 118, ; 495
	i32 38, ; 496
	i32 115, ; 497
	i32 47, ; 498
	i32 142, ; 499
	i32 117, ; 500
	i32 34, ; 501
	i32 176, ; 502
	i32 95, ; 503
	i32 53, ; 504
	i32 251, ; 505
	i32 129, ; 506
	i32 153, ; 507
	i32 24, ; 508
	i32 161, ; 509
	i32 228, ; 510
	i32 148, ; 511
	i32 104, ; 512
	i32 89, ; 513
	i32 216, ; 514
	i32 60, ; 515
	i32 142, ; 516
	i32 100, ; 517
	i32 5, ; 518
	i32 13, ; 519
	i32 122, ; 520
	i32 135, ; 521
	i32 28, ; 522
	i32 327, ; 523
	i32 292, ; 524
	i32 72, ; 525
	i32 226, ; 526
	i32 24, ; 527
	i32 214, ; 528
	i32 255, ; 529
	i32 252, ; 530
	i32 309, ; 531
	i32 137, ; 532
	i32 207, ; 533
	i32 223, ; 534
	i32 168, ; 535
	i32 323, ; 536
	i32 256, ; 537
	i32 288, ; 538
	i32 101, ; 539
	i32 123, ; 540
	i32 227, ; 541
	i32 180, ; 542
	i32 163, ; 543
	i32 167, ; 544
	i32 230, ; 545
	i32 39, ; 546
	i32 188, ; 547
	i32 307, ; 548
	i32 17, ; 549
	i32 171, ; 550
	i32 308, ; 551
	i32 137, ; 552
	i32 150, ; 553
	i32 219, ; 554
	i32 155, ; 555
	i32 130, ; 556
	i32 19, ; 557
	i32 65, ; 558
	i32 147, ; 559
	i32 47, ; 560
	i32 316, ; 561
	i32 318, ; 562
	i32 205, ; 563
	i32 79, ; 564
	i32 61, ; 565
	i32 106, ; 566
	i32 254, ; 567
	i32 209, ; 568
	i32 49, ; 569
	i32 240, ; 570
	i32 313, ; 571
	i32 251, ; 572
	i32 14, ; 573
	i32 179, ; 574
	i32 68, ; 575
	i32 171, ; 576
	i32 215, ; 577
	i32 219, ; 578
	i32 195, ; 579
	i32 78, ; 580
	i32 224, ; 581
	i32 108, ; 582
	i32 208, ; 583
	i32 250, ; 584
	i32 67, ; 585
	i32 63, ; 586
	i32 27, ; 587
	i32 160, ; 588
	i32 288, ; 589
	i32 185, ; 590
	i32 217, ; 591
	i32 10, ; 592
	i32 188, ; 593
	i32 11, ; 594
	i32 197, ; 595
	i32 78, ; 596
	i32 126, ; 597
	i32 83, ; 598
	i32 194, ; 599
	i32 181, ; 600
	i32 66, ; 601
	i32 107, ; 602
	i32 65, ; 603
	i32 128, ; 604
	i32 122, ; 605
	i32 77, ; 606
	i32 265, ; 607
	i32 255, ; 608
	i32 8, ; 609
	i32 223, ; 610
	i32 2, ; 611
	i32 304, ; 612
	i32 44, ; 613
	i32 268, ; 614
	i32 156, ; 615
	i32 128, ; 616
	i32 253, ; 617
	i32 23, ; 618
	i32 133, ; 619
	i32 211, ; 620
	i32 242, ; 621
	i32 331, ; 622
	i32 322, ; 623
	i32 196, ; 624
	i32 29, ; 625
	i32 210, ; 626
	i32 62, ; 627
	i32 190, ; 628
	i32 326, ; 629
	i32 90, ; 630
	i32 87, ; 631
	i32 148, ; 632
	i32 290, ; 633
	i32 192, ; 634
	i32 36, ; 635
	i32 86, ; 636
	i32 231, ; 637
	i32 314, ; 638
	i32 321, ; 639
	i32 180, ; 640
	i32 50, ; 641
	i32 6, ; 642
	i32 90, ; 643
	i32 314, ; 644
	i32 21, ; 645
	i32 162, ; 646
	i32 96, ; 647
	i32 50, ; 648
	i32 113, ; 649
	i32 247, ; 650
	i32 130, ; 651
	i32 175, ; 652
	i32 76, ; 653
	i32 27, ; 654
	i32 174, ; 655
	i32 322, ; 656
	i32 303, ; 657
	i32 224, ; 658
	i32 246, ; 659
	i32 7, ; 660
	i32 189, ; 661
	i32 173, ; 662
	i32 110, ; 663
	i32 247, ; 664
	i32 233 ; 665
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
